import 'package:flutter/material.dart';

class SampleExamScreen extends StatefulWidget {
  const SampleExamScreen({super.key});

  @override
  _SampleExamScreenState createState() => _SampleExamScreenState();
}

class _SampleExamScreenState extends State<SampleExamScreen> {// damit es sich ändert
  bool isChecked = false;
    bool isChecked1 = false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  Color.fromARGB(255, 42, 39, 39),
      appBar: AppBar(
        title: Text("Probe Wissensenscheck 4"), // titel
      ),
      body:  Padding(
        padding: EdgeInsets.only(top: 35), // höhe  Bildes
        child: Column(
           mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Center( 
              child: Image(
                width: 200,
                height: 200,
                image: AssetImage("assets/moon.png"), // bild muss noch in den vordergrund
              ),
        ),
        SizedBox(height: 20),
        ListTile(
          title: Text("Vorbereitung"), 
          subtitle: Text("Wie Auf den Wissenscheck4"), 
          leading: Checkbox(
            value: isChecked,
            activeColor: Colors.white,
            onChanged: (newBool) {
              setState(() {
                isChecked = newBool!;
           }
          );
         },
        ),
       ),
       ListTile(
          title: Text("Durchführung"), 
          subtitle: Text("Des Wissenscheck 4"), 
          leading: Checkbox(
            value: isChecked1,
            activeColor: Colors.white,
            onChanged: (newBool) {
              setState(() {
                isChecked1 = newBool!;
           }
          );
         },
        ),
       ),
       Column(
        children: [
          Icon(Icons.favorite, color: Colors.red, size: 30),
          Icon(Icons.circle, color: Colors.green, size: 30),
          Icon(Icons.star, color: Colors.blue, size: 30),
        ],

       )
      ],
     ),
    ),
   );
  }
}
