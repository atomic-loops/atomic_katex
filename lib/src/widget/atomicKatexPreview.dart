import 'package:atomic_latex/src/foundation/atomicKatex.dart';
import 'package:flutter/material.dart';

import 'package:atomic_latex/src/foundation/atomicMathjax.dart';

class AtomicKatexPreview extends StatelessWidget {
  String laTex;
  String fid;
  AtomicKatexPreview({
    Key? key,
    required this.fid,
    required this.laTex,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size, height, width;
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return AtomicKatex(
      fid: fid,
      laTeXCode: Text(
        laTex
            .replaceAll("\\(", "\$")
            .replaceAll("\\)", "\$")
            .replaceAll("<br>", "\n"),
        style: TextStyle(fontSize: width * 0.03),
      ),
    );
  }
}
