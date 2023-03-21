import 'package:flutter/material.dart';
import 'package:linkify/linkify.dart';
import 'package:url_launcher/url_launcher.dart';

void dispalySnakBar(BuildContext context, String message) {
  final links = linkify(message).whereType<UrlElement>();
  final uri = links.isEmpty ? null : Uri.tryParse(links.first.url);

  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(message),
      behavior: SnackBarBehavior.floating,
      duration: const Duration(seconds: 5),
      action: uri == null
          ? null
          : SnackBarAction(
              label: 'open url',
              onPressed: () => canLaunchUrl(uri).then(
                (can) => can ? launchUrl(uri) : false,
              ),
            ),
    ),
  );
}
