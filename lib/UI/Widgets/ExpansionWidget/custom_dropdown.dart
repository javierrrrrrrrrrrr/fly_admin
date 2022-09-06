import 'package:expansion_widget/expansion_widget.dart';
import 'package:flutter/material.dart';
import 'package:fly_admin/UI/Widgets/ExpansionWidget/search_button.dart';
import 'package:fly_admin/UI/Widgets/ExpansionWidget/search_filter.dart';
import 'dart:math' as math;
import '../../../Constants/contants.dart';
import '../imputField.dart';

class CustomDropDown extends StatefulWidget {
  const CustomDropDown({
    Key? key,
    required this.expandido,
  }) : super(key: key);

  final bool expandido;

  @override
  State<CustomDropDown> createState() => _CustomDropDownState();
}

class _CustomDropDownState extends State<CustomDropDown> {
  bool isFullyExpanded = true;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      children: [
        ExpansionWidget(
            onExpansionChanged: (p0) {
              setState(() {
                isFullyExpanded = p0;
              });
            },
            initiallyExpanded: widget.expandido,
            titleBuilder:
                (double animationValue, _, bool isExpaned, toogleFunction) {
              return InkWell(
                  onTap: () {
                    toogleFunction(animated: true);
                  },
                  child: Padding(
                    //ver
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Container(
                      height: size.height * 0.06,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(
                              Radius.circular(size.height * 0.01))),
                      child: Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: size.width * 0.09),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Expanded(
                              child: Text(
                                'Schedule',
                                style: TextStyle(
                                    fontSize: 22, color: kprimarycolor),
                              ),
                            ),
                            Transform.rotate(
                              angle: math.pi * animationValue / 2,
                              alignment: Alignment.center,
                              child: const Icon(Icons.arrow_right, size: 40),
                            )
                          ],
                        ),
                      ),
                    ),
                  ));
            },
            content: Column(
              children: [
                const SearchFilters(),

                // Todo:Definir bien como va la columna esta

                SecondExpansionWidget(size: size),
              ],
            )),
        SizedBox(
          height: size.height * 0.05,
        ),
        if (isFullyExpanded == true)
          SizedBox(width: size.width * 0.4, child: const SearchButton()),
        SizedBox(
          height: size.height * 0.08,
        ),
      ],
    );
  }
}

class SecondExpansionWidget extends StatelessWidget {
  const SecondExpansionWidget({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return ExpansionWidget(
        titleBuilder:
            (double animationValue, _, bool isExpaned, toogleFunction) {
          return InkWell(
              onTap: () => toogleFunction(animated: true),
              child: Container(
                height: size.height * 0.06,
                decoration: BoxDecoration(
                  color: Colors.grey.shade100,
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: size.width * 0.09),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Expanded(
                        child: Text(
                          'More',
                          style: TextStyle(fontSize: 22),
                        ),
                      ),
                      Transform.rotate(
                        angle: math.pi * animationValue / 2,
                        alignment: Alignment.center,
                        child: const Icon(Icons.arrow_right, size: 40),
                      )
                    ],
                  ),
                ),
              ));
        },
        content: const MoreSearchFilter());
  }
}

class MoreSearchFilter extends StatelessWidget {
  const MoreSearchFilter({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      height: size.height * 0.55,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.black,
          width: 0.1,
        ),
        color: Colors.grey.shade100,
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(size.height * 0.01),
            bottomRight: Radius.circular(size.height * 0.01)),
      ),
      padding: EdgeInsets.only(
          left: size.width * 0.070,
          right: size.width * 0.050,
          top: size.width * 0.08),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        //Segunda Row

        //separador

        const TextSearch(texto: 'Departure From:/To:'),

        Row(
          children: [
            Padding(
              padding: EdgeInsets.only(top: size.height * 0.01),
              child: SizedBox(
                width: size.width * 0.318,
                child: Imputfield(
                  hintext: "From",
                  //Aqui va el action del calendar
                  prefixIcon: Icon(
                    Icons.calendar_month,
                    color: kprimarycolor,
                  ),
                ),
              ),
            ),
            //separador
            SizedBox(
              width: size.width * 0.12,
            ),
            Padding(
              padding: EdgeInsets.only(top: size.height * 0.01),
              child: SizedBox(
                width: size.width * 0.318,
                child: Imputfield(
                  hintext: "To",
                  prefixIcon: Icon(
                    Icons.calendar_month,
                    color: kprimarycolor,
                  ),
                ),
              ),
            ),
          ],
        ),
        //separador height

        SizedBox(
          height: size.height * 0.02,
        ),

        const TextSearch(texto: 'Return From:/To:'),

        Row(
          children: [
            Padding(
              padding: EdgeInsets.only(top: size.height * 0.01),
              child: SizedBox(
                width: size.width * 0.318,
                child: Imputfield(
                  hintext: "From",
                  //Aqui va el action del calendar
                  prefixIcon: Icon(
                    Icons.calendar_month,
                    color: kprimarycolor,
                  ),
                ),
              ),
            ),
            //separador
            SizedBox(
              width: size.width * 0.12,
            ),
            Padding(
              padding: EdgeInsets.only(top: size.height * 0.01),
              child: SizedBox(
                width: size.width * 0.318,
                child: Imputfield(
                  hintext: "To",
                  prefixIcon: Icon(
                    Icons.calendar_month,
                    color: kprimarycolor,
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: size.height * 0.02,
        ),
        const TextSearch(texto: 'Departure Route'),
        SizedBox(
          width: size.width * 0.12,
        ),

        //Segunda Row
        Padding(
          padding: EdgeInsets.only(top: size.height * 0.01),
          child: Row(
            children: [
              SizedBox(
                width: size.width * 0.318,
                child: const Imputfield(hintext: "From City"),
              ),
              SizedBox(
                width: size.width * 0.12,
              ),
              SizedBox(
                width: size.width * 0.318,
                child: const Imputfield(
                  hintext: "To City",
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: size.height * 0.02,
        ),
        const TextSearch(texto: 'Return Route'),
        SizedBox(
          width: size.width * 0.12,
        ),

        //Segunda Row
        Padding(
          padding: EdgeInsets.only(top: size.height * 0.01),
          child: Row(
            children: [
              SizedBox(
                width: size.width * 0.318,
                child: const Imputfield(hintext: "From City"),
              ),
              SizedBox(
                width: size.width * 0.12,
              ),
              SizedBox(
                width: size.width * 0.318,
                child: const Imputfield(
                  hintext: "To City",
                ),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
