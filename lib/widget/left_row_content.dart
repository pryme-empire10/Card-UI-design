import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LeftRowContent extends StatelessWidget {
  const LeftRowContent({super.key});

  Widget _buildSizedBox(double height, double width) {
    return SizedBox(height: height, width: width);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Stack(
              children: [
                Container(
                  height: 35,
                  width: 35,
                  decoration: BoxDecoration(
                    color: Colors.blueAccent.withOpacity(0.7),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Icon(
                    Icons.shopping_cart_outlined,
                    color: Colors.white,
                  ),
                ),
                _buildSizedBox(0, 10),
                Padding(
                  padding: const EdgeInsets.only(left: 40),
                  child: Text(
                    'Daily Limit',
                    style: GoogleFonts.montserrat(
                        color: Colors.white60, fontWeight: FontWeight.w500),
                  ),
                )
              ],
            )
          ],
        ),
        // _buildSizedBox(0, 0),
        Row(
          children: [
            // const Text('Tea'),
            _buildSizedBox(0, 50),
            Text(
              '\$ 75.00',
              style: GoogleFonts.montserrat(
                fontSize: 25,
                fontWeight: FontWeight.w400,
                color: Colors.white,
              ),
            )
          ],
        ),
      ],
    );
  }
}
