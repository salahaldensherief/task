import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task/core/widgets/custom_app_bar.dart';
import 'package:task/features/T-editor/presentation/cubits/editor/texteditor_cubit.dart';
import 'package:task/features/T-editor/presentation/views/widgets/text_editor_view_body.dart';

class TextEditor extends StatelessWidget {
  TextEditor({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => EditorCubit(),
      child: TextEditorViewBody(),
    );
  }
}
