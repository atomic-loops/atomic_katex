// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:async';

import 'package:atomic_latex/src/foundation/atomicMathjax.dart';
import 'package:atomic_latex/src/foundation/keyBoardBody.dart';
import 'package:atomic_latex/src/foundation/keyboardField.dart';
import 'package:atomic_latex/src/foundation/mathFiels.dart';
import 'package:atomic_latex/src/foundation/value.dart';
import 'package:flutter/material.dart';

class AtomicKeyboard extends StatefulWidget {
  @override
  AtomicKeyboard({
    Key? key,
    // required this.value,
    required this.onTextInput,
    required this.onBackspace,
    required this.node,
    required this.changeValue,
  }) : super(key: key);
  // final bool value1;
  final ValueSetter<String> onTextInput;
  final VoidCallback onBackspace;
  final FocusNode node;
  final ChangeValue changeValue;

  @override
  State<AtomicKeyboard> createState() => _AtomicKeyboardState();
}

class _AtomicKeyboardState extends State<AtomicKeyboard> {
  @override
  bool isFuncation = false;

  void textInputHandler(String text) => widget.onTextInput.call(text);

  void backspaceHandler() => widget.onBackspace.call();

  // String value = "Long press on latex to preview";

  // bool isHighLight = false;

  // bool isLong = false;
  bool aplpha = true;
  bool betaGamma = false;
  bool delimiter = true;
  bool elnx = false;
  bool x2 = false;
  bool fx = false;
  bool intdx = false;
  bool sin = false;
  bool matrix = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    widget.changeValue.addListener(() {
      setState(() {});
    });
    setState(() {});
  }

  Widget build(BuildContext context) {
    return AnimatedContainer(
        height: widget.changeValue.isOpen == true ? 350 : 0,
        duration: const Duration(milliseconds: 200),
        // color: widget.changeValue.isOpen == true
        //     ? Colors.grey.shade200
        //     : Colors.transparent,
        child: widget.changeValue.isOpen == true
            ? Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Expanded(child: Func()),
                  Expanded(
                    flex: 1,
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Material(
                        // color: widget.changeValue.isOpen
                        //     ? Colors.grey.shade200
                        //     : Colors.transparent,
                        child: AtomicMathJax(
                          laTeXCode: Text(widget.changeValue.previewString),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                      // flex: 1,
                      child: Func(
                          aplpha: () {
                            if (aplpha == false) {
                              setState(() {
                                aplpha = true;
                                betaGamma = false;
                                delimiter = true;
                                elnx = false;
                                x2 = false;
                                fx = false;
                                intdx = false;
                                sin = false;
                                matrix = false;
                              });
                            }
                          },
                          x2: () {
                            if (x2 == false) {
                              setState(() {
                                aplpha = false;
                                betaGamma = false;
                                delimiter = true;
                                elnx = false;
                                x2 = true;
                                fx = false;
                                intdx = false;
                                sin = false;
                                matrix = false;
                              });
                            }
                          },
                          sin: () {
                            if (sin == false) {
                              setState(() {
                                aplpha = false;
                                betaGamma = false;
                                delimiter = true;
                                elnx = false;
                                x2 = false;
                                fx = false;
                                intdx = false;
                                sin = true;
                                matrix = false;
                              });
                            }
                          },
                          fx: () {
                            if (fx == false) {
                              setState(() {
                                aplpha = false;
                                betaGamma = false;
                                delimiter = true;
                                elnx = false;
                                x2 = false;
                                fx = true;
                                intdx = false;
                                sin = false;
                                matrix = false;
                              });
                            }
                          },
                          elnx: () {
                            if (elnx == false) {
                              setState(() {
                                aplpha = false;
                                betaGamma = false;
                                delimiter = true;
                                elnx = true;
                                x2 = false;
                                fx = false;
                                intdx = false;
                                sin = false;
                                matrix = false;
                              });
                            }
                          },
                          intdx: () {
                            if (intdx == false) {
                              setState(() {
                                aplpha = false;
                                betaGamma = false;
                                delimiter = true;
                                elnx = false;
                                x2 = false;
                                fx = false;
                                intdx = true;
                                sin = false;
                                matrix = false;
                              });
                            }
                          },
                          matrix: () {
                            if (matrix == false) {
                              setState(() {
                                aplpha = false;
                                betaGamma = false;
                                delimiter = true;
                                elnx = false;
                                x2 = false;
                                fx = false;
                                intdx = false;
                                sin = false;
                                matrix = true;
                              });
                            }
                          },
                          betaGamma: () {
                            if (betaGamma == false) {
                              setState(() {
                                aplpha = false;
                                betaGamma = true;
                                delimiter = true;
                                elnx = false;
                                x2 = false;
                                fx = false;
                                intdx = false;
                                sin = false;
                                matrix = false;
                              });
                            }
                          },
                          delimiter: () {
                            setState(() {
                              delimiter = !delimiter;
                            });
                          },
                          aplphaC:
                              aplpha ? Colors.orange : Colors.grey.shade100,
                          x2C: x2 ? Colors.orange : Colors.grey.shade100,
                          sinC: sin ? Colors.orange : Colors.grey.shade100,
                          fxC: fx ? Colors.orange : Colors.grey.shade100,
                          elnxC: elnx ? Colors.orange : Colors.grey.shade100,
                          intdxC: intdx ? Colors.orange : Colors.grey.shade100,
                          matrixC:
                              matrix ? Colors.orange : Colors.grey.shade100,
                          betaGammaC:
                              betaGamma ? Colors.orange : Colors.grey.shade100,
                          delimiterC: delimiter
                              ? Colors.orange
                              : Colors.grey.shade100)),
                  Expanded(
                    flex: 4,
                    child: Body(
                      onBackspace: backspaceHandler,
                      onTextInput: textInputHandler,
                      node: widget.node,
                      betaGamma: betaGamma,
                      alpha: aplpha, x2: x2, changeValue: widget.changeValue,
                      idTexOn: delimiter, fx: fx, sinx: sin, elnx: elnx,
                      intdx: intdx, matrix: matrix,

                      // changeValue: widget.changeValue
                    ),
                  ),
                ],
              )
            : Container());
    ;
  }
}
