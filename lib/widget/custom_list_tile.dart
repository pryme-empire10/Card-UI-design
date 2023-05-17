import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../model/custome_list_tile.dart';

class MyListTiles extends StatelessWidget {
  const MyListTiles({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: customTiles.map((tile) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 65,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: Colors.grey.withOpacity(0.1),
                ),
              ),
              child: ListTile(
                minLeadingWidth: 10,
                // visualDensity: VisualDensity.compact,
                leading: Image.asset(
                  tile.imgPath,
                  width: 30,
                  height: 30,
                ),
                title: Text(
                  tile.title,
                  style: GoogleFonts.montserrat(
                      fontSize: 15, fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  tile.subTitle,
                  style: GoogleFonts.poppins(color: Colors.grey),
                ),
                trailing: Text(
                  '- \$${tile.price.toStringAsFixed(2)}',
                  style: GoogleFonts.montserrat(fontWeight: FontWeight.w500),
                ),
              ),
            ),
            if (tile.title == 'Elephant Coffee & Food')
              const Padding(
                padding: EdgeInsets.only(left: 20, top: 10, bottom: 10),
                child: Text(
                  'May 15 2023',
                  style: TextStyle(fontSize: 16),
                ),
              ),
          ],
        );
      }).toList(),
    );
  }
}
