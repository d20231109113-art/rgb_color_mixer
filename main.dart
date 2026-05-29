import 'package:flutter/material.dart';
import 'color_circle.dart';
import 'color_value_changer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'RGB Color Mixer',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ColorMixerPage(),
    );
  }
}

class ColorMixerPage extends StatefulWidget {
  const ColorMixerPage({super.key});

  @override
  State<ColorMixerPage> createState() => _ColorMixerPageState();
}

class _ColorMixerPageState extends State<ColorMixerPage> {
  double red = 0;
  double green = 0;
  double blue = 0;

  @override
  Widget build(BuildContext context) {
    Color mixedColor = Color.fromRGBO(
      red.toInt(),
      green.toInt(),
      blue.toInt(),
      1,
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text('RGB Color Mixer'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ColorCircle(color: mixedColor),

            const SizedBox(height: 40),

            ColorValueChanger(
              colorName: "Red",
              value: red,
              activeColor: Colors.red,
              onChanged: (value) {
                setState(() {
                  red = value;
                });
              },
            ),

            ColorValueChanger(
              colorName: "Green",
              value: green,
              activeColor: Colors.green,
              onChanged: (value) {
                setState(() {
                  green = value;
                });
              },
            ),

            ColorValueChanger(
              colorName: "Blue",
              value: blue,
              activeColor: Colors.blue,
              onChanged: (value) {
                setState(() {
                  blue = value;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}