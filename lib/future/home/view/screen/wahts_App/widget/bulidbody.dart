import 'package:flutter/material.dart';
import 'package:flutter_application_2/core/style/textstyle.dart';
import 'package:flutter_application_2/future/home/model/modelhome.dart';

class Bulidbody extends StatefulWidget {
  const Bulidbody({super.key});

  @override
  State<Bulidbody> createState() => _BulidbodyState();
}

class _BulidbodyState extends State<Bulidbody> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        children: [
          const Divider(height: 1.5),
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
                      subtitle: Row(
                        children: [
                          const Icon(Icons.done_all),
                          const SizedBox(width: 5),
                          Expanded(
                            child: Text(
                              listhome[index].suptittle,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: subtextStyle(),
                            ),
                          ),
                        ],
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
    );
  }
}
