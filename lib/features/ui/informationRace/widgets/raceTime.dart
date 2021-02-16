


import 'dart:async';

import 'package:al_dafor/libraries.dart';
import 'package:flutter/material.dart';

class RaceTime extends StatefulWidget {

  @override
  _RaceTimeState createState() => _RaceTimeState();
}

class _RaceTimeState extends State<RaceTime> {
  Timer _timer;
  int _start = 30;
  String doneText;

  void startTimer() {
    const oneSec = const Duration(seconds: 1);
    _timer = new Timer.periodic(
      oneSec,
          (Timer timer) => setState(
            () {
          if (_start < 1) {
            timer.cancel();
          } else {
            _start = _start - 1;
            print(_start);
            print(_timer.tick);
          }
        },
      ),
    );
  }
  @override
  void initState() {
    startTimer();
    super.initState();
  }
  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return CircularPercentIndicator(reverse: true,
      radius: 45.0,
      lineWidth: 4.0,
      percent: _start/30,
      circularStrokeCap: CircularStrokeCap.round,
      center: new Text("${_start}"),
      progressColor: Color(0xff326b86),
    );
  }
}
