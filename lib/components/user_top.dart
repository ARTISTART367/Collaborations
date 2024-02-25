import 'package:flutter/material.dart';

class User_top extends StatefulWidget {
  const User_top({super.key});

  @override
  _top createState() =>  _top();
}

class _top extends State<User_top> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Color(0xffD6DAC8),
      ),
      height: 160
      ,
      width: 500,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          children: [
            CircleAvatar(
              radius: 30,
              backgroundColor: const Color(0xffD6DAC8),
              child: IconButton(
                color: const Color(0xff231F20),
                onPressed: () {},
                icon: const Icon(
                  Icons.menu,
                  size: 55,
                ),
              ),
            ),
            const SizedBox(width: 20),
            const CircleAvatar(
              radius: 30,
              backgroundColor: Color(0xff231F20),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 75, left: 20),
              child: Column(
                children: [
                  Text(
                    'UserName',
                    style: TextStyle(color: Color(0xff43766C), fontSize: 20),
                  ),
                  Text(
                    '@profile',
                    style: TextStyle(color: Color(0xff5B3423), fontSize: 15),
                    // textAlign: TextAlign.start,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}