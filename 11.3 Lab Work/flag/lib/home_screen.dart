import 'dart:async';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flag App',
      home: CountUpPage(),
    );
  }
}

class CountUpPage extends StatefulWidget {
  const CountUpPage({super.key});

  @override
  CountUpPageState createState() => CountUpPageState();
}

class CountUpPageState extends State<CountUpPage> {
  late Timer _timer;
  int _hours = 0;
  int _minutes = 0;
  int _seconds = 0;
  List hours = [];
  List minutes = [];
  List second = [];
  @override
  void initState() {
    super.initState();
    startTimer();
  }

  void startTimer() {
    const oneSecond = Duration(seconds: 1);
    _timer = Timer.periodic(oneSecond, (timer) {
      setState(() {
        _seconds++;
        if (_seconds == 60) {
          _seconds = 0;
          _minutes++;
          if (_minutes == 60) {
            _minutes = 0;
            _hours++;
          }
        }
      });
    });
  }

  void flag(){
    setState(() {
      hours.add(_hours);
      minutes.add(_minutes);
      second.add(_seconds);
    });
  }

  void restart(){
    setState(() {
      _hours = 0;
      _minutes = 0;
      _seconds = 0;
      _timer.cancel();
      second.clear();
      startTimer();
    });
  }

  void stop(){
    _timer.cancel();
  }
  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(

        backgroundColor: Colors.orange,
        centerTitle: true,
        title: const Text('flag feature',style: TextStyle(fontSize: 40),),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              color: Colors.white,
              child: Column(
                children: [
                  Text(
                    '$_hours : $_minutes : $_seconds',
                    style: const TextStyle(fontSize: 60,fontFamily: 'Jersey10'),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      OutlinedButton(
                          onPressed: restart,
                          child: const Text('Reset')
                      ),
                      OutlinedButton(
                          onPressed: flag,
                          child: const Text('flag')
                      ),
                      OutlinedButton(
                          onPressed: stop,
                          child: const Text('Stop')
                      ),
                    ],
                  ),
                  const SizedBox(height: 30,),
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: second.length,
                  itemBuilder: (context, index){
                    return
                      Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: Container(
                          decoration: BoxDecoration(
                          color: index%2==0? Colors.grey[400]:Colors.white54,
                            borderRadius: BorderRadius.circular(20)
                          ),
                          child: ListTile(
                              title: Text('${hours[index]} : ${minutes[index]} : ${second[index]}',style: const TextStyle(fontSize: 30),)),
                        ),
                      );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}