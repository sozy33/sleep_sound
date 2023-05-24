import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sleep_sound/wigtes/text.dart';

import '../../pages/player.dart';

class Song {
  final int id;
  final IconData icon;
  final String name;

  Song({required this.id, required this.icon, required this.name});
}

class SongList extends StatelessWidget {
  final List<Song> songs = [
    Song(id: 1, icon: Icons.play_arrow, name: ' The Guitar '),
    Song(id: 2, icon: Icons.play_arrow, name: 'Lost without you'),
    Song(id: 3, icon: Icons.play_arrow, name: 'City Lights'),
    Song(id: 4, icon: Icons.lock, name: 'Romantic'),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20, left: 20, right: 20),
      height: 250,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Color(0xff21283F),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 20),
            child: Text(
              "List of Songs",
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
            ),
          ),
          SizedBox(height: 10),
          Expanded(
            child: ListView.separated(
              separatorBuilder: (context, index) => Divider(
                color: const Color(0xff2D344B),
              ),
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              addAutomaticKeepAlives: true,
              itemCount: songs.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Rtext(
                        songs[index].id.toString(),
                        color: Colors.white,
                        size: 14,
                      ),
                      SizedBox(width: 15),
                      Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                        ),
                        child: CircleAvatar(
                          backgroundColor: Color(0xff141927),
                          child: Icon(
                            songs[index].icon,
                          ),
                        ),
                      ),
                    ],
                  ),
                  title: Rtext(
                    songs[index].name,
                    color: Colors.white,
                    size: 16,
                    onTap: () => Get.to(() => player()),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
