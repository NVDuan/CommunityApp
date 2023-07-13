import 'package:community_app/src/config/constant.dart';
import 'package:flutter/material.dart';

import '../../src/config/app_text.dart';

class AppBarHeader extends StatelessWidget {
  final String textmid, textLeft;
  final Icon ic;
  final TextButton textright;
  final bool isVisiable, isCheckedIcon;
  const AppBarHeader({
    super.key,
    required this.textmid,
    required this.textright,
    required this.textLeft,
    required this.ic,
    required this.isVisiable,
    required this.isCheckedIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: textIcon(
            icon: ic,
            isVisiable: isVisiable,
            isCheckedIcon: isCheckedIcon,
            tl: textLeft,
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(left: 55),
            child: Center(
              child: Text(
                textmid,
                style: AppTextStyle.h1.copyWith(
                  color: kBlackColor,
                ),
              ),
            ),
          ),
        ),
        Align(
          alignment: Alignment.centerRight,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: textright,
          ),
        ),
      ],
    );
  }
}

class textIcon extends StatelessWidget {
  final bool isCheckedIcon, isVisiable;
  final Icon icon;
  final String tl;
  const textIcon({
    super.key,
    required this.isCheckedIcon,
    required this.isVisiable,
    required this.icon,
    required this.tl,
  });

  @override
  Widget build(BuildContext context) {
    //return icon;
    // if (isVisiable) {
    //   if (isChecked)
    //     return Text(
    //       tl,
    //       style: AppTextStyle.h2,
    //     );
    //   else
    //     return icon;
    // }

    while (isVisiable) {
      if (isCheckedIcon)
        return Text(
          tl,
          style: AppTextStyle.h2,
        );
      else
        return icon;
      //break;
    }
    return Container();
  }
}
