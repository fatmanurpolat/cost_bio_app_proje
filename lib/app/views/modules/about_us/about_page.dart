
import 'package:cost_boi_proje/app/config/utils/app_bar.dart';
import 'package:cost_boi_proje/app/config/constants/app_text_constants.dart';
import 'package:cost_boi_proje/app/config/utils/drawer_bar.dart';
import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[150],
      appBar: MyAppBar(),
      drawer: DrawerBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              Icons.business, // İstediğiniz bir ikonu burada kullanabilirsiniz
              size: 100,
              color: Colors.red.shade800, // İkonun rengini ayarlayabilirsiniz
            ),
            SizedBox(height: 20),
            Text(
              AppConstants.companyName,
              style: TextStyle(
                fontSize: 24,
                fontFamily: 'Times New Roman',
              ),
            ),
            SizedBox(height: 20),
            Text(
              AppConstants.researchInfo,
              style: TextStyle(
                fontSize: 16,
                fontFamily: 'Times New Roman',
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
