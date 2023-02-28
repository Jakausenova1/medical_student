import 'package:flutter/material.dart';

import '../../core/ui/widgets/chat_header.dart';

class ChatPage extends StatelessWidget {
  ChatPage({super.key});

  final controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: ProfileHeaderWidget(
          name: 'Ajj',
        ),
      ),
    );
  }
}
