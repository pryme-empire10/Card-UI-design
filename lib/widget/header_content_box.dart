import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HeaderContentBox extends StatelessWidget {
  const HeaderContentBox({super.key});

  Widget _buildSizedBox(double height, double width) {
    return SizedBox(
      height: height,
      width: width,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 90,
      left: 30,
      child: Row(
        children: [
          Container(
            constraints: const BoxConstraints(
              minHeight: 60,
              minWidth: 200,
            ),
            decoration: BoxDecoration(
              color: Colors.blueAccent.withOpacity(0.7),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Row(
                children: [
                  const Icon(
                    Icons.signal_cellular_alt_outlined,
                    color: Colors.white,
                  ),
                  _buildSizedBox(0, 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Montly Saves',
                        style: GoogleFonts.montserrat(color: Colors.white70),
                      ),
                      _buildSizedBox(5, 0),
                      Text(
                        '\$ 48.00',
                        style: GoogleFonts.montserrat(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          _buildSizedBox(0, 15),
          Stack(
            children: [
              Container(
                constraints: const BoxConstraints(
                  minHeight: 60,
                  minWidth: 100,
                ),
                // height: 70,
                // width: 200,
                decoration: BoxDecoration(
                  color: Colors.blueAccent.withOpacity(0.7),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              Positioned(
                bottom: 3,
                left: 5,
                child: Image.asset(
                  'assets/images/trade_logo.png',
                  height: 50,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
