import 'package:flutter/material.dart';
import 'package:todo_app/utils/extensions.dart';

class CommonTextField extends StatelessWidget {
  const CommonTextField(
      {super.key,
      required this.title,
      required this.hintText,
      this.controller,
      this.maxLines});

  final String title;
  final String hintText;
  final TextEditingController? controller;
  final int? maxLines;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const SizedBox(height: 10),
        Text(title,
            style: context.textTheme.titleLarge?.copyWith(
              fontWeight: FontWeight.bold,
            )),
        const SizedBox(height: 10),
        TextField(
          controller: controller,
          onTapOutside: (event) {
            FocusManager.instance.primaryFocus?.unfocus();
          },
          maxLines: maxLines,
          decoration: InputDecoration(
            hintText: hintText,
          ),
          onChanged: (value) {},
        ),
      ],
    );
  }
}
