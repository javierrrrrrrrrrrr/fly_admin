import 'package:flutter/material.dart';

import '../../../Constants/contants.dart';
import '../imputField.dart';

class SearchFilters extends StatelessWidget {
  const SearchFilters({
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
            topLeft: Radius.circular(size.height * 0.01),
            topRight: Radius.circular(size.height * 0.01)),
      ),
      padding: EdgeInsets.only(
          left: size.width * 0.070,
          right: size.width * 0.050,
          top: size.width * 0.08),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Row(
          children: [
            const TextSearch(texto: 'Flight Number'),
            SizedBox(
              width: size.width * 0.12,
            ),
            const TextSearch(texto: 'Search'),
          ],
        ),
        //Segunda Row
        Padding(
          padding: EdgeInsets.only(top: size.height * 0.01),
          child: Row(
            children: [
              SizedBox(
                width: size.width * 0.318,
                child: const Imputfield(hintext: "Flight Number"),
              ),
              SizedBox(
                width: size.width * 0.12,
              ),
              SizedBox(
                width: size.width * 0.318,
                //TODO: Hacer el DropDownMenu de aqui.
                child: const Imputfield(
                  hintext: "Name or PNR",
                ),
              ),
            ],
          ),
        ),
        //separador
        SizedBox(
          height: size.height * 0.02,
        ),

        const TextSearch(texto: 'Date From:/To:'),

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
        Row(
          children: [
            const TextSearch(texto: 'Carrier'),
            SizedBox(
              width: size.width * 0.29,
            ),
            const TextSearch(texto: 'Agent'),
          ],
        ),
        Row(
          children: [
            Padding(
              padding: EdgeInsets.only(top: size.height * 0.01),
              child: SizedBox(
                width: size.width * 0.318,
                child: Imputfield(
                  hintext: "All",
                  //Aqui va el action del calendar
                  suffixIcon: Icon(
                    Icons.arrow_drop_down,
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
                  hintext: "All",
                  //Aqui va el action del calendar
                  suffixIcon: Icon(
                    Icons.arrow_drop_down,
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

        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const ColumnStatus1(),
            SizedBox(
              width: size.width * 0.15,
            ),
            const ColumnaStatus2()
          ],
        ),
        SizedBox(
          height: size.height * 0.03,
        ),
      ]),
    );
  }
}

class ColumnStatus1 extends StatelessWidget {
  const ColumnStatus1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const TextSearch(texto: "Paid Status"),
        SizedBox(
          height: size.height * 0.004,
        ),
        Row(
          children: [
            CheckStatus(size: size),
            SizedBox(
              width: size.width * 0.015,
            ),
            const TextSearch(texto: "Paid"),
            SizedBox(
              width: size.width * 0.010,
            ),
          ],
        ),
        Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: size.height * 0.004,
                ),
                Row(
                  children: [
                    CheckStatus(size: size),
                    SizedBox(
                      width: size.width * 0.015,
                    ),
                    const TextSearch(texto: "Not Paid"),
                    SizedBox(
                      width: size.width * 0.010,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}

class CheckStatus extends StatelessWidget {
  const CheckStatus({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border:
              Border.all(color: const Color.fromRGBO(1, 1, 1, 1), width: 0.5),
          borderRadius: const BorderRadius.all(
            Radius.circular(6),
          )),
      height: size.height * 0.030,
      width: size.width * 0.06,
    );
  }
}

class CustomSpacer extends StatelessWidget {
  const CustomSpacer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width * 0.018,
    );
  }
}

class TextSearch extends StatelessWidget {
  const TextSearch({
    Key? key,
    required this.texto,
  }) : super(key: key);

  final String texto;

  @override
  Widget build(BuildContext context) {
    return Text(
      texto,
      style: const TextStyle(fontSize: 18),
    );
  }
}

class ColumnaStatus2 extends StatelessWidget {
  const ColumnaStatus2({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const TextSearch(texto: 'Status'),
        SizedBox(
          height: size.height * 0.01,
        ),
        SizedBox(
          width: size.width * 0.318,
          child: const Imputfield(
            suffixIcon: Icon(Icons.arrow_drop_down),
            hintext: "",
          ),
        ),
      ],
    );
  }
}
