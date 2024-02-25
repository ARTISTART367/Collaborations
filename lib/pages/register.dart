import 'package:flutter/material.dart';

class MyRegister extends StatefulWidget {
  const MyRegister({super.key});

  @override
  _MyRegisterState createState() => _MyRegisterState();
}

class _MyRegisterState extends State<MyRegister> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
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
              padding: const EdgeInsets.only(left: 120, top: 320),
              child: const Text(
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
                      margin: const EdgeInsets.only(left: 35, right: 35),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              const Icon(
                                // radius: 30,
                                // backgroundColor: Color(0xff43766C),
                                Icons.account_circle,
                                color: Color(0xffD6DAC8),
                                size: 65,

                              ),
                              const SizedBox(width: 10),
                              Expanded(
                                child: TextField(
                                  style: const TextStyle(color: Colors.black),
                                  decoration: InputDecoration(
                                    fillColor: Colors.grey.shade100,
                                    filled: true,
                                    hintText: "Useranme",
                                    isDense:true,  //Whether the InputDecorator.child is part of a dense form (i.e., uses less vertical space).
                                    contentPadding: const EdgeInsets.all(15),  //The padding for the input decoration's container.
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(50),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),

                          Row(
                            children: [
                              const CircleAvatar(
                                radius: 30,
                                backgroundColor: Color(0xffD6DAC8),
                                child: Icon(
                                  Icons.email,
                                  color: Color(0xff231F20),
                                  size: 40,
                                ),

                              ),
                              const SizedBox(width: 10),
                              Expanded(
                                child: TextField(
                                  style: const TextStyle(color: Colors.black),
                                  decoration: InputDecoration(
                                    fillColor: Colors.grey.shade100,
                                    filled: true,
                                    hintText: "Email",
                                    isDense:true,  //Whether the InputDecorator.child is part of a dense form (i.e., uses less vertical space).
                                    contentPadding: const EdgeInsets.all(15),  //The padding for the input decoration's container.
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(50),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),

                          Row(
                            children: [
                              const CircleAvatar(
                                radius: 30,
                                backgroundColor: Color(0xffD6DAC8),
                                child: Icon(
                                  Icons.lock,
                                  color: Color(0xff231F20),
                                  size: 40,
                                ),

                              ),
                              const SizedBox(width: 10),
                              Expanded(
                                child: TextField(
                                  style: const TextStyle(color: Colors.black),
                                  decoration: InputDecoration(
                                    fillColor: Colors.grey.shade100,
                                    filled: true,
                                    hintText: "Password",
                                    isDense:true,  //Whether the InputDecorator.child is part of a dense form (i.e., uses less vertical space).
                                    contentPadding: const EdgeInsets.all(15), //The padding for the input decoration's container.
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(50),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height:20,
                          ),
                          InkWell(
                            onTap: () {  Navigator.pushNamed(context, 'home');}, // Handle your callback
                            child:
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: const Color(0xff43766C),
                              ),
                              padding: const EdgeInsets.only(left: 20,right: 20),
                              child:Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  TextButton(

                                    onPressed: () {
                                      // Add your onPressed logic here
                                    },
                                    child: const Text(
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
                                    backgroundColor: const Color(0xff43766C),
                                    child: IconButton(
                                      color: Colors.white,

                                      onPressed: () {
                                          Navigator.pushNamed(context, 'home');
                                      },
                                      icon: const Icon(
                                        Icons.arrow_forward,
                                        size:30,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              TextButton(
                                onPressed: () {
                                  Navigator.pushNamed(context, 'login');
                                },
                                child: const Text(
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
                                child: const Text(
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