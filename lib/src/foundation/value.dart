import 'package:flutter/material.dart';

class ChangeValue extends ChangeNotifier {
  bool isOpen = false;
  late final FocusNode node;
  String previewString = "Long press on latex to preview";
  TextEditingController controller = TextEditingController();

  List<String> undoValue = [];

  deleteAll() {
    final textSelection = controller.selection;

    final text = controller.text;
    if (textSelection.start == 0) {
    } else {
      controller.text = text.replaceAll(text.characters.last, "");

      controller.selection = textSelection.copyWith(
          baseOffset: controller.text.length,
          extentOffset: controller.text.length);
    }
  }

  nextPosition() {
    final textSelection = controller.selection;
    controller.selection = textSelection.copyWith(
      baseOffset: textSelection.start + 1,
      extentOffset: textSelection.start + 1,
    );
  }

  previousPosition() {
    final textSelection = controller.selection;
    if (textSelection.start == 0) {
    } else {
      controller.selection = textSelection.copyWith(
        baseOffset: textSelection.start - 1,
        extentOffset: textSelection.start - 1,
      );
    }
  }

  addToUndo(value) {
    undoValue.add(value);
  }

  undoFunc() {
    undoValue.removeLast();
    controller.text = undoValue.last;
    notifyListeners();
  }

  void updateValue(bool value) {
    isOpen = value;
    notifyListeners();
  }

  previewValue(value) {
    previewString = value;

    notifyListeners();
    print(previewString);
  }

  void insertText(String myText) {
    final text = controller.text;
    final textSelection = controller.selection;
    final newText = text.replaceRange(
      textSelection.start,
      textSelection.end,
      myText,
    );
    final myTextLength = myText.length;
    controller.text = newText;
    controller.selection = textSelection.copyWith(
      baseOffset: textSelection.start + myTextLength,
      extentOffset: textSelection.start + myTextLength,
    );
  }

  void backspace() {
    final text = controller.text;
    final textSelection = controller.selection;
    final selectionLength = textSelection.end - textSelection.start;

    // There is a selection.
    if (selectionLength > 0) {
      final newText = text.replaceRange(
        textSelection.start,
        textSelection.end,
        '',
      );
      controller.text = newText;
      controller.selection = textSelection.copyWith(
        baseOffset: textSelection.start,
        extentOffset: textSelection.start,
      );
      return;
    }

    // The cursor is at the beginning.
    if (textSelection.start == 0) {
      return;
    }

    // Delete the previous character
    final previousCodeUnit = text.codeUnitAt(textSelection.start - 1);
    final offset = _isUtf16Surrogate(previousCodeUnit) ? 2 : 1;
    final newStart = textSelection.start - offset;
    final newEnd = textSelection.start;
    final newText = text.replaceRange(
      newStart,
      newEnd,
      '',
    );
    controller.text = newText;
    controller.selection = textSelection.copyWith(
      baseOffset: newStart,
      extentOffset: newStart,
    );
  }

  bool _isUtf16Surrogate(int value) {
    return value & 0xF800 == 0xD800;
  }
}
