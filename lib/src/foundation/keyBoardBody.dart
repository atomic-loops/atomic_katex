import 'package:atomic_latex/src/foundation/keyboardField.dart';
import 'package:atomic_latex/src/foundation/value.dart';
import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  Body({
    Key? key,
    required this.changeValue,
    required this.onTextInput,
    required this.onBackspace,
    required this.node,
    required this.fx,
    this.idTexOn = true,
    required this.alpha,
    required this.sinx,
    required this.elnx,
    required this.intdx,
    required this.matrix,
    required this.betaGamma,
    required this.x2,
  }) : super(key: key);
  final ChangeValue changeValue;
  final ValueSetter<String> onTextInput;
  final VoidCallback onBackspace;
  final FocusNode node;
  bool idTexOn;
  bool alpha;
  bool sinx;
  bool x2;
  bool fx;
  bool elnx;
  bool intdx;
  bool matrix;
  bool betaGamma;

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  void textInputHandler(String text) => widget.onTextInput.call(text);

  void backspaceHandler() => widget.onBackspace.call();
  bool isCapital = true;
  bool english = true;
  var size, height, width;

  bool isHighLight = false;
  // String value = "";
  bool isLong = false;
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Container(
      color: Colors.blueGrey.shade100,
      child: SafeArea(
        top: false,
        child: Column(
          children: [
            if (widget.alpha == true) ...[
              if (english == true) ...[alphaKeyboard()] else ...[thaiKeyboard()]
            ] else if (widget.x2 == true) ...[
              x2()
            ] else if (widget.sinx == true) ...[
              sinX()
            ] else if (widget.fx == true) ...[
              fx()
            ] else if (widget.elnx == true) ...[
              enlx()
            ] else if (widget.intdx == true) ...[
              intdx()
            ] else if (widget.matrix == true) ...[
              matrix()
            ] else if (widget.betaGamma == true) ...[
              betaGamma()
            ]
          ],
        ),
      ),
    );
  }

  alphaKeyboard() {
    return Expanded(
      child: Column(
        children: [
          number(),
          alpha1(),
          alpha2(),
          alpha3(),
          funcationKey(),
        ],
      ),
    );
  }

  thaiKeyboard() {
    return Expanded(
      child: Column(
        children: [
          thai1(),
          thai2(),
          thai3(),
          thai4(),
          funcationKey(),
        ],
      ),
    );
  }

  // Expanded thai1() {
  //   return Expanded(
  //       child: Image(
  //     image: NetworkImage(
  //         "https://media.architecturaldigest.com/photos/57c7003f71ea71ec6e0f4314/master/w_1600,c_limit/IMG%width * 0.04Worlds%width * 0.04of%width * 0.04Adventure%width * 0.04-%width * 0.042.jpg"),
  //   ));
  // }
  //   return Expanded(
  //       child: Row(

  Expanded thai1() {
    return Expanded(
        child: Row(
      children: [
        ThaiKeyboard(
          img: isCapital ? "assets/thai2/thaiA1.png" : "assets/thai/thaiA1.png",
          KeyboardText: isCapital ? "ๅ" : "+",
          // LatexText: isCapital ? "Q" : "q",
          onTextInput: textInputHandler,
        ),
        ThaiKeyboard(
          img: isCapital ? "assets/thai2/thaiA2.png" : "assets/thai/thaiA2.png",
          KeyboardText: isCapital ? "/" : "๑",
          // LatexText: isCapital ? "W" : "w",
          onTextInput: textInputHandler,
        ),
        ThaiKeyboard(
          img: isCapital ? "assets/thai2/thaiA3.png" : "assets/thai/thaiA3.png",
          KeyboardText: isCapital ? "_" : "๒",
          // LatexText: isCapital ? "E" : "e",
          onTextInput: textInputHandler,
        ),
        ThaiKeyboard(
          alignment: Alignment.topCenter,
          img: isCapital ? "assets/thai2/thaiA4.png" : "assets/thai/thaiA4.png",
          KeyboardText: isCapital ? "ภ" : "๓",
          // LatexText: isCapital ? "R" : "r",
          onTextInput: textInputHandler,
        ),
        ThaiKeyboard(
          img: isCapital ? "assets/thai2/thaiA5.png" : "assets/thai/thaiA5.png",
          KeyboardText: isCapital ? "ถ" : "๔",
          //  LatexText: isCapital ? "T" : "t",
          onTextInput: textInputHandler,
        ),
        ThaiKeyboard(
          img: isCapital ? "assets/thai2/thaiA6.png" : "assets/thai/thaiA6.png",
          KeyboardText: isCapital ? "ุ" : r"$ุ$",
          // LatexText: isCapital ? "Y" : "y",
          onTextInput: textInputHandler,
        ),
        ThaiKeyboard(
          img: isCapital ? "assets/thai2/thaiA7.png" : "assets/thai/thaiA7.png",
          KeyboardText: isCapital ? "ึ" : "฿",
          // LatexText: isCapital ? "U" : "u",
          onTextInput: textInputHandler,
        ),
        ThaiKeyboard(
          img: isCapital ? "assets/thai2/thaiA8.png" : "assets/thai/thaiA8.png",
          KeyboardText: isCapital ? "ค" : "๕",
          // LatexText: isCapital ? "I" : "i",
          onTextInput: textInputHandler,
        ),
        ThaiKeyboard(
          img: isCapital ? "assets/thai2/thaiA9.png" : "assets/thai/thaiA9.png",
          KeyboardText: isCapital ? "ต" : "๖",
          // LatexText: isCapital ? "O" : "o",
          onTextInput: textInputHandler,
        ),
        ThaiKeyboard(
          img: isCapital
              ? "assets/thai2/thaiA10.png"
              : "assets/thai/thaiA10.png",
          KeyboardText: isCapital ? "จ" : "๗",
          // /  LatexText: isCapital ? "P" : "p",
          onTextInput: textInputHandler,
        ),
        ThaiKeyboard(
          img: isCapital
              ? "assets/thai2/thaiA11.png"
              : "assets/thai/thaiA11.png",
          KeyboardText: isCapital ? "ข" : "๘",
          // LatexText: isCapital ? "O" : "o",
          onTextInput: textInputHandler,
        ),
        ThaiKeyboard(
          img: isCapital
              ? "assets/thai2/thaiA12.png"
              : "assets/thai/thaiA12.png",
          KeyboardText: isCapital ? "ช" : "๙",
          // /  LatexText: isCapital ? "P" : "p",
          onTextInput: textInputHandler,
        ),
      ],
    ));
  }

  Expanded thai2() {
    return Expanded(
        child: Row(
      children: [
        ThaiKeyboard(
          img: isCapital ? "assets/thai2/thaiB1.png" : "assets/thai/thaiB1.png",
          KeyboardText: isCapital ? "ๆ" : "๐",
          // LatexText: isCapital ? "Q" : "q",
          onTextInput: textInputHandler,
        ),
        ThaiKeyboard(
          img: isCapital ? "assets/thai2/thaiB2.png" : "assets/thai/thaiB2.png",
          KeyboardText: isCapital ? "ไ" : "“",
          // LatexText: isCapital ? "W" : "w",
          onTextInput: textInputHandler,
        ),
        ThaiKeyboard(
          img: isCapital ? "assets/thai2/thaiB3.png" : "assets/thai/thaiB3.png",
          KeyboardText: isCapital ? " ำ" : "ฎ",
          // LatexText: isCapital ? "E" : "e",
          onTextInput: textInputHandler,
        ),
        ThaiKeyboard(
          img: isCapital ? "assets/thai2/thaiB4.png" : "assets/thai/thaiB4.png",
          KeyboardText: isCapital ? "พ" : "ฑ",
          // LatexText: isCapital ? "R" : "r",
          onTextInput: textInputHandler,
        ),
        ThaiKeyboard(
          img: isCapital ? "assets/thai2/thaiB5.png" : "assets/thai/thaiB5.png",
          KeyboardText: isCapital ? "ะ" : "ธ",
          //  LatexText: isCapital ? "T" : "t",
          onTextInput: textInputHandler,
        ),
        ThaiKeyboard(
          img: isCapital ? "assets/thai2/thaiB6.png" : "assets/thai/thaiB6.png",
          KeyboardText: isCapital ? "ั" : " ํ",
          // LatexText: isCapital ? "Y" : "y",
          onTextInput: textInputHandler,
        ),
        ThaiKeyboard(
          img: isCapital ? "assets/thai2/thaiB7.png" : "assets/thai/thaiB7.png",
          KeyboardText: isCapital ? " ี" : " ๊",
          // LatexText: isCapital ? "U" : "u",
          onTextInput: textInputHandler,
        ),
        ThaiKeyboard(
          img: isCapital ? "assets/thai2/thaiB8.png" : "assets/thai/thaiB8.png",
          KeyboardText: isCapital ? "ัร" : "ณ",
          // LatexText: isCapital ? "I" : "i",
          onTextInput: textInputHandler,
        ),
        ThaiKeyboard(
          img: isCapital ? "assets/thai2/thaiB9.png" : "assets/thai/thaiB9.png",
          KeyboardText: isCapital ? "ัน" : "ฯ",
          // LatexText: isCapital ? "O" : "o",
          onTextInput: textInputHandler,
        ),
        ThaiKeyboard(
          img: isCapital
              ? "assets/thai2/thaiB10.png"
              : "assets/thai/thaiB10.png",
          KeyboardText: isCapital ? "ัย" : "ญ",
          // /  LatexText: isCapital ? "P" : "p",
          onTextInput: textInputHandler,
        ),
        ThaiKeyboard(
          img: isCapital
              ? "assets/thai2/thaiB11.png"
              : "assets/thai/thaiB11.png",
          KeyboardText: isCapital ? "ับ" : "ฐ",
          // LatexText: isCapital ? "O" : "o",
          onTextInput: textInputHandler,
        ),
        ThaiKeyboard(
          img: isCapital
              ? "assets/thai2/thaiB12.png"
              : "assets/thai/thaiB12.png",
          KeyboardText: isCapital ? "ัล" : ",",
          // /  LatexText: isCapital ? "P" : "p",
          onTextInput: textInputHandler,
        ),
      ],
    ));
  }

  Expanded thai3() {
    return Expanded(
        child: Row(
      children: [
        ThaiKeyboard(
          img: isCapital ? "assets/thai2/thaiC1.png" : "assets/thai/thaiC1.png",
          KeyboardText: isCapital ? "ฟ" : "ฤ",
          // LatexText: isCapital ? "Q" : "q",
          onTextInput: textInputHandler,
        ),
        ThaiKeyboard(
          img: isCapital ? "assets/thai2/thaiC2.png" : "assets/thai/thaiC2.png",
          KeyboardText: isCapital ? "ห" : "ฆ",
          // LatexText: isCapital ? "W" : "w",
          onTextInput: textInputHandler,
        ),
        ThaiKeyboard(
          img: isCapital ? "assets/thai2/thaiC3.png" : "assets/thai/thaiC3.png",
          KeyboardText: isCapital ? "ก" : "ฏ",
          // LatexText: isCapital ? "E" : "e",
          onTextInput: textInputHandler,
        ),
        ThaiKeyboard(
          img: isCapital ? "assets/thai2/thaiC4.png" : "assets/thai/thaiC4.png",
          KeyboardText: isCapital ? "ด" : "โ",
          // LatexText: isCapital ? "R" : "r",
          onTextInput: textInputHandler,
        ),
        ThaiKeyboard(
          img: isCapital ? "assets/thai2/thaiC5.png" : "assets/thai/thaiC5.png",
          KeyboardText: isCapital ? "เ" : "ฌ",
          //  LatexText: isCapital ? "T" : "t",
          onTextInput: textInputHandler,
        ),
        ThaiKeyboard(
          img: isCapital ? "assets/thai2/thaiC6.png" : "assets/thai/thaiC6.png",
          KeyboardText: isCapital ? " ้" : " ็",
          // LatexText: isCapital ? "Y" : "y",
          onTextInput: textInputHandler,
        ),
        ThaiKeyboard(
          img: isCapital ? "assets/thai2/thaiC7.png" : "assets/thai/thaiC7.png",
          KeyboardText: isCapital ? " ่" : " ๋",
          // LatexText: isCapital ? "U" : "u",
          onTextInput: textInputHandler,
        ),
        ThaiKeyboard(
          img: isCapital ? "assets/thai2/thaiC8.png" : "assets/thai/thaiC8.png",
          KeyboardText: isCapital ? "า" : "ษ",
          // LatexText: isCapital ? "I" : "i",
          onTextInput: textInputHandler,
        ),
        ThaiKeyboard(
          img: isCapital ? "assets/thai2/thaiC9.png" : "assets/thai/thaiC9.png",
          KeyboardText: isCapital ? "ส" : "ศ",
          // LatexText: isCapital ? "O" : "o",
          onTextInput: textInputHandler,
        ),
        ThaiKeyboard(
          img: isCapital
              ? "assets/thai2/thaiC10.png"
              : "assets/thai/thaiC10.png",
          KeyboardText: isCapital ? "ว" : "ซ",
          // /  LatexText: isCapital ? "P" : "p",
          onTextInput: textInputHandler,
        ),
        ThaiKeyboard(
          img: isCapital
              ? "assets/thai2/thaiC11.png"
              : "assets/thai/thaiC11.png",
          KeyboardText: isCapital ? "ง" : ".",
          // LatexText: isCapital ? "O" : "o",
          onTextInput: textInputHandler,
        ),
        ThaiKeyboard(
          img: isCapital
              ? "assets/thai2/thaiC12.png"
              : "assets/thai/thaiC12.png",
          KeyboardText: isCapital ? "ฃ" : "ฅ",
          // /  LatexText: isCapital ? "P" : "p",
          onTextInput: textInputHandler,
        ),
      ],
    ));
  }

  thai4() {
    return Expanded(
        child: Row(
      children: [
        ButtonKey(
          color: Colors.white,
          flex: 2,
          iconsColors: isCapital ? Colors.blue : Colors.black,
          icon: Icons.upgrade,
          tap: () {
            setState(() {
              isCapital = !isCapital;
            });
          },
        ),
        ThaiKeyboard(
          img: isCapital ? "assets/thai2/thaiD1.png" : "assets/thai/thaiD1.png",
          KeyboardText: isCapital ? "ผ" : "ฉ",
          // LatexText: isCapital ? "Z" : "z",
          onTextInput: textInputHandler,
        ),
        ThaiKeyboard(
          img: isCapital ? "assets/thai2/thaiD2.png" : "assets/thai/thaiD2.png",
          KeyboardText: isCapital ? "ป" : "ฮ",
          // LatexText: isCapital ? "X" : "x",
          onTextInput: textInputHandler,
        ),
        ThaiKeyboard(
          img: isCapital ? "assets/thai2/thaiD3.png" : "assets/thai/thaiD3.png",
          KeyboardText: isCapital ? "แ" : " ฺ",
          // LatexText: isCapital ? "C" : "c",
          onTextInput: textInputHandler,
        ),
        ThaiKeyboard(
          img: isCapital ? "assets/thai2/thaiD4.png" : "assets/thai/thaiD4.png",
          KeyboardText: isCapital ? "อ" : " ์",
          // LatexText: isCapital ? "V" : "v",
          onTextInput: textInputHandler,
        ),
        ThaiKeyboard(
          img: isCapital ? "assets/thai2/thaiD5.png" : "assets/thai/thaiD5.png",
          KeyboardText: isCapital ? " ิ" : "?",
          // LatexText: isCapital ? "B" : "b",
          onTextInput: textInputHandler,
        ),
        ThaiKeyboard(
          img: isCapital ? "assets/thai2/thaiD6.png" : "assets/thai/thaiD6.png",
          KeyboardText: isCapital ? " ื" : "ฒ",
          // LatexText: isCapital ? "N" : "n",
          onTextInput: textInputHandler,
        ),
        ThaiKeyboard(
          img: isCapital ? "assets/thai2/thaiD7.png" : "assets/thai/thaiD7.png",
          KeyboardText: isCapital ? "ท" : "ฬ",
          // LatexText: isCapital ? "M" : "m",
          onTextInput: textInputHandler,
        ),
        ThaiKeyboard(
          img: isCapital ? "assets/thai2/thaiD8.png" : "assets/thai/thaiD8.png",
          KeyboardText: isCapital ? "ม" : "ฦ",
          // LatexText: isCapital ? "B" : "b",
          onTextInput: textInputHandler,
        ),
        ThaiKeyboard(
          img: isCapital ? "assets/thai2/thaiD9.png" : "assets/thai/thaiD9.png",
          KeyboardText: isCapital ? "ใ" : "(",
          // LatexText: isCapital ? "N" : "n",
          onTextInput: textInputHandler,
        ),
        ThaiKeyboard(
          img: isCapital
              ? "assets/thai2/thaiD10.png"
              : "assets/thai/thaiD10.png",
          KeyboardText: isCapital ? "ฝ" : ")",
          // LatexText: isCapital ? "M" : "m",
          onTextInput: textInputHandler,
        ),
        ButtonKey(
          color: Colors.blue,
          flex: 2,
          icon: Icons.done,
          iconsColors: Colors.white,
          tap: () {
            widget.node.unfocus();
          },
        ),
      ],
    ));
  }

  x2() {
    return Expanded(
      child: Column(
        children: [
          x21(),
          x22(),
          x23(),
          x24(),
          commomRow(),
          // funcationKey(),
        ],
      ),
    );
  }

  sinX() {
    return Expanded(
        child: Column(
      children: [sinX1(), sinX2(), sinX3(), sinX4(), commomRow()],
    ));
  }

  fx() {
    return Expanded(
      child: Column(
        children: [fx1(), fx2(), fx3(), fx4(), commomRow()],
      ),
    );
  }

  enlx() {
    return Expanded(
      child: Column(
        children: [enlx1(), enlx2(), enlx3(), enlx4(), commomRow()],
      ),
    );
  }

  intdx() {
    return Expanded(
      child: Column(
        children: [intdx1(), intdx2(), intdx3(), enlx4(), commomRow()],
      ),
    );
  }

  matrix() {
    return Expanded(
      child: Column(
        children: [matrix1(), matrix2(), matrix3(), matrix4(), commomRow()],
      ),
    );
  }

  betaGamma() {
    return Expanded(
      child: Column(
        children: [
          betaGamma1(),
          betaGamma2(),
          betaGamma3(),
          betaGamma4(),
          betaGamma5()
        ],
      ),
    );
  }

  betaGamma1() {
    return Expanded(
      child: Row(
        children: [
          LatexKey(
            KeyboardText: isCapital ? r"$\mathscr{U}$" : r"$\alpha$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: width * 0.04,
          ),
          LatexKey(
            KeyboardText: isCapital ? r"$\Delta$" : r"$\delta$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: width * 0.04,
          ),
          LatexKey(
            KeyboardText: isCapital ? r"$\Lambda$" : r"$\lambda$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: width * 0.04,
          ),
          LatexKey(
            KeyboardText: isCapital ? r"$\nabla$" : r"$\rho$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: width * 0.04,
          ),
          LatexKey(
            KeyboardText: isCapital ? r"$\Phi$" : r"$\phi$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: width * 0.04,
          ),
          LatexKey(
            mathjax: true,
            KeyboardText: isCapital
                ? r"$\clubs$"
                : r"$\text{---}{\large\textcircled {\small 1}}$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: width * 0.04,
          ),
          LatexKey(
            mathjax: true,
            KeyboardText: isCapital ? r"$\lozenge$" : r"$😂$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: width * 0.04,
          ),
          LatexKey(
            KeyboardText: isCapital ? r"$\blacklozenge$" : r"$😭$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: width * 0.04,
          ),
          LatexKey(
            mathjax: true,
            KeyboardText: isCapital ? r"$\hearts$" : r"$🔥$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: width * 0.04,
          ),
          LatexKey(
            mathjax: true,
            KeyboardText: isCapital ? r"$\spades$" : r"$😍$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: width * 0.04,
          ),
        ],
      ),
    );
  }

  betaGamma2() {
    return Expanded(
      child: Row(
        children: [
          LatexKey(
            KeyboardText: isCapital ? r"$\infty$" : r"$\beta$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: width * 0.04,
          ),
          LatexKey(
            KeyboardText: isCapital ? r"$\ell$" : r"$\varepsilon$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: width * 0.04,
          ),
          LatexKey(
            KeyboardText: isCapital ? r"$\propto$" : r"$\mu$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: width * 0.04,
          ),
          LatexKey(
            KeyboardText: isCapital ? r"$\Sigma$" : r"$\sigma$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: width * 0.04,
          ),
          LatexKey(
            mathjax: true,
            KeyboardText: isCapital ? r"$\Psi$" : r"$\psi$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: width * 0.04,
          ),
          LatexKey(
            mathjax: true,
            KeyboardText: isCapital
                ? r"$\star$"
                : r"$\text{---}{\large\textcircled {\small 2}}$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: width * 0.04,
          ),
          LatexKey(
            mathjax: true,
            KeyboardText: isCapital ? r"$\bigstar$" : r"$$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: width * 0.04,
          ),
          LatexKey(
            mathjax: true,
            KeyboardText: isCapital ? r"$\bigcirc$" : r"$👍$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: width * 0.04,
          ),
          LatexKey(
            mathjax: true,
            KeyboardText: isCapital ? r"$🫶$" : r"$😇$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: width * 0.04,
          ),
          LatexKey(
            mathjax: true,
            KeyboardText: isCapital ? r"$🤲$" : r"$👎$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: width * 0.04,
          ),
        ],
      ),
    );
  }

  betaGamma3() {
    return Expanded(
      child: Row(
        children: [
          LatexKey(
            KeyboardText: isCapital ? r"$\Gamma$" : r"$\gamma$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: width * 0.04,
          ),
          LatexKey(
            KeyboardText: isCapital ? r"$\Theta$" : r"$\theta$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: width * 0.04,
          ),
          LatexKey(
            KeyboardText: isCapital ? r"$\Pi$" : r"$\pi$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: width * 0.04,
          ),
          LatexKey(
            KeyboardText: isCapital ? r"$\Tau$" : r"$\tau$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: width * 0.04,
          ),
          LatexKey(
            mathjax: true,
            KeyboardText: isCapital ? r"$\Omega$" : r"$\omega$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: width * 0.04,
          ),
          LatexKey(
            mathjax: true,
            KeyboardText: isCapital
                ? r"$\text{\textquotedblleft}$"
                : r"$\text{---}{\large\textcircled {\small 3}}$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: width * 0.04,
          ),
          LatexKey(
            mathjax: true,
            KeyboardText: isCapital
                ? r"$\text{\textquotedblright}$"
                : r"$\measuredangle$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: width * 0.04,
          ),
          LatexKey(
            mathjax: true,
            KeyboardText: isCapital ? r"$฿$" : r"$\perp$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: width * 0.04,
          ),
          LatexKey(
            mathjax: true,
            KeyboardText: isCapital ? r"$/$" : r"$//$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: width * 0.04,
          ),
          LatexKey(
            mathjax: true,
            KeyboardText: isCapital ? r"$\pounds$" : r"$\text{\textbardbl}$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: width * 0.04,
          ),
        ],
      ),
    );
  }

  betaGamma4() {
    return Expanded(
      child: Row(
        children: [
          LatexKey(
            KeyboardText: isCapital ? r"$\cup$" : r"$\to$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: width * 0.04,
          ),
          LatexKey(
            KeyboardText: isCapital ? r"$\cap$" : r"$\leftrightarrow$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: width * 0.04,
          ),
          LatexKey(
            KeyboardText: isCapital ? r"$\ldots$" : r"$\lor$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: width * 0.04,
          ),
          LatexKey(
            KeyboardText: isCapital ? r"$?$" : r"$\land$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: width * 0.04,
          ),
          LatexKey(
            KeyboardText: isCapital ? r"$\{$" : r"$[$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: width * 0.04,
          ),
          LatexKey(
            KeyboardText: isCapital ? r"$\}$" : r"$]$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: width * 0.04,
          ),
          LatexKey(
            KeyboardText: r"$($",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: width * 0.04,
          ),
          LatexKey(
            KeyboardText: r"$)$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: width * 0.04,
          ),
          ButtonKey(
            color: Colors.grey,
            iconsColors: isCapital ? Colors.blue : Colors.black,
            icon: Icons.upgrade,
            tap: () {
              setState(() {
                isCapital = !isCapital;
              });
            },
          ),
          ButtonKey(
            color: Colors.grey,

            // onLongPress: () {},
            icon: Icons.backspace,
            tap: () {
              widget.onBackspace.call();
            },
          ),
        ],
      ),
    );
  }

  betaGamma5() {
    return Expanded(
      child: Row(
        children: [
          LatexKey(
            KeyboardText: isCapital ? r"$\in$" : r"$\because$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: width * 0.04,
          ),
          LatexKey(
            KeyboardText: isCapital ? r"$\notin$" : r"$\therefore$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: width * 0.04,
          ),
          LatexKey(
            KeyboardText: isCapital ? r"$\subset$" : r"$\forall$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: width * 0.04,
          ),
          LatexKey(
            KeyboardText: isCapital ? r"$\not\subset$" : r"$\exist$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: width * 0.04,
          ),
          isCapital
              ? LatexKey(
                  KeyboardText: r"$\varnothing$",
                  onTextInput: textInputHandler,
                  isTexOn: widget.idTexOn,
                  fontSize: width * 0.04,
                )
              : LatexKey(
                  onLongPress: () {
                    setState(() {
                      isLong = true;
                    });
                  },
                  onHightChange: (v) {
                    setState(() {
                      isHighLight = v;
                    });
                    if (isHighLight == true) {
                      setState(() {
                        widget.changeValue
                            .previewValue(r"\vec{u} $\rightarrow$ $\vec{u}$");
                      });
                    } else {
                      Future.delayed(const Duration(seconds: 2), () {
                        change();
                      });
                    }
                    // else {
                    // Timer(Duration(seconds: 1), change());
                    // }
                    print(isHighLight);
                  },
                  KeyboardText: r"$\vec{\Box}$",
                  onTextInput: textInputHandler,
                  isTexOn: widget.idTexOn,
                  fontSize: width * 0.04,
                ),
          LatexKey(
            KeyboardText: isCapital ? r"$\&$" : r"$\sim$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: width * 0.04,
          ),
          LatexKey(
            KeyboardText: isCapital ? r"'" : r"$\approx$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: width * 0.04,
          ),
          LatexKey(
            KeyboardText: isCapital ? r"," : r"$\equiv$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: width * 0.04,
          ),
          ButtonKey(
            color: Colors.grey,
            flex: 1,
            icon: Icons.space_bar,
            tap: () {
              textInputHandler(r"$\~$");
            },
          ),
          ButtonKey(
            color: Colors.grey,
            flex: 1,
            icon: Icons.skip_next,
            tap: () {
              textInputHandler(r"\\");
            },
          ),
        ],
      ),
    );
  }

  matrix1() {
    return Expanded(
      child: Row(
        children: [
          LatexKey(
            onLongPress: () {
              setState(() {
                isLong = true;
              });
            },
            onHightChange: (v) {
              setState(() {
                isHighLight = v;
              });
              if (isHighLight == true) {
                setState(() {
                  widget.changeValue.previewValue(
                      r"\begin{bmatrix}1\\2\end{bmatrix} $\rightarrow$ $\begin{bmatrix}1\\2\end{bmatrix}$");
                });
              } else {
                Future.delayed(const Duration(seconds: 2), () {
                  change();
                });
              }
              // else {
              // Timer(Duration(seconds: 1), change());
              // }
              print(isHighLight);
            },
            KeyboardText: r"$\begin{bmatrix}\Box\\\Box\end{bmatrix}$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: width * 0.02,
          ),
          LatexKey(
            onLongPress: () {
              setState(() {
                isLong = true;
              });
            },
            onHightChange: (v) {
              setState(() {
                isHighLight = v;
              });
              if (isHighLight == true) {
                setState(() {
                  widget.changeValue.previewValue(
                      r"\begin{bmatrix}6&7\\8&9\end{bmatrix} $\rightarrow$ $\begin{bmatrix}6&7\\8&9\end{bmatrix}$");
                });
              } else {
                Future.delayed(const Duration(seconds: 2), () {
                  change();
                });
              }
              // else {
              // Timer(Duration(seconds: 1), change());
              // }
              print(isHighLight);
            },
            KeyboardText: r"$\begin{bmatrix}\Box&\Box\\\Box&\Box\end{bmatrix}$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: 6,
          ),
          LatexKey(
            onLongPress: () {
              setState(() {
                isLong = true;
              });
            },
            onHightChange: (v) {
              setState(() {
                isHighLight = v;
              });
              if (isHighLight == true) {
                setState(() {
                  widget.changeValue.previewValue(
                      r"\begin{bmatrix}1&2\end{bmatrix} $\rightarrow$ $\begin{bmatrix}1&2\end{bmatrix}$");
                });
              } else {
                Future.delayed(const Duration(seconds: 2), () {
                  change();
                });
              }
              // else {
              // Timer(Duration(seconds: 1), change());
              // }
              print(isHighLight);
            },
            KeyboardText: r"$\begin{bmatrix}\Box&\Box\end{bmatrix}$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: 6,
          ),
          LatexKey(
            // else {
            // Timer(Duration(seconds: 1), change());
            // }

            KeyboardText: r"$\det $",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: width * 0.03,
          ),
          LatexKey(
            onLongPress: () {
              setState(() {
                isLong = true;
              });
            },
            onHightChange: (v) {
              setState(() {
                isHighLight = v;
              });
              if (isHighLight == true) {
                setState(() {
                  widget.changeValue
                      .previewValue(r"{1}^{2} $\rightarrow$ ${1}^{2}$");
                });
              } else {
                Future.delayed(const Duration(seconds: 2), () {
                  change();
                });
              }
              // else {
              // Timer(Duration(seconds: 1), change());
              // }
              print(isHighLight);
            },
            KeyboardText: r"${\Box}^{\Box}$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: width * 0.03,
          ),
          LatexKey(
            KeyboardText: r"$7$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: width * 0.04,
          ),
          LatexKey(
            KeyboardText: r"$8$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: width * 0.04,
          ),
          LatexKey(
            KeyboardText: r"$9$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: width * 0.04,
          ),
          LatexKey(
            KeyboardText: r"$($",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: width * 0.04,
          ),
          LatexKey(
            KeyboardText: r"$)$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: width * 0.04,
          ),
        ],
      ),
    );
  }

  matrix2() {
    return Expanded(
      child: Row(
        children: [
          LatexKey(
            onLongPress: () {
              setState(() {
                isLong = true;
              });
            },
            onHightChange: (v) {
              setState(() {
                isHighLight = v;
              });
              if (isHighLight == true) {
                setState(() {
                  widget.changeValue.previewValue(
                      r"\begin{bmatrix}7\\8\\9\end{bmatrix} $\rightarrow$ $\begin{bmatrix}7\\8\\9\end{bmatrix}$");
                });
              } else {
                Future.delayed(const Duration(seconds: 2), () {
                  change();
                });
              }
              // else {
              // Timer(Duration(seconds: 1), change());
              // }
              print(isHighLight);
            },
            KeyboardText: r"$\begin{bmatrix}\Box\\\Box\\\Box\end{bmatrix}$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: 6,
          ),
          LatexKey(
            onLongPress: () {
              setState(() {
                isLong = true;
              });
            },
            onHightChange: (v) {
              setState(() {
                isHighLight = v;
              });
              if (isHighLight == true) {
                setState(() {
                  widget.changeValue.previewValue(
                      r"\begin{bmatrix}1&2&3\\4&5&6\\7&8&9\end{bmatrix} $\rightarrow$ $\begin{bmatrix}1&2&3\\4&5&6\\7&8&9\end{bmatrix}$");
                });
              } else {
                Future.delayed(const Duration(seconds: 2), () {
                  change();
                });
              }
              // else {
              // Timer(Duration(seconds: 1), change());
              // }
              print(isHighLight);
            },
            KeyboardText:
                r"$\begin{bmatrix}\Box&\Box&\Box\\\Box&\Box&\Box\\\Box&\Box&\Box\end{bmatrix}$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: 4,
          ),
          LatexKey(
            onLongPress: () {
              setState(() {
                isLong = true;
              });
            },
            onHightChange: (v) {
              setState(() {
                isHighLight = v;
              });
              if (isHighLight == true) {
                setState(() {
                  widget.changeValue.previewValue(
                      r"\begin{bmatrix}7&8&9\end{bmatrix} $\begin{bmatrix}7&8&9\end{bmatrix}$");
                });
              } else {
                Future.delayed(const Duration(seconds: 2), () {
                  change();
                });
              }
              // else {
              // Timer(Duration(seconds: 1), change());
              // }
              print(isHighLight);
            },
            KeyboardText: r"$\begin{bmatrix}\Box&\Box&\Box\end{bmatrix}$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: width * 0.01,
          ),
          LatexKey(
            onLongPress: () {
              setState(() {
                isLong = true;
              });
            },
            onHightChange: (v) {
              setState(() {
                isHighLight = v;
              });
              if (isHighLight == true) {
                setState(() {
                  widget.changeValue.previewValue(
                      r"\begin{vmatrix}7&8\\9&0\end{vmatrix} $\rightarrow$ $\begin{vmatrix}7&8\\9&0\end{vmatrix}$");
                });
              } else {
                Future.delayed(const Duration(seconds: 2), () {
                  change();
                });
              }
              // else {
              // Timer(Duration(seconds: 1), change());
              // }
              print(isHighLight);
            },
            KeyboardText: r"$\begin{vmatrix}\Box&\Box\\\Box&\Box\end{vmatrix}$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: 8,
          ),
          LatexKey(
            onLongPress: () {
              setState(() {
                isLong = true;
              });
            },
            onHightChange: (v) {
              setState(() {
                isHighLight = v;
              });
              if (isHighLight == true) {
                setState(() {
                  widget.changeValue
                      .previewValue(r"\sqrt[1]{2} $\rightarrow$ $\sqrt[1]{2}$");
                });
              } else {
                Future.delayed(const Duration(seconds: 2), () {
                  change();
                });
              }
              // else {
              // Timer(Duration(seconds: 1), change());
              // }
              print(isHighLight);
            },
            KeyboardText: r"$\sqrt[\Box]{\Box}$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: width * 0.03,
          ),
          LatexKey(
            KeyboardText: r"$4$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: width * 0.04,
          ),
          LatexKey(
            KeyboardText: r"$5$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: width * 0.04,
          ),
          LatexKey(
            KeyboardText: r"$6$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: width * 0.04,
          ),
          LatexKey(
            KeyboardText: r"$\times $",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: width * 0.04,
          ),
          LatexKey(
            KeyboardText: r"$\div $",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: width * 0.04,
          ),
        ],
      ),
    );
  }

  matrix3() {
    return Expanded(
      child: Row(
        children: [
          LatexKey(
            KeyboardText: r"$A^{-1}$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: width * 0.02,
          ),
          LatexKey(
            onLongPress: () {
              setState(() {
                isLong = true;
              });
            },
            onHightChange: (v) {
              setState(() {
                isHighLight = v;
              });
              if (isHighLight == true) {
                setState(() {
                  widget.changeValue.previewValue(
                      r"A_{1\times2} $\rightarrow$ $A_{1\times2}$");
                });
              } else {
                Future.delayed(const Duration(seconds: 2), () {
                  change();
                });
              }
              // else {
              // Timer(Duration(seconds: 1), change());
              // }
              print(isHighLight);
            },
            KeyboardText: r"$A_{\Box\times\Box}$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: width * 0.02,
          ),
          LatexKey(
            KeyboardText: r"$\text{adj}$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: width * 0.03,
          ),
          LatexKey(
            onLongPress: () {
              setState(() {
                isLong = true;
              });
            },
            onHightChange: (v) {
              setState(() {
                isHighLight = v;
              });
              if (isHighLight == true) {
                setState(() {
                  widget.changeValue.previewValue(
                      r"\begin{vmatrix}2&3&4\\5&6&7\\8&9&0\end{vmatrix} $\rightarrow$ $\begin{vmatrix}2&3&4\\5&6&7\\8&9&0\end{vmatrix}$");
                });
              } else {
                Future.delayed(const Duration(seconds: 2), () {
                  change();
                });
              }
              // else {
              // Timer(Duration(seconds: 1), change());
              // }
              print(isHighLight);
            },
            KeyboardText:
                r"$\begin{vmatrix}\Box&\Box&\Box\\\Box&\Box&\Box\\\Box&\Box&\Box\end{vmatrix}$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: width * 0.01,
          ),
          LatexKey(
            onLongPress: () {
              setState(() {
                isLong = true;
              });
            },
            onHightChange: (v) {
              setState(() {
                isHighLight = v;
              });
              if (isHighLight == true) {
                setState(() {
                  widget.changeValue
                      .previewValue(r"\frac{1}{2} $\rightarrow$ $\frac{1}{2}$");
                });
              } else {
                Future.delayed(const Duration(seconds: 2), () {
                  change();
                });
              }
              // else {
              // Timer(Duration(seconds: 1), change());
              // }
              print(isHighLight);
            },
            KeyboardText: r"$\frac{\Box}{\Box}$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: width * 0.024,
          ),
          LatexKey(
            KeyboardText: r"$1$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: width * 0.04,
          ),
          LatexKey(
            KeyboardText: r"$2$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: width * 0.04,
          ),
          LatexKey(
            KeyboardText: r"$3$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: width * 0.04,
          ),
          LatexKey(
            KeyboardText: r"$+$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: width * 0.04,
          ),
          LatexKey(
            KeyboardText: r"$-$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: width * 0.04,
          ),
        ],
      ),
    );
  }

  matrix4() {
    return Expanded(
      child: Row(
        children: [
          LatexKey(
            KeyboardText: r"$\mathrm{A}$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: width * 0.04,
          ),
          LatexKey(
            KeyboardText: r"$\mathrm{B}$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: width * 0.04,
          ),
          LatexKey(
            KeyboardText: r"$\mathrm{I}$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: width * 0.04,
          ),
          LatexKey(
            //else {
            //   Timer(Duration(seconds: 1), change());
            // }

            KeyboardText: r"$\mathrm{X}$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: width * 0.04,
          ),
          LatexKey(
            KeyboardText: r"$\cdot $",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: width * 0.04,
          ),
          LatexKey(
            KeyboardText: r"$0$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: width * 0.04,
          ),
          LatexKey(
            textAlign: TextAlign.end,
            mathjax: true,
            KeyboardText: r"$.$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: width * 0.04,
          ),
          LatexKey(
            KeyboardText: r"$\ne $",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: width * 0.04,
          ),
          LatexKey(
            KeyboardText: r"$=$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: width * 0.04,
          ),
          ButtonKey(
            color: Colors.grey,

            // onLongPress: () {},
            icon: Icons.backspace,
            tap: () {
              widget.onBackspace.call();
            },
          ),
        ],
      ),
    );
  }

  intdx1() {
    return Expanded(
      child: Row(
        children: [
          LatexKey(
            KeyboardText: r"$\int $",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: width * 0.02,
          ),
          LatexKey(
            KeyboardText: r"$dx $",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: width * 0.034,
          ),
          LatexKey(
            onLongPress: () {
              setState(() {
                isLong = true;
              });
            },
            onHightChange: (v) {
              setState(() {
                isHighLight = v;
              });
              if (isHighLight == true) {
                setState(() {
                  widget.changeValue.previewValue(
                      r"\lim\limits_{1\to5}{8} $\rightarrow$ $\lim\limits_{1\to5}{8}$");
                });
              } else {
                Future.delayed(const Duration(seconds: 2), () {
                  change();
                });
              }
              // else {
              // Timer(Duration(seconds: 1), change());
              // }
              print(isHighLight);
            },
            KeyboardText: r"$\lim\limits_{\Box\to\Box}{\Box}$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: width * 0.02,
          ),
          LatexKey(
            onLongPress: () {
              setState(() {
                isLong = true;
              });
            },
            onHightChange: (v) {
              setState(() {
                isHighLight = v;
              });
              if (isHighLight == true) {
                setState(() {
                  widget.changeValue
                      .previewValue(r"{1}_{2} $\rightarrow$ ${1}_{2}$");
                });
              } else {
                Future.delayed(const Duration(seconds: 2), () {
                  change();
                });
              }
              // else {
              // Timer(Duration(seconds: 1), change());
              // }
              print(isHighLight);
            },
            KeyboardText: r"${\Box}_{\Box}$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: width * 0.03,
          ),
          LatexKey(
            onLongPress: () {
              setState(() {
                isLong = true;
              });
            },
            onHightChange: (v) {
              setState(() {
                isHighLight = v;
              });
              if (isHighLight == true) {
                setState(() {
                  widget.changeValue
                      .previewValue(r"{1}^{2} $\rightarrow$ ${1}^{2}$");
                });
              } else {
                Future.delayed(const Duration(seconds: 2), () {
                  change();
                });
              }
              // else {
              // Timer(Duration(seconds: 1), change());
              // }
              print(isHighLight);
            },
            KeyboardText: r"${\Box}^{\Box}$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: width * 0.03,
          ),
          LatexKey(
            KeyboardText: r"$7$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: width * 0.04,
          ),
          LatexKey(
            KeyboardText: r"$8$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: width * 0.04,
          ),
          LatexKey(
            KeyboardText: r"$9$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: width * 0.04,
          ),
          LatexKey(
            KeyboardText: r"$($",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: width * 0.04,
          ),
          LatexKey(
            KeyboardText: r"$)$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: width * 0.04,
          ),
        ],
      ),
    );
  }

  intdx2() {
    return Expanded(
      child: Row(
        children: [
          LatexKey(
            onLongPress: () {
              setState(() {
                isLong = true;
              });
            },
            onHightChange: (v) {
              setState(() {
                isHighLight = v;
              });
              if (isHighLight == true) {
                setState(() {
                  widget.changeValue.previewValue(
                      r"\int\limits_{a}^{b}{abdx} $\rightarrow$ $\int\limits_{a}^{b}{abdx}$");
                });
              } else {
                Future.delayed(const Duration(seconds: 2), () {
                  change();
                });
              }
              // else {
              // Timer(Duration(seconds: 1), change());
              // }
              print(isHighLight);
            },
            KeyboardText: r"$\int\limits_{\Box}^{\Box}{\Box}$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: 6,
          ),
          LatexKey(
            onLongPress: () {
              setState(() {
                isLong = true;
              });
            },
            onHightChange: (v) {
              setState(() {
                isHighLight = v;
              });
              if (isHighLight == true) {
                setState(() {
                  widget.changeValue.previewValue(
                      r"\frac{d}{dx}(2x^2) $\rightarrow$ $\frac{d}{dx}(2x^2)$");
                });
              } else {
                Future.delayed(const Duration(seconds: 2), () {
                  change();
                });
              }
              // else {
              // Timer(Duration(seconds: 1), change());
              // }
              print(isHighLight);
            },
            KeyboardText: r"$\frac{d}{dx}$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: width * 0.024,
          ),
          LatexKey(
            onLongPress: () {
              setState(() {
                isLong = true;
              });
            },
            onHightChange: (v) {
              setState(() {
                isHighLight = v;
              });
              if (isHighLight == true) {
                setState(() {
                  widget.changeValue.previewValue(
                      r"\frac{d^{2}}{dx^{2}} $\frac{d^{2}}{dx^{2}}$");
                });
              } else {
                Future.delayed(const Duration(seconds: 2), () {
                  change();
                });
              }
              // else {
              // Timer(Duration(seconds: 1), change());
              // }
              print(isHighLight);
            },
            KeyboardText: r"$\frac{d^{\Box}}{dx^{\Box}}$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: width * 0.024,
          ),
          LatexKey(
            onLongPress: () {
              setState(() {
                isLong = true;
              });
            },
            onHightChange: (v) {
              setState(() {
                isHighLight = v;
              });
              if (isHighLight == true) {
                setState(() {
                  widget.changeValue.previewValue(
                      r"\sum\limits_{n=1}^{0} $\rightarrow$ $\sum\limits_{n=1}^{0}$");
                });
              } else {
                Future.delayed(const Duration(seconds: 2), () {
                  change();
                });
              }
              // else {
              // Timer(Duration(seconds: 1), change());
              // }
              print(isHighLight);
            },
            KeyboardText: r"$\sum\limits_{\Box}^{\Box}$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: 8,
          ),
          LatexKey(
            onLongPress: () {
              setState(() {
                isLong = true;
              });
            },
            onHightChange: (v) {
              setState(() {
                isHighLight = v;
              });
              if (isHighLight == true) {
                setState(() {
                  widget.changeValue
                      .previewValue(r"\sqrt[1]{2} $\rightarrow$ $\sqrt[1]{2}$");
                });
              } else {
                Future.delayed(const Duration(seconds: 2), () {
                  change();
                });
              }
              // else {
              // Timer(Duration(seconds: 1), change());
              // }
              print(isHighLight);
            },
            KeyboardText: r"$\sqrt[\Box]{\Box}$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: width * 0.03,
          ),
          LatexKey(
            KeyboardText: r"$4$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: width * 0.04,
          ),
          LatexKey(
            KeyboardText: r"$5$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: width * 0.04,
          ),
          LatexKey(
            KeyboardText: r"$6$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: width * 0.04,
          ),
          LatexKey(
            KeyboardText: r"$\times $",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: width * 0.04,
          ),
          LatexKey(
            KeyboardText: r"$\div $",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: width * 0.04,
          ),
        ],
      ),
    );
  }

  intdx3() {
    return Expanded(
      child: Row(
        children: [
          LatexKey(
            KeyboardText: r"$|$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: width * 0.034,
          ),
          LatexKey(
            KeyboardText: r"$,$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: width * 0.034,
          ),
          LatexKey(
            KeyboardText: r"$;$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: width * 0.04,
          ),
          LatexKey(
            KeyboardText: r"$'$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: width * 0.04,
          ),
          LatexKey(
            onLongPress: () {
              setState(() {
                isLong = true;
              });
            },
            onHightChange: (v) {
              setState(() {
                isHighLight = v;
              });
              if (isHighLight == true) {
                setState(() {
                  widget.changeValue
                      .previewValue(r"\frac{1}{2} $\rightarrow$ $\frac{1}{2}$");
                });
              } else {
                Future.delayed(const Duration(seconds: 2), () {
                  change();
                });
              }
              // else {
              // Timer(Duration(seconds: 1), change());
              // }
              print(isHighLight);
            },
            KeyboardText: r"$\frac{\Box}{\Box}$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: width * 0.024,
          ),
          LatexKey(
            KeyboardText: r"$1$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: width * 0.04,
          ),
          LatexKey(
            KeyboardText: r"$2$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: width * 0.04,
          ),
          LatexKey(
            KeyboardText: r"$3$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: width * 0.04,
          ),
          LatexKey(
            KeyboardText: r"$+$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: width * 0.04,
          ),
          LatexKey(
            KeyboardText: r"$-$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: width * 0.04,
          ),
        ],
      ),
    );
  }

  enlx1() {
    return Expanded(
      child: Row(children: [
        LatexKey(
          KeyboardText: r"$\log $",
          onTextInput: textInputHandler,
          isTexOn: widget.idTexOn,
          fontSize: width * 0.03,
        ),
        LatexKey(
          KeyboardText: r"$e$",
          onTextInput: textInputHandler,
          isTexOn: widget.idTexOn,
          fontSize: width * 0.034,
        ),
        LatexKey(
          KeyboardText: r"$\ln $",
          onTextInput: textInputHandler,
          isTexOn: widget.idTexOn,
          fontSize: width * 0.03,
        ),
        LatexKey(
          onLongPress: () {
            setState(() {
              isLong = true;
            });
          },
          onHightChange: (v) {
            setState(() {
              isHighLight = v;
            });
            if (isHighLight == true) {
              setState(() {
                widget.changeValue
                    .previewValue(r"10^{12} $\rightarrow$ $10^{12}$");
              });
            } else {
              Future.delayed(const Duration(seconds: 2), () {
                change();
              });
            }
            // else {
            // Timer(Duration(seconds: 1), change());
            // }
            print(isHighLight);
          },
          KeyboardText: r"$10^{\Box}$",
          onTextInput: textInputHandler,
          isTexOn: widget.idTexOn,
          fontSize: width * 0.03,
        ),
        LatexKey(
          onLongPress: () {
            setState(() {
              isLong = true;
            });
          },
          onHightChange: (v) {
            setState(() {
              isHighLight = v;
            });
            if (isHighLight == true) {
              setState(() {
                widget.changeValue
                    .previewValue(r"{1}^{2} $\rightarrow$ ${1}^{2}$");
              });
            } else {
              Future.delayed(const Duration(seconds: 2), () {
                change();
              });
            }
            // else {
            // Timer(Duration(seconds: 1), change());
            // }
            print(isHighLight);
          },
          KeyboardText: r"${\Box}^{\Box}$",
          onTextInput: textInputHandler,
          isTexOn: widget.idTexOn,
          fontSize: width * 0.03,
        ),
        LatexKey(
          KeyboardText: r"$7$",
          onTextInput: textInputHandler,
          isTexOn: widget.idTexOn,
          fontSize: width * 0.04,
        ),
        LatexKey(
          KeyboardText: r"$8$",
          onTextInput: textInputHandler,
          isTexOn: widget.idTexOn,
          fontSize: width * 0.04,
        ),
        LatexKey(
          KeyboardText: r"$9$",
          onTextInput: textInputHandler,
          isTexOn: widget.idTexOn,
          fontSize: width * 0.04,
        ),
        LatexKey(
          KeyboardText: r"$($",
          onTextInput: textInputHandler,
          isTexOn: widget.idTexOn,
          fontSize: width * 0.04,
        ),
        LatexKey(
          KeyboardText: r"$)$",
          onTextInput: textInputHandler,
          isTexOn: widget.idTexOn,
          fontSize: width * 0.04,
        ),
      ]),
    );
  }

  enlx2() {
    return Expanded(
      child: Row(
        children: [
          LatexKey(
            onLongPress: () {
              setState(() {
                isLong = true;
              });
            },
            onHightChange: (v) {
              setState(() {
                isHighLight = v;
              });
              if (isHighLight == true) {
                setState(() {
                  widget.changeValue
                      .previewValue(r"\log_{1}{2} $\rightarrow$ $\log_{1}{2}$");
                });
              } else {
                Future.delayed(const Duration(seconds: 2), () {
                  change();
                });
              }
              // else {
              // Timer(Duration(seconds: 1), change());
              // }
              print(isHighLight);
            },
            KeyboardText: r"$\log_{\Box}{\Box}$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: 9,
          ),
          LatexKey(
            onLongPress: () {
              setState(() {
                isLong = true;
              });
            },
            onHightChange: (v) {
              setState(() {
                isHighLight = v;
              });
              if (isHighLight == true) {
                setState(() {
                  widget.changeValue
                      .previewValue(r"e^{a+b} $\rightarrow$ $e^{a+b}$");
                });
              } else {
                Future.delayed(const Duration(seconds: 2), () {
                  change();
                });
              }
              // else {
              // Timer(Duration(seconds: 1), change());
              // }
              print(isHighLight);
            },
            KeyboardText: r"$e^{\Box}$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: width * 0.034,
          ),
          LatexKey(
            onLongPress: () {
              setState(() {
                isLong = true;
              });
            },
            onHightChange: (v) {
              setState(() {
                isHighLight = v;
              });
              if (isHighLight == true) {
                setState(() {
                  widget.changeValue
                      .previewValue(r"\ln(2x) $\rightarrow$ $\ln(2x)$");
                });
              } else {
                Future.delayed(const Duration(seconds: 2), () {
                  change();
                });
              }
              // else {
              // Timer(Duration(seconds: 1), change());
              // }
              print(isHighLight);
            },
            KeyboardText: r"$\ln()$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: width * 0.024,
          ),
          LatexKey(
            onLongPress: () {
              setState(() {
                isLong = true;
              });
            },
            onHightChange: (v) {
              setState(() {
                isHighLight = v;
              });
              if (isHighLight == true) {
                setState(() {
                  widget.changeValue
                      .previewValue(r"\sqrt{2} $\rightarrow$ $\sqrt{2}$");
                });
              } else {
                Future.delayed(const Duration(seconds: 2), () {
                  change();
                });
              }
              // else {
              // Timer(Duration(seconds: 1), change());
              // }
              print(isHighLight);
            },
            KeyboardText: r"$\sqrt{\Box}$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: width * 0.03,
          ),
          LatexKey(
            onLongPress: () {
              setState(() {
                isLong = true;
              });
            },
            onHightChange: (v) {
              setState(() {
                isHighLight = v;
              });
              if (isHighLight == true) {
                setState(() {
                  widget.changeValue
                      .previewValue(r"\sqrt[1]{2} $\rightarrow$ $\sqrt[1]{2}$");
                });
              } else {
                Future.delayed(const Duration(seconds: 2), () {
                  change();
                });
              }
              // else {
              // Timer(Duration(seconds: 1), change());
              // }
              print(isHighLight);
            },
            KeyboardText: r"$\sqrt[\Box]{\Box}$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: width * 0.03,
          ),
          LatexKey(
            KeyboardText: r"$4$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: width * 0.04,
          ),
          LatexKey(
            KeyboardText: r"$5$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: width * 0.04,
          ),
          LatexKey(
            KeyboardText: r"$6$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: width * 0.04,
          ),
          LatexKey(
            KeyboardText: r"$\times $",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: width * 0.04,
          ),
          LatexKey(
            KeyboardText: r"$\div $",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: width * 0.04,
          ),
        ],
      ),
    );
  }

  enlx3() {
    return Expanded(
      child: Row(
        children: [
          LatexKey(
            KeyboardText: r"$|$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: width * 0.034,
          ),
          LatexKey(
            KeyboardText: r"$\{$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: width * 0.034,
          ),
          LatexKey(
            KeyboardText: r"$\}$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: width * 0.04,
          ),
          LatexKey(
            onLongPress: () {
              setState(() {
                isLong = true;
              });
            },
            onHightChange: (v) {
              setState(() {
                isHighLight = v;
              });
              if (isHighLight == true) {
                setState(() {
                  widget.changeValue
                      .previewValue(r"{a}_{b} $\rightarrow$ ${a}_{b}$");
                });
              } else {
                Future.delayed(const Duration(seconds: 2), () {
                  change();
                });
              }
              // else {
              // Timer(Duration(seconds: 1), change());
              // }
              print(isHighLight);
            },
            KeyboardText: r"${\Box}_{\Box}$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: width * 0.03,
          ),
          LatexKey(
            onLongPress: () {
              setState(() {
                isLong = true;
              });
            },
            onHightChange: (v) {
              setState(() {
                isHighLight = v;
              });
              if (isHighLight == true) {
                setState(() {
                  widget.changeValue
                      .previewValue(r"\frac{1}{2} $\rightarrow$ $\frac{1}{2}$");
                });
              } else {
                Future.delayed(const Duration(seconds: 2), () {
                  change();
                });
              }
              // else {
              // Timer(Duration(seconds: 1), change());
              // }
              print(isHighLight);
            },
            KeyboardText: r"$\frac{\Box}{\Box}$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: width * 0.024,
          ),
          LatexKey(
            KeyboardText: r"$1$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: width * 0.04,
          ),
          LatexKey(
            KeyboardText: r"$2$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: width * 0.04,
          ),
          LatexKey(
            KeyboardText: r"$3$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: width * 0.04,
          ),
          LatexKey(
            KeyboardText: r"$+$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: width * 0.04,
          ),
          LatexKey(
            KeyboardText: r"$-$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: width * 0.04,
          ),
        ],
      ),
    );
  }

  enlx4() {
    return Expanded(
      child: Row(
        children: [
          LatexKey(
            KeyboardText: r"$\in $",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: width * 0.04,
          ),
          LatexKey(
            KeyboardText: r"$\infty $",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: width * 0.04,
          ),
          LatexKey(
            onLongPress: () {
              setState(() {
                isLong = true;
              });
            },
            onHightChange: (v) {
              setState(() {
                isHighLight = v;
              });
              if (isHighLight == true) {
                setState(() {
                  widget.changeValue.previewValue(r"f(x) $\rightarrow$ $f(x)$");
                });
              } else {
                Future.delayed(const Duration(seconds: 2), () {
                  change();
                });
              }
              //else {
              //   Timer(Duration(seconds: 1), change());
              // }
              print(isHighLight);
            },
            KeyboardText: r"$f(x)$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: width * 0.024,
          ),
          LatexKey(
            onLongPress: () {
              setState(() {
                isLong = true;
              });
            },
            onHightChange: (v) {
              setState(() {
                isHighLight = v;
              });
              if (isHighLight == true) {
                setState(() {
                  widget.changeValue
                      .previewValue(r"f^{a}(b) $\rightarrow$ $f^{a}(b)$");
                });
              } else {
                Future.delayed(const Duration(seconds: 2), () {
                  change();
                });
              }
              //else {
              //   Timer(Duration(seconds: 1), change());
              // }
              print(isHighLight);
            },
            KeyboardText: r"$f^{\Box}(\Box)$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: width * 0.02,
          ),
          LatexKey(
            KeyboardText: r"$\cdot $",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: width * 0.04,
          ),
          LatexKey(
            KeyboardText: r"$0$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: width * 0.04,
          ),
          LatexKey(
            mathjax: true,
            textAlign: TextAlign.end,
            KeyboardText: r"$.$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: width * 0.04,
          ),
          LatexKey(
            KeyboardText: r"$\ne $",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: width * 0.04,
          ),
          LatexKey(
            KeyboardText: r"$=$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: width * 0.04,
          ),
          ButtonKey(
            color: Colors.grey,
            onLongPress: () {
              widget.changeValue.deleteAll();
            },
            icon: Icons.backspace,
            tap: () {
              widget.onBackspace.call();
            },
          ),
        ],
      ),
    );
  }

  fx1() {
    return Expanded(
      child: Row(
        children: [
          LatexKey(
            KeyboardText: r"$\{$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: width * 0.034,
          ),
          LatexKey(
            KeyboardText: r"$\}$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: width * 0.034,
          ),
          LatexKey(
            onLongPress: () {
              setState(() {
                isLong = true;
              });
            },
            onHightChange: (v) {
              setState(() {
                isHighLight = v;
              });
              if (isHighLight == true) {
                setState(() {
                  widget.changeValue.previewValue(
                      r"\begin{cases}{a} \\ {b} \end{cases} $\rightarrow$ $\begin{cases}{a} \\ {b} \end{cases}$");
                });
              } else {
                Future.delayed(const Duration(seconds: 2), () {
                  change();
                });
              }
              // else {
              // Timer(Duration(seconds: 1), change());
              // }
              print(isHighLight);
            },
            KeyboardText: r"$\begin{cases}{\Box} \\ {\Box} \end{cases}$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: width * 0.02,
          ),
          LatexKey(
            onLongPress: () {
              setState(() {
                isLong = true;
              });
            },
            onHightChange: (v) {
              setState(() {
                isHighLight = v;
              });
              if (isHighLight == true) {
                setState(() {
                  widget.changeValue
                      .previewValue(r"{a}_{b} $\rightarrow$ ${a}_{b}$");
                });
              } else {
                Future.delayed(const Duration(seconds: 2), () {
                  change();
                });
              }
              // else {
              // Timer(Duration(seconds: 1), change());
              // }
              print(isHighLight);
            },
            mathjax: true,
            KeyboardText: r"${\Box}_{\Box}$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: width * 0.03,
          ),
          LatexKey(
            onLongPress: () {
              setState(() {
                isLong = true;
              });
            },
            onHightChange: (v) {
              setState(() {
                isHighLight = v;
              });
              if (isHighLight == true) {
                setState(() {
                  widget.changeValue
                      .previewValue(r"{1}^{2} $\rightarrow$ ${1}^{2}$");
                });
              } else {
                Future.delayed(const Duration(seconds: 2), () {
                  change();
                });
              }
              // else {
              // Timer(Duration(seconds: 1), change());
              // }
              print(isHighLight);
            },
            KeyboardText: r"${\Box}^{\Box}$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: width * 0.03,
          ),
          LatexKey(
            KeyboardText: r"$7$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: width * 0.04,
          ),
          LatexKey(
            KeyboardText: r"$8$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: width * 0.04,
          ),
          LatexKey(
            KeyboardText: r"$9$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: width * 0.04,
          ),
          LatexKey(
            KeyboardText: r"$($",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: width * 0.04,
          ),
          LatexKey(
            KeyboardText: r"$)$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: width * 0.04,
          ),
        ],
      ),
    );
  }

  fx2() {
    return Expanded(
      child: Row(
        children: [
          LatexKey(
            KeyboardText: r"$[$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: width * 0.034,
          ),
          LatexKey(
            KeyboardText: r"$]$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: width * 0.034,
          ),
          LatexKey(
            onLongPress: () {
              setState(() {
                isLong = true;
              });
            },
            onHightChange: (v) {
              setState(() {
                isHighLight = v;
              });
              if (isHighLight == true) {
                setState(() {
                  widget.changeValue.previewValue(
                      r"\begin{cases}{a}\\{b}\\{c}\end{cases} $\rightarrow$ $\begin{cases}{a}\\{b}\\{c}\end{cases}$");
                });
              } else {
                Future.delayed(const Duration(seconds: 2), () {
                  change();
                });
              }
              // else {
              // Timer(Duration(seconds: 1), change());
              // }
              print(isHighLight);
            },
            KeyboardText: r"$\begin{cases}{\Box}\\{\Box}\\{\Box}\end{cases}$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: 6,
          ),
          LatexKey(
            // onLongPress: () {
            //   setState(() {
            //     isLong = true;
            //   });
            // },
            // onHightChange: (v) {
            //   setState(() {
            //     isHighLight = v;
            //   });
            //   if (isHighLight == true) {
            //     setState(() {
            //       widget.changeValue
            //           .previewValue(r"\sqrt[1]{2} $\rightarrow$ $\sqrt[1]{2}$");
            //     });
            //   } else {
            //     Future.delayed(const Duration(seconds: 2), () {
            //       change();
            //     });
            //   }
            //   // else {
            //   // Timer(Duration(seconds: 1), change());
            //   // }
            //   print(isHighLight);
            // },
            mathjax: true,
            KeyboardText: r"$\R$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: width * 0.03,
          ),
          LatexKey(
            onLongPress: () {
              setState(() {
                isLong = true;
              });
            },
            onHightChange: (v) {
              setState(() {
                isHighLight = v;
              });
              if (isHighLight == true) {
                setState(() {
                  widget.changeValue
                      .previewValue(r"\sqrt[1]{2} $\rightarrow$ $\sqrt[1]{2}$");
                });
              } else {
                Future.delayed(const Duration(seconds: 2), () {
                  change();
                });
              }
              // else {
              // Timer(Duration(seconds: 1), change());
              // }
              print(isHighLight);
            },
            KeyboardText: r"$\sqrt[\Box]{\Box}$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: width * 0.03,
          ),
          LatexKey(
            KeyboardText: r"$4$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: width * 0.04,
          ),
          LatexKey(
            KeyboardText: r"$5$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: width * 0.04,
          ),
          LatexKey(
            KeyboardText: r"$6$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: width * 0.04,
          ),
          LatexKey(
            KeyboardText: r"$\times $",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: width * 0.04,
          ),
          LatexKey(
            KeyboardText: r"$\div $",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: width * 0.04,
          ),
        ],
      ),
    );
  }

  fx3() {
    return Expanded(
      child: Row(
        children: [
          LatexKey(
            KeyboardText: r"$|$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: width * 0.034,
          ),
          LatexKey(
            KeyboardText: r"$,$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: width * 0.034,
          ),
          LatexKey(
            KeyboardText: r"$;$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: width * 0.04,
          ),
          LatexKey(
            onLongPress: () {
              setState(() {
                isLong = true;
              });
            },
            onHightChange: (v) {
              setState(() {
                isHighLight = v;
              });
              if (isHighLight == true) {
                setState(() {
                  widget.changeValue
                      .previewValue(r"D_{a} $\rightarrow$ $D_{a}$");
                });
              } else {
                Future.delayed(const Duration(seconds: 2), () {
                  change();
                });
              }
              // else {
              // Timer(Duration(seconds: 1), change());
              // }
              print(isHighLight);
            },
            KeyboardText: r"$D_{\Box}$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: width * 0.024,
          ),
          LatexKey(
            onLongPress: () {
              setState(() {
                isLong = true;
              });
            },
            onHightChange: (v) {
              setState(() {
                isHighLight = v;
              });
              if (isHighLight == true) {
                setState(() {
                  widget.changeValue
                      .previewValue(r"\frac{1}{2} $\rightarrow$ $\frac{1}{2}$");
                });
              } else {
                Future.delayed(const Duration(seconds: 2), () {
                  change();
                });
              }
              // else {
              // Timer(Duration(seconds: 1), change());
              // }
              print(isHighLight);
            },
            KeyboardText: r"$\frac{\Box}{\Box}$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: width * 0.024,
          ),
          LatexKey(
            KeyboardText: r"$1$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: width * 0.04,
          ),
          LatexKey(
            KeyboardText: r"$2$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: width * 0.04,
          ),
          LatexKey(
            KeyboardText: r"$3$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: width * 0.04,
          ),
          LatexKey(
            KeyboardText: r"$+$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: width * 0.04,
          ),
          LatexKey(
            KeyboardText: r"$-$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: width * 0.04,
          ),
        ],
      ),
    );
  }

  fx4() {
    return Expanded(
      child: Row(
        children: [
          LatexKey(
            KeyboardText: r"$\in $",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: width * 0.04,
          ),
          LatexKey(
            KeyboardText: r"$\infty $",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: width * 0.04,
          ),
          LatexKey(
            onLongPress: () {
              setState(() {
                isLong = true;
              });
            },
            onHightChange: (v) {
              setState(() {
                isHighLight = v;
              });
              if (isHighLight == true) {
                setState(() {
                  widget.changeValue.previewValue(r"f(x) $\rightarrow$ $f(x)$");
                });
              } else {
                Future.delayed(const Duration(seconds: 2), () {
                  change();
                });
              }
              //else {
              //   Timer(Duration(seconds: 1), change());
              // }
              print(isHighLight);
            },
            KeyboardText: r"$f(x)$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: width * 0.024,
          ),
          LatexKey(
            onLongPress: () {
              setState(() {
                isLong = true;
              });
            },
            onHightChange: (v) {
              setState(() {
                isHighLight = v;
              });
              if (isHighLight == true) {
                setState(() {
                  widget.changeValue
                      .previewValue(r"f^{a}(b) $\rightarrow$ $f^{a}(b)$");
                });
              } else {
                Future.delayed(const Duration(seconds: 2), () {
                  change();
                });
              }
              //else {
              //   Timer(Duration(seconds: 1), change());
              // }
              print(isHighLight);
            },
            KeyboardText: r"$f^{\Box}(\Box)$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: width * 0.02,
          ),
          LatexKey(
            KeyboardText: r"$\cdot $",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: width * 0.04,
          ),
          LatexKey(
            KeyboardText: r"$0$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: width * 0.04,
          ),
          LatexKey(
            mathjax: true,
            textAlign: TextAlign.end,
            KeyboardText: r"$.$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: width * 0.04,
          ),
          LatexKey(
            KeyboardText: r"$\ne $",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: width * 0.04,
          ),
          LatexKey(
            KeyboardText: r"$=$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: width * 0.04,
          ),
          ButtonKey(
            color: Colors.grey,

            // onLongPress: () {},
            icon: Icons.backspace,
            tap: () {
              widget.onBackspace.call();
            },
          ),
        ],
      ),
    );
  }

  sinX1() {
    return Expanded(
      child: Row(
        children: [
          LatexKey(
            KeyboardText: r"$\sin $",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: width * 0.034,
          ),
          LatexKey(
            KeyboardText: r"$\csc $",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: width * 0.034,
          ),
          LatexKey(
            KeyboardText: r"$\theta $",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: width * 0.04,
          ),
          LatexKey(
            KeyboardText: r"$\pi $",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: width * 0.04,
          ),
          LatexKey(
            onLongPress: () {
              setState(() {
                isLong = true;
              });
            },
            onHightChange: (v) {
              setState(() {
                isHighLight = v;
              });
              if (isHighLight == true) {
                setState(() {
                  widget.changeValue
                      .previewValue(r"{1}^{2} $\rightarrow$ ${1}^{2}$");
                });
              } else {
                Future.delayed(const Duration(seconds: 2), () {
                  change();
                });
              }
              // else {
              // Timer(Duration(seconds: 1), change());
              // }
              print(isHighLight);
            },
            KeyboardText: r"${\Box}^{\Box}$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: width * 0.03,
          ),
          LatexKey(
            KeyboardText: r"$7$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: width * 0.04,
          ),
          LatexKey(
            KeyboardText: r"$8$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: width * 0.04,
          ),
          LatexKey(
            KeyboardText: r"$9$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: width * 0.04,
          ),
          LatexKey(
            KeyboardText: r"$($",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: width * 0.04,
          ),
          LatexKey(
            KeyboardText: r"$)$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: width * 0.04,
          ),
        ],
      ),
    );
  }

  sinX2() {
    return Expanded(
      child: Row(
        children: [
          LatexKey(
            KeyboardText: r"$\cos $",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: width * 0.034,
          ),
          LatexKey(
            KeyboardText: r"$\sec $",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: width * 0.034,
          ),
          LatexKey(
            KeyboardText: r"$\triangle $",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: width * 0.04,
          ),
          LatexKey(
            KeyboardText: r"$^\circ$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: width * 0.03,
          ),
          LatexKey(
            onLongPress: () {
              setState(() {
                isLong = true;
              });
            },
            onHightChange: (v) {
              setState(() {
                isHighLight = v;
              });
              if (isHighLight == true) {
                setState(() {
                  widget.changeValue
                      .previewValue(r"\sqrt[1]{2} $\rightarrow$ $\sqrt[1]{2}$");
                });
              } else {
                Future.delayed(const Duration(seconds: 2), () {
                  change();
                });
              }
              // else {
              // Timer(Duration(seconds: 1), change());
              // }
              print(isHighLight);
            },
            KeyboardText: r"$\sqrt[\Box]{\Box}$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: width * 0.03,
          ),
          LatexKey(
            KeyboardText: r"$4$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: width * 0.04,
          ),
          LatexKey(
            KeyboardText: r"$5$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: width * 0.04,
          ),
          LatexKey(
            KeyboardText: r"$6$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: width * 0.04,
          ),
          LatexKey(
            KeyboardText: r"$\times $",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: width * 0.04,
          ),
          LatexKey(
            KeyboardText: r"$\div $",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: width * 0.04,
          ),
        ],
      ),
    );
  }

  sinX3() {
    return Expanded(
      child: Row(
        children: [
          LatexKey(
            KeyboardText: r"$\tan $",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: width * 0.034,
          ),
          LatexKey(
            KeyboardText: r"$\cot $",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: width * 0.034,
          ),
          LatexKey(
            KeyboardText: r"$\Box $",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: width * 0.04,
          ),
          LatexKey(
            onLongPress: () {
              setState(() {
                isLong = true;
              });
            },
            onHightChange: (v) {
              setState(() {
                isHighLight = v;
              });
              if (isHighLight == true) {
                setState(() {
                  widget.changeValue.previewValue(
                      r"\mathrm{\hat{ABC}} $\rightarrow$ $\mathrm{\hat{ABC}}$");
                });
              } else {
                Future.delayed(const Duration(seconds: 2), () {
                  change();
                });
              }
              // else {
              // Timer(Duration(seconds: 1), change());
              // }
              print(isHighLight);
            },
            mathjax: true,
            KeyboardText: r"$\mathrm{\hat{ABC}}$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: width * 0.024,
          ),
          LatexKey(
            onLongPress: () {
              setState(() {
                isLong = true;
              });
            },
            onHightChange: (v) {
              setState(() {
                isHighLight = v;
              });
              if (isHighLight == true) {
                setState(() {
                  widget.changeValue
                      .previewValue(r"\frac{1}{2} $\rightarrow$ $\frac{1}{2}$");
                });
              } else {
                Future.delayed(const Duration(seconds: 2), () {
                  change();
                });
              }
              // else {
              // Timer(Duration(seconds: 1), change());
              // }
              print(isHighLight);
            },
            KeyboardText: r"$\frac{\Box}{\Box}$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: width * 0.024,
          ),
          LatexKey(
            KeyboardText: r"$1$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: width * 0.04,
          ),
          LatexKey(
            KeyboardText: r"$2$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: width * 0.04,
          ),
          LatexKey(
            KeyboardText: r"$3$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: width * 0.04,
          ),
          LatexKey(
            KeyboardText: r"$+$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: width * 0.04,
          ),
          LatexKey(
            KeyboardText: r"$-$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: width * 0.04,
          ),
        ],
      ),
    );
  }

  sinX4() {
    return Expanded(
      child: Row(
        children: [
          LatexKey(
            KeyboardText: r"$\mathrm{A}$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: width * 0.04,
          ),
          LatexKey(
            KeyboardText: r"$\mathrm{B}$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: width * 0.04,
          ),
          LatexKey(
            KeyboardText: r"$\mathrm{C}$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: width * 0.04,
          ),
          LatexKey(
            onLongPress: () {
              setState(() {
                isLong = true;
              });
            },
            onHightChange: (v) {
              setState(() {
                isHighLight = v;
              });
              if (isHighLight == true) {
                setState(() {
                  widget.changeValue.previewValue(
                      r"\mathrm{\overline{AB}} $\rightarrow$ $\mathrm{\overline{AB}}$");
                });
              } else {
                Future.delayed(const Duration(seconds: 2), () {
                  change();
                });
              }
              //else {
              //   Timer(Duration(seconds: 1), change());
              // }
              print(isHighLight);
            },
            KeyboardText: r"$\mathrm{\overline{AB}}$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: width * 0.03,
          ),
          LatexKey(
            KeyboardText: r"$\cdot $",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: width * 0.04,
          ),
          LatexKey(
            KeyboardText: r"$0$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: width * 0.04,
          ),
          LatexKey(
            mathjax: true,
            textAlign: TextAlign.end,
            KeyboardText: r"$.$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: width * 0.04,
          ),
          LatexKey(
            KeyboardText: r"$\ne $",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: width * 0.04,
          ),
          LatexKey(
            KeyboardText: r"$=$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: width * 0.04,
          ),
          ButtonKey(
            color: Colors.grey,

            // onLongPress: () {},
            icon: Icons.backspace,
            tap: () {
              widget.onBackspace.call();
            },
          ),
        ],
      ),
    );
  }

  x21() {
    return Expanded(
      child: Row(
        children: [
          LatexKey1(
            KeyboardText: r"$x^2$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: width * 0.04,
          ),
          LatexKey(
            KeyboardText: r"$\%$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: width * 0.04,
          ),
          LatexKey(
            onLongPress: () {
              setState(() {
                isLong = true;
              });
            },
            onHightChange: (v) {
              setState(() {
                isHighLight = v;
              });
              if (isHighLight == true) {
                setState(() {
                  widget.changeValue.previewValue(
                      r"{r}_{circle} $\rightarrow$ ${r}_{circle}$");
                });
              } else {
                Future.delayed(const Duration(seconds: 2), () {
                  change();
                });
              }
              // else {
              // Timer(Duration(seconds: 1), change());
              // }
              print(isHighLight);
            },
            KeyboardText: r"${\Box}_{\Box}$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: width * 0.04,
          ),
          LatexKey(
            KeyboardText: r"$\pi $",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: width * 0.04,
          ),
          LatexKey(
            onLongPress: () {
              setState(() {
                isLong = true;
              });
            },
            onHightChange: (v) {
              setState(() {
                isHighLight = v;
              });
              if (isHighLight == true) {
                setState(() {
                  widget.changeValue
                      .previewValue(r"{1}^{2} $\rightarrow$ ${1}^{2}$");
                });
              } else {
                Future.delayed(const Duration(seconds: 2), () {
                  change();
                });
              }
              // else {
              // Timer(Duration(seconds: 1), change());
              // }
              print(isHighLight);
            },
            KeyboardText: r"${\Box}^{\Box}$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: width * 0.03,
          ),
          LatexKey(
            KeyboardText: r"$7$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: width * 0.04,
          ),
          LatexKey(
            KeyboardText: r"$8$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: width * 0.04,
          ),
          LatexKey(
            KeyboardText: r"$9$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: width * 0.04,
          ),
          LatexKey(
            KeyboardText: r"$($",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: width * 0.04,
          ),
          LatexKey(
            KeyboardText: r"$)$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: width * 0.04,
          ),
        ],
      ),
    );
  }

  x22() {
    return Expanded(
      child: Row(
        children: [
          LatexKey(
            KeyboardText: r"$\infty $",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: width * 0.04,
          ),
          LatexKey(
            KeyboardText: r"$!$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: width * 0.04,
          ),
          LatexKey(
            onLongPress: () {
              setState(() {
                isLong = true;
              });
            },
            onHightChange: (v) {
              setState(() {
                isHighLight = v;
              });
              if (isHighLight == true) {
                setState(() {
                  widget.changeValue
                      .previewValue(r"\dot{1} $\rightarrow$ $\dot{1}$");
                });
              } else {
                Future.delayed(const Duration(seconds: 2), () {
                  change();
                });
              }
              // else {
              // Timer(Duration(seconds: 1), change());
              // }
              print(isHighLight);
            },
            KeyboardText: r"$\dot{\Box}$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: width * 0.04,
          ),
          LatexKey(
            onLongPress: () {
              setState(() {
                isLong = true;
              });
            },
            onHightChange: (v) {
              setState(() {
                isHighLight = v;
              });
              if (isHighLight == true) {
                setState(() {
                  widget.changeValue
                      .previewValue(r"\sqrt{2} $\rightarrow$ $\sqrt{2}$");
                });
              } else {
                Future.delayed(const Duration(seconds: 2), () {
                  change();
                });
              }
              // else {
              // Timer(Duration(seconds: 1), change());
              // }
              print(isHighLight);
            },
            KeyboardText: r"$\sqrt{\Box}$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: width * 0.03,
          ),
          LatexKey(
            onLongPress: () {
              setState(() {
                isLong = true;
              });
            },
            onHightChange: (v) {
              setState(() {
                isHighLight = v;
              });
              if (isHighLight == true) {
                setState(() {
                  widget.changeValue
                      .previewValue(r"\sqrt[1]{2} $\rightarrow$ $\sqrt[1]{2}$");
                });
              } else {
                Future.delayed(const Duration(seconds: 2), () {
                  change();
                });
              }
              // else {
              // Timer(Duration(seconds: 1), change());
              // }
              print(isHighLight);
            },
            KeyboardText: r"$\sqrt[\Box]{\Box}$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: width * 0.03,
          ),
          LatexKey(
            KeyboardText: r"$4$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: width * 0.04,
          ),
          LatexKey(
            KeyboardText: r"$5$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: width * 0.04,
          ),
          LatexKey(
            KeyboardText: r"$6$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: width * 0.04,
          ),
          LatexKey(
            KeyboardText: r"$\times $",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: width * 0.04,
          ),
          LatexKey(
            KeyboardText: r"$\div $",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: width * 0.04,
          ),
        ],
      ),
    );
  }

  x23() {
    return Expanded(
      child: Row(
        children: [
          LatexKey(
            KeyboardText: r"$|$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: width * 0.04,
          ),
          LatexKey(
            KeyboardText: r"$/$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: width * 0.04,
          ),
          LatexKey(
            KeyboardText: r"$,$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: width * 0.04,
          ),
          LatexKey(
            onLongPress: () {
              setState(() {
                isLong = true;
              });
            },
            onHightChange: (v) {
              setState(() {
                isHighLight = v;
              });
              if (isHighLight == true) {
                setState(() {
                  widget.changeValue.previewValue(
                      r"{1}\dfrac{1}{2} $\rightarrow$ ${1}\dfrac{1}{2}$");
                });
              } else {
                Future.delayed(const Duration(seconds: 2), () {
                  change();
                });
              }
              // else {
              // Timer(Duration(seconds: 1), change());
              // }
              print(isHighLight);
            },
            KeyboardText: r"${\Box}\dfrac{\Box}{\Box}$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: width * 0.024,
          ),
          LatexKey(
            onLongPress: () {
              setState(() {
                isLong = true;
              });
            },
            onHightChange: (v) {
              setState(() {
                isHighLight = v;
              });
              if (isHighLight == true) {
                setState(() {
                  widget.changeValue
                      .previewValue(r"\frac{1}{2} $\rightarrow$ $\frac{1}{2}$");
                });
              } else {
                Future.delayed(const Duration(seconds: 2), () {
                  change();
                });
              }
              // else {
              // Timer(Duration(seconds: 1), change());
              // }
              print(isHighLight);
            },
            KeyboardText: r"$\frac{\Box}{\Box}$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: width * 0.024,
          ),
          LatexKey(
            KeyboardText: r"$1$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: width * 0.04,
          ),
          LatexKey(
            KeyboardText: r"$2$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: width * 0.04,
          ),
          LatexKey(
            KeyboardText: r"$3$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: width * 0.04,
          ),
          LatexKey(
            KeyboardText: r"$+$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: width * 0.04,
          ),
          LatexKey(
            KeyboardText: r"$-$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: width * 0.04,
          ),
        ],
      ),
    );
  }

  x24() {
    return Expanded(
      child: Row(
        children: [
          LatexKey(
            KeyboardText: r"$a$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: width * 0.04,
          ),
          LatexKey(
            KeyboardText: r"$b$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: width * 0.04,
          ),
          LatexKey(
            KeyboardText: r"$c$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: width * 0.04,
          ),
          LatexKey(
            KeyboardText: r"$:$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: width * 0.04,
          ),
          LatexKey(
            // onLongPress: () {
            //   setState(() {
            //     isLong = true;
            //   });
            // },
            // onHightChange: (v) {
            //   setState(() {
            //     isHighLight = v;
            //   });
            //   if (isHighLight == true) {
            //     setState(() {
            //       widget.changeValue
            //           .previewValue(r"\dot{1}} $\rightarrow$ $\dot{1}$");
            //     });
            //   } else {
            //     Future.delayed(const Duration(seconds: 2), () {
            //       change();
            //     });
            //   }
            //   //else {
            //   //   Timer(Duration(seconds: 1), change());
            //   // }
            //   print(isHighLight);
            // },
            mathjax: true,
            KeyboardText: r"$\cdot $",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: width * 0.04,
          ),
          LatexKey(
            KeyboardText: r"$0$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: width * 0.04,
          ),
          LatexKey(
            mathjax: true,
            textAlign: TextAlign.end,
            KeyboardText: r"$.$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: width * 0.04,
          ),
          LatexKey(
            KeyboardText: r"$\ne $",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: width * 0.04,
          ),
          LatexKey(
            KeyboardText: r"$=$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: width * 0.04,
          ),
          ButtonKey(
            color: Colors.grey,

            // onLongPress: () {},
            icon: Icons.backspace,
            tap: () {
              widget.onBackspace.call();
            },
          ),
        ],
      ),
    );
  }

  commomRow() {
    return Expanded(
      child: Row(
        children: [
          LatexKey(
            KeyboardText: r"$<$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: width * 0.04,
          ),
          LatexKey(
            KeyboardText: r"$>$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: width * 0.04,
          ),
          LatexKey(
            KeyboardText: r"$\leq $",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: width * 0.04,
          ),
          LatexKey(
            KeyboardText: r"$\geq $",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: width * 0.04,
          ),
          LatexKey(
            KeyboardText: r"$\pm $",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: width * 0.04,
          ),
          LatexKey(
            KeyboardText: r"$x$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: width * 0.04,
          ),
          LatexKey(
            KeyboardText: r"$y$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: width * 0.04,
          ),
          LatexKey(
            KeyboardText: r"$z$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: width * 0.04,
          ),
          ButtonKey(
            color: Colors.grey,
            flex: 1,
            icon: Icons.space_bar,
            tap: () {
              textInputHandler(" ");
            },
          ),
          ButtonKey(
            color: Colors.grey,
            flex: 1,
            icon: Icons.skip_next,
            tap: () {
              textInputHandler(r"\\");
            },
          ),
        ],
      ),
    );
  }

  Expanded number() {
    return Expanded(
        child: Row(
      children: [
        LatexKey(
          // onLongPress: () {},

          KeyboardText: "1",
          // LatexText: "1",
          onTextInput: textInputHandler, isTexOn: widget.idTexOn,
        ),
        LatexKey(
          KeyboardText: "2",
          isTexOn: widget.idTexOn,
          // LatexText: "2",
          onTextInput: textInputHandler,
        ),
        LatexKey(
          KeyboardText: "3",
          isTexOn: widget.idTexOn,
          // LatexText: "3",
          onTextInput: textInputHandler,
        ),
        LatexKey(
          KeyboardText: "4",
          isTexOn: widget.idTexOn,
          // LatexText: "4",
          onTextInput: textInputHandler,
        ),
        LatexKey(
          KeyboardText: "5",
          isTexOn: widget.idTexOn,
          // LatexText: "5",
          onTextInput: textInputHandler,
        ),
        LatexKey(
          KeyboardText: "6",
          isTexOn: widget.idTexOn,
          // LatexText: "6",
          onTextInput: textInputHandler,
        ),
        LatexKey(
          KeyboardText: "7",
          isTexOn: widget.idTexOn,
          // LatexText: "7",
          onTextInput: textInputHandler,
        ),
        LatexKey(
          KeyboardText: "8",
          isTexOn: widget.idTexOn,
          // LatexText: "8",
          onTextInput: textInputHandler,
        ),
        LatexKey(
          KeyboardText: "9",
          // LatexText: "9",
          isTexOn: widget.idTexOn,
          onTextInput: textInputHandler,
        ),
        LatexKey(
          KeyboardText: "0",
          isTexOn: widget.idTexOn,
          // LatexText: "0",
          onTextInput: textInputHandler,
        ),
      ],
    ));
  }

  Expanded alpha1() {
    return Expanded(
        child: Row(
      children: [
        LatexKey(
          KeyboardText: isCapital ? "Q" : "q",
          // LatexText: isCapital ? "Q" : "q",
          onTextInput: textInputHandler,
        ),
        LatexKey(
          KeyboardText: isCapital ? "W" : "w",
          // LatexText: isCapital ? "W" : "w",
          onTextInput: textInputHandler,
        ),
        LatexKey(
          KeyboardText: isCapital ? "E" : "e",
          // LatexText: isCapital ? "E" : "e",
          onTextInput: textInputHandler,
        ),
        LatexKey(
          KeyboardText: isCapital ? "R" : "r",
          // LatexText: isCapital ? "R" : "r",
          onTextInput: textInputHandler,
        ),
        LatexKey(
          KeyboardText: isCapital ? "T" : "t",
          //  LatexText: isCapital ? "T" : "t",
          onTextInput: textInputHandler,
        ),
        LatexKey(
          KeyboardText: isCapital ? "Y" : "y",
          // LatexText: isCapital ? "Y" : "y",
          onTextInput: textInputHandler,
        ),
        LatexKey(
          KeyboardText: isCapital ? "U" : "u",
          // LatexText: isCapital ? "U" : "u",
          onTextInput: textInputHandler,
        ),
        LatexKey(
          KeyboardText: isCapital ? "I" : "i",
          // LatexText: isCapital ? "I" : "i",
          onTextInput: textInputHandler,
        ),
        LatexKey(
          KeyboardText: isCapital ? "O" : "o",
          // LatexText: isCapital ? "O" : "o",
          onTextInput: textInputHandler,
        ),
        LatexKey(
          KeyboardText: isCapital ? "P" : "p",
          // /  LatexText: isCapital ? "P" : "p",
          onTextInput: textInputHandler,
        ),
      ],
    ));
  }

  alpha3() {
    return Expanded(
        child: Row(
      children: [
        ButtonKey(
          color: Colors.white,
          flex: 2,
          iconsColors: isCapital ? Colors.blue : Colors.black,
          icon: Icons.upgrade,
          tap: () {
            setState(() {
              isCapital = !isCapital;
            });
          },
        ),
        LatexKey(
          KeyboardText: isCapital ? "Z" : "z",
          // LatexText: isCapital ? "Z" : "z",
          onTextInput: textInputHandler,
        ),
        LatexKey(
          KeyboardText: isCapital ? "X" : "x",
          // LatexText: isCapital ? "X" : "x",
          onTextInput: textInputHandler,
        ),
        LatexKey(
          KeyboardText: isCapital ? "C" : "c",
          // LatexText: isCapital ? "C" : "c",
          onTextInput: textInputHandler,
        ),
        LatexKey(
          KeyboardText: isCapital ? "V" : "v",
          // LatexText: isCapital ? "V" : "v",
          onTextInput: textInputHandler,
        ),
        LatexKey(
          KeyboardText: isCapital ? "B" : "b",
          // LatexText: isCapital ? "B" : "b",
          onTextInput: textInputHandler,
        ),
        LatexKey(
          KeyboardText: isCapital ? "N" : "n",
          // LatexText: isCapital ? "N" : "n",
          onTextInput: textInputHandler,
        ),
        LatexKey(
          KeyboardText: isCapital ? "M" : "m",
          // LatexText: isCapital ? "M" : "m",
          onTextInput: textInputHandler,
        ),
        ButtonKey(
          color: Colors.blue,
          flex: 2,
          icon: Icons.done,
          iconsColors: Colors.white,
          tap: () {
            widget.node.unfocus();
          },
        ),
      ],
    ));
  }

  Expanded alpha2() {
    return Expanded(
        child: Padding(
      padding: const EdgeInsets.only(left: 15, right: 15),
      child: Row(
        children: [
          LatexKey(
            KeyboardText: isCapital ? "A" : "a",
            // LatexText: isCapital ? "A" : "a",
            onTextInput: textInputHandler,
          ),
          LatexKey(
            KeyboardText: isCapital ? "S" : "s",
            // LatexText: isCapital ? "S" : "s",
            onTextInput: textInputHandler,
          ),
          LatexKey(
            KeyboardText: isCapital ? "D" : "d",
            // LatexText: isCapital ? "D" : "d",
            onTextInput: textInputHandler,
          ),
          LatexKey(
            KeyboardText: isCapital ? "F" : "f",
            // LatexText: isCapital ? "F" : "f",
            onTextInput: textInputHandler,
          ),
          LatexKey(
            KeyboardText: isCapital ? "G" : "g",
            // LatexText: isCapital ? "G" : "g",
            onTextInput: textInputHandler,
          ),
          LatexKey(
            KeyboardText: isCapital ? "H" : "h",
            //  LatexText: isCapital ? "H" : "h",
            onTextInput: textInputHandler,
          ),
          LatexKey(
            KeyboardText: isCapital ? "J" : "j",
            // LatexText: isCapital ? "J" : "j",
            onTextInput: textInputHandler,
          ),
          LatexKey(
            KeyboardText: isCapital ? "K" : "k",
            // LatexText: isCapital ? "K" : "k",
            onTextInput: textInputHandler,
          ),
          LatexKey(
            KeyboardText: isCapital ? "L" : "l",
            // LatexText: isCapital ? "L" : "l",
            onTextInput: textInputHandler,
          ),
        ],
      ),
    ));
  }

  latexkey1() {
    return Expanded(
        child: Row(
      children: [
        LatexKey(
          isTexOn: widget.idTexOn,
          KeyboardText: "start",
          // LatexText: r"$",
          onTextInput: textInputHandler,
        ),
        LatexKey(
          isTexOn: widget.idTexOn,
          onLongPress: () {
            setState(() {
              isLong = true;
            });
          },
          onHightChange: (v) {
            setState(() {
              isHighLight = v;
            });
            if (isHighLight == true) {
              setState(() {
                widget.changeValue
                    .previewValue(r"\frac{1}{2} $\rightarrow$ $\frac{1}{2}$");
              });
            } else {
              Future.delayed(const Duration(seconds: 2), () {
                change();
              });
            }
            // else {
            // Timer(Duration(seconds: 1), change());
            // }
            print(isHighLight);
          },
          fontSize: width * 0.024,
          KeyboardText: r"$\frac{\square}{\square}$",
          // LatexText: r"\frac{}{}",
          onTextInput: textInputHandler,
        ),
        LatexKey(
          isTexOn: widget.idTexOn,
          fontSize: width * 0.04,
          KeyboardText: r"$\pi$",
          // LatexText: r"\pi",
          onTextInput: textInputHandler,
        ),
        LatexKey(
          isTexOn: widget.idTexOn,
          fontSize: width * 0.04,
          KeyboardText: r"$\theta$",
          // LatexText: r"\theta",
          onTextInput: textInputHandler,
        ),
        LatexKey(
          isTexOn: widget.idTexOn,
          fontSize: width * 0.04,
          KeyboardText: r"$\alpha$",
          // LatexText: r"\alpha",
          onTextInput: textInputHandler,
        ),
        LatexKey(
          onLongPress: () {
            setState(() {
              isLong = true;
            });
          },
          onHightChange: (v) {
            setState(() {
              isHighLight = v;
            });
            if (isHighLight == true) {
              setState(() {
                widget.changeValue
                    .previewValue(r"\sqrt[1]{2} $\rightarrow$ $\sqrt[1]{2}$");
              });
            } else {
              Future.delayed(const Duration(seconds: 2), () {
                change();
              });
            }
            //else {
            //   Timer(Duration(seconds: 1), change());
            // }
            print(isHighLight);
          },
          fontSize: width * 0.024,
          KeyboardText: r"$\sqrt[\square]{\square}$",
          // LatexText: r"\sqrt[\square]{\square}",
          onTextInput: textInputHandler,
          isTexOn: widget.idTexOn,
        ),
        LatexKey(
          KeyboardText: r"$\Box$",
          isTexOn: widget.idTexOn,
          // LatexText: r"\Box",
          onTextInput: textInputHandler,
        ),
      ],
    ));
  }

  void change() {
    setState(() {
      widget.changeValue.previewValue("Long press on latex to preview");
      isLong = false;
    });
  }

  funcationKey() {
    return Expanded(
        child: Row(
      children: [
        LatexKey(
          KeyboardText: r".",
          isTexOn: widget.idTexOn,
          onTextInput: textInputHandler,
        ),
        LatexKey(
          KeyboardText: r",",
          // LatexText: r"\Box",
          isTexOn: widget.idTexOn,
          onTextInput: textInputHandler,
        ),
        // ButtonKey(
        //   color: Colors.white,
        //   flex: 2,
        //   iconsColors: Colors.black,
        //   icon: Icons.functions,
        //   tap: () {
        //     setState(() {
        //       isFuncation = !isFuncation;
        //     });
        //   },
        // ),
        ButtonKey(
          onLongPress: () {
            setState(() {
              english = !english;
            });
          },
          color: Colors.white,
          flex: 5,
          widget: english ? Text("English") : Text("Thai"),
          // icon: Icons.next_plan,
          tap: () {
            textInputHandler(" ");
          },
        ),
        ButtonKey(
          color: Colors.white,
          flex: 1,
          icon: Icons.skip_next,
          tap: () {
            textInputHandler(r"\\");
          },
        ),
        ButtonKey(
          color: Colors.white,
          flex: 2,
          onLongPress: () {
            widget.changeValue.deleteAll();
          },
          icon: Icons.backspace,
          tap: () {
            widget.onBackspace.call();
          },
        ),
      ],
    ));
  }
}
