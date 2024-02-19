import 'package:flutter/material.dart';

class MyRegister extends StatefulWidget {
  const MyRegister({Key? key}) : super(key: key);

  @override
  _MyRegisterState createState() => _MyRegisterState();
}

class _MyRegisterState extends State<MyRegister> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/Register.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Container(),
            Container(
              padding: EdgeInsets.only(left: 120, top: 320),
              child: Text(
                'Join Us',
                style: TextStyle(color: Color(0xFFEDDACF), fontSize: 33),
              ),
            ),
            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.5,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 35, right: 35),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Icon(
                                // radius: 30,
                                // backgroundColor: Color(0xff43766C),
                                Icons.account_circle,
                                color: Color(0xffD6DAC8),
                                size: 65,

                              ),
                              SizedBox(width: 10),
                              Expanded(
                                child: TextField(
                                  style: TextStyle(color: Colors.black),
                                  decoration: InputDecoration(
                                    fillColor: Colors.grey.shade100,
                                    filled: true,
                                    hintText: "Useranme",
                                    isDense:true,  //Whether the InputDecorator.child is part of a dense form (i.e., uses less vertical space).
                                    contentPadding: EdgeInsets.all(15),  //The padding for the input decoration's container.
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(50),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),

                          Row(
                            children: [
                              CircleAvatar(
                                radius: 30,
                                backgroundColor: Color(0xffD6DAC8),
                                child: Icon(
                                  Icons.email,
                                  color: Color(0xff231F20),
                                  size: 40,
                                ),

                              ),
                              SizedBox(width: 10),
                              Expanded(
                                child: TextField(
                                  style: TextStyle(color: Colors.black),
                                  decoration: InputDecoration(
                                    fillColor: Colors.grey.shade100,
                                    filled: true,
                                    hintText: "Email",
                                    isDense:true,  //Whether the InputDecorator.child is part of a dense form (i.e., uses less vertical space).
                                    contentPadding: EdgeInsets.all(15),  //The padding for the input decoration's container.
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(50),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),

                          Row(
                            children: [
                              CircleAvatar(
                                radius: 30,
                                backgroundColor: Color(0xffD6DAC8),
                                child: Icon(
                                  Icons.lock,
                                  color: Color(0xff231F20),
                                  size: 40,
                                ),

                              ),
                              SizedBox(width: 10),
                              Expanded(
                                child: TextField(
                                  style: TextStyle(color: Colors.black),
                                  decoration: InputDecoration(
                                    fillColor: Colors.grey.shade100,
                                    filled: true,
                                    hintText: "Password",
                                    isDense:true,  //Whether the InputDecorator.child is part of a dense form (i.e., uses less vertical space).
                                    contentPadding: EdgeInsets.all(15), //The padding for the input decoration's container.
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(50),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height:20,
                          ),
                          InkWell(
                            onTap: () {}, // Handle your callback
                            child:
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Color(0xff43766C),
                              ),
                              padding: EdgeInsets.only(left: 20,right: 20),
                              child:Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  TextButton(

                                    onPressed: () {
                                      // Add your onPressed logic here
                                    },
                                    child: Text(
                                      'Join Now',
                                      style: TextStyle(
                                        fontSize: 27,
                                        fontWeight: FontWeight.w700,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),

                                  CircleAvatar(
                                    radius: 30,
                                    backgroundColor: Color(0xff43766C),
                                    child: IconButton(
                                      color: Colors.white,

                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.arrow_forward,
                                        size:30,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              TextButton(
                                onPressed: () {
                                  Navigator.pushNamed(context, 'login');
                                },
                                child: Text(
                                  'Sign In',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    decoration: TextDecoration.none,
                                    color: Color(0xff43766C),
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                              TextButton(
                                onPressed: () {},
                                child: Text(
                                  'Forgot Password',
                                  style: TextStyle(
                                    decoration: TextDecoration.none,
                                    color: Color(0xff43766C),
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}