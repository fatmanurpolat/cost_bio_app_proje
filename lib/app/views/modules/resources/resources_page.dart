
import 'package:cost_boi_proje/app/config/utils/app_bar.dart';
import 'package:cost_boi_proje/app/config/utils/drawer_bar.dart';
import 'package:flutter/material.dart';

class ResourcesPage extends StatefulWidget {
  const ResourcesPage({super.key});

  @override
  State<ResourcesPage> createState() => _ResourcesPage();
}

class _ResourcesPage extends State<ResourcesPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[150],
        appBar:MyAppBar(),

        drawer: DrawerBar(),
        body:SingleChildScrollView(
            child: Center(
              child:Text("Resources"),
            )

        )


    );
  }
}
