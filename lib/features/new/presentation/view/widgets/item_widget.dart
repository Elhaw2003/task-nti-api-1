import 'package:flutter/material.dart';

import '../../../../../core/utitiles/app_styles.dart';

class ItemWidget extends StatelessWidget {
  const ItemWidget({super.key, required this.text, required this.value, required this.width, required this.maxLine});
  final String text;
  final String value;
  final double width;
  final int maxLine;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
        "$text :  ",
          style: AppTextStyles.titleTextStyle.copyWith(fontSize: 15),
        ),
        SizedBox(
          width: width,
          child: Text(
            value,
            overflow: TextOverflow.ellipsis,
            maxLines: maxLine,
            style: AppTextStyles.greyW400Size14,
          ),
        )
      ],
    );
  }
}
