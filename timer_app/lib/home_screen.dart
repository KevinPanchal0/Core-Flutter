import 'package:flutter/material.dart';
import 'package:timer_app/clocks/stop_watch.dart';
import 'package:timer_app/clocks/timer.dart';
import 'clocks/clock.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: index,
        children:  [const Clock(), ReverseTimerWidget(), const StopWatch(),],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        backgroundColor: Colors.grey[200],
        fixedColor: Colors.orange,
        iconSize: 35,
        selectedFontSize:20,
        selectedIconTheme:const IconThemeData(
          size: 40,
        ),
        unselectedIconTheme: const IconThemeData(
          color: Colors.grey
        ),
        onTap: (int newIndex) {
          setState(() {
            index = newIndex;
          });
        },
        items:const [
          BottomNavigationBarItem(
              label: 'Clock', icon: Icon(Icons.watch_later_outlined,)),
          BottomNavigationBarItem(
              label: 'Timer', icon: Icon(Icons.share_arrival_time_rounded)),
          BottomNavigationBarItem(
              label: 'Stopwatch', icon: Icon(Icons.lock_clock)),
        ],
      ),
    );
  }
}