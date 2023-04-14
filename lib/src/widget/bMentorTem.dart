import 'package:atomic_latex/atomic_latex.dart';
import 'package:atomic_latex/src/widget/text.dart';
import 'package:flutter/material.dart';

import 'package:hexcolor/hexcolor.dart';

class BMentorTemp extends StatefulWidget {
  BMentorTemp({super.key, this.changeValue, this.back, this.insert});
  final changeValue;

  var back;

  var insert;

  @override
  State<BMentorTemp> createState() => _BMentorTempState();
}

class _BMentorTempState extends State<BMentorTemp> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    widget.changeValue;
    widget.changeValue.controller.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    // widget.changeValue.dispose();
  }

  var size, height, width;
  FocusNode node = FocusNode();
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding:
              const EdgeInsets.only(left: 20, right: 20, top: 24, bottom: 5),
          child: Material(
            borderRadius: BorderRadius.circular(12),
            color: HexColor("#FBFFFB"),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: 18,
                  ),
                  Text1(
                      title: "Insert Equation",
                      size: 12,
                      wight: FontWeight.w500,
                      color: Colors.black),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16, right: 16),
                    child: Container(
                      // margin: EdgeInsets.only(left: 5, right: 5, top: 5),
                      height: height * 0.2,
                      decoration: BoxDecoration(
                          color: Colors.grey.shade100,
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: AtomicInputField(
                          decoration: InputDecoration(border: InputBorder.none),
                          node: node,
                          isVisible: ((value) {
                            setState(() {
                              widget.changeValue.updateValue(value);
                            });
                          }),
                          changeValue: widget.changeValue,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 16,
                      right: 16,
                    ),
                    child: Container(
                      height: height * 0.1,
                      width: width,
                      decoration: BoxDecoration(
                          color: Colors.grey.shade100,
                          borderRadius: BorderRadius.circular(10)),
                      child: Center(
                        child: AtomicKatexPreview(
                          laTex: widget.changeValue.controller.text.isEmpty
                              ? "Preview"
                              : "\$${widget.changeValue.controller.text}\$",
                          fid: widget.key.hashCode.toString(),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      InkWell(
                        onTap: widget.back,
                        child: Container(
                          height: 26,
                          width: 71,
                          decoration: BoxDecoration(
                              color: HexColor('#FBFFFB'),
                              border: Border.all(
                                  width: 1, color: HexColor('#023E8A')),
                              borderRadius: BorderRadius.circular(5)),
                          child: Center(
                            child: Text1(
                                title: "Back",
                                size: 15,
                                wight: FontWeight.w600,
                                color: HexColor('#023E8A')),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      MaterialButton(
                        height: 26,
                        minWidth: 71,
                        color: HexColor("#023E8A"),
                        shape: const RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(5.0))),
                        onPressed: widget.insert,
                        child: Text1(
                          title: "Insert",
                          size: 15,
                          wight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        width: width * 0.016,
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
        Material(
          child: AtomicKeyboard(
            onBackspace: () {
              widget.changeValue.backspace();
              setState(() {});
            },
            onTextInput: (String value) {
              widget.changeValue.insertText(value);

              setState(() {});
            },
            node: node,
            changeValue: widget.changeValue,
          ),
        )
      ],
    );
  }
}

// eqRoot() {
//   // changeValue.updateValue(true);
//   return Get.dialog(
// }
