import 'package:flutter/material.dart';
import 'package:fly_admin/UI/Widgets/fligthDetailWidgets/line.dart';

import '../../../Constants/contants.dart';
import 'flight_details_body.dart';
import 'flight_details_header.dart';
import 'separador_horizontal.dart';

class CardFlightDetails extends StatelessWidget {
  const CardFlightDetails({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.27,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: const [
          BoxShadow(
            blurRadius: 5,
            color: Colors.grey,
          ),
        ],
        borderRadius: BorderRadius.circular(5),
      ),
      child: Column(
        children: [
          const FlightDetailsHeader(),
          const Line(),
          Padding(
            padding: EdgeInsets.only(
                top: size.width * 0.03,
                left: size.width * 0.05,
                right: size.width * 0.05),
            child: FlightDetailsBody(size: size),
          ),
          SizedBox(
            height: size.height * 0.022,
          ),
          const Line(),
          const FlightDetailsFooter()
        ],
      ),
    );
  }
}

class FlightDetailsFooter extends StatelessWidget {
  const FlightDetailsFooter({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Row(
      children: [
        SeparadorHorizontal(numero: size.width * 0.05),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: size.height * 0.005,
            ),
            const Text('Echevarria lopez,Manuel',
                style: TextStyle(fontSize: 15)),
            SizedBox(
              height: size.height * 0.01,
            ),
            Greenrectangle(size: size),
          ],
        ),
        SeparadorHorizontal(numero: size.width * 0.05),
        Padding(
          padding: EdgeInsets.only(top: size.height * 0.013),
          child: MaterialButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)),
              color: kprimarycolor,
              minWidth: size.width * 0.1,
              height: size.height * 0.045,
              child: const Center(
                  child: Text("More Details",
                      style: TextStyle(fontSize: 14, color: Colors.white))),
              onPressed: () {
                Navigator.of(context).pushNamed("/MoreDetailsFly");
              }),
        ),
      ],
    );
  }
}

class Greenrectangle extends StatelessWidget {
  const Greenrectangle({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * 0.032,
      width: size.width * 0.2,
      decoration: const BoxDecoration(
          color: Colors.green,
          borderRadius: BorderRadius.all(Radius.circular(8))),
      child: const Center(
          child: Text(
        '409.00',
        style: TextStyle(color: Colors.white),
      )),
    );
  }
}
