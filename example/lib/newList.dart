import 'package:atomic_latex/atomic_latex.dart';
import 'package:flutter/material.dart';

import 'dart:math';

String generateRandomString(int len) {
  var r = Random();
  return String.fromCharCodes(
      List.generate(len, (index) => r.nextInt(33) + 89));
}

class NewListD extends StatelessWidget {
  const NewListD({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: 300,
          itemBuilder: (context, index) {
            return Column(
              children: [
                //ListTile(
                // onTap: () {},
                // title:
                Container(
                  height: 80,
                  child: AtomicKatexPreview(
                      key: ValueKey(index),
                      laTex:
                          "ให้ \\(a=16\\) จงหาค่าของ \\(a^{\\frac{11}{16}}\\left[a\\left\\{a\\left(a^{\\frac{1}{2}}\\right)^{\\frac{1}{2}}\\right\\}^{\\frac{1}{2}}\\right]^{\\frac{1}{2}}\\)"),
                ),

                // for (int i = 0; i > 4; i++) ...[
                //  print(i)
                Container(
                  height: 80,
                  child: AtomicKatexPreview(
                      // key: ValueKey(generateRandomString(index)),
                      laTex:
                          "กำหนดให้ \\(\\mathrm{x}=\\sqrt{11-6 \\sqrt{2}}-\\sqrt{6-4 \\sqrt{2}}\\) จงหาค่าของ \\(\\sqrt{\\mathrm{x}^{2}-\\mathrm{x}}\\)"),
                ),
                // ]
              ],
            );
          }),
    );
  }
}
