import 'package:flutter/material.dart';

class CustomElevatedButtonIcon extends StatelessWidget {
  final ButtonStyle style;
  final Widget icon;
  final Widget label;
  final void Function()? onPressed;
  const CustomElevatedButtonIcon({
    required this.style,
    required this.icon,
    required this.label,
    required this.onPressed,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      style: style,
      onPressed: () {
        debugPrint('Ver detalhes');
      },
      icon: icon,
      label: label,
    );
  }
}
