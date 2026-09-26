class CategoryModel {
  final String title;
  final String imagePath;

  const CategoryModel({required this.title, required this.imagePath});
}

List<CategoryModel> _categories = [
  CategoryModel(title: "Baby wears", imagePath: 'images/baby wears.jpg'),
  CategoryModel(title: "Female wears", imagePath: 'images/female wears.jpeg'),
  CategoryModel(title: "Male wears", imagePath: 'images/male wears.jpeg'),
  CategoryModel(title: "Jewelry", imagePath: 'images/jewelry.jpg'),
  CategoryModel(title: "Scents", imagePath: 'images/scents.jpeg'),
  CategoryModel(title: "Shoes", imagePath: 'images/shoes.jpg'),
];

List<CategoryModel> get categories => _categories;

// class CategoryModel {
//   final String title;
//   final String image;

//   CategoryModel({required this.title, required this.image});
// }

// List<CategoryModel> categories = [
//   CategoryModel(title: "Baby wears", image: 'images/baby wears.jpg'),
//   CategoryModel(title: "Female wears", image: 'images/female wears.jpeg'),
//   CategoryModel(title: "Male wears", image: 'images/male wears.jpeg'),
//   CategoryModel(title: "Jewelry", image: 'images/jewelry.jpg'),
//   CategoryModel(title: "Scents", image: 'images/scents.jpeg'),
//   CategoryModel(title: "Shoes", image: 'images/shoes.jpg'),
// ];
