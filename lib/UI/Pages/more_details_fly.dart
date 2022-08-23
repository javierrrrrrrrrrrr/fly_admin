import '../../Constants/contants.dart';
import '../Widgets/app_background_selection.dart';
import '../Widgets/custom_circle_avatar.dart';
import '../Widgets/fligthDetailWidgets/card_flight_details.dart';
import '../Widgets/fligthDetailWidgets/flight_details_header.dart';
import '../Widgets/fligthDetailWidgets/line.dart';

import 'package:flutter/material.dart';

class MoreDetailsFly extends StatelessWidget {
  const MoreDetailsFly({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
          child: AppBackgroundSelection(
        customAppBar: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: size.height * 0.025,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () => Navigator.pop(context),
                child: Icon(
                  Icons.navigate_before,
                  size: 40,
                  color: kprimarycolor,
                ),
              ),
              const CustomCircleAvatar(
                avatarRadius: 28,
              )
            ],
          ),
        ),
        body: Padding(
          padding: EdgeInsets.only(
            left: size.width * 0.06,
            top: size.height * 0.05,
            right: size.width * 0.06,
          ),
          child: Column(
            children: [
              Container(
                height: size.height * 0.5,
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
                child: Stack(
                  children: [
                    Column(
                      children: [
                        const FlightDetailsHeader(),
                        const Line(),
                        Padding(
                          padding: EdgeInsets.only(
                              top: size.width * 0.03,
                              left: size.width * 0.05,
                              right: size.width * 0.05),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: const [
                                  Text('Fri', style: TextStyle(fontSize: 12)),
                                  Text('8/12/22',
                                      style: TextStyle(fontSize: 23)),
                                  Text('17:57 PM',
                                      style: TextStyle(fontSize: 16)),
                                ],
                              ),
                              const VerticalDiscontinuosLine(),
                              Column(
                                children: const [
                                  Text('Flight #',
                                      style: TextStyle(fontSize: 14)),
                                  Text('G6-3147',
                                      style: TextStyle(fontSize: 18))
                                ],
                              ),
                              Column(
                                children: const [
                                  Text('PNR', style: TextStyle(fontSize: 14)),
                                  Text('WQAKLF',
                                      style: TextStyle(fontSize: 18)),
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: size.height * 0.022,
                        ),
                        const Line(),
                        Padding(
                          padding: EdgeInsets.only(
                            left: size.width * 0.05,
                            top: size.height * 0.02,
                            bottom: size.height * 0.02,
                            right: size.width * 0.14,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: const [
                                  Text('Sun', style: TextStyle(fontSize: 12)),
                                  Text('8/21/22',
                                      style: TextStyle(fontSize: 23)),
                                  Text('17:57 PM',
                                      style: TextStyle(fontSize: 16)),
                                ],
                              ),
                              const VerticalDiscontinuosLine(),
                              Column(
                                children: const [
                                  Text('Flight #',
                                      style: TextStyle(fontSize: 14)),
                                  Text('G6-3140',
                                      style: TextStyle(fontSize: 18)),
                                ],
                              ),
                              Container(
                                width: size.width * 0.09,
                              ),
                            ],
                          ),
                        ),
                        const Line(),
                        Padding(
                          padding: EdgeInsets.only(
                              left: size.width * 0.05, top: size.width * 0.02),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Column(
                                children: [
                                  const Text(
                                    'Type',
                                  ),
                                  Padding(
                                    padding: EdgeInsets.symmetric(
                                        vertical: size.height * 0.005),
                                    child: const Text(
                                      'Adult',
                                      style: TextStyle(fontSize: 22),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: size.width * 0.2,
                              ),
                              Column(
                                children: [
                                  const Text(
                                    'Agent',
                                  ),
                                  Padding(
                                    padding: EdgeInsets.symmetric(
                                        vertical: size.height * 0.005),
                                    child: const Text(
                                      'Randy Miranda',
                                      style: TextStyle(fontSize: 18),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              right: size.width * 0.6, top: size.height * 0.02),
                          child: Greenrectangle(size: size),
                        )
                      ],
                    ),
                    Positioned(
                      bottom: size.height * 0.008,
                      left: size.width * 0.31,
                      child: SizedBox(
                          height: size.height * 0.1,
                          width: size.width * 0.5,
                          child: Image.asset('assets/flightNumber.png')),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: size.height * 0.15,
              ),
              MaterialButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)),
                minWidth: size.width * 0.6,
                height: size.height * 0.08,
                color: kprimarycolor,
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Confirm ',
                              style:
                                  TextStyle(color: kprimarycolor, fontSize: 24),
                            ),
                            Icon(
                              Icons.airplane_ticket,
                              color: kprimarycolor,
                            )
                          ]),
                      content: const Text(
                        "Do you want to confirm the book fly?",
                        style: TextStyle(fontSize: 21),
                      ),
                      actionsAlignment: MainAxisAlignment.center,
                      actions: [
                        const Icon(Icons.check_circle_outline,
                            color: Colors.green, size: 40),
                        SizedBox(
                          width: size.width * 0.08,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: const Icon(Icons.cancel_outlined,
                              color: Colors.red, size: 40),
                        )
                      ],
                      actionsPadding:
                          EdgeInsets.only(bottom: size.height * 0.020),
                    ),
                  );
                },
                child: const Text(
                  "Confirm!",
                  style: TextStyle(color: Colors.white, fontSize: 26),
                ),
              )
            ],
          ),
        ),
        padding: EdgeInsets.only(
          top: size.height * 0.05,
        ),
      )),
    );
  }
}

class VerticalDiscontinuosLine extends StatelessWidget {
  const VerticalDiscontinuosLine({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return CustomPaint(
      painter: _HeaderPaintDiagonal(),
      child: SizedBox(
        width: size.width * 0.001,
        height: size.height * 0.10,
        //color: Colors.red,
      ),
    );
  }
}

class _HeaderPaintDiagonal extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = const Color.fromRGBO(128, 128, 128, 0.5)
      ..style =
          PaintingStyle.stroke //una vez dibujado cambiar por .fill //streoke
      ..strokeWidth = 3;
    final path = Path();

    path.lineTo(0, size.height * 0.1);
    path.moveTo(0, size.height * 0.2);
    path.lineTo(0, size.height * 0.3);
    path.moveTo(0, size.height * 0.4);
    path.lineTo(0, size.height * 0.5);
    path.moveTo(0, size.height * 0.6);
    path.lineTo(0, size.height * 0.7);
    path.moveTo(0, size.height * 0.8);
    path.lineTo(0, size.height * 0.9);
    path.moveTo(0, size.height);
    path.lineTo(0, size.height * 1.1);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
