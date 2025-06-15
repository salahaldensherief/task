import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/widgets/custom_app_bar.dart';
import '../../cubits/editor/texteditor_cubit.dart';
import 'Custom_text_field.dart';

class TextEditorViewBody extends StatelessWidget {
  TextEditorViewBody({super.key});
  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'Text Editor'),
      body: BlocBuilder<EditorCubit, String>(
        builder: (context, text) {
          controller.value = TextEditingValue(
            text: text,
            selection: TextSelection.collapsed(offset: text.length),
          );
          return Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Row(
                  children: [
                    IconButton(
                      icon: Icon(Icons.undo),
                      onPressed: () => context.read<EditorCubit>().undo(),
                    ),
                    IconButton(
                      icon: Icon(Icons.redo),
                      onPressed: () => context.read<EditorCubit>().redo(),
                    ),
                    Spacer(),
                    Text('Words: ${text.trim().split(RegExp(r"\s+")).length}'),
                  ],
                ),
                Expanded(
                  child: CustomTextField(
                    onChanged:
                        (value) =>
                            context.read<EditorCubit>().updateText(value),
                    controller: controller,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
