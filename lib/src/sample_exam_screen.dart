import 'package:flutter/material.dart';

class SampleExamScreen extends StatefulWidget {
  const SampleExamScreen({super.key});

  @override
  _SampleExamScreenState createState() => _SampleExamScreenState();
}

class _SampleExamScreenState extends State<SampleExamScreen> {// damit es sich ändert
  bool _SwapStart = true;
    bool isChecked = false;
    bool isChecked1 = false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  const Color.fromARGB(255, 14, 14, 14), // hintergrundfarbe
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
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: ListTile(
            title: Text("Vorbereitung", 
            style: TextStyle(color: Colors.white),), 
            subtitle: Text("Wie Auf den Wissenscheck4",
            style: TextStyle(color: Colors.white)), 
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
        ),
       Padding(
         padding: const EdgeInsets.only(left: 20),
         child: ListTile(
            title: Text("Durchführung",
            style: TextStyle(color: Colors.white)), 
            subtitle: Text("Des Wissenscheck 4",
            style: TextStyle(color: Colors.white)), 
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
       ),
        SizedBox(height: 10),
        Column(
          mainAxisAlignment: _SwapStart
              ? MainAxisAlignment.start
              : MainAxisAlignment.spaceBetween,
          children: [
            Icon(Icons.favorite, color: Colors.red, size: 45),
            Icon(Icons.circle, color: Colors.green, size: 45),
            Icon(Icons.star, color: Colors.blue, size: 45),
          ],
        ),
        SizedBox(height: 100),
        TextButton(
          onPressed: () {
            setState(() {
              _SwapStart = !_SwapStart;
            });
          },
            child: Text("Swap"),
        ),
      ],
     ),
    ),
   );
  }
}
