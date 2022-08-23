import 'package:flutter/material.dart';
import 'package:fly_admin/Constants/contants.dart';
import 'package:fly_admin/UI/Widgets/imputFieldLogin.dart';

import '../Widgets/custom_circle_avatar.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: size.height,
            width: size.width,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/fondo.jpg'), fit: BoxFit.fill),
            ),
            child: Column(children: [
              SizedBox(
                height: size.height * 0.5,
                width: size.width,
              ),
            ]),
          ),
          const Positioned(
            bottom: 0,
            child: Contenedor2(),
          ),
          Positioned(
            right: size.width * 0.37,
            bottom: size.height * 0.64,
            child: Column(
              children: [
                CustomCircleAvatar(avatarRadius: size.height * 0.07),
                SizedBox(
                  height: size.height * 0.02,
                ),
                const Text("Miranda", style: TextStyle(fontSize: 32)),
                const Text("Charters", style: TextStyle(fontSize: 32)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Contenedor2 extends StatelessWidget {
  const Contenedor2({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      padding:
          EdgeInsets.only(left: size.width * 0.09, right: size.width * 0.09),
      height: size.height * 0.5,
      width: size.width,
      color: const Color.fromRGBO(243, 243, 243, 1),
      child: Padding(
        padding: EdgeInsets.only(top: size.height * 0.02),
        child: Column(children: [
          Text("Login", style: TextStyle(fontSize: 28, color: kprimarycolor)),
          SizedBox(
            height: size.height * 0.03,
          ),
          ImputfieldLogin(
              hintext: "User",
              prefixIcon: Icon(Icons.person_outline, color: kprimarycolor)),
          SizedBox(
            height: size.height * 0.03,
          ),
          ImputfieldLogin(
              hintext: "Password",
              prefixIcon: Icon(Icons.key_outlined, color: kprimarycolor)),
          SizedBox(
            height: size.height * 0.05,
          ),

          GestureDetector(
            onTap: () {
              Navigator.of(context).pushNamed('/estadistica');
            },
            child: Container(
              height: size.height * 0.07,
              width: size.width * 0.9,
              decoration: const BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    blurRadius: 4,
                    color: Colors.grey,
                    offset: Offset(0.0, 0.0),
                  ),
                ],
              ),
              // border: Border.all(color: Colors.grey, width: 1)),
              child: const Center(
                child: Text("Sign in",
                    maxLines: 1,
                    style: TextStyle(
                        fontSize: 22, color: Color.fromRGBO(69, 104, 126, 1))),
              ),
            ),
          )
          // ),
        ]),
      ),
    );
  }
}
