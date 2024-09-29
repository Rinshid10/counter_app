import 'package:flutter/material.dart';

class CounterApp extends StatefulWidget {
  const CounterApp({super.key});

  @override
  State<CounterApp> createState() => _CounterAppState();
}

class _CounterAppState extends State<CounterApp> {
  var increase = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Couter App'),
        backgroundColor: Colors.black12,
        centerTitle: true,
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Tap To Increase',
                style: TextStyle(color: Colors.black, fontSize: 25),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                increase.toString(),
                style: TextStyle(fontWeight: FontWeight.w900, fontSize: 20),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          increase++;
                        });
                      },
                      child: Icon(
                        Icons.add,
                        size: 30,
                        color: Colors.red,
                      )),
                  SizedBox(
                    width: 20,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          increase--;
                        });
                      },
                      child: Icon(
                        Icons.text_decrease,
                        size: 30,
                      ))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
