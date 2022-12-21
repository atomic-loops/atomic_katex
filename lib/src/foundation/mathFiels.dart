// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:atomic_latex/src/foundation/keyboardField.dart';
import 'package:flutter/material.dart';

class Func extends StatelessWidget {
  var aplpha;

  var x2;

  var sin;

  var fx;

  var elnx;

  var intdx;

  var matrix;

  var betaGamma;

  var delimiter;

  var aplphaC;

  var x2C;

  var sinC;

  var fxC;

  var elnxC;

  var intdxC;

  var matrixC;

  var betaGammaC;

  var delimiterC;

  var nextTab;

  var previousTab;
  Func(
      {Key? key,
      required this.aplpha,
      required this.x2,
      required this.sin,
      required this.fx,
      required this.elnx,
      required this.intdx,
      required this.matrix,
      required this.betaGamma,
      required this.delimiter,
      required this.aplphaC,
      required this.x2C,
      required this.sinC,
      required this.fxC,
      required this.elnxC,
      required this.intdxC,
      required this.matrixC,
      required this.betaGammaC,
      required this.delimiterC,
      required this.nextTab,
      required this.previousTab})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ButtonFuc(
          tap: previousTab,
          color: Colors.amber,
          icon: Icons.skip_previous,
          iconsColors: Colors.blue,
        ),
        Expanded(
          child: ListView(
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            children: [
              FunctionButton(
                onTab: aplpha,
                KeyboardText: "abc",
                fontSize: 12,
                color: aplphaC,
              ),
              FunctionButton(
                onTab: x2,
                KeyboardText: r"$x^2$",
                fontSize: 12,
                color: x2C,
              ),
              FunctionButton(
                fontSize: 12,
                onTab: sin,
                KeyboardText: r"$sin{x}$",
                color: sinC,
              ),
              FunctionButton(
                onTab: fx,
                KeyboardText: r"$f(x)$",
                fontSize: 12,
                color: fxC,
              ),
              FunctionButton(
                onTab: elnx,
                KeyboardText: r"$e^{\ln(x)}$",
                fontSize: 12,
                color: elnxC,
              ),
              FunctionButton(
                onTab: intdx,
                KeyboardText: r"$\int{dx}$",
                fontSize: 10,
                color: intdxC,
              ),
              FunctionButton(
                onTab: matrix,
                KeyboardText: r"$\begin{bmatrix}  x\\y  \end{bmatrix}$",
                fontSize: 10,
                color: matrixC,
              ),
              FunctionButton(
                onTab: betaGamma,
                KeyboardText: r"$\alpha\beta\gamma$",
                fontSize: 12,
                color: betaGammaC,
              ),
              // FunctionButton(
              //   onTab: delimiter,
              //   KeyboardText: r"$",
              //   fontSize: 20,
              //   color: delimiterC,
              // ),
            ],
          ),
        ),
        ButtonFuc(
          tap: nextTab,
          color: Colors.amber,
          icon: Icons.skip_next,
          iconsColors: Colors.blue,
        ),
      ],
    );
  }
}
