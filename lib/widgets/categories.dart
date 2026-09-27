import 'package:flutter/material.dart';
import 'package:prov/models/category_model.dart';
import 'package:google_fonts/google_fonts.dart';

class Categories extends StatelessWidget {
  const Categories({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 110,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          final category = categories[index];
          return Column(
            children: [
              Container(
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(image: AssetImage(category.imagePath)),
                ),
              ),
              Text(category.title, style: GoogleFonts.agbalumo(fontSize: 18)),
            ],
          );
        },
        separatorBuilder: (context, index) => SizedBox(width: 20),
        itemCount: categories.length,
      ),
    );
  }
}




































// import 'package:flutter/material.dart';
// import 'package:prov/models/category_model.dart';

// class Categories extends StatelessWidget {
//   const Categories({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       height: 100,
//       child: ListView.separated(
        
//         itemCount: categories.length,
//         itemBuilder: (context, index) {
//           return Column(
//             children: [
//               Container(
//                 height: 60,
//                 width: 60,
//                 decoration: BoxDecoration(
//                   image: DecorationImage(
//                     image: AssetImage(categories[index].image),
//                   ),
//                 ),
//               ),
//               Text(categories[index].title),
//             ],
//           );
//         },
//         separatorBuilder: (context, index) => SizedBox(width: 20),
//       ),
//     );
//   }
// }
