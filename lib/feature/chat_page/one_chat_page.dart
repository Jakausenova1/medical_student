import 'package:flutter/material.dart';
import 'package:odnajdyvkgma/core/theme/app_colors.dart';

import '../../core/ui/widgets/chat_header.dart';
import '../../core/ui/widgets/chat_sample.dart';
import '../../core/ui/widgets/new_message_widget.dart';

class ChatPage extends StatelessWidget {
  ChatPage({super.key});

  final controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: AppColors.chatBackground,
          child: Column(
            children: [
              const ProfileHeaderWidget(
                name: 'abai tekimbaev',
              ),
              Expanded(
                child: Container(
                    padding: const EdgeInsets.all(10),
                    decoration: const BoxDecoration(
                      color: AppColors.chatBackground,
                    ),
                    child: ListView(
                      children: const [
                        ChapSample(),
                        ChapSample(),
                        ChapSample(),
                        ChapSample(),
                        ChapSample(),
                      ],
                    )),
              ),
              const SizedBox(
                  width: double.infinity,
                  height: 60,
                  child: NewMessageWidget(idUser: ''))
            ],
          ),
        ),
      ),
    );
  }
}
