import 'package:flutter/material.dart';
import 'package:odnajdyvkgma/feature/categories_page.dart/models/chats_models.dart';

import '../../core/theme/app_colors.dart';
import '../../core/ui/widgets/custom_chat.dart';
import '../../core/ui/widgets/text_field_widget.dart';
import 'one_chat_page.dart';

class ChatsPage extends StatefulWidget {
  const ChatsPage({super.key});

  @override
  State<ChatsPage> createState() => _ChatsPageState();
}

List<ChatsModel> data = [
  ChatsModel(
    title: "Alina",
  ),
  ChatsModel(
    title: "Daniel",
  ),
  ChatsModel(
    title: "Jaka",
  ),
  ChatsModel(
    title: "AA",
  ),
  ChatsModel(
    title: "BB",
  ),
];

class _ChatsPageState extends State<ChatsPage> {
  final controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                width: double.infinity,
                height: 45.55,
                margin: const EdgeInsets.only(
                    left: 20, right: 20, top: 30, bottom: 10),
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.circular(100),
                    border: Border.all(
                        width: 0.3, color: AppColors.black.withOpacity(0.2))),
                child: const TextFieldWidget(
                  hintText: 'Поиск',
                  prefix: Icon(
                    Icons.search,
                    color: AppColors.grey2,
                  ),
                ),
              ),
              ListView.builder(
                itemCount: data.length,
                shrinkWrap: true,
                itemBuilder: (BuildContext context, int index) {
                  return CustomChat(
                    title: data[index].title,
                    subtitleText: 'hello',
                    trailing: '18:00',
                    onTap: () => Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ChatPage())),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
