import 'package:flutter/material.dart';

import '../../../Constants/contants.dart';

class FlightDetailsHeader extends StatelessWidget {
  const FlightDetailsHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: size.height * 0.02),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // SeparadorHorizontal(numero: size.width * 0.06),
          const Text('Havana Air'),
          // SeparadorHorizontal(numero: size.width * 0.09),
          Padding(
            padding: EdgeInsets.only(right: size.width * 0.02),
            child: SizedBox(
              height: size.height * 0.06,
              width: size.width * 0.2,
              child: Image.asset('assets/logo.png'),
            ),
          ),
          //   SeparadorHorizontal(numero: size.width * 0.14),
          Row(
            children: [
              MaterialButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                  color: kprimarycolor,
                  minWidth: size.width * 0.001,
                  height: size.height * 0.035,
                  child: const Center(
                      child: Text("Checked in",
                          style: TextStyle(fontSize: 14, color: Colors.white))),
                  onPressed: () {}),
            ],
          )
        ],
      ),
    );
  }
}
