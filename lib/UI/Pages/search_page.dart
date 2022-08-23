import 'package:flutter/material.dart';
import 'package:fly_admin/UI/Widgets/custom_drawer.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CustomDrawer(),
    );
  }
}

