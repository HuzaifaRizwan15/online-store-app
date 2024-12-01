import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:myapp1/color/color.dart';
import 'package:myapp1/screens/home.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();

  registerLogin() async {
    try {
      final credential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailController.text,
        password: passController.text,
        // print(credential.runtimeType);
      );
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const HomeScreen()),
      );
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
      } else {
        print("Error");
      }
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 90),
            Image.asset('asset/image/logo.png'),
            SizedBox(height: 50),

            SizedBox(
              height: 12,
            ),

            // Container(
            //   width: double.infinity,
            //   height: 50,
            //   child: Text('Full Name'),

            // ),

            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    top: 18.0,
                    right: 18,
                    left: 22,
                  ),
                  child: Container(
                    width: double.infinity,
                    height: 50,
                    child: Text(
                      'Email',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 0, bottom: 18, right: 18, left: 18),
                  child: TextFormField(
                    controller: emailController,
                    decoration: InputDecoration(
                        hintText: "Email",
                        fillColor: Color.fromARGB(22, 210, 210, 210),
                        filled: true,
                        // prefixIcon: Icon(Icons.email_sharp),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: primaryColor,
                          ),
                          borderRadius: BorderRadius.circular(8),
                        )),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20, right: 22, left: 22),
                  child: Container(
                    width: double.infinity,
                    height: 50,
                    child: Text(
                      'Password',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 0, bottom: 0.0, right: 22, left: 20),
                  child: TextFormField(
                    controller: passController,
                    decoration: InputDecoration(
                        hintText: "Password",
                        fillColor: Color.fromARGB(22, 210, 210, 210),
                        filled: true,
                        // prefixIcon: Icon(Icons.lock_open_sharp),
                        suffixIcon: Icon(Icons.visibility_off_outlined),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: primaryColor,
                          ),
                          borderRadius: BorderRadius.circular(8),
                        )),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            InkWell(
              onTap: () {
                // signin();
              },
              child: Container(
                width: 400,
                height: 50,
                decoration: BoxDecoration(
                  color: primaryColor,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Center(
                  child: InkWell(
                    onTap: () {
                      registerLogin();
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HomeScreen()),
                      );
                    },
                    child: Text(
                      "Create Account",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Color.fromARGB(255, 255, 255, 255)),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
