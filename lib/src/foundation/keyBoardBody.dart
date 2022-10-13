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

  bool isHighLight = false;
  // String value = "";
  bool isLong = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blueGrey.shade100,
      child: SafeArea(
        top: false,
        child: Expanded(
          child: Column(
            children: [
              if (widget.alpha == true) ...[
                alphaKeyboard()
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
            fontSize: 20,
          ),
          LatexKey(
            KeyboardText: isCapital ? r"$\Delta$" : r"$\delta$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: 20,
          ),
          LatexKey(
            KeyboardText: isCapital ? r"$\Lambda$" : r"$\lambda$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: 20,
          ),
          LatexKey(
            KeyboardText: isCapital ? r"$\nabla$" : r"$\rho$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: 20,
          ),
          LatexKey(
            KeyboardText: isCapital ? r"$\Phi$" : r"$\phi$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: 20,
          ),
          LatexKey(
            KeyboardText: isCapital ? r"$\mathrm{E}$" : r"$e$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: 20,
          ),
          LatexKey(
            KeyboardText: isCapital ? r"$\mathrm{P}$" : r"$p$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: 20,
          ),
          LatexKey(
            KeyboardText: isCapital ? r"$\mathrm{I}$" : r"$i$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: 20,
          ),
          LatexKey(
            KeyboardText: isCapital ? r"$\mathrm{U}$" : r"$u$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: 20,
          ),
          LatexKey(
            KeyboardText: isCapital ? r"$\mathrm{F}$" : r"$f$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: 20,
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
            fontSize: 20,
          ),
          LatexKey(
            KeyboardText: isCapital ? r"$\ell$" : r"$\varepsilon$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: 20,
          ),
          LatexKey(
            KeyboardText: isCapital ? r"$\propto$" : r"$\mu$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: 20,
          ),
          LatexKey(
            KeyboardText: isCapital ? r"$\Sigma$" : r"$\sigma$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: 20,
          ),
          LatexKey(
            KeyboardText: isCapital ? r"$\Psi$" : r"$\psi$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: 20,
          ),
          LatexKey(
            KeyboardText: isCapital ? r"$\mathrm{M}$" : r"$m$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: 20,
          ),
          LatexKey(
            KeyboardText: isCapital ? r"$\mathrm{Q}$" : r"$q$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: 20,
          ),
          LatexKey(
            KeyboardText: isCapital ? r"$\mathrm{J}$" : r"$j$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: 20,
          ),
          LatexKey(
            KeyboardText: isCapital ? r"$\mathrm{V}$" : r"$v$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: 20,
          ),
          LatexKey(
            KeyboardText: isCapital ? r"$\mathrm{G}$" : r"$g$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: 20,
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
            fontSize: 20,
          ),
          LatexKey(
            KeyboardText: isCapital ? r"$\Theta$" : r"$\theta$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: 20,
          ),
          LatexKey(
            KeyboardText: isCapital ? r"$\Pi$" : r"$\pi$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: 20,
          ),
          LatexKey(
            KeyboardText: isCapital ? r"$\Tau$" : r"$\tau$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: 20,
          ),
          LatexKey(
            KeyboardText: isCapital ? r"$\Omega$" : r"$\omega$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: 20,
          ),
          LatexKey(
            KeyboardText: isCapital ? r"$\mathrm{N}$" : r"$n$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: 20,
          ),
          LatexKey(
            KeyboardText: isCapital ? r"$\mathrm{R}$" : r"$\mathrm{r}$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: 20,
          ),
          LatexKey(
            KeyboardText: isCapital ? r"$\mathrm{K}$" : r"$\mathrm{k}$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: 20,
          ),
          LatexKey(
            KeyboardText: isCapital ? r"$\mathrm{W}$" : r"$\mathrm{w}$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: 20,
          ),
          LatexKey(
            KeyboardText: isCapital ? r"$\mathrm{H}$" : r"$\mathrm{h}$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: 20,
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
            fontSize: 20,
          ),
          LatexKey(
            KeyboardText: isCapital ? r"$\cap$" : r"$\leftrightarrow$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: 20,
          ),
          LatexKey(
            KeyboardText: isCapital ? r"$\ldots$" : r"$\lor$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: 20,
          ),
          LatexKey(
            KeyboardText: isCapital ? r"$?$" : r"$\land$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: 20,
          ),
          LatexKey(
            KeyboardText: isCapital ? r"$\{$" : r"$[$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: 20,
          ),
          LatexKey(
            KeyboardText: isCapital ? r"$\}$" : r"$]$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: 20,
          ),
          LatexKey(
            KeyboardText: r"$($",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: 20,
          ),
          LatexKey(
            KeyboardText: r"$)$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: 20,
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
            fontSize: 20,
          ),
          LatexKey(
            KeyboardText: isCapital ? r"$\notin$" : r"$\therefore$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: 20,
          ),
          LatexKey(
            KeyboardText: isCapital ? r"$\subset$" : r"$\forall$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: 20,
          ),
          LatexKey(
            KeyboardText: isCapital ? r"$\not\subset$" : r"$\exist$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: 20,
          ),
          isCapital
              ? LatexKey(
                  KeyboardText: r"$\varnothing$",
                  onTextInput: textInputHandler,
                  isTexOn: widget.idTexOn,
                  fontSize: 20,
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
                  fontSize: 20,
                ),
          LatexKey(
            KeyboardText: isCapital ? r"$\&$" : r"$\sim$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: 20,
          ),
          LatexKey(
            KeyboardText: isCapital ? r"'" : r"$\approx$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: 20,
          ),
          LatexKey(
            KeyboardText: r",",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: 20,
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
              textInputHandler("\n");
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
            fontSize: 10,
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

            KeyboardText: r"$\det$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: 15,
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
            fontSize: 15,
          ),
          LatexKey(
            KeyboardText: r"$7$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: 20,
          ),
          LatexKey(
            KeyboardText: r"$8$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: 20,
          ),
          LatexKey(
            KeyboardText: r"$9$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: 20,
          ),
          LatexKey(
            KeyboardText: r"$($",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: 20,
          ),
          LatexKey(
            KeyboardText: r"$)$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: 20,
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
            fontSize: 5,
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
            fontSize: 15,
          ),
          LatexKey(
            KeyboardText: r"$4$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: 20,
          ),
          LatexKey(
            KeyboardText: r"$5$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: 20,
          ),
          LatexKey(
            KeyboardText: r"$6$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: 20,
          ),
          LatexKey(
            KeyboardText: r"$\times$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: 20,
          ),
          LatexKey(
            KeyboardText: r"$\div$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: 20,
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
            fontSize: 10,
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
            fontSize: 10,
          ),
          LatexKey(
            KeyboardText: r"$\text{adj}$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: 15,
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
            fontSize: 5,
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
            fontSize: 12,
          ),
          LatexKey(
            KeyboardText: r"$1$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: 20,
          ),
          LatexKey(
            KeyboardText: r"$2$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: 20,
          ),
          LatexKey(
            KeyboardText: r"$3$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: 20,
          ),
          LatexKey(
            KeyboardText: r"$+$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: 20,
          ),
          LatexKey(
            KeyboardText: r"$-$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: 20,
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
            fontSize: 20,
          ),
          LatexKey(
            KeyboardText: r"$\mathrm{B}$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: 20,
          ),
          LatexKey(
            KeyboardText: r"$\mathrm{I}$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: 20,
          ),
          LatexKey(
            //else {
            //   Timer(Duration(seconds: 1), change());
            // }

            KeyboardText: r"$\mathrm{X}$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: 20,
          ),
          LatexKey(
            KeyboardText: r"$\cdot$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: 20,
          ),
          LatexKey(
            KeyboardText: r"$0$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: 20,
          ),
          LatexKey(
            KeyboardText: r"$.$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: 20,
          ),
          LatexKey(
            KeyboardText: r"$\ne$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: 20,
          ),
          LatexKey(
            KeyboardText: r"$=$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: 20,
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
            KeyboardText: r"$\int$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: 10,
          ),
          LatexKey(
            KeyboardText: r"$dx$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: 17,
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
            fontSize: 10,
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
            fontSize: 15,
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
            fontSize: 15,
          ),
          LatexKey(
            KeyboardText: r"$7$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: 20,
          ),
          LatexKey(
            KeyboardText: r"$8$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: 20,
          ),
          LatexKey(
            KeyboardText: r"$9$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: 20,
          ),
          LatexKey(
            KeyboardText: r"$($",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: 20,
          ),
          LatexKey(
            KeyboardText: r"$)$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: 20,
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
            fontSize: 12,
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
            fontSize: 12,
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
            fontSize: 15,
          ),
          LatexKey(
            KeyboardText: r"$4$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: 20,
          ),
          LatexKey(
            KeyboardText: r"$5$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: 20,
          ),
          LatexKey(
            KeyboardText: r"$6$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: 20,
          ),
          LatexKey(
            KeyboardText: r"$\times$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: 20,
          ),
          LatexKey(
            KeyboardText: r"$\div$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: 20,
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
            fontSize: 17,
          ),
          LatexKey(
            KeyboardText: r"$,$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: 17,
          ),
          LatexKey(
            KeyboardText: r"$;$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: 20,
          ),
          LatexKey(
            KeyboardText: r"$'$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: 20,
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
            fontSize: 12,
          ),
          LatexKey(
            KeyboardText: r"$1$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: 20,
          ),
          LatexKey(
            KeyboardText: r"$2$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: 20,
          ),
          LatexKey(
            KeyboardText: r"$3$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: 20,
          ),
          LatexKey(
            KeyboardText: r"$+$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: 20,
          ),
          LatexKey(
            KeyboardText: r"$-$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: 20,
          ),
        ],
      ),
    );
  }

  enlx1() {
    return Expanded(
      child: Row(children: [
        LatexKey(
          KeyboardText: r"$\log$",
          onTextInput: textInputHandler,
          isTexOn: widget.idTexOn,
          fontSize: 15,
        ),
        LatexKey(
          KeyboardText: r"$e$",
          onTextInput: textInputHandler,
          isTexOn: widget.idTexOn,
          fontSize: 17,
        ),
        LatexKey(
          KeyboardText: r"$\ln$",
          onTextInput: textInputHandler,
          isTexOn: widget.idTexOn,
          fontSize: 15,
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
          fontSize: 15,
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
          fontSize: 15,
        ),
        LatexKey(
          KeyboardText: r"$7$",
          onTextInput: textInputHandler,
          isTexOn: widget.idTexOn,
          fontSize: 20,
        ),
        LatexKey(
          KeyboardText: r"$8$",
          onTextInput: textInputHandler,
          isTexOn: widget.idTexOn,
          fontSize: 20,
        ),
        LatexKey(
          KeyboardText: r"$9$",
          onTextInput: textInputHandler,
          isTexOn: widget.idTexOn,
          fontSize: 20,
        ),
        LatexKey(
          KeyboardText: r"$($",
          onTextInput: textInputHandler,
          isTexOn: widget.idTexOn,
          fontSize: 20,
        ),
        LatexKey(
          KeyboardText: r"$)$",
          onTextInput: textInputHandler,
          isTexOn: widget.idTexOn,
          fontSize: 20,
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
            fontSize: 17,
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
            fontSize: 12,
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
            fontSize: 15,
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
            fontSize: 15,
          ),
          LatexKey(
            KeyboardText: r"$4$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: 20,
          ),
          LatexKey(
            KeyboardText: r"$5$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: 20,
          ),
          LatexKey(
            KeyboardText: r"$6$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: 20,
          ),
          LatexKey(
            KeyboardText: r"$\times$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: 20,
          ),
          LatexKey(
            KeyboardText: r"$\div$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: 20,
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
            fontSize: 17,
          ),
          LatexKey(
            KeyboardText: r"$\{$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: 17,
          ),
          LatexKey(
            KeyboardText: r"$\}$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: 20,
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
            fontSize: 15,
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
            fontSize: 12,
          ),
          LatexKey(
            KeyboardText: r"$1$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: 20,
          ),
          LatexKey(
            KeyboardText: r"$2$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: 20,
          ),
          LatexKey(
            KeyboardText: r"$3$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: 20,
          ),
          LatexKey(
            KeyboardText: r"$+$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: 20,
          ),
          LatexKey(
            KeyboardText: r"$-$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: 20,
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
            KeyboardText: r"$\in$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: 20,
          ),
          LatexKey(
            KeyboardText: r"$\infty$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: 20,
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
            fontSize: 12,
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
            fontSize: 10,
          ),
          LatexKey(
            KeyboardText: r"$\cdot$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: 20,
          ),
          LatexKey(
            KeyboardText: r"$0$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: 20,
          ),
          LatexKey(
            KeyboardText: r"$.$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: 20,
          ),
          LatexKey(
            KeyboardText: r"$\ne$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: 20,
          ),
          LatexKey(
            KeyboardText: r"$=$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: 20,
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

  fx1() {
    return Expanded(
      child: Row(
        children: [
          LatexKey(
            KeyboardText: r"$\{$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: 17,
          ),
          LatexKey(
            KeyboardText: r"$\}$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: 17,
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
            fontSize: 10,
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
            fontSize: 15,
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
            fontSize: 15,
          ),
          LatexKey(
            KeyboardText: r"$7$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: 20,
          ),
          LatexKey(
            KeyboardText: r"$8$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: 20,
          ),
          LatexKey(
            KeyboardText: r"$9$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: 20,
          ),
          LatexKey(
            KeyboardText: r"$($",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: 20,
          ),
          LatexKey(
            KeyboardText: r"$)$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: 20,
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
            fontSize: 17,
          ),
          LatexKey(
            KeyboardText: r"$]$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: 17,
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
            KeyboardText: r"$\R$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: 15,
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
            fontSize: 15,
          ),
          LatexKey(
            KeyboardText: r"$4$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: 20,
          ),
          LatexKey(
            KeyboardText: r"$5$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: 20,
          ),
          LatexKey(
            KeyboardText: r"$6$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: 20,
          ),
          LatexKey(
            KeyboardText: r"$\times$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: 20,
          ),
          LatexKey(
            KeyboardText: r"$\div$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: 20,
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
            fontSize: 17,
          ),
          LatexKey(
            KeyboardText: r"$,$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: 17,
          ),
          LatexKey(
            KeyboardText: r"$;$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: 20,
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
            fontSize: 12,
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
            fontSize: 12,
          ),
          LatexKey(
            KeyboardText: r"$1$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: 20,
          ),
          LatexKey(
            KeyboardText: r"$2$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: 20,
          ),
          LatexKey(
            KeyboardText: r"$3$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: 20,
          ),
          LatexKey(
            KeyboardText: r"$+$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: 20,
          ),
          LatexKey(
            KeyboardText: r"$-$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: 20,
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
            KeyboardText: r"$\in$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: 20,
          ),
          LatexKey(
            KeyboardText: r"$\infty$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: 20,
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
            fontSize: 12,
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
            fontSize: 10,
          ),
          LatexKey(
            KeyboardText: r"$\cdot$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: 20,
          ),
          LatexKey(
            KeyboardText: r"$0$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: 20,
          ),
          LatexKey(
            KeyboardText: r"$.$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: 20,
          ),
          LatexKey(
            KeyboardText: r"$\ne$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: 20,
          ),
          LatexKey(
            KeyboardText: r"$=$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: 20,
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
            KeyboardText: r"$\sin$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: 17,
          ),
          LatexKey(
            KeyboardText: r"$\csc$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: 17,
          ),
          LatexKey(
            KeyboardText: r"$\theta$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: 20,
          ),
          LatexKey(
            KeyboardText: r"$\pi$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: 20,
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
            fontSize: 15,
          ),
          LatexKey(
            KeyboardText: r"$7$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: 20,
          ),
          LatexKey(
            KeyboardText: r"$8$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: 20,
          ),
          LatexKey(
            KeyboardText: r"$9$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: 20,
          ),
          LatexKey(
            KeyboardText: r"$($",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: 20,
          ),
          LatexKey(
            KeyboardText: r"$)$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: 20,
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
            KeyboardText: r"$\cos$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: 17,
          ),
          LatexKey(
            KeyboardText: r"$\sec$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: 17,
          ),
          LatexKey(
            KeyboardText: r"$\triangle$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: 20,
          ),
          LatexKey(
            KeyboardText: r"$^\circ$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: 15,
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
            fontSize: 15,
          ),
          LatexKey(
            KeyboardText: r"$4$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: 20,
          ),
          LatexKey(
            KeyboardText: r"$5$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: 20,
          ),
          LatexKey(
            KeyboardText: r"$6$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: 20,
          ),
          LatexKey(
            KeyboardText: r"$\times$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: 20,
          ),
          LatexKey(
            KeyboardText: r"$\div$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: 20,
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
            KeyboardText: r"$\tan$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: 17,
          ),
          LatexKey(
            KeyboardText: r"$\cot$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: 17,
          ),
          LatexKey(
            KeyboardText: r"$\Box$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: 20,
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
            KeyboardText: r"$\mathrm{\hat{ABC}}$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: 12,
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
            fontSize: 12,
          ),
          LatexKey(
            KeyboardText: r"$1$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: 20,
          ),
          LatexKey(
            KeyboardText: r"$2$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: 20,
          ),
          LatexKey(
            KeyboardText: r"$3$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: 20,
          ),
          LatexKey(
            KeyboardText: r"$+$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: 20,
          ),
          LatexKey(
            KeyboardText: r"$-$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: 20,
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
            fontSize: 20,
          ),
          LatexKey(
            KeyboardText: r"$\mathrm{B}$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: 20,
          ),
          LatexKey(
            KeyboardText: r"$\mathrm{C}$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: 20,
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
            fontSize: 15,
          ),
          LatexKey(
            KeyboardText: r"$\cdot$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: 20,
          ),
          LatexKey(
            KeyboardText: r"$0$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: 20,
          ),
          LatexKey(
            KeyboardText: r"$.$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: 20,
          ),
          LatexKey(
            KeyboardText: r"$\ne$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: 20,
          ),
          LatexKey(
            KeyboardText: r"$=$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: 20,
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
          LatexKey(
            KeyboardText: r"$x^2$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: 20,
          ),
          LatexKey(
            KeyboardText: r"$\%$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: 20,
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
            fontSize: 20,
          ),
          LatexKey(
            KeyboardText: r"$\pi$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: 20,
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
            fontSize: 15,
          ),
          LatexKey(
            KeyboardText: r"$7$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: 20,
          ),
          LatexKey(
            KeyboardText: r"$8$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: 20,
          ),
          LatexKey(
            KeyboardText: r"$9$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: 20,
          ),
          LatexKey(
            KeyboardText: r"$($",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: 20,
          ),
          LatexKey(
            KeyboardText: r"$)$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: 20,
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
            KeyboardText: r"$\infty$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: 20,
          ),
          LatexKey(
            KeyboardText: r"$!$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: 20,
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
            fontSize: 20,
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
            fontSize: 15,
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
            fontSize: 15,
          ),
          LatexKey(
            KeyboardText: r"$4$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: 20,
          ),
          LatexKey(
            KeyboardText: r"$5$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: 20,
          ),
          LatexKey(
            KeyboardText: r"$6$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: 20,
          ),
          LatexKey(
            KeyboardText: r"$\times$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: 20,
          ),
          LatexKey(
            KeyboardText: r"$\div$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: 20,
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
            fontSize: 20,
          ),
          LatexKey(
            KeyboardText: r"$/$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: 20,
          ),
          LatexKey(
            KeyboardText: r"$,$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: 20,
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
            fontSize: 12,
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
            fontSize: 12,
          ),
          LatexKey(
            KeyboardText: r"$1$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: 20,
          ),
          LatexKey(
            KeyboardText: r"$2$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: 20,
          ),
          LatexKey(
            KeyboardText: r"$3$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: 20,
          ),
          LatexKey(
            KeyboardText: r"$+$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: 20,
          ),
          LatexKey(
            KeyboardText: r"$-$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: 20,
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
            fontSize: 20,
          ),
          LatexKey(
            KeyboardText: r"$b$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: 20,
          ),
          LatexKey(
            KeyboardText: r"$c$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: 20,
          ),
          LatexKey(
            KeyboardText: r"$:$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: 20,
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
            KeyboardText: r"$\cdot$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: 20,
          ),
          LatexKey(
            KeyboardText: r"$0$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: 20,
          ),
          LatexKey(
            KeyboardText: r"$.$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: 20,
          ),
          LatexKey(
            KeyboardText: r"$\ne$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: 20,
          ),
          LatexKey(
            KeyboardText: r"$=$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: 20,
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
            fontSize: 20,
          ),
          LatexKey(
            KeyboardText: r"$>$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: 20,
          ),
          LatexKey(
            KeyboardText: r"$\leq$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: 20,
          ),
          LatexKey(
            KeyboardText: r"$\geq$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: 20,
          ),
          LatexKey(
            KeyboardText: r"$\pm$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: 20,
          ),
          LatexKey(
            KeyboardText: r"$x$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: 20,
          ),
          LatexKey(
            KeyboardText: r"$y$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: 20,
          ),
          LatexKey(
            KeyboardText: r"$z$",
            onTextInput: textInputHandler,
            isTexOn: widget.idTexOn,
            fontSize: 20,
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
              textInputHandler("\n");
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
          fontSize: 12,
          KeyboardText: r"$\frac{\square}{\square}$",
          // LatexText: r"\frac{}{}",
          onTextInput: textInputHandler,
        ),
        LatexKey(
          isTexOn: widget.idTexOn,
          fontSize: 20,
          KeyboardText: r"$\pi$",
          // LatexText: r"\pi",
          onTextInput: textInputHandler,
        ),
        LatexKey(
          isTexOn: widget.idTexOn,
          fontSize: 20,
          KeyboardText: r"$\theta$",
          // LatexText: r"\theta",
          onTextInput: textInputHandler,
        ),
        LatexKey(
          isTexOn: widget.idTexOn,
          fontSize: 20,
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
          fontSize: 12,
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
          color: Colors.white,
          flex: 5,
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
            textInputHandler("\n");
          },
        ),
        ButtonKey(
          color: Colors.white,
          flex: 2,
          // onLongPress: () {},
          icon: Icons.backspace,
          tap: () {
            widget.onBackspace.call();
          },
        ),
      ],
    ));
  }
}
