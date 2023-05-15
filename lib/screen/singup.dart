import 'package:flutter/material.dart';
import 'package:untitled20/screen/login.dart';
import 'package:untitled20/screen/welcom.dart';

class Singup extends StatefulWidget {
  const Singup({Key? key}) : super(key: key);

  @override
  State<Singup> createState() => _SingupState();
}

class _SingupState extends State<Singup> {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
          leading:IconButton(icon: const Icon(Icons.arrow_back_ios,color: Colors.black45,),
            onPressed: (){Navigator.push(context,
                MaterialPageRoute(builder: (context) =>  const Wellcom()));},)
      ),
    backgroundColor: Colors.white,
      body:
      SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 50),
              child: Column(

                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    height: 80,
                  ),
                  const Text(
                    "Sign Up",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 40,
                    ),
                  ),
                  Container(
                    height: 400,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const SizedBox(
                          height: 5,
                        ),
                        TextFormField(
                            decoration: const InputDecoration(
                                labelText: 'First Name',
                                prefixIcon: Icon(
                                  Icons.person,
                                )
                            )
                        ),
                        TextFormField(
                        decoration: const InputDecoration(
                        labelText: 'Last Name',
    prefixIcon: Icon(
    Icons.person,
    ))),

                        TextFormField(
                            decoration: const InputDecoration(
                                labelText: 'Email',
                                prefixIcon: Icon(
                                  Icons.email,
                                )) ),
                        TextFormField(decoration: const InputDecoration(
                            labelText: 'Password',
                            prefixIcon: Icon(
                              Icons.lock,))
                        ),
                        TextFormField(
    decoration: const InputDecoration(
    labelText: 'Phone',
    prefixIcon: Icon(
    Icons.phone,
    )) ),
                      ],
                    ),
                  ),
                   const SizedBox(
                      height: 30,
                    ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [

                        const SizedBox(width: 20,),

                        Container(
                      child: MaterialButton(
                        color: Colors.black45,
                        onPressed: () {Navigator.push(context,
                            MaterialPageRoute(builder: (context) =>  const Wellcom()));},
                        child: const Text(
                          'Canel',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                        ),
                        const SizedBox(
                          width: 35,
                        ),
                        Container(
                          child: MaterialButton(
                            color: Colors.black45,
                            onPressed: (){Navigator.push(context,
                                MaterialPageRoute(builder: (context) =>  LoginScreen()));},
                            child: const Text(
                              'Register',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
