import 'package:flutter/material.dart';

class SampleExamScreenSolution extends StatefulWidget {
  const SampleExamScreenSolution({super.key});

  @override
  State<SampleExamScreenSolution> createState() =>
      _SampleExamScreenSolutionState();
}

class _SampleExamScreenSolutionState extends State<SampleExamScreenSolution> {
  bool _alignStart = true;
  bool _preparationChecked = true;
  bool _executionChecked = false; 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Probe-Wissenscheck 4'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(32),
          child: Column(
            children: [
              Center(
                child: Image.asset(
                  'assets/moon.png',
                  width: 200,
                  height: 200,
                  fit: BoxFit.contain, 
                ),
              ),
              SizedBox(
                height: 32,
              ),
              ListView(
                shrinkWrap: true,
                children: [
                  ListTile(
                    title: Text('Vorbereitung'),
                    subtitle: Text('Auf den Wissenscheck 4'),
                    leading: Icon(_preparationChecked
                        ? Icons.check_box
                        : Icons.check_box_outline_blank),
                    onTap: () {
                      setState(() {
                        _preparationChecked = !_preparationChecked;
                      });
                    },
                  ),
                  ListTile(
                    title: Text('Durchführung'),
                    subtitle: Text('Des Wissenschecks 4'),
                    leading: Icon(_executionChecked
                        ? Icons.check_box
                        : Icons.check_box_outline_blank),
                    onTap: () {
                      setState(() {
                        _executionChecked = !_executionChecked;
                      });
                    },
                  ),
                ],
              ),
              SizedBox(
                height: 200,
                child: Column(
                  mainAxisAlignment: _alignStart
                      ? MainAxisAlignment.start
                      : MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.favorite,
                      color: Colors.red,
                      size: 50,
                    ),
                    Icon(
                      Icons.circle,
                      color: Colors.green,
                      size: 50,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.blue,
                      size: 50,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 32,
              ),
              TextButton(
                onPressed: () {
                  setState(() {
                    _alignStart = !_alignStart;
                  });
                },
                child: Text("Swap"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
