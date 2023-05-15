import 'package:flutter/material.dart';
import 'package:untitled20/screen/singup.dart';

import 'login.dart';

class Wellcom extends StatelessWidget {
  const Wellcom({super.key});


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
    backgroundColor: Colors.white,
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Container(
                child: Center(
                  child: Image.asset("images/hello.png"),
                ),
              ),
            ),
            Expanded(
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Text(
                      "Welcome To Hello Food",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    Column(
                      children: const [
                        Text("Order food form our restaueant and",
                          style: TextStyle(
                            color: Colors.black,
                          ),),
                        Text("Make reservation in real- time",
                          style: TextStyle(
                            color: Colors.black,
                          ),)
                      ],
                    ),
                    Container(
                      width: double.infinity,
                      child: MaterialButton(
                        color: Colors.black54,
                        onPressed: (){Navigator.push(context,
                            MaterialPageRoute(builder: (context) =>  LoginScreen()));},
                        child:const Text ('Login', style:TextStyle(
                          color: Colors.white,
                          fontSize: 20,)
                        ),
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      child: MaterialButton(
                        color: Colors.black54,
                        onPressed: (){Navigator.push(context,
                            MaterialPageRoute(builder: (context) =>  const Singup()));},
                        child:const Text ('SingUp', style:TextStyle(
                          color: Colors.white,
                          fontSize: 20,)
                        ),
                      ),
                    ),

                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
