import 'package:flutter/material.dart';

class FloatingTextButton extends StatelessWidget {
  final void Function() onPressed;
  final String label;

  const FloatingTextButton({
    Key? key,
    required this.onPressed,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.extended(
      onPressed: onPressed,
      label: Text(label),
    );
  }
}
