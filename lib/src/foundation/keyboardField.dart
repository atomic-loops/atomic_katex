// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:atomic_latex/src/foundation/atomicKatex.dart';
import 'package:atomic_latex/src/foundation/atomicMathjax.dart';

class LatexKey extends StatelessWidget {
  var onLongPress;

  var onHightChange;

  double fontSize;

  bool mathjax;

  var textAlign;

  LatexKey({
    Key? key,
    this.mathjax = false,
    this.onLongPress,
    this.onHightChange,
    this.fontSize = 12,
    required this.KeyboardText,
    this.isTexOn = true,
    required this.onTextInput,
    this.textAlign = TextAlign.center,
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
                onTextInput.call(
                    KeyboardText.replaceAll("\$", "").replaceAll(r"\Box", ""));
              },
              child: Center(
                  child: mathjax
                      ? AtomicKatex(
                          textStyle: TextStyle(fontSize: fontSize),
                          laTeXCode: Text(
                            KeyboardText,
                            style: TextStyle(fontSize: fontSize),
                            textAlign: textAlign,
                          ))
                      : AtomicMathJax(
                          textStyle: TextStyle(fontSize: fontSize),
                          laTeXCode: Text(KeyboardText,
                              style: TextStyle(fontSize: fontSize),
                              textAlign: textAlign))),
            ),
          )),
    );
  }
}

class ButtonKey extends StatelessWidget {
  final IconData? icon;

  var color;

  var iconsColors;

  var onLongPress;

  var widget;

  ButtonKey({
    Key? key,
    this.icon,
    this.widget,
    required this.color,
    this.iconsColors,
    this.flex = 1,
    this.onLongPress,
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
            onLongPress: onLongPress,
            onTap: tap,
            child: Center(
                child: icon == null
                    ? widget
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
    this.fontSize = 20,
    required this.KeyboardText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(6),
        child: Material(
          borderRadius: BorderRadius.circular(7),
          color: color,
          child: InkWell(
            onTap: onTab,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                  child: AtomicMathJax(
                      textStyle: TextStyle(fontSize: fontSize),
                      laTeXCode: Text(
                        KeyboardText,
                        style: TextStyle(fontSize: fontSize),
                      ))),
            ),
          ),
        ));
  }
}

class ButtonFuc extends StatelessWidget {
  var tap;

  final IconData? icon;
  var color;
  var iconsColors;

  ButtonFuc({
    Key? key,
    required this.color,
    required this.tap,
    this.icon,
    required this.iconsColors,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Material(
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
    );
  }
}

class ThaiKeyboard extends StatelessWidget {
  var onLongPress;
  Alignment alignment;
  var onHightChange;
  String img;
  final String KeyboardText;
  bool isTexOn;

  final ValueSetter<String> onTextInput;
  final int flex;

  ThaiKeyboard({
    Key? key,
    this.alignment = Alignment.center,
    this.onLongPress,
    this.onHightChange,
    required this.img,
    required this.KeyboardText,
    this.isTexOn = true,
    required this.onTextInput,
    this.flex = 1,
  }) : super(key: key);

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
                onTextInput.call(
                    KeyboardText.replaceAll("\$", "").replaceAll(r"\Box", ""));
              },
              child: Center(
                  child: Padding(
                padding: const EdgeInsets.all(3.0),
                child: Image(
                  image: AssetImage(
                    img,
                    package: 'atomic_latex',
                  ),
                  fit: BoxFit.contain,
                  alignment: alignment,
                ),
              )),
            ),
          )),
    );
  }
}
