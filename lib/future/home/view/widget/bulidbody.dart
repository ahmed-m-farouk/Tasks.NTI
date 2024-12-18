import 'package:flutter/material.dart';
import 'package:flutter_application_2/core/style/textstyle.dart';
import 'package:flutter_application_2/future/home/model/modelhome.dart';

class Bulidbody extends StatelessWidget {
  const Bulidbody({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: Colors.black,
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
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
          unselectedItemColor: Colors.white,
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
              'واتساب ',
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
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Divider(
                height: 1.5,
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: listhome.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        ListTile(
                          leading: Stack(
                            alignment: AlignmentDirectional.bottomStart,
                            children: [
                              CircleAvatar(
                                backgroundImage:
                                    NetworkImage(listhome[index].image),
                              ),
                            ],
                          ),
                          title: Text(
                            listhome[index].tittle,
                            style: textStyle(
                              fontsize: 15,
                              font: FontWeight.bold,
                            ),
                          ),
                          subtitle: SizedBox(
                            width: 50,
                            child: Row(
                              children: [
                                Icon(Icons.done_all),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  listhome[index].suptittle,
                                  style: subtextStyle(),
                                ),
                              ],
                            ),
                          ),
                          trailing: Text(
                            '12:00',
                            style: timetextStyle(),
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
