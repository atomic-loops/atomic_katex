// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:atomic_latex/src/foundation/value.dart';
import 'package:atomic_latex/src/widget/keyboard.dart';
import 'package:flutter/material.dart';

class AtomicField extends StatefulWidget {
  AtomicField(
      {Key? key,
      required this.node,
      required this.changeValue,
      this.isVisible,
      this.decoration = const InputDecoration()})
      : super(key: key);

  final FocusNode node;
  final InputDecoration decoration;
  final void Function(bool value)? isVisible;
  final ChangeValue changeValue;

  @override
  State<AtomicField> createState() => _AtomicFieldState();
}

class _AtomicFieldState extends State<AtomicField> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        TextField(
          decoration: widget.decoration,
          readOnly: true,
          showCursor: true,
          minLines: 1,
          maxLines: 7,
          controller: widget.changeValue.controller,
        ),
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
            // node: widget.node,
            changeValue: widget.changeValue,
          ),
        )
      ],
    );
  }
}
