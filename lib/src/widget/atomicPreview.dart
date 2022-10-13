// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:atomic_latex/src/foundation/atomicMathjax.dart';

class AtomicPreview extends StatelessWidget {
  String laTex;

  AtomicPreview({
    Key? key,
    required this.laTex,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AtomicMathJax(
      laTeXCode: Text(
        laTex
            .replaceAll("\\(", "\$")
            .replaceAll("\\)", "\$")
            .replaceAll("<br>", "\n"),
        style: TextStyle(fontSize: 15),
      ),
      textStyle: TextStyle(fontSize: 15),
    );
  }
}
