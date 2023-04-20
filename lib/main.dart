import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Statefull',
      home: MyButton(),
    );
  }
}

class MyButton extends StatefulWidget {
  const MyButton({super.key});
  

  @override
  // ignore: library_private_types_in_public_api
  _MyButtonState createState() => _MyButtonState();
}

class _MyButtonState extends State<MyButton> {
  List<String> salutations = ["Heyo","What's up","Ma friend?"];
  String flutterText = "Heyo";
  
  int index = 0;
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("Satetful Widget"),
        backgroundColor: const Color.fromARGB(255, 27, 47, 156),
        
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(flutterText,style: const TextStyle(fontSize: 35.0),),
            const Padding(padding: EdgeInsets.all(15.0)),
            ElevatedButton(
              onPressed: onPressButton,
              style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
              child: const Text("Update",style: TextStyle(color: Colors.white),),
            )
          ],
        ),
      )
    );
  }

  void onPressButton() {
    setState(() {
      flutterText = salutations[index];
      index = index < salutations.length - 1 ? index + 1 : 0;
    });
  }
}