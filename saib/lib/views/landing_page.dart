import 'package:flutter/material.dart';
import 'package:saib/views/login_page.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: [
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
              top: height / 10,
              height: height / 3,
              width: width,
              child: Image.asset("assets/line.png")),
          Positioned(
              left: width / 5.5,
              top: height / 4,
              height: height / 3,
              width: width / 1.6,
              child: Image.asset("assets/logo_saib.png")),
          Positioned(
              left: width / 5,
              top: height / 5,
              height: height / 12,
              width: width / 6,
              child: Image.asset("assets/icons/ic_plane.png")),
          Positioned(
              top: height / 2,
              height: height / 2,
              width: width,
              child: const BottomWidget())
        ],
      ),
    );
  }
}

class BottomWidget extends StatelessWidget {
  const BottomWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Container(
      height: height / 2,
      width: double.infinity,
      child: Column(
        children: [
          const Center(
              child: Text(
            "Welcome",
            style: TextStyle(color: Colors.white),
          )),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              iconWidget(
                  "assets/icons/ic_aboutus.png", "About Us", width, height),
              iconWidget(
                  "assets/icons/ic_locator.png", "ATM Locator", width, height),
              iconWidget(
                  "assets/icons/ic_phone.png", "Contact Us", width, height),
            ],
          ),
          SizedBox(
            height: height / 18,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: buttonWidget("Login", width, height, context),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: buttonWidget("Register", width, height, context),
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget iconWidget(assetIcon, text, width, height) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                assetIcon,
                width: 35,
                height: 35,
              ),
            ),
            Text(
              text,
              style: const TextStyle(color: Colors.white),
            )
          ],
        ),
      ),
    );
  }

  Widget buttonWidget(text, width, height, context) {
    return Container(
      height: height / 14,
      width: width / 1.5,
      child: ElevatedButton(
        onPressed: () {
          if (text == "Login") {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const LoginPage()),
            );
          }
        },
        child: Text(
          text,
          style: TextStyle(color: Colors.grey.shade900),
        ),
        style: ElevatedButton.styleFrom(
          shape: const StadiumBorder(),
          primary: const Color(0xfffcd129),
        ),
      ),
    );
  }
}
