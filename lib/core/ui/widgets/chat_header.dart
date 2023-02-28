import 'package:flutter/material.dart';
import '../../theme/app_colors.dart';
import '../../theme/app_fonts.dart';

class ProfileHeaderWidget extends StatelessWidget {
  final String name;

  const ProfileHeaderWidget({
    Key? key,
    required this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                const BackButton(color: AppColors.grey2),
                const CircleAvatar(),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  name,
                  style: AppFonts.w500s18,
                ),
                const Spacer(),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.call_rounded),
                )
              ],
            )
          ],
        ),
      );
}
