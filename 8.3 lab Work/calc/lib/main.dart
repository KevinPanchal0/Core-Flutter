import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(Calc());
}

class Calc extends StatefulWidget {
  const Calc({super.key});

  @override
  State<Calc> createState() => _CalcState();
}

class _CalcState extends State<Calc> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: homePage(),
      color: Colors.grey,
    );
  }
}


class homePage extends StatefulWidget {
  const homePage({super.key});

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text(
          'Calc',
          style: TextStyle(
            fontSize: 30,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.blue.shade700,
        centerTitle: true,
        shadowColor: Colors.black,
        elevation: 12,
        leading: Icon(Icons.menu,size: 30,color: Colors.white,),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
              IncrementButton(),
          ],
        ),
      ),
    );
  }
}


class IncrementButton extends StatefulWidget {
  @override
  _IncrementButtonState createState() => _IncrementButtonState();
}

class _IncrementButtonState extends State<IncrementButton> {
  int _counter = 0;

  void _incrementCounter2() {
    setState(() {
      _counter= _counter + 2;
    });
  }
  void _incrementCounter4() {
    setState(() {
      _counter= _counter + 4;
    });
  }

  void _decrementCounter2() {
    setState(() {
      _counter= _counter - 2;
    });
  }

  void _decrementCounter4() {
    setState(() {
      _counter= _counter - 4;
    });
  }

  void clear() {
    setState(() {
      _counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          '$_counter',
          style: TextStyle(fontSize: 104,color: Colors.grey),
        ),
        SizedBox(height: 116),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 60,
              width: 100,
              child: ElevatedButton(
                onPressed: _incrementCounter2,
                child: Text('+2',
                style: TextStyle(
                  fontSize: 30,
                ),
                ),
              ),
            ),
            SizedBox(
              width: 50,
            ),
            SizedBox(
              height: 60,
              width: 100,
              child: ElevatedButton(
                onPressed: _decrementCounter2,
                child: Text('-2',
                style: TextStyle(
                  fontSize: 30,
                ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 60,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 60,
              width: 100,
              child: ElevatedButton(
                onPressed: _incrementCounter4,
                child: Text('+4',
                style: TextStyle(
                  fontSize: 30,
                ),),
              ),
            ),
            SizedBox(
              width: 50,
            ),
            SizedBox(
              height: 60,
              width: 100,
              child: ElevatedButton(
                onPressed: _decrementCounter4,
                child: Text('-4',
                style: TextStyle(
                  fontSize: 30,
                ),),
                style: ButtonStyle(

                )
              ),
            ),
          ],
        ),
        SizedBox(height: 50,),
        SizedBox(
          height: 70,
          width: 200,
          child: ElevatedButton(
            onPressed: clear,
            child: Text(
                'Clear',
              style: TextStyle(
                fontSize: 50,
              ),
            ),
          ),
        )
      ],
    );
  }
}