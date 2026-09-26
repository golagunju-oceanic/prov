import 'package:flutter/material.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      // height: 60,
      decoration: BoxDecoration(
        color: Colors.grey.shade300,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        children: [
          Icon(Icons.search, size: 30),
          SizedBox(width: 10),
          Flexible(
            flex: 4,
            child: TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'search...',
              ),
            ),
          ),
          IconButton(onPressed: () {}, icon: Icon(Icons.filter)),
        ],
      ),
    );
  }
}
