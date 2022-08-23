import 'package:flutter/material.dart';
import 'package:fly_admin/Constants/contants.dart';
import 'package:fly_admin/UI/Widgets/custom_circle_avatar.dart';

class StaticPage extends StatelessWidget {
  const StaticPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/fondo.jpg'), fit: BoxFit.fill),
        ),
        child: Padding(
          padding: EdgeInsets.only(
            left: size.width * 0.035,
            right: size.width * 0.035,
            top: size.height * 0.08,
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomCircleAvatar(avatarRadius: size.height * 0.05),
                  const Text("Miranda Charters",
                      style: TextStyle(fontSize: 26)),
                  Icon(
                    Icons.notifications_active_outlined,
                    color: kprimarycolor,
                    size: 40,
                  )
                ],
              ),
              SizedBox(
                height: size.height * 0.05,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  FlyCard(),
                  FlyCard(),
                ],
              ),
              SizedBox(
                height: size.height * 0.02,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  FlyCard(),
                  FlyCard(),
                ],
              ),
              SizedBox(
                height: size.height * 0.03,
              ),
              Container(
                height: size.height * 0.34,
                width: size.width * 0.9,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class FlyCard extends StatelessWidget {
  const FlyCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.15,
      width: size.width * 0.44,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Padding(
        padding:
            EdgeInsets.only(left: size.width * 0.05, bottom: size.width * 0.04),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: size.height * 0.016,
            ),
            Row(
              children: [
                Icon(
                  Icons.airplane_ticket_outlined,
                  color: kprimarycolor,
                ),
                const Text(' Boletos vendidos'),
              ],
            ),
            const Text(
              '4.800',
              style: TextStyle(fontSize: 22),
            ),
            const Text('Boletos vendidos'),
          ],
        ),
      ),
    );
  }
}
