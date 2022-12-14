import 'package:flutter/material.dart';
import 'package:wakke_fun_app/app/core/shared/uttils/string_convert_to_color.dart';

class CustomCircularPhoto extends StatelessWidget {
  final String photo;
  final String borderColor;
  final double width;
  final double height;
  final double widthBorder;
  final bool isNetwork;

  const CustomCircularPhoto({
    super.key,
    required this.photo,
    required this.borderColor,
    this.width = 36,
    this.height = 40,
    this.widthBorder = 1.5,
    this.isNetwork = true,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          width: width,
          height: height,
          decoration: BoxDecoration(
            border: Border.all(
              color: borderColor.toColor(),
              width: widthBorder,
            ),
            borderRadius: BorderRadius.circular(6),
          ),
          child: Padding(
            padding: const EdgeInsets.all(1.5),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(6),
              child: isNetwork
                  ? Image.network(photo, fit: BoxFit.cover)
                  : Image.asset(photo, fit: BoxFit.cover),
            ),
          ),
        ),
      ],
    );
  }
}
