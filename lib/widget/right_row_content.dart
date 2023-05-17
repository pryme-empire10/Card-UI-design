import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RightRowContent extends StatelessWidget {
  const RightRowContent({super.key});

  Widget _buildSizedBox(double height, double width) {
    return SizedBox(
      height: height,
      width: width,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              'Today Spent',
              style: GoogleFonts.montserrat(
                  color: Colors.white60, fontWeight: FontWeight.w500),
            ),
            _buildSizedBox(0, 20),
            Text(
              '\$ 30.55',
              style: GoogleFonts.montserrat(color: Colors.white),
            )
          ],
        ),
        _buildSizedBox(15, 0),
        Row(
          children: [
            Text(
              'Balance',
              style: GoogleFonts.montserrat(
                  color: Colors.white60, fontWeight: FontWeight.w500),
            ),
            _buildSizedBox(0, 45),
            Text(
              '\$ 28.50',
              style: GoogleFonts.montserrat(color: Colors.white),
            )
          ],
        )
      ],
    );
  }
}
