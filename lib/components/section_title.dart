import 'package:flutter/material.dart';

import '../theme/theme.dart';

class SectionTitle extends StatelessWidget {
  const SectionTitle({
    Key? key,
    required this.title,
    required this.onPress,
  }) : super(key: key);
  final String title;
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.titleLarge,
        ),
        TextButton(
          onPressed: onPress,
          child: const Text(
            'see all',
            style: TextStyle(
              color: Color.fromARGB(255, 5, 40, 194),
            ),
          ),
          style: TextButton.styleFrom(primary: kActiveColor),
        ),
      ],
    );
  }
}
