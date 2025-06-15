import 'package:flutter_bloc/flutter_bloc.dart';

class EditorCubit extends Cubit<String> {
  final List<String> _undoStack = [];
  final List<String> _redoStack = [];

  EditorCubit() : super('');

  void updateText(String text) {
    _undoStack.add(state);
    emit(text);
    _redoStack.clear();
  }

  void undo() {
    if (_undoStack.isNotEmpty) {
      _redoStack.add(state);
      emit(_undoStack.removeLast());
    }
  }

  void redo() {
    if (_redoStack.isNotEmpty) {
      _undoStack.add(state);
      emit(_redoStack.removeLast());
    }
  }
}