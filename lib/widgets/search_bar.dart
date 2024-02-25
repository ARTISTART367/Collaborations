import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({super.key});
//   {
//   required Key key,
// }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      margin: const EdgeInsets.symmetric(vertical: 30),
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
      decoration: BoxDecoration(
        color: const Color(0xff43766C),
        borderRadius: BorderRadius.circular(29.5),
      ),
      child: const TextField(
        style: TextStyle(
          color:Color(0xff231F20),),
        decoration: InputDecoration(
          hintStyle:TextStyle( color:Colors.amber,),
          hintText: "Search",
          // Uncomment the line below if you import flutter_svg
          icon: Icon(Icons.search, size:40,color: Colors.amber,),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
