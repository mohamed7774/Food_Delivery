import 'package:flutter/material.dart';
import '../provider/appcolor.dart';
import '../provider/help.dart';

class ProfileScreen extends StatelessWidget {
  static const routeName = "/profileScreen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SafeArea(
            child: Container(
              height: Helper.getScreenHeight(context),
              width: Helper.getScreenWidth(context),
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 90,
                      ),

                      const CustomFormImput(
                        label: "Name",
                        value: " Ahmed Adel",
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const CustomFormImput(
                        label: "Email",
                        value: "AhmedAdel@gmail.com",
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const CustomFormImput(
                        label: "Mobile No",
                        value: "01027862880",
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const CustomFormImput(
                        label: "Address",
                        value: "Mansoura",
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const CustomFormImput(
                        label: "Password",
                        value: "1234567890",
                        isPassword: true,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const CustomFormImput(
                        label: "Confirm Password",
                        value: "124567890",
                        isPassword: true,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        height: 50,),
                        Container(
                        width: double.infinity,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            color: Colors.white30,
                            child: Row(
                              children: [
                                SizedBox(width: 60,),

                                MaterialButton(
                                  color: Colors.black54,
                                  onPressed: () {},
                                  child:
                                  const Text("Save",
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                SizedBox(width: 25,),

                                MaterialButton(
                                  color: Colors.black54,
                                  onPressed: () {},
                                  child:
                                  const Text("Sing out",
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CustomFormImput extends StatelessWidget {
  const CustomFormImput({

    required String label,
    required String value,
    bool isPassword = false,
  })  : _label = label,
        _value = value,
        _isPassword = isPassword;


  final String _label;
  final String _value;
  final bool _isPassword;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50,
      padding: const EdgeInsets.only(left: 40),
      decoration: const ShapeDecoration(
        shape: StadiumBorder(),
        color: AppColor.placeholderBg,
      ),
      child: TextFormField(
        decoration: InputDecoration(
          labelText: _label,
          contentPadding: const EdgeInsets.only(
            top: 10,
            bottom: 10,
          ),
        ),
        obscureText: _isPassword,
        initialValue: _value,
        style: const TextStyle(
          fontSize: 14,
        ),
      ),
    );
  }
}
