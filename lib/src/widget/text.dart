import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

class Text1 extends StatelessWidget {
  String title;

  double size;

  var wight;

  var color;

  var align;

  Text1(
      {Key? key,
      required this.title,
      required this.size,
      required this.wight,
      required this.color,
      this.align = TextAlign.center})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style:
          GoogleFonts.sarabun(color: color, fontSize: size, fontWeight: wight),
      textAlign: align,
    );
  }
}

class Textoverflow extends StatelessWidget {
  String title;

  double size;

  var wight;

  var color;

  var align;

  Textoverflow(
      {Key? key,
      required this.title,
      required this.size,
      required this.wight,
      required this.color,
      this.align = TextAlign.center})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      overflow: TextOverflow.ellipsis,
      style:
          GoogleFonts.sarabun(color: color, fontSize: size, fontWeight: wight),
      textAlign: align,
    );
  }
}

class Text2 extends StatelessWidget {
  String normaltext1;

  String normaltext2;

  String normaltext3;
  Color color1;

  Color color2;

  Color color3;

  Text2({
    Key? key,
    required this.normaltext1,
    required this.normaltext2,
    required this.normaltext3,
    required this.color1,
    required this.color2,
    required this.color3,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: <TextSpan>[
          TextSpan(
              text: normaltext1,
              style: GoogleFonts.sarabun(
                color: color1,
                fontSize: 33,
                fontWeight: FontWeight.w600,
              )),
          TextSpan(
            text: normaltext2,
            style: GoogleFonts.sarabun(
                color: color2, fontSize: 33, fontWeight: FontWeight.w600),
          ),
          TextSpan(
            text: normaltext3,
            style: GoogleFonts.sarabun(
                color: color3, fontSize: 33, fontWeight: FontWeight.w600),
          ),
        ],
      ),
    );
  }
}

class MaxText extends StatelessWidget {
  String normaltext1;

  String normaltext2;

  String normaltext3;
  Color color1;

  Color color2;

  Color color3;

  MaxText({
    Key? key,
    required this.normaltext1,
    required this.normaltext2,
    required this.normaltext3,
    required this.color1,
    required this.color2,
    required this.color3,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: <TextSpan>[
          TextSpan(
              text: normaltext1,
              style: GoogleFonts.sarabun(
                color: color1,
                fontSize: 25,
                fontWeight: FontWeight.w600,
              )),
          TextSpan(
            text: normaltext2,
            style: GoogleFonts.sarabun(
                color: color2, fontSize: 25, fontWeight: FontWeight.w600),
          ),
          TextSpan(
            text: normaltext3,
            style: GoogleFonts.sarabun(
                color: color3, fontSize: 25, fontWeight: FontWeight.w600),
          ),
        ],
      ),
    );
  }
}

class DescriptionTextWidget extends StatefulWidget {
  final String text;

  DescriptionTextWidget({required this.text});

  @override
  _DescriptionTextWidgetState createState() => _DescriptionTextWidgetState();
}

class _DescriptionTextWidgetState extends State<DescriptionTextWidget> {
  late String firstHalf;
  late String secondHalf;

  bool flag = true;

  @override
  void initState() {
    super.initState();

    if (widget.text.length > 200) {
      firstHalf = widget.text.substring(0, 200);
      secondHalf = widget.text.substring(200, widget.text.length);
    } else {
      firstHalf = widget.text;
      secondHalf = "";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      padding: const EdgeInsets.only(left: 15, right: 15),
      child: secondHalf.isEmpty
          ? Text(
              firstHalf,
              style: GoogleFonts.sarabun(
                  color: HexColor('#000000'),
                  fontSize: 15,
                  fontWeight: FontWeight.w500),
            )
          : Column(
              children: <Widget>[
                Text(
                  flag ? ("$firstHalf...") : (firstHalf + secondHalf),
                  style: GoogleFonts.sarabun(
                      color: HexColor('#000000'),
                      fontSize: 15,
                      fontWeight: FontWeight.w500),
                ),
                InkWell(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Text(
                        flag ? "show more" : "show less",
                        style: GoogleFonts.sarabun(
                            color: HexColor('#023E8A'),
                            fontSize: 12,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  onTap: () {
                    setState(() {
                      flag = !flag;
                    });
                  },
                ),
              ],
            ),
    );
  }
}
