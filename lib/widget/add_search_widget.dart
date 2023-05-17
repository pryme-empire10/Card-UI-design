import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AddAndSearchWidget extends StatelessWidget {
  const AddAndSearchWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
            height: 35,
            width: 35,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              border: Border.all(color: Colors.grey, width: 2),
            ),
            child: const Center(
                child: FaIcon(
              Icons.tune,
              color: Colors.grey,
            ))),
        const SizedBox(
          width: 10,
        ),
        Container(
          height: 35,
          width: 35,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            border: Border.all(color: Colors.grey, width: 2),
          ),
          child: const Center(
            child: FaIcon(
              Icons.search_rounded,
              color: Colors.grey,
            ),
          ),
        ),
      ],
    );
  }
}
