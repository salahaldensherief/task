import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task/features/T-editor/presentation/views/widgets/tools_bar.dart';

import '../../../../../core/widgets/custom_app_bar.dart';
import '../../cubits/editor/texteditor_cubit.dart';
import 'Custom_text_field.dart';

class TextEditorViewBody extends StatelessWidget {
  TextEditorViewBody({super.key});
  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: CustomAppBar(title: 'Text Editor'),
      body: BlocBuilder<EditorCubit, String>(
        builder: (context, text) {
          controller.value = TextEditingValue(
            text: text,
            selection: TextSelection.collapsed(offset: text.length),
          );
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 12),
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
                SizedBox(height: 12),
                Container(
                  width: screenWidth / 1.05,
                  height: screenHeight / 3,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        blurRadius: 4,
                        offset: Offset(0, 2),
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      ToolsBar(),
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
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
