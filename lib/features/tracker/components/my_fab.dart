import 'package:flutter/material.dart';

class MyFloatingActionButton extends StatelessWidget {
  final Function()? onPressed;

  const MyFloatingActionButton({
    super.key,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: onPressed,
      backgroundColor: Colors.deepPurple[200],
      foregroundColor: const Color.fromARGB(255, 23, 13, 68),
      child: Icon(Icons.library_add),
    );
  }
}
