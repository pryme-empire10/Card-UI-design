import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widget/add_search_widget.dart';
import '../widget/custom_list_tile.dart';
import '../widget/header_content.dart';

class TrackerScreen extends StatelessWidget {
  const TrackerScreen({super.key});

  Widget _buildSizedBox(double height, double width) {
    return SizedBox(
      height: height,
      width: width,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color(0xFFF1F8F6),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: const Color(0xFF0265CE),
                  borderRadius: const BorderRadius.only(
                    bottomRight: Radius.circular(25),
                    bottomLeft: Radius.circular(25),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      offset: const Offset(0, 10),
                      blurRadius: 8,
                      spreadRadius: 8,
                    )
                  ],
                ),
                child: const HeaderContent(),
              ),
            ),
            _buildSizedBox(20, 0),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Today',
                    style: GoogleFonts.montserrat(
                        fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  const AddAndSearchWidget()
                ],
              ),
            ),
            _buildSizedBox(10, 0),
            const MyListTiles(),
            _buildSizedBox(2, 0),
          ],
        ),
      ),
    );
  }
}
