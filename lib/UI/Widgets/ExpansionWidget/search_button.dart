import 'package:flutter/material.dart';

class SearchButton extends StatelessWidget {
  const SearchButton({
    Key? key,
  
  }) : super(key: key);



  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return MaterialButton(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      onPressed: () {
       
      },
      height: size.height * 0.05,
      minWidth: size.width * 0.01,
      color: const Color.fromRGBO(1, 63, 148, 1),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(
            Icons.search,
            color: Colors.white,
            size: 28,
          ),
          SizedBox(
            width: size.width * 0.02,
          ),
          const Text("Search",
              style: TextStyle(color: Colors.white, fontSize: 18)),
        ],
      ),
    );
  }
}