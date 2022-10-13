import 'package:atomic_latex/src/foundation/atomicKatex.dart';
import 'package:flutter/material.dart';

import 'package:atomic_latex/src/foundation/atomicMathjax.dart';

class AtomicKatexPreview extends StatelessWidget {
  String laTex;

  AtomicKatexPreview({
    Key? key,
    required this.laTex,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AtomicKatex(
      laTeXCode: Text(
        laTex
            .replaceAll("\\(", "\$")
            .replaceAll("\\)", "\$")
            .replaceAll("<br>", "\n"),
        style: TextStyle(fontSize: 15),
      ),
    );
  }
}
