import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 197, 197, 197),
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        margin: new EdgeInsets.symmetric(horizontal: 10.0),
        width: 180,
        height: 180,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SfRadialGauge(
              axes: <RadialAxis>[
                RadialAxis(
                  minimum: 0,
                  maximum: 7.1,
                  interval: 1,
                  ranges: <GaugeRange>[
                    GaugeRange(
                      startValue: 0,
                      endValue: 6,
                      color: Color.fromARGB(255, 83, 83, 83),
                    ),
                    GaugeRange(
                      startValue: 6,
                      endValue: 7.1,
                      color: Colors.red,
                    )
                  ],
                  pointers: <GaugePointer>[
                    NeedlePointer(
                      value: 0,
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
