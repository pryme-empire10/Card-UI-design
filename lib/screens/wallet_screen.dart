import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../widget/button.dart';
import '../widget/credit_card.dart';

class WalletScreen extends StatefulWidget {
  const WalletScreen({super.key});

  @override
  State<WalletScreen> createState() => _WalletScreenState();
}

class _WalletScreenState extends State<WalletScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 30, 20, 30),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 30),
                child: Text(
                  'Your Cards',
                  style: GoogleFonts.montserrat(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const CreditCard(
                bankName: 'United ',
                label: ' | BANK',
                currencySymbol: '\$',
                bankNumber: '****  3456',
                cardColor: Color(0XFF1A1B1D),
              ),
              const SizedBox(
                height: 20,
              ),
              const CreditCard(
                bankName: 'Classic ',
                label: ' | Bank',
                currencySymbol: '£',
                bankNumber: '****  5412',
                cardColor: Color(0xFF0265CE),
              ),
              const SizedBox(height: 30),
              const Button()
            ],
          ),
        ),
      ),
    );
  }
}
