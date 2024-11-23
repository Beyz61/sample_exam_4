import 'package:flutter/material.dart';

class SampleExamScreen extends StatelessWidget {
  const SampleExamScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 42, 39, 39),
      appBar: AppBar(
        title: Text("Probe Wissensenscheck 4"),
      ),
      body:  Padding(
        padding: const EdgeInsets.only(top: 50),
        child: Column(
           mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Center( 
              child: CircleAvatar(  
                radius: 110,
                backgroundImage: AssetImage("assets/moon.png"),
              ),
        ),
        SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
