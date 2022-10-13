import 'package:atomic_latex/atomic_latex.dart';
import 'package:example/data.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  int dataNum = 0;
  bool isKatex = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Text("Question:- ${dataNum + 1}"),
            SizedBox(
              height: 10,
            ),
            isKatex
                ? AtomicKatexPreview(laTex: question[dataNum])
                : AtomicPreview(laTex: question[dataNum]),
            SizedBox(
              height: 20,
            ),
            Text("Answer:- ${dataNum + 1}"),
            SizedBox(
              height: 10,
            ),
            SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: isKatex
                    ? AtomicKatexPreview(laTex: answer[dataNum])
                    : AtomicPreview(laTex: answer[dataNum]))
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FloatingActionButton(
            onPressed: () {
              if (dataNum == 0) {
              } else {
                setState(() {
                  dataNum--;
                });
              }
            },
            child: Icon(Icons.skip_previous),
          ),
          FloatingActionButton(
            onPressed: () {
              if (dataNum + 1 == question.length) {
              } else {
                setState(() {
                  dataNum++;
                });
                print("question ${question.length}");
                print(answer.length);
              }
            },
            child: Icon(Icons.skip_next),
          ),
          FloatingActionButton(
            onPressed: () {
              setState(() {
                isKatex = !isKatex;
              });
            },
            child: Center(child: Text("Katex $isKatex")),
          )
        ],
      ),
    );
  }
}

class ListDView extends StatefulWidget {
  const ListDView({super.key});

  @override
  State<ListDView> createState() => _ListDViewState();
}

class _ListDViewState extends State<ListDView> {
  bool isKatex = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: answer.length,
          itemBuilder: ((context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  ListTile(
                    title: Text("Question ${index + 1}"),
                    subtitle: isKatex
                        ? AtomicKatexPreview(laTex: question[index])
                        : AtomicPreview(laTex: question[index]),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ListTile(
                    title: Text("Answer ${index + 1}"),
                    subtitle: isKatex
                        ? SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: AtomicKatexPreview(laTex: answer[index]))
                        : SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: AtomicPreview(laTex: answer[index])),
                  ),
                  Container(
                    height: 1,
                    color: Colors.amber,
                  )
                ],
              ),
            );
          })),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            isKatex = !isKatex;
          });
        },
        child: Text("Katex $isKatex"),
      ),
    );
  }
}
