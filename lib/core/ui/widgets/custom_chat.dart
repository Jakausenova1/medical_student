import 'package:flutter/material.dart';

import '../../theme/app_fonts.dart';

class CustomChat extends StatelessWidget {
  final String title;
  final Function()? onTap;
  final String subtitleText;
  final String trailing;
  // final ImageProvider image;
  const CustomChat({
    required this.title,
    // required this.image,
    Key? key,
    required this.subtitleText,
    required this.trailing,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: ListTile(
        leading: const CircleAvatar(
          // backgroundImage: image,
          radius: 25,
        ),
        title: Text(title, style: AppFonts.w400s14),
        subtitle: Row(children: [
          const Icon(Icons.done_all),
          const SizedBox(
            width: 5,
          ),
          Text(subtitleText, style: AppFonts.w400s14)
        ]),
        trailing: Text(trailing),
      ),
    );
  }
}
