import 'package:flutter/material.dart';
import 'package:uno_todo_app/services/lang_service.dart';
import '../services/theme_service.dart';

void showCreateDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (c) {
      return AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(28)),
        title: Text("new_list".tr),
        content: Container(
          color: ThemeService.colorTextFieldBack,
          child: TextField(
            autofocus: true,
            decoration: InputDecoration(
              hintText: "enter_list_title".tr,
            ),
          ),
        ),
        actions: [
          TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("cancel".tr)),
          ElevatedButton.icon(
            style: ButtonStyle(shape: MaterialStateProperty.all(const StadiumBorder())),
            onPressed: () {},
            icon: const Icon(Icons.add),
            label: Text("create".tr),
          )
        ],
      );
    },
  );
}
