// Import necessary packages and components
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../components/user_top.dart' as topProfile;
import '../components/bottom_nav_bar.dart' as bottomNav;
import '../widgets/search_bar.dart' as search;
import '../components/nearby_collab.dart' as collabs;

// Define Profile widget
class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Retrieve screen width
    double screenWidth = MediaQuery.of(context).size.width;

    // Build UI
    return Scaffold(
      backgroundColor: Color(0xff231F20),
      body: Stack(
        children: [
          // Top profile section
          Container(
            height: 230,
            child: topProfile.User_top(),
          ),

          // Points display
          Container(
            child: Padding(
              padding: EdgeInsets.only(top: 160, left: 85),
              child: Text(
                'Points:   4000',
                style: TextStyle(
                  fontSize: 20,
                  backgroundColor: Color(0xE0F1C4),
                  color: Colors.teal,
                ),
              ),
            ),
          ),

          // Search bar
          Container(
            child: Column(
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
              margin: EdgeInsets.only(top: 280),
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
                        icon:ImageIcon(
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
                        icon:ImageIcon(
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
                        icon:ImageIcon(
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
                        icon:ImageIcon(
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
                        icon:ImageIcon(
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
                    padding: EdgeInsets.all(10),
                  child:ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),//or 15.0
                    child: Container(
                      padding: EdgeInsets.all(20),
                      height: 70.0,
                      width: 70.0,
                      color:Color(0xff43766C),
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
        collabs.nearCollabs(),
        bottomNav.Bottom_nav(),
        ],
      ),
    );
  }
}
