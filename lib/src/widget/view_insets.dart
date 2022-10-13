// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:atomic_latex/src/foundation/value.dart';
import 'package:atomic_latex/src/widget/keyboard.dart';
import 'package:flutter/material.dart';

class AtomicKeyboardViewInsert extends StatefulWidget {
  AtomicKeyboardViewInsert({
    Key? key,
    required this.child,
    required this.node,
    required this.changeValue,
  }) : super(key: key);
  final Widget child;

  final FocusNode node;

  final ChangeValue changeValue;

  @override
  State<AtomicKeyboardViewInsert> createState() =>
      _AtomicKeyboardViewInsertState();
}

class _AtomicKeyboardViewInsertState extends State<AtomicKeyboardViewInsert> {
  @override
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      widget.child,
      Positioned(
        bottom: 0,
        right: 0,
        left: 0,
        child: AtomicKeyboard(
          onBackspace: () {
            widget.changeValue.backspace();
            setState(() {});
          },
          onTextInput: (String value) {
            widget.changeValue.insertText(value);
            setState(() {});
          },
          node: widget.node,
          changeValue: widget.changeValue,
        ),
      )
    ]);
  }
}
