import 'package:cardui/widget/header_content_box.dart';
import 'package:flutter/material.dart';

import 'left_row_content.dart';
import 'right_row_content.dart';

class HeaderContent extends StatelessWidget {
  const HeaderContent({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: IntrinsicHeight(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 20, 15, 0),
          child: Stack(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const <Widget>[
                  LeftRowContent(),
                  VerticalDivider(
                    color: Colors.grey,
                    thickness: 1,
                    // indent: 20,
                    endIndent: 100,
                  ),
                  RightRowContent(),
                ],
              ),
              const HeaderContentBox()
            ],
          ),
        ),
      ),
    );
  }
}
