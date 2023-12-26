

import 'package:flutter/material.dart';

class IdInfo extends StatelessWidget {
  const IdInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
          onTap: () {},
          child: const Icon(
            Icons.copy,
            color: Colors.white,
            size: 20,
          ),
        ),
        const Text(
          "1021928",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Container(
          height: 15,
          width: 2,
          color: Colors.grey,
        ),
        const SizedBox(
          width: 10,
        ),
        const Text(
          "Country Name",
          style: TextStyle(color: Colors.white),
        ),
        const SizedBox(
          width: 10,
        ),
        Container(
          height: 15,
          width: 2,
          color: Colors.grey,
        ),
        const SizedBox(
          width: 10,
        ),
        const Text(
          "Fans : 200",
          style: TextStyle(color: Colors.white),
        ),
        const SizedBox(
          width: 10,
        ),
        Container(
          height: 15,
          width: 2,
          color: Colors.grey,
        ),
        const SizedBox(
          width: 10,
        ),
        const Text(
          "16-1-2020",
          style: TextStyle(color: Colors.white),
        ),
      ],
    );
  }
}
