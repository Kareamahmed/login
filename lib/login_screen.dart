import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isObscure = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: MediaQuery.sizeOf(context).width,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                SizedBox(height: 50),
                Image.asset("assets/profile/Logo.png", width: 100, height: 100),
                SizedBox(height: 15),
                Text(
                  "Welcome to Lafyuu",
                  style: TextStyle(
                    color: Color(0xff223263),
                    fontSize: 25,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  "Sign in to continue",
                  style: TextStyle(fontSize: 15, color: Colors.grey),
                ),
                SizedBox(height: 20),
                SizedBox(
                  height: 60,
                  child: TextFormField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.email_outlined),
                      hintText: 'Your Email',
                      hintStyle: TextStyle(color: Colors.grey, fontSize: 15),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(17),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                SizedBox(
                  height: 60,
                  child: TextFormField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.lock_clock_outlined),
                      hintText: 'Password',
                      hintStyle: TextStyle(color: Colors.grey, fontSize: 15),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(17),
                      ),
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            isObscure = !isObscure;
                          });
                        },
                        icon:
                            isObscure
                                ? Icon(Icons.visibility_off_outlined)
                                : Icon(Icons.visibility_outlined),
                      ),
                    ),
                    obscureText: isObscure,
                  ),
                ),
                SizedBox(height: 20),
                CustomButton(
                  title: 'Sign In',
                  color: Colors.blue,
                  textColor: Colors.white,
                ),
                SizedBox(height: 20),
                CustomButton(
                  imagePath: 'assets/profile/Group 121.png',
                  title: 'Login with Google',
                ),
                SizedBox(height: 10),
                CustomButton(
                  imagePath: 'assets/profile/Vector.png',
                  title: 'Login with facebook',
                ),
                Text(
                  "Forgot Password?",
                  style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don’t have a account?",
                      style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    SizedBox(height: 7,),
                    Text(
                  " Register",
                  style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    this.imagePath,
    required this.title,
    this.color,
    this.textColor,
  });
  final String? imagePath;
  final String title;
  final Color? color;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.sizeOf(context).width,
      height: 60,
      child: OutlinedButton(
        onPressed: () {},
        style: ButtonStyle(
          backgroundColor: WidgetStatePropertyAll(color ?? Colors.white),
          side: WidgetStatePropertyAll(
            BorderSide(color: Colors.grey, width: 1),
          ),
          shape: WidgetStatePropertyAll(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            if (imagePath != null)
              Image.asset(imagePath!, width: 20, height: 20)
            else
              SizedBox(),
            Text(
              title,
              style: TextStyle(
                color: textColor ?? Colors.grey,
                fontWeight: FontWeight.w800,
              ),
            ),
            SizedBox(),
          ],
        ),
      ),
    );
  }
}
