import 'package:cost_boi_proje/app/config/constants/app_colors_constants.dart';
import 'package:cost_boi_proje/app/config/styles/app_text_styles.dart';
import 'package:flutter/material.dart';


class CustomElevatedButton extends StatefulWidget {
  final String text;
  final VoidCallback onPressed;
  final Color? backColor;
  final Color? textColor;
  final double? width;

  const CustomElevatedButton(
      {Key? key,
      required this.text,
      required this.onPressed,
      this.backColor,
      this.width,
      this.textColor})
      : super(key: key);

  @override
  _CustomElevatedButtonState createState() => _CustomElevatedButtonState();
}

class _CustomElevatedButtonState extends State<CustomElevatedButton> {
  bool isPressed = false;
  Color? backColor; // Ekle
  Color? textColor; // Ekle
  double? width; // Ekle

  @override
  Widget build(BuildContext context) {
    backColor = widget.backColor ?? AppColors.white; // Güncelle
    textColor = widget.textColor ?? AppColors.black; // Güncelle
    width = widget.width ?? MediaQuery.of(context).size.width * 0.6;
    return GestureDetector(
      onTapDown: (_) {
        setState(() {
          isPressed = true;
        });
      },
      onTapUp: (_) {
        setState(() {
          isPressed = false;
        });
        widget.onPressed();
      },
      onTapCancel: () {
        setState(() {
          isPressed = false;
        });
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: width,
          decoration: BoxDecoration(
            color: backColor, // Güncelle
            borderRadius: BorderRadius.circular(16),
            border:
                Border.all(color: isPressed ? Colors.black : Colors.transparent),
          ),
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Text(
              widget.text,
              style: AppFonts.texts(color: textColor ?? AppColors.black),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}
