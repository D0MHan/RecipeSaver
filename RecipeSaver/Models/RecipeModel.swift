//
//  RecipeModel.swift
//  RecipeSaver
//
//  Created by 한동명 on 2023/04/19.
//

import Foundation

enum Category: String, CaseIterable, Identifiable {
    var id: String {self.rawValue}
    case breakfast = "Breakfast"
    case soup = "Soup"
    case saled = "Salad"
    case appetizer = "Appetizer"
    case main = "Main"
    case side = "Side"
    case dessert = "Dessert"
    case snack = "Snack"
    case drink = "Drink"
}

struct Recipe: Identifiable {
    let id = UUID()
    let name: String
    let image: String
    let description: String
    let ingredients: String
    let directions: String
    let category: Category.RawValue
    let datePublished: String
    let url: String
}

extension Recipe {
    static let all: [Recipe] = [
        Recipe(
            name: "Kimchi Noodle Salad",
            image: "https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcRblsQ5YEfj7LIgYPEU3m6v9741_YvaxIie2iyptC2XO2DEbmpQ",
            description: "Kimchi is a fermented condiment made from any number of vegetables. In this recipe, I like to use a very spicy cabbage kimchi, and I recommend you do, too. Taste your kimchi first and use less of it if you want a milder salad, and certainly feel free to add more if you want to give the dish more kick. Kimchi is often made with shellfish or other animal ingredients, so be sure to look for a vegan brand for this recipe. Both kimchi and gochujang (Korean chile paste) are available in the Asian section of grocery stores or online.",
            ingredients: "1. 1 pound brown rice noodles, cooked according to package directions, drained, and rinsed until cool.\n2. 2 ½ cups chopped cabbage kimchi.\n3. 3 to 4 tablespoons gochujang.\n4. 1 cup Mung Bean Sprouts.\n5. 4 green onions (white and green parts), thinly sliced.\n6. 1 medium cucumber, halved, seeded and thinly sliced.\n7. 2 tablespoons sesame seeds, toasted.",
            directions: "1. Place the rice noodles, kimchi, gochujang, and mung bean sprouts in a large bowl and mix well.\n2. To serve, divide the mixture between four individual plates and garnish each with the green onions, cucumber slices, and sesame seeds.",
            category: "Salad",
            datePublished: "2023-04-25",
            url: "https://www.forksoverknives.com/recipes/vegan-salads-sides/kimchi-noodle-salad/"
        ),
        Recipe(
            name: "Creamy Roasted Cauliflower Soup",
            image: "https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcQPylcix3EfVzK7oHH_mlU3D2yIsOqB2CHxKQdpnUVFWDtNQsrO",
            description: "This mellow-flavored cauliflower soup is pure comfort in a bowl. Hearty potatoes are puréed with the cauliflower into a velvety texture and enhanced with the warming flavors of nutmeg and cayenne. The garnish of roasted florets and fresh herbs adds a delicious contrasting texture to the creamy soup—not to mention a restaurant-quality presentation! Enjoy this recipe as a light lunch or add some heft by serving it alongside a grilled sandwich or salad.",
            ingredients: "1. 1 2-lb. head cauliflower, cut into florets (6 cups).\n2. 2 medium russet potatoes, peeled and cubed (2 cups).\n3. 1 cup chopped sweet onion. 4. 4 cloves garlic.\n5. 3 to 4 tablespoons white wine vinegar\n6. 4 cups low-sodium vegetable broth.\n7. ½ teaspoon freshly grated nutmeg.\n8. ¼ teaspoon cayenne pepper.\n9. Chopped fresh herbs, such as parsley, thyme, or basil.\n10. Freshly ground black pepper, to taste.",
            directions: "1. Preheat oven to 450°F. Line two 15x10-inch baking pans with foil. Spread cauliflower, potatoes, onion, and garlic evenly in pans. Sprinkle with 2 tablespoons of the vinegar and 2 tablespoons water. Roast 25 to 30 minutes or until vegetables are tender and browned.\n2. Set aside 2 cups of the roasted vegetables for garnish. Transfer the remaining vegetables to a large pot. Add broth and 3 cups water. Bring to boiling; reduce heat. Simmer, uncovered, 15 minutes to blend flavors. Using an immersion blender, blend soup. (Or carefully transfer in batches to a blender. Cover and blend.) Stir in the remaining 1 to 2 tablespoons of vinegar, the nutmeg, and cayenne.\n3. Serve soup topped with reserved vegetables, the herbs, and black pepper.",
            category: "Soup",
            datePublished: "2023-04-25",
            url: "https://www.forksoverknives.com/recipes/vegan-soups-stews/creamy-roasted-cauliflower-soup/"
        ),
        Recipe(
            name: "Walnut Biscuit Stacked Fruit Appetizers",
            image: "https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcTEULrw377k5IjftAAs5b0dMZh34z08w_GfHUwaavvo1WYvdIpA",
            description: "These sweet and savory appetizers are the perfect finger food to serve at a summer BBQ or tropical-themed party. A tower of brightly colored fruit balances on top of homemade oat and walnut biscuits that offer a delicious savory crunch as you pop one in your mouth. A light drizzle of maple syrup adds extra pizazz to the presentation, but feel free to top them with a mint leaf instead. You can also make the biscuit bases ahead of time, but wait until just before serving to slice the fruit and assemble the stacks—you’ll get the nicest contrast of textures that way.",
            ingredients: "1. ⅓ cup sorghum flour, plus more for dusting.\n2. ¾ cup rolled oats.\n3. ⅓ cup walnuts.\n4. ⅓ cup pure maple syrup.\n5. 1 tablespoon flaxseed meal.\n6. 1½ teaspoons pure vanilla extract.\n7. ⅛ teaspoon sea salt.\n8. ripe bananas.\n9. 4 ripe kiwifruit.\n10. 1 cup chopped fresh strawberries.",
            directions: "1. Preheat oven to 350°F. Place a silicone baking mat on a large baking sheet and dust with sorghum flour.\n2. For biscuits, in a food processor combine ⅓ cup sorghum flour and the next six ingredients (through salt). Process until a crumbly dough forms. Transfer dough to prepared mat and shape it into a ball. Roll the ball into a 9×6-inch rectangle about ⅛-inch thick. Use a bench scraper or dull knife to square up the edges and score the dough into 24 1½-inch squares.\n3. Bake 15 to 20 minutes or until biscuits are crispy and lightly browned on top. Cool biscuits for a few minutes on baking sheet before separating them, then let them cool completely.\n 4. Just before serving, assemble the stacks. Slice the bananas and kiwifruit into ⅛-inch-thick coins (24 coins each). Layer each biscuit with a slice of kiwifruit and a slice of banana. Top with chopped strawberries. Serve immediately on a platter drizzled with additional maple syrup, if desired.",
            category: "Appetizer",
            datePublished: "2023-04-25",
            url: "https://www.forksoverknives.com/recipes/vegan-snacks-appetizers/walnut-biscuit-stacked-fruit-appetizers/"
        ),
    ]
}
