import 'package:flutter/material.dart';

import '../../profile/profilpage.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Row(
          children: [
            InkWell(
              child: const CircleAvatar(
                radius: 25,
                backgroundImage: AssetImage("assets/images/Ls.png"),
              ),
              onDoubleTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ProfilePage()));
              },
            ),
            const SizedBox(
              width: 12,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(
                    right: 100,
                  ),
                  child: const Text(
                    'Welcome',
                    style: TextStyle(
                        fontWeight: FontWeight.normal,
                        color: Color.fromARGB(230, 7, 7, 7),
                        fontSize: 12),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(top: 2),
                  child: const Text(
                    'Rebecca SAMA ',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 14),
                  ),
                ),
              ],
            ),
          ],
        ),
        const Spacer(),
        Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const [
              Icon(
                Icons.location_on,
                color: Color(0xff23AA49),
              ),
              Text("My places",
                  style: TextStyle(
                    fontSize: 12,
                  )),
              Icon(Icons.expand_more),
            ],
          ),
        ),
      ],
    );
  }
}
