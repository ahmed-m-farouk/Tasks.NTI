import 'package:flutter/material.dart';

class Task1 extends StatefulWidget {
  const Task1({super.key});

  @override
  State<Task1> createState() => _Task1State();
}

class _Task1State extends State<Task1> {
  count y = count();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("A.M.F"),
        centerTitle: true,
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.blue,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
                onPressed: () {
                  setState(() {
                    y.pr1();
                  });
                },
                icon: Icon(
                  Icons.add_box_outlined,
                  color: Colors.white,
                  size: 40,
                )),
            SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                    onPressed: () {
                      setState(() {
                        y.pr4();
                      });
                    },
                    icon: Icon(
                      Icons.exposure_minus_2,
                      color: Colors.white,
                      size: 40,
                    )),
                SizedBox(
                  width: 35,
                ),
                Text(
                  '${y.x}',
                  style: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  width: 35,
                ),
                IconButton(
                    onPressed: () {
                      setState(() {
                        y.pr5();
                      });
                    },
                    icon: Icon(
                      Icons.exposure_plus_2_outlined,
                      color: Colors.white,
                      size: 40,
                    )),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            IconButton(
                onPressed: () {
                  setState(() {
                    y.pr2();
                  });
                },
                icon: Icon(
                  Icons.remove_circle_outline_sharp,
                  color: Colors.white,
                  size: 40,
                )),
            SizedBox(
              height: 30,
            ),
            IconButton(
                onPressed: () {
                  setState(() {
                    y.pr3();
                  });
                },
                icon: Text(
                  'reset',
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                )),
          ],
        ),
      ),
    );
  }
}

class count {
  int x = 0;
  pr1() {
    x++;
  }

  pr2() {
    if (x > 0) {
      x--;
    }
  }

  pr3() {
    x = 0;
  }

  pr4() {
    if (x > 0) {
      x -= 2;
    }
  }

  pr5() {
    x += 2;
  }
}
