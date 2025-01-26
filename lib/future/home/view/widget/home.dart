import 'package:flutter/material.dart';
import 'package:flutter_application_2/core/style/textstyle.dart';
import 'package:flutter_application_2/future/home/model/modelhome.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool textlang = true;
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: textlang ? TextDirection.ltr : TextDirection.rtl,
      child: Scaffold(
        backgroundColor: Colors.black,
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              textlang = !textlang;
            });
          },
          backgroundColor: Colors.greenAccent,
          child: Icon(
            Icons.add,
            color: Colors.white,
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.black,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.greenAccent,
          currentIndex: count,
          unselectedItemColor: Colors.white,
          onTap: (index) {
            setState(() {
              count = index;
            });
          },
          items: [
            BottomNavigationBarItem(
              label: 'الدردشات',
              icon: Icon(
                Icons.chat_bubble_outline,
              ),
            ),
            BottomNavigationBarItem(
              label: 'المستجدات',
              icon: Icon(
                Icons.update,
              ),
            ),
            BottomNavigationBarItem(
              label: 'المجتمعات',
              icon: Icon(
                Icons.groups,
              ),
            ),
            BottomNavigationBarItem(
              label: 'المكلمات',
              icon: Icon(
                Icons.call,
              ),
            ),
          ],
        ),
        appBar: AppBar(
          backgroundColor: Colors.black,
          leadingWidth: double.infinity,
          leading: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              tittle[count],
              style: textStyle(
                font: FontWeight.bold,
                fontsize: 25,
              ),
            ),
          ),
          actions: [
            Icon(
              Icons.camera_alt_outlined,
              color: Colors.white,
            ),
            SizedBox(
              width: 15,
            ),
            Icon(
              Icons.search,
              color: Colors.white,
            ),
            SizedBox(
              width: 5,
            ),
            PopupMenuButton(
              iconColor: Colors.white,
              itemBuilder: (context) {
                return [
                  PopupMenuItem(
                    child: Text('Ahmed Mohamed farouk'),
                  )
                ];
              },
            ),
          ],
        ),
        body: screens[count],
      ),
    );
  }
}
