import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

import '../../pages/player.dart';
import '../../wigtes/icon.dart';
import '../../wigtes/text.dart';
import '../show_home/bottom_navigation.dart';
import 'list of song.dart';

class sliding_up extends StatefulWidget {
  const sliding_up({super.key});

  @override
  State<sliding_up> createState() => _sliding_upState();
}

class _sliding_upState extends State<sliding_up> {
  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Rtext(
            'Guitar Camp',
            color: Colors.white,
            size: 20,
          ),
          Rtext(
            '4 Hours . Instumental',
            color: Colors.white,
            size: 20,
          ),
          SizedBox(height: 10),
          Divider(
            color: Color(0xff21283F),
            thickness: 1,
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
                onPressed: () {
                  Get.to(() => player());
                },
                style: ElevatedButton.styleFrom(
                  primary: Color(0xff21283F),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  fixedSize: Size(170, 50),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Ricon(
                      icon: Icons.play_arrow,
                      color: Colors.white,
                      size: 30,
                    ),
                    SizedBox(width: 1),
                    Rtext(
                      'Play',
                      color: Colors.white,
                      size: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ],
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  primary: Color(0xff21283F),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  fixedSize: Size(170, 50),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Ricon(
                      icon: Icons.star_outlined,
                      color: Colors.white,
                      size: 25,
                    ),
                    SizedBox(width: 1),
                    Rtext(
                      'Favorite',
                      color: Colors.white,
                      size: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 8),
          Divider(
            color: Color(0xff21283F),
            thickness: 1,
          ),
          SizedBox(height: 10),
          Rtext(
            'About this pack',
            color: Colors.white,
            size: 20,
            fontWeight: FontWeight.bold,
          ),
          SizedBox(height: 20),
          Rtext(
            'Lorem ipsum is smply dummy text of the printing '
            'and typesetting industry. Lorem ipsum has been'
            ' the industry\'s standard dummy text ever since the'
            ' 1500s, when an unknown printer ',
            color: Color(0xffEBEBF5),
            size: 16,
            maxlines: 4,
          ),
          SongList(),
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 10),
            child: Rtext(
              'Featured on',
              color: Colors.white,
              size: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          Expanded(
            child: GridView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              padding: EdgeInsets.all(10),
              scrollDirection: Axis.vertical,
              addAutomaticKeepAlives: true,
              itemCount: 2, // Replace with the actual number of items
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 1,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ),
              itemBuilder: (BuildContext context, int index) {
                // Conditionally show different images
                if (index == 0) {
                  return Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        image: AssetImage('images/10.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Stack(
                      children: [
                        Align(
                          alignment: Alignment.topRight,
                          child: Container(
                            margin: EdgeInsets.only(right: 10, top: 10),
                            height: 35,
                            width: 35,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color(0xff21283F),
                            ),
                            child: Icon(
                              Icons.play_arrow,
                              size: 30,
                              color: Colors.white,
                              
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                } else {
                  return Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        image: AssetImage('images/11.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Stack(
                      children: [
                        Align(
                          alignment: Alignment.topRight,
                          child: Container(
                            margin: EdgeInsets.only(right: 10, top: 10),
                            height: 35,
                            width: 35,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color(0xff21283F),
                            ),
                            child: Icon(
                              Icons.play_arrow,
                              size: 30,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                }
              },
            ),
          )
        ]);
  }
}
