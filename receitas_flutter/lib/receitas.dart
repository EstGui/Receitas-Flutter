class Receita {
  String descricao;
  String imageUrl;

  int servings;
  List<Ingredient> ingredients;

  Receita(this.descricao, this.imageUrl, this.servings, this.ingredients);

  static List<Receita> receitas = [
    Receita("Spaghetti and Meatballs", "../assets//2126711929_ef763de2b3_w.jpg", 4, 
    [Ingredient(1,'box', 'Spaghetti'),
    Ingredient(4,'', 'Frozen MeatBalls'),
    Ingredient(0.5,'jar', 'Sauce')]),

    Receita("Chocolate Chip Coockies", "../assets//3187380632_5056654a19_b.jpg", 24,
    [Ingredient(4, 'cups', 'flour'),
    Ingredient(2, 'cups', 'sugar'),
    Ingredient(0.5, 'cups', 'chocolate chips')]),

    Receita("Taco salad", "../assets//8533381643_a31a99e8a6_c.jpg", 1,
    [Ingredient(4,'oz', 'nachos'),
    Ingredient(3,'oz', 'taco meat'),
    Ingredient(0.5,'cup', 'cheese'),
    Ingredient(0.25,'cup', 'cropped tomatoes')]),

    Receita("Hawaiian Pizza", "../assets//15452035777_294cefced5_c.jpg", 4,
    [Ingredient(1,'item', 'pizza'),
    Ingredient(1,'cup', 'pineapple'),
    Ingredient(8,'oz', 'ham')]),

    Receita("Grilled Cheese", "../assets//15992102771_b92f4cc00a_b.jpg", 1,
    [Ingredient(1,'slices', 'Cheese'),
    Ingredient(0.5,'slices', 'Bread')]),

    Receita("Tomato Soap", "../assets//27729023535_a57606c1be.jpg", 2,
    [Ingredient(1,'can', 'Tomato Soup')])
  ];
}

class Ingredient {
  double quantity;
  String measure;
  String name;

  Ingredient(this.quantity, this.measure, this.name);
}