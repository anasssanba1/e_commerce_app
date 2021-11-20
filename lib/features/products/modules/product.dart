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
    name: 'Pocket denim overs',
    price: 66.99,
    description: '',
    image:
        "https://lh3.googleusercontent.com/proxy/1QJ9dXBtihHYeIa95006oaPdoIq0DxHAWnqZ5bxAa-WwGHc4Iw05HNg6o3N8iHcNfRALVZ9bDvTn_YiZ-roYx8lH-xZnH25glVCweqp4454MOtDZWT2_FMtymHEYd6d3bjTSbE0yzx03dSbaIA0DK67YTBlYzw",
    review: 5,
  ),
  Product(
    name: 'Herald gents',
    price: 99.55,
    description: '',
    image:
        'https://pantaloons.imgix.net/img/app/product/2/270346-1080515.jpg?w=618&auto=format',
    review: 4,
  ),
  Product(
    name: 'Ingersoll',
    price: 100.60,
    description: '',
    image:
        'https://rukminim1.flixcart.com/image/714/857/khmbafk0-0/shirt/m/x/3/xl-ps-169-purple-state-original-imafxh9kqmatea5b.jpeg?q=50',
    review: 3,
  ),
  Product(
    name: 'Roman numeral',
    price: 88.88,
    description: '',
    image:
        'https://image.uniqlo.com/UQ/ST3/eu/imagesother/2021/categories/men/shirts/pc-m-shirts-lineup-flannel-0805.jpg',
    review: 4,
  ),
  Product(
    name: 'Tommy hilfiger',
    price: 44.99,
    description: '',
    image:
        'https://d3312htug2rvv.cloudfront.net/img/600/744/resize/productImages/867040b8f0fcaf84cdb5fe9de093cab3_1.jpeg',
    review: 4,
  ),
  Product(
    name: 'Tommy hilfiger',
    price: 44.99,
    description: '',
    image:
        "https://i.pinimg.com/736x/11/a4/d4/11a4d4065717c4512e41dda0f0378b46.jpg",
    review: 4,
  ),
];
final List<Product> womanProducts = [
  Product(
    name: 'Burgi swarovski',
    price: 199.00,
    description: '',
    image:
        'https://www.artfulhome.com/item_images/Additional/P/3301-3400/3316/full/20b309ea-4687-4f24-bf51-6fb9ac16c3ea_152037_f.jpg',
    review: 5,
  ),
  Product(
    name: 'coach 1941',
    price: 250.50,
    description: '',
    image: 'https://tjori.gumlet.com/prod-images/TJ-VND-04-04_1.jpg',
    review: 4,
  ),
  Product(
    name: 'Naviforce 5011',
    price: 320.06,
    description: '',
    image:
        'https://cdn.shopify.com/s/files/1/0258/2161/0093/products/TotemeBlazer.jpg?v=1621909241',
    review: 3,
  ),
  Product(
    name: 'rose stainless',
    price: 250.00,
    description:
        'This 28mm watch features a glossy white mother-of-pearl dial with glitz and rose gold-tone Roman numerals at the 3, 6 and 9 hour markers, two-hand movement and a rose gold-tone stainless steel bracelet.',
    image:
        'https://i.pinimg.com/originals/00/f8/d4/00f8d4966014290db74938b18777fddf.jpg',
    review: 4,
  ),
  Product(
    name: 'timex',
    price: 650.90,
    description: '',
    image:
        'http://cdn.shopify.com/s/files/1/2096/2629/products/rilo-quilted-woven-jacket-tau-taupe-A702ORIL-TAU-1.jpg-16d5_1200x630.progressive.jpg?v=1584989047',
    review: 4,
  ),
  Product(
    name: 'rose stainless',
    price: 450.90,
    description: '',
    image: 'https://i.dealdoodle.co.uk/images/e/FSM7dW4BqrvfNDQTPbVt.jpg',
    review: 4,
  ),
];
