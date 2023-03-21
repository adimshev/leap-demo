import 'package:flutter/material.dart';

class ApiKeyDialog {
  final controller = TextEditingController();

  ApiKeyDialog();

  Future<String?> show(
    BuildContext context,
    String apiKey,
  ) async {
    controller.text = apiKey;

    return showDialog<String>(
      context: context,
      builder: (context) {
        return AlertDialog(
          contentPadding: const EdgeInsets.all(16),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          title: const Text('Api Key'),
          content: TextField(
            controller: controller,
            decoration: const InputDecoration(
              prefixIcon: Icon(Icons.key_outlined),
              border: OutlineInputBorder(),
            ),
          ),
          actions: [
            TextButton(
              onPressed: () =>
                  Navigator.of(context).pop(controller.text.trim()),
              child: const Text('Save'),
            )
          ],
        );
      },
    );
  }
}
