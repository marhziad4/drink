class Products {
  late String  idSubCategories;
  late String  price;
  late String name;
  late String imagePath;
  late String description;
  late String shortDescription;
  late String subCategoriesName;
  late String path;

  Products();

  Products.fromMap(Map<String, dynamic> map) {
    name = map['name'];
    idSubCategories = map['idSubCategories'];
    price = map['price'];
    imagePath = map['imagePath'];
    description = map['description'];
    shortDescription = map['shortDescription'];

  }

  Map<String, dynamic> toMap() {
    Map<String, dynamic> map = Map<String, dynamic>();
    map['price'] = price;
    map['imagePath'] = imagePath;
    map['description'] = description;
    map['shortDescription'] = shortDescription;
    map['name'] = name;
    map['idSubCategories'] = idSubCategories;

    return map;
  }
}
