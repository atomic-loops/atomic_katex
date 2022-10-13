// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:atomic_latex/src/foundation/value.dart';
import 'package:flutter/material.dart';

class AtomicInputField extends StatefulWidget {
  AtomicInputField(
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
  State<AtomicInputField> createState() => _AtomicInputFieldState();
}

class _AtomicInputFieldState extends State<AtomicInputField> {
  @override
  Widget build(BuildContext context) {
    return Focus(
      focusNode: widget.node,
      onFocusChange: (value1) {
        setState(() {
          widget.isVisible!(value1);
        });
      },
      child: AnimatedContainer(
        duration: Duration(milliseconds: 200),
        child: TextField(
          decoration: widget.decoration,
          readOnly: true,
          showCursor: true,
          minLines: 1,
          maxLines: 7,
          controller: widget.changeValue.controller,
        ),
      ),
    );
  }
}
