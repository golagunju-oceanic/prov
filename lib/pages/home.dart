import 'package:flutter/material.dart';
import 'package:prov/core/colors.dart';
import 'package:prov/widgets/categories.dart';
import 'package:prov/widgets/custom_app_bar.dart';
import 'package:prov/widgets/image_slider.dart';
import 'package:prov/widgets/search_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              CustomAppBar(),
              SizedBox(height: 20),
              CustomSearchBar(),
              SizedBox(height: 20),
              ImageSlider(
                currentSlide: currentIndex,
                onchange: (value) {
                  setState(() {
                    currentIndex = value;
                  });
                },
              ), SizedBox(height: 20),
              Categories()
            ],
          ),
        ),
      ),
    );
  }
}
