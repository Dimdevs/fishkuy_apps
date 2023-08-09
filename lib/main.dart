import 'package:belajar_flutter/constans.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE5E5E5),
      body: Center(
        child: Container(
          margin: EdgeInsets.symmetric(
            horizontal: 32,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Wellcome Back",
                style: textTextStyle.copyWith(
                  fontSize: 30,
                  fontWeight: bold,
                ),
              ),
              SizedBox(
                height: 11,
              ),
              Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                style: secondaryTextStyle.copyWith(fontSize: 12),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 64,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Email",
                    style: textTextStyle.copyWith(
                      fontSize: 12,
                      fontWeight: bold,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: WhiteColor,
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Masukan Email",
                          hintStyle: textTextStyle.copyWith(
                              fontSize: 12, color: textColor.withOpacity(0.6)),
                          contentPadding: EdgeInsets.symmetric(
                            horizontal: 16,
                            vertical: 17,
                          ),
                        ),
                      )),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Password",
                    style: textTextStyle.copyWith(
                      fontSize: 12,
                      fontWeight: bold,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: WhiteColor,
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Masukan Password",
                        hintStyle: textTextStyle.copyWith(
                            fontSize: 12, color: textColor.withOpacity(0.6)),
                        contentPadding: EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 17,
                        ),
                        suffixIcon: Icon(Icons.visibility_off_outlined),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        width: 24,
                        height: 24,
                        decoration: BoxDecoration(
                            color: buttonColor,
                            borderRadius: BorderRadius.circular(5)),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        "Remember Me",
                        style: greyTextStyle.copyWith(fontSize: 12),
                      ),
                    ],
                  ),
                  Text(
                    "Forgot Password ?",
                    style: textTextStyle.copyWith(fontSize: 12),
                  ),
                ],
              ),
              SizedBox(
                height: 32,
              ),
              Container(
                width: double.infinity,
                height: 50,
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: primaryButtonColor,
                  ),
                  onPressed: () {},
                  child: Text(
                    "Login",
                    style: whiteTextStyle.copyWith(fontWeight: bold),
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                height: 50,
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 19),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: buttonColor,
                  ),
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.network(
                        "https://cdn.imgbin.com/3/12/23/imgbin-google-pSzwF41a4Xjza6ydKK0wQZgjq.jpg ",
                        height: 20,
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      Text(
                        "SIGN IN WITH GOOGLE",
                        style: textTextStyle.copyWith(fontWeight: bold),
                      ),
                    ],
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "You don't have an account yet ?",
                    style: secondaryTextStyle.copyWith(fontSize: 12),
                  ),
                  Text(" Sign up", style: tncTextStyle.copyWith(fontSize: 12))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
