import 'package:car_catalogue/app/modules/home/views/home_view.dart';
import 'package:car_catalogue/app/modules/signin/views/signin_view.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/signup_controller.dart';

class SignupView extends GetView<SignupController> {
  const SignupView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Material(
        child: SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 0),
          Image.asset(
            'assets/hey.jpg',
            fit: BoxFit.cover,
            // height: 100,
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Welcome",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 23, vertical: 15),
            child: Form(
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                        hintText: "Enter Your Name", labelText: "Username"),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "UserName cannot be empty";
                      }
                      return null;
                    },
                    onChanged: (value) {},
                  ),
                  TextFormField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        hintText: "Enter Your Contact Number",
                        labelText: "Mobile"),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Mobile Number cannot be empty";
                      }
                      return null;
                    },
                  ),
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                        hintText: "Enter Your Email", labelText: "Email"),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Email cannot be empty";
                      }
                      return null;
                    },
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                        hintText: "Enter Your Password", labelText: "Password"),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Password cannot be empty";
                      } else if (value.length < 6) {
                        return "Length cannot be less than 6";
                      }
                      return null;
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Material(
                    color: Colors.pink,
                    borderRadius: BorderRadius.circular(8),
                    child: InkWell(
                      // onTap: () => moveToHome(context),
                      onTap: () {
                        Get.off(()=>HomeView());
                        print('SignUp Clicked');
                      },
                      child: AnimatedContainer(
                        duration: Duration(seconds: 1),
                        height: 45,
                        width: 90,
                        alignment: Alignment.center,
                        child: Text(
                          "SignUp",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 15),
                        ),
                        // decoration: BoxDecoration(
                        //   shape: changeButton
                        //       ? BoxShape.circle
                        //       : BoxShape.rectangle,
                        //   color: Colors.deepPurple,
                        // )
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Already Have an Account ?'),
                      TextButton(
                        onPressed: () {
                          Get.to(() => SigninView());
                        },
                        child: Text(
                          'Login',
                          style: TextStyle(color: Colors.blue),
                        ),
                      )
                    ],
                  )
                  // ElevatedButton(
                  //   style:
                  //       ElevatedButton.styleFrom(minimumSize: Size(150, 45)),
                  //   onPressed: () =>
                  //       {Navigator.pushNamed(context, MyRoute.homeRoute)},
                  //   child: Text("Login"),
                  // ),
                ],
              ),
            ),
          )
        ],
      ),
    ));
  }
}
