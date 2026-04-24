import 'package:flutter/material.dart';

class ProgressScreen extends StatelessWidget {
  const ProgressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('progress Indicators')),
      body: _ProgressView(),
    );
  }
}

class _ProgressView extends StatelessWidget {
  const _ProgressView();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          SizedBox(height: 30),
          Text('Indicador de procesos circular'),
          SizedBox(height: 10),
          CircularProgressIndicator(strokeWidth: 3, color: Colors.black45),
          SizedBox(height: 20),
          Text('Circular indicator controlado'),
          SizedBox(height: 10),
          _ControlledProgressIndicator(),
        ],
      ),
    );
  }
}

class _ControlledProgressIndicator extends StatelessWidget {
  const _ControlledProgressIndicator();

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      ///que hace
      stream: Stream.periodic(Duration(microseconds: 300), (value) {
        return (value * 2) / 100;
      }).takeWhile((value) => value < 100),
      //////
      builder: (context, snapsHot) {
        final progressValue = snapsHot.data ?? 0;
        return Padding(
          padding: EdgeInsetsGeometry.symmetric(horizontal: 20),
          child: Row(
            children: [
              CircularProgressIndicator(
                value: progressValue,
                strokeWidth: 2,
                color: Colors.red,
              ),
              SizedBox(width: 20),
              Expanded(child: LinearProgressIndicator(value: progressValue)),
            ],
          ),
        );
      },
    );
  }
}
