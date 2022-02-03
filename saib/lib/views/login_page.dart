import 'package:flutter/material.dart';
import 'package:saib/views/landing_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
        body: Stack(children: [
      Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/bg.png"),
            fit: BoxFit.cover,
          ),
        ),
      ),
      Positioned(
          height: height,
          width: width,
          child: Image.asset(
            "assets/map_dots.png",
            fit: BoxFit.contain,
          )),
      Positioned(
          top: height / 22,
          height: height / 3,
          width: width,
          child: Image.asset("assets/line.png")),
      Positioned(
          left: width / 5.5,
          top: height / 7,
          height: height / 3,
          width: width / 1.6,
          child: Image.asset("assets/logo_saib.png")),
      Positioned(
          left: width / 5,
          top: height / 6.6,
          height: height / 12,
          width: width / 6,
          child: Image.asset("assets/icons/ic_plane.png")),
      Positioned(
          left: width / 10,
          top: height / 2.8,
          child: loginWidgets(width, height)),
      Positioned(
          left: width / 6,
          top: height / 1.6,
          child: const BottomWidget()
              .buttonWidget("Login", width, height, context)),
      Positioned(
          left: width / 3,
          top: height / 1.4,
          child: const Text(
            "Forgot Password?",
            style: TextStyle(
                color: Colors.white,
                decoration: TextDecoration.underline,
                fontSize: 16),
          )),
      Positioned(
          left: width / 5.5,
          top: height / 1.32,
          child: Row(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              const Text(
                "Don't have an account? ",
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
              const Text(
                "Register",
                style: TextStyle(
                    color: Colors.white,
                    decoration: TextDecoration.underline,
                    fontSize: 16),
              ),
            ],
          )),
      Positioned(
        top: height / 1.15,
        left: width / 12,
        child: Container(
          width: width / 1.2,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              iconWidget("assets/icons/ic_aboutus.png", width, height),
              iconWidget("assets/icons/ic_locator.png", width, height),
              iconWidget("assets/icons/ic_phone.png", width, height),
            ],
          ),
        ),
      ),
    ]));
  }

  Widget iconWidget(assetIcon, width, height) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset(
            assetIcon,
            width: 35,
            height: 35,
          ),
        ),
      ),
    );
  }

  Widget loginWidgets(width, height) {
    return SizedBox(
      width: width / 1.2,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
                width: width / 1.5, child: textField("User Name", false)),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
                width: width / 1.5, child: textField("Password", true)),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              width: width / 1.3,
              child: Theme(
                data: ThemeData(unselectedWidgetColor: Colors.white),
                child: const CheckboxListTile(
                  controlAffinity: ListTileControlAffinity.leading,
                  value: false,
                  onChanged: null,
                  title: Text(
                    "Remember Me",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget textField(text, bool pass) {
    return TextFormField(
      cursorColor: Colors.grey.shade400,
      initialValue: text,
      style: TextStyle(color: Colors.grey.shade400, fontSize: 18),
      decoration: InputDecoration(
        enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.shade400)),
        suffixIcon: (pass)
            ? Icon(
                Icons.visibility,
                color: Colors.grey.shade400,
              )
            : null,
      ),
    );
  }
}
