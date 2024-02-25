// Import necessary packages and components
import 'package:flutter/material.dart';
import '../components/user_top.dart' as topProfile;
import '../components/bottom_nav_bar.dart' as bottomNav;
import '../widgets/search_bar.dart' as search;
import '../components/nearby_collab.dart' as collabs;

// Define Profile widget
class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    // Retrieve screen width
    double screenWidth = MediaQuery.of(context).size.width;

    // Build UI
    return Scaffold(
      backgroundColor: const Color(0xff231F20),
      body: Stack(
        children: [
          // Top profile section
          const SizedBox(
            height: 230,
            child: topProfile.User_top(),
          ),

          // Points display
          Container(
            child: const Padding(
              padding: EdgeInsets.only(top: 160, left: 85),
              child: Text(
                'Points:   4000',
                style: TextStyle(
                  fontSize: 20,
                  backgroundColor: Color(0x00e0f1c4),
                  color: Colors.teal,
                ),
              ),
            ),
          ),

          // Search bar
          Container(
            child: const Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 180),
                  child: Center(
                    child: search.SearchBar(),
                  ),
                ),
              ],
            ),
          ),

          // Grid of icons
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              margin: const EdgeInsets.only(top: 280),
              height: 400,
              color: Colors.transparent,
              child: GridView.count(
                crossAxisCount: 3,
                children: List.generate(6, (index) {

                  Widget? A; // Declare A as nullable Icon
                  switch (index) {
                    case 1:
                      A = IconButton(
                        onPressed: () {
                          Navigator.pushNamed(context, 'register');
                        },
                        icon:const ImageIcon(
                          AssetImage('assets/atomic.png'),
                          size: 500,
                          color: Colors.white,
                        ),);
                      break;

                    case 2:
                      A = IconButton(
                        onPressed: () {
                          Navigator.pushNamed(context, 'register');
                        },
                        icon:const ImageIcon(
                          AssetImage('assets/art-palette.png'),
                          size: 500,
                          color: Colors.white,
                        ),);
                      break;

                    case 3:
                      A = IconButton(
                        onPressed: () {
                          Navigator.pushNamed(context, 'register');
                        },
                        icon:const ImageIcon(
                          AssetImage('assets/coins.png'),
                          size: 500,
                          color: Colors.white,
                        ),);
                      break;

                    case 4:
                      A = IconButton(
                        onPressed: () {
                          Navigator.pushNamed(context, 'register');
                        },
                        icon:const ImageIcon(
                          AssetImage('assets/graduation.png'),
                          size: 500,
                          color: Colors.white,
                        ),);
                      break;

                    case 5:
                      A = IconButton(
                        onPressed: () {
                          Navigator.pushNamed(context, 'register');
                          },
                        icon:const ImageIcon(
                        AssetImage('assets/globe (1).png'),
                        size: 500,
                        color: Colors.white,
                        ),);
                      break;
                    default:
                    // Handle other cases if needed
                      break;
                  }
                  return GestureDetector(
                      onTap: (){
                    print('tapped');
                  },
                  child:  Padding(
                    padding: const EdgeInsets.all(10),
                  child:ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),//or 15.0
                    child: Container(
                      padding: const EdgeInsets.all(20),
                      height: 70.0,
                      width: 70.0,
                      color:const Color(0xff43766C),
                      child: A
                    ),
                    ),
                  )
                  );

                }),
              ),
            ),
          ),

          // Bottom navigation bar
        const collabs.nearCollabs(),
        const bottomNav.Bottom_nav(pageindex: 1),
        ],
      ),
    );
  }
}
