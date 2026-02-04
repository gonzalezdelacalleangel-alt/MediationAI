// composer.dart
import 'package:flutter/material.dart';

class Composer extends StatelessWidget {
  final void Function(String) onSend;

  const Composer({Key? key, required this.onSend}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = TextEditingController();
    return Row(
      children: [
        Expanded(
          child: TextField(
            controller: controller,
            decoration: const InputDecoration(hintText: 'Type a message...'),
          ),
        ),
        IconButton(
          icon: const Icon(Icons.send),
          onPressed: () {
            if (controller.text.isNotEmpty) {
              onSend(controller.text);
              controller.clear();
            }
          },
        ),
      ],
    );
  }
}
