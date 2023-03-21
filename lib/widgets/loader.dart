import 'package:flutter/material.dart';

class Loader extends StatelessWidget {
  final bool isLoading;
  final Widget child;

  const Loader({
    super.key,
    required this.isLoading,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        child,
        if (isLoading) const Center(child: CircularProgressIndicator()),
      ],
    );
  }
}
