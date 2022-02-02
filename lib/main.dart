import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Woolha.com Flutter Tutorial',
      home: _HapticFeedbackExample(),
    );
  }
}

class _HapticFeedbackExample extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Woolha.com Flutter Tutorial'),
      ),
      body: Center(
        child: Column(
          children: [
            RaisedButton(
              child: Text('Vibrate'),
              onPressed: () {
                HapticFeedback.vibrate();
              },
            ),
            RaisedButton(
              child: Text('Light Impact'),
              onPressed: () {
                HapticFeedback.lightImpact();
              },
            ),
            RaisedButton(
              child: Text('Medium Impact'),
              onPressed: () {
                HapticFeedback.mediumImpact();
              },
            ),
            RaisedButton(
              child: Text('Heavy Impact'),
              onPressed: () {
                HapticFeedback.heavyImpact();
              },
            ),
            RaisedButton(
              child: Text('Selection Click'),
              onPressed: () {
                HapticFeedback.selectionClick();
              },
            ),
          ],
        ),
      ),
    );
  }
}
