import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CreditCard extends StatelessWidget {
  const CreditCard({
    super.key,
    required this.bankName,
    required this.label,
    required this.currencySymbol,
    required this.bankNumber,
    required this.cardColor,
  });

  final String bankName, label, currencySymbol, bankNumber;
  final Color cardColor;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.fromLTRB(30, 20, 30, 5),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 10,
              offset: const Offset(0, 20),
            ),
          ],
          borderRadius: BorderRadius.circular(20),
          color: cardColor,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RichText(
                  text: TextSpan(
                    text: bankName,
                    style: GoogleFonts.montserrat(
                        fontSize: 15, fontWeight: FontWeight.bold),
                    children: [
                      TextSpan(
                        text: label,
                        style: const TextStyle(color: Colors.grey),
                      )
                    ],
                  ),
                ),
                Text(
                  currencySymbol,
                  style: GoogleFonts.montserrat(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: const Color(0xFFFFFFFF),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            Image.asset(
              'assets/images/sim_chip.png',
              width: 40,
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  bankNumber,
                  style: GoogleFonts.montserrat(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: const Color(0xFFFFFFFF),
                  ),
                ),
                Image.asset(
                  'assets/images/card_logo.png',
                  width: 70,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
