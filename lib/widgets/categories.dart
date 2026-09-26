import 'package:flutter/material.dart';
import 'package:prov/models/category_model.dart';

class Categories extends StatelessWidget {
  const Categories({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage(categories[index].imagePath),
                  ),
                ),
              ),
              Text(categories[index].title),
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
