import 'package:flutter/material.dart';

class Task2 extends StatelessWidget {
  const Task2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('A.M.F'),
        centerTitle: true,
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemCount: 28,
        itemBuilder: (context, index) {
          const List<String> letters = [
            'a',
            'b',
            'c',
            'd',
            'e',
            'f',
            'g',
            'h',
            'i',
            'j',
            'k',
            'l',
            'm',
            'n',
            'o',
            'p',
            'q',
            'r',
            's',
            't',
            'u',
            'v',
            'w',
            'x',
            'y',
            'z',
            " Ahmed",
            "MOhamed"
          ];
          String text = letters[index];

          const List<Color> colors = [
            Colors.blue,
            Colors.red,
            Colors.orange,
            Colors.green,
            Colors.purple,
            Colors.yellow,
            Colors.cyan,
            Colors.teal,
            Colors.indigo,
            Colors.brown,
            Colors.grey,
            Colors.greenAccent,
            Colors.pink,
            Colors.amber,
            Colors.blueAccent,
            Colors.deepPurple,
            Colors.lightGreen,
            Colors.deepOrange,
            Colors.lime,
            Colors.blueGrey,
            Colors.pinkAccent,
            Colors.cyanAccent,
            Colors.orangeAccent,
            Colors.lightBlue,
            Colors.indigoAccent,
            Colors.yellowAccent,
            Colors.indigoAccent,
            Colors.yellowAccent,
          ];

          return box(
            text,
            colors[index % colors.length],
          );
        },
        padding: const EdgeInsets.all(10),
      ),
    );
  }
}

Widget box(String text, Color color) {
  return Container(
    alignment: Alignment.center,
    decoration: BoxDecoration(
      color: color,
      borderRadius: BorderRadius.circular(8),
    ),
    child: Text(
      text,
      style: const TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
    ),
  );
}
