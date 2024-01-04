import 'package:cost_boi_proje/app/config/constants/app_colors_constants.dart';
import 'package:cost_boi_proje/app/config/utils/app_bar.dart';
import 'package:cost_boi_proje/app/config/constants/app_text_constants.dart';
import 'package:cost_boi_proje/app/config/utils/drawer_bar.dart';
import 'package:cost_boi_proje/app/extensions/app_assets_extension.dart';
import 'package:cost_boi_proje/app/routes/app_routest.dart';
import 'package:cost_boi_proje/app/views/widgets/custom_elevated_button.dart';
import 'package:cost_boi_proje/app/views/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ContactPage extends StatefulWidget {
  const ContactPage({super.key});

  @override
  State<ContactPage> createState() => _ContactPage();
}

class _ContactPage extends State<ContactPage> {
  final _formKey = GlobalKey<FormState>();
  bool _formValid = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[150],
        appBar: MyAppBar(),
        drawer: DrawerBar(),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: <Widget>[
                Image.asset(AppConstants.homepageImages.contactUs),

                SizedBox(
                  width: 20,
                ),
                Row(
                  children: <Widget>[
                    MyExpanded(
                      child: GestureDetector(
                        onTap: () {},
                        child: Container(
                          padding: EdgeInsets.all(5),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: <Widget>[
                              Icon(Icons.person, color: Colors.red.shade900),
                              const Text('COORDINATOR',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 11)),
                              const Text('       Professor Josephine Hegarty',
                                  style: TextStyle(fontSize: 9)),
                            ],
                          ),
                        ),
                      ),
                    ),
                    MyExpanded(
                      child: GestureDetector(
                        onTap: () {},
                        child: Flexible(
                          child: Container(
                            padding: EdgeInsets.all(11),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: <Widget>[
                                Icon(Icons.email, color: Colors.red.shade900),
                                const Text('EMAIL',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12)),
                                const Text('j.hegarty@ucc.ie',
                                    style: TextStyle(fontSize: 8)),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    MyExpanded(
                      child: GestureDetector(
                        onTap: () {
                          Get.offAll(AppRoutes.contact);
                        },
                        child: Flexible(
                          child: Container(
                            padding: EdgeInsets.all(3),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: <Widget>[
                                Icon(Icons.map, color: Colors.red.shade900),
                                const Text('ADDRESS',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12)),
                                const Text(
                                    'School of Nursing and Midwifery,'
                                    'University College Cork, Ireland',
                                    style: TextStyle(fontSize: 7)),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    //
                  ],
                ), //Coordinator-email-address button

                Padding(
                  padding: EdgeInsets.only(top: 10.0, left: 10, right: 10),
                  child: Form(
                    key: _formKey,
                    autovalidateMode: AutovalidateMode.onUserInteraction, //
                    child: Column(
                      children: <Widget>[
                        CustomTextFormField(
                          hintText: "Full Name",
                        ),
                        const SizedBox(height: 10), //
                        CustomTextFormField(
                          hintText: "Email",
                        ),
                        const SizedBox(height: 10),
                        CustomTextFormField(
                          hintText: "Number",
                        ),
                        const SizedBox(height: 10),
                        CustomTextFormField(
                          hintText: "Message",
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                CustomElevatedButton(
                  text: "Send",
                  onPressed: () {},
                  backColor: AppColors.greyColor,
                )
              ],
            ),
          ),
        ));
  }
}

class MyExpanded extends StatelessWidget {
  final Widget child;
  MyExpanded({required this.child});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 9,
              blurRadius: 7,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        padding: const EdgeInsets.all(20),
        margin: const EdgeInsets.all(5),
        child: this.child,
      ),
    );
  }
} //Expanded Button
