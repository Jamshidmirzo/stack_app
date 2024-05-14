import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class firstitem extends StatelessWidget {
  Color colors;
  int id;
  firstitem({required this.colors, required this.id});
  List cosmosphoto = [
    'https://th.bing.com/th/id/R.b8d2bfc3b9b5cd3224cfe8bda2c928f3?rik=3JAR8Bf4XkzPlw&pid=ImgRaw&r=0',
    'https://th.bing.com/th/id/R.a1c808cc33467639d3af6304acfd1148?rik=3jnY%2bR78Bz6MbA&riu=http%3a%2f%2feskipaper.com%2fimages%2fcool-backgrounds-8.jpg&ehk=MwqpA3T7s93DUq3EMfLBqJff0Q48Ww%2bAikyDz%2bthfA8%3d&risl=&pid=ImgRaw&r=0',
    'https://4.bp.blogspot.com/-tSRNFT374YE/VFBIxw30hQI/AAAAAAAALis/_wOkWSpvVHc/s1600/Fondo%2Babstracto%2Bazul%2Bcon%2Bamarillo-822435.jpg',
    'https://th.bing.com/th/id/R.68a88d6d16239035ad056ca35e41057a?rik=NJW9NrlEAJ5QwQ&riu=http%3a%2f%2fgetwallpapers.com%2fwallpaper%2ffull%2f8%2ff%2f7%2f904329-cool-awesome-backgrounds-2400x1500-iphone.jpg&ehk=kfHY%2bgYrbUbWwUl3zMcDisBT%2bhqhVFOyOvELenU8dSs%3d&risl=&pid=ImgRaw&r=0'
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 90,
      height: 90,
      padding: const EdgeInsets.all(5),
      decoration:
          BoxDecoration(color: colors, borderRadius: BorderRadius.circular(15)),
      child: Image.network(
        cosmosphoto[id],
        fit: BoxFit.cover,
      ),
    );
  }
}

class scheduleitem extends StatelessWidget {
  int id;
  scheduleitem(this.id);
  List cosmosphoto = [
    'https://th.bing.com/th/id/R.b8d2bfc3b9b5cd3224cfe8bda2c928f3?rik=3JAR8Bf4XkzPlw&pid=ImgRaw&r=0',
    'https://th.bing.com/th/id/R.a1c808cc33467639d3af6304acfd1148?rik=3jnY%2bR78Bz6MbA&riu=http%3a%2f%2feskipaper.com%2fimages%2fcool-backgrounds-8.jpg&ehk=MwqpA3T7s93DUq3EMfLBqJff0Q48Ww%2bAikyDz%2bthfA8%3d&risl=&pid=ImgRaw&r=0',
    'https://4.bp.blogspot.com/-tSRNFT374YE/VFBIxw30hQI/AAAAAAAALis/_wOkWSpvVHc/s1600/Fondo%2Babstracto%2Bazul%2Bcon%2Bamarillo-822435.jpg',
    'https://th.bing.com/th/id/R.68a88d6d16239035ad056ca35e41057a?rik=NJW9NrlEAJ5QwQ&riu=http%3a%2f%2fgetwallpapers.com%2fwallpaper%2ffull%2f8%2ff%2f7%2f904329-cool-awesome-backgrounds-2400x1500-iphone.jpg&ehk=kfHY%2bgYrbUbWwUl3zMcDisBT%2bhqhVFOyOvELenU8dSs%3d&risl=&pid=ImgRaw&r=0'
  ];
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 150,
          height: 150,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                  image: NetworkImage(cosmosphoto[id]), fit: BoxFit.cover)),
        ),
        const SizedBox(
          width: 20,
        ),
      ],
    );
  }
}

class Secondpageitem extends StatelessWidget {
  List rocketsphoto = [
    'assets/images/rocket.png',
    'assets/images/rocket2.png',
    'assets/images/rocket3.png'
  ];
  String names;
  int id;
  VoidCallback func;
  Secondpageitem({required this.names, required this.id, required this.func});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Stack(
              children: [
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.brown.shade100),
                ),
                Align(
                    alignment: Alignment(0, 0),
                    child: Image.asset(
                      rocketsphoto[id],
                      width: 70,
                      height: 70,
                    ))
              ],
            ),
            Column(
              children: [
                Text(
                  names,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 18),
                ),
                Text('\$177.77'),
              ],
            ),
            TextButton(onPressed: func, child: const Text('View'))
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          width: double.infinity,
          height: 3,
          color: Colors.black,
        ),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
