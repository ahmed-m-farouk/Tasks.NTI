import 'package:flutter/material.dart';
import 'package:flutter_application_2/core/style/textstyle.dart';
import 'package:flutter_application_2/future/home/model/modelhome.dart';

class Bulidstorys extends StatefulWidget {
  const Bulidstorys({super.key});

  @override
  State<Bulidstorys> createState() => _BulidstorysState();
}

class _BulidstorysState extends State<Bulidstorys> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                'الحاله',
                style: textStyle(
                  font: FontWeight.bold,
                  fontsize: 20,
                ),
              ),
              const SizedBox(height: 10),
              SizedBox(
                height: 200,
                child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  itemCount: 30,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS4M20QhML8edk6mdLSG3WGnIQH07W9HRUqGw&s',
                          ),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Align(
                          alignment: Alignment.topRight,
                          child: CircleAvatar(
                            foregroundImage: const NetworkImage(
                              'https://pixlr.com/images/generator/image-editor.webp',
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  const Icon(Icons.arrow_back, color: Colors.grey),
                  const SizedBox(width: 5),
                  Text(
                    'استكشاف',
                    style: textStyle(
                      font: FontWeight.normal,
                      fontsize: 15,
                    ),
                  ),
                  const Spacer(),
                  Text(
                    'القنوات',
                    style: textStyle(
                      font: FontWeight.normal,
                      fontsize: 20,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 25),
              // هنا قمنا بتحديد ارتفاع القائمة لضمان عرضها بشكل جيد مع التمرير
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: listhome.length,
                itemBuilder: (context, index) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ListTile(
                        leading: CircleAvatar(
                          backgroundImage: NetworkImage(
                            listhome[index].image,
                          ),
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
                      const Divider(color: Colors.grey),
                    ],
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
