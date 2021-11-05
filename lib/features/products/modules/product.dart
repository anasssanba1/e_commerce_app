import 'package:e_commerce/constants/app_image_path.dart';

class Product {
  final String name;
  final double price;
  final String description;
  final int review;
  final String image;
  const Product({
    required this.name,
    required this.price,
    required this.description,
    required this.image,
    required this.review,
  });
}

final List<Product> manProducts = [
  Product(
    name: 'Herald automatic',
    price: 150.99,
    description:
        'The Herald is named after the current owners of Ingersoll. The range boasts a line of open dials that show the level of intricate detail that powers this Ingersoll watch range.',
    image: Imagespath.heraldAutomatic,
    review: 5,
  ),
  Product(
    name: 'Herald gents',
    price: 200.55,
    description:
        'Ingersoll The Herald Gents Automatic Watch I00405 with a Stainless Steel Case and Stainless Steel Bracelet',
    image: Imagespath.heraldGents,
    review: 4,
  ),
  Product(
    name: 'Ingersoll',
    price: 520.50,
    description:
        'Ingersoll I06801 is a practical and very impressive Gents watch. Material of the case is Stainless Steel while the dial colour is Black',
    image: Imagespath.ingersoll,
    review: 3,
  ),
  Product(
    name: 'Roman numeral',
    price: 400.30,
    description:
        'The Classic Roman is an elegant timepiece with stunning bright blue hands on a white roman 40mm dial. The dial is covered by sapphire glass and a 7.7mm thick stainless steel case-back. The heart of the watch is driven by a Swiss-Made Ronda 515 Quartz movement.',
    image: Imagespath.romanNumeral,
    review: 4,
  ),
  Product(
    name: 'Tommy hilfiger',
    price: 370.10,
    description:
        'Modern casual merges with rugged, outdoor inspiration in this new multi-eye watch for men. Crafted of black, ion-plated stainless steel with a black leather strap, it features a copper bezel and black face, and a trio of sub-dials.',
    image: Imagespath.tommyHilfiger,
    review: 4,
  ),
];
final List<Product> womanProducts = [
  Product(
    name: 'Burgi swarovski',
    price: 199.00,
    description:
        'Burgi combines function with fashion to create a beautifully designed timepiece that never goes unnoticed with quality craftsmanship and luxe details.',
    image: Imagespath.burgiSwarosvki,
    review: 5,
  ),
  Product(
    name: 'coach 1941',
    price: 250.50,
    description:
        'Coach was founded, the 1941 Sport Collection was crafted exclusively for us by a master watchmaker. This lavishly plated design features a bezel set with tiny, glittering crystals and the pretty complication of three sub-eyes.',
    image: Imagespath.caoch1941,
    review: 4,
  ),
  Product(
    name: 'Naviforce 5011',
    price: 320.06,
    description:
        'sweating, washing hands, rainy days, can resist splashing or immersion in water in a short time, but not suitable for bathing, swimming, diving, etc.',
    image: Imagespath.naviforce,
    review: 3,
  ),
  Product(
    name: 'rose stainless',
    price: 250.00,
    description:
        'This 28mm watch features a glossy white mother-of-pearl dial with glitz and rose gold-tone Roman numerals at the 3, 6 and 9 hour markers, two-hand movement and a rose gold-tone stainless steel bracelet.',
    image: Imagespath.roseStainless,
    review: 4,
  ),
  Product(
    name: 'timex',
    price: 650.90,
    description:
        'The Timex Datalink is one of very few wrist watches officially certified for space flight by NASA. It used a digital eye to read information from your computer ...',
    image: Imagespath.timex,
    review: 4,
  ),
];
