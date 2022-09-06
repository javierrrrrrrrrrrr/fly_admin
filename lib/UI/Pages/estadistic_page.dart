import 'package:charts_flutter/flutter.dart' as chart;
import 'package:flutter/material.dart';
import 'package:fly_admin/Constants/contants.dart';
import 'package:fly_admin/UI/Widgets/custom_circle_avatar.dart';

import '../Widgets/custom_drawer.dart';

class StaticPage extends StatelessWidget {
  const StaticPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> data = ["Javier", "Javier"];
    List<chart.Series<dynamic, String>> seriesList = [
      chart.Series(
          id: "1",
          data: data,
          domainFn: ((datum, index) => "L"),
          measureFn: ((datum, index) => 10),
          colorFn: (datum, index) => const chart.Color(
                r: 1,
                g: 142,
                b: 170,
              )),
      chart.Series(
          id: "2",
          data: data,
          domainFn: ((datum, index) => "Ma"),
          measureFn: ((datum, index) => 8),
          colorFn: (datum, index) => const chart.Color(
                r: 1,
                g: 142,
                b: 170,
              )),
      chart.Series(
          id: "3",
          data: data,
          domainFn: ((datum, index) => "Mi"),
          measureFn: ((datum, index) => 8),
          colorFn: (datum, index) => const chart.Color(
                r: 1,
                g: 142,
                b: 170,
              )),
      chart.Series(
          id: "4",
          data: data,
          domainFn: ((datum, index) => "J"),
          measureFn: ((datum, index) => 8),
          colorFn: (datum, index) => const chart.Color(
                r: 1,
                g: 142,
                b: 170,
              )),
      chart.Series(
          id: "5",
          data: data,
          domainFn: ((datum, index) => "V"),
          measureFn: ((datum, index) => 8),
          colorFn: (datum, index) => const chart.Color(
                r: 1,
                g: 142,
                b: 170,
              )),
    ];
    final size = MediaQuery.of(context).size;
    return Scaffold(
      drawer: const CustomDrawer(),
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
                child: chart.BarChart(
                  barGroupingType: chart.BarGroupingType.grouped,
                  seriesList,
                  animate: true,
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
