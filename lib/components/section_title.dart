import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
          style: TextButton.styleFrom(primary: kActiveColor),
          child: Text(
            'see all',
            style: TextStyle(
              fontFamily: GoogleFonts.poppins().fontFamily,
              color: const Color.fromARGB(255, 5, 40, 194),
            ),
          ),
        ),
      ],
    );
  }
}
