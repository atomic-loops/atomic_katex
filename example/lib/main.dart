import 'package:atomic_latex/atomic_latex.dart';
import 'package:example/list.dart';
import 'package:example/newList.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          primarySwatch: Colors.blue,
        ),
        home: const NewListD());
  }
}

class Example extends StatefulWidget {
  const Example({super.key});

  @override
  State<Example> createState() => _ExampleState();
}

class _ExampleState extends State<Example> {
  final changeValue = ChangeValue();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    changeValue;
    changeValue.controller.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    // changeValue.dispose();
  }

  FocusNode node = FocusNode();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.amber,
        body: SafeArea(
          top: true,
          child:
              BMentorTemp(insert: () {}, back: () {}, changeValue: changeValue),
        )
        // Scaffold(
        //     body: SingleChildScrollView(
        //   child: Column(
        //     mainAxisAlignment: MainAxisAlignment.center,
        //     children: [
        //       const SizedBox(
        //         height: 100,
        //       ),
        //       IconButton(
        //           onPressed: () {
        //             // changeValue.controller.text = "123";

        //             Get.dialog(BMentorTemp(
        //                 insert: () {}, back: () {}, changeValue: changeValue));
        //           },
        //           icon: Icon(Icons.open_in_full))
        //       // AtomicInputField(
        //       //   node: node,
        //       //   isVisible: ((value) {
        //       //     setState(() {
        //       //       changeValue.updateValue(value);
        //       //     });
        //       //   }),
        //       //   changeValue: changeValue,
        //       // ),
        //       // const SizedBox(
        //       //   height: 20,
        //       // ),
        //       // AtomicKatexPreview(
        //       //   laTex: changeValue.controller.text,
        //       // )
        //     ],
        //   ),
        // )),

        );
  }

  eq() {
    return Get.dialog(
        BMentorTemp(insert: () {}, back: () {}, changeValue: changeValue));
  }
}
