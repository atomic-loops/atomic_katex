// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:atomic_latex/src/foundation/atomicMathjax.dart';
import 'package:flutter/material.dart';

class LatexKey extends StatelessWidget {
  var onLongPress;

  var onHightChange;

  double fontSize;

  LatexKey({
    Key? key,
    this.onLongPress,
    this.onHightChange,
    this.fontSize = 12,
    required this.KeyboardText,
    this.isTexOn = true,
    required this.onTextInput,
    this.flex = 1,
  }) : super(key: key);

  final String KeyboardText;
  bool isTexOn;

  final ValueSetter<String> onTextInput;
  final int flex;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
          padding: EdgeInsets.all(5),
          child: Material(
            borderRadius: BorderRadius.circular(5),
            color: Colors.grey.shade50,
            child: InkWell(
              onLongPress: onLongPress,
              onHighlightChanged: onHightChange,
              onTap: () {
                onTextInput.call(isTexOn
                    ? KeyboardText.replaceAll(r"\Box", "")
                    : KeyboardText.replaceAll("\$", "")
                        .replaceAll(r"\Box", ""));
              },
              child: Center(
                  child: AtomicMathJax(
                      textStyle: TextStyle(fontSize: fontSize),
                      laTeXCode: Text(
                        KeyboardText,
                        style: TextStyle(fontSize: fontSize),
                      ))),
            ),
          )),
    );
  }
}

class ButtonKey extends StatelessWidget {
  final IconData? icon;

  var color;

  var iconsColors;

  ButtonKey({
    Key? key,
    this.icon,
    required this.color,
    this.iconsColors,
    this.flex = 1,
    this.tap,
  }) : super(key: key);

  final tap;
  final int flex;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: flex,
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Material(
          borderRadius: BorderRadius.circular(7),
          color: color,
          child: InkWell(
            onTap: tap,
            child: Center(
                child: icon == null
                    ? Container()
                    : Icon(
                        icon,
                        color: iconsColors,
                      )),
          ),
        ),
      ),
    );
  }
}

class FunctionButton extends StatelessWidget {
  var onTab;
  double? fontSize;

  String KeyboardText;

  var color;

  FunctionButton({
    Key? key,
    required this.color,
    required this.onTab,
    this.fontSize,
    required this.KeyboardText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
          padding: EdgeInsets.all(6),
          child: Material(
            borderRadius: BorderRadius.circular(7),
            color: color,
            child: InkWell(
              onTap: onTab,
              child: Center(
                  child: AtomicMathJax(
                      textStyle: TextStyle(fontSize: fontSize),
                      laTeXCode: Text(
                        KeyboardText,
                        style: TextStyle(fontSize: fontSize),
                      ))),
            ),
          )),
    );
  }
}
