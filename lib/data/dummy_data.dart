import '../models/product.dart';
import '../models/category.dart';

List<Category> categories = [
  Category(id: 'c1', name: 'Phones', imageUrl: 'assets/images/icons/cell-phone.png'),
  Category(id: 'c2', name: 'Clothing', imageUrl: 'assets/images/icons/tshirt.png'),
  Category(id: 'c3', name: 'Shoes', imageUrl: 'assets/images/icons/sneakers.png'),
];

List<Product> products = [
  Product(
    id: 'p1',
    title: 'Smartphone',
    description: 'Latest model smartphone with multiple capacities',
    imageUrl: 'assets/images/blackberry.jpg',
    categoryId: 'c1',
    options: [
      ProductOption(
        name: "Capacity",
        variants: [
          ProductVariant(label: "64GB", price: 699.99),
          ProductVariant(label: "128GB", price: 799.99),
          ProductVariant(label: "256GB", price: 899.99),
        ],
      ),
      ProductOption(
        name: "Color",
        variants: [
          ProductVariant(label: "Black", price: 0),
          ProductVariant(label: "Silver", price: 0),
          ProductVariant(label: "Blue", price: 0),
        ],
      ),
    ],
  ),
  Product(
    id: 'p2',
    title: 'T-Shirt',
    description: 'Cotton T-shirt with multiple sizes',
    imageUrl: 'assets/images/t-shirt.jpg',
    categoryId: 'c2',
    options: [
      ProductOption(
        name: "Size",
        variants: [
          ProductVariant(label: "S", price: 14.99),
          ProductVariant(label: "M", price: 16.99),
          ProductVariant(label: "L", price: 18.99),
        ],
      ),
      ProductOption(
        name: "Color",
        variants: [
          ProductVariant(label: "White", price: 0),
          ProductVariant(label: "Black", price: 0),
          ProductVariant(label: "Red", price: 0),
        ],
      ),
    ],
  ),
  
  Product(
    id: 'p3',
    title: 'T-Shirt',
    description: 'Cotton T-shirt with multiple sizes',
    imageUrl: 'assets/images/t-shirt.jpg',
    categoryId: 'c2',
    options: [
      ProductOption(
        name: "Size",
        variants: [
          ProductVariant(label: "S", price: 14.99),
          ProductVariant(label: "M", price: 16.99),
          ProductVariant(label: "L", price: 18.99),
        ],
      ),
      ProductOption(
        name: "Color",
        variants: [
          ProductVariant(label: "White", price: 0),
          ProductVariant(label: "Black", price: 0),
          ProductVariant(label: "Red", price: 0),
        ],
      ),
    ],
  ),
  Product(
    id: 'p4',
    title: 'Sneakers',
    description: 'Comfortable sneakers',
    imageUrl: 'assets/images/sneakers.jpeg',
    categoryId: 'c3',
    options: [
      ProductOption(
        name: "Size",
        variants: [
          ProductVariant(label: "43", price: 14.99),
          ProductVariant(label: "42", price: 12.99),
          ProductVariant(label: "41", price: 10.99),
        ],
      ),
      ProductOption(
        name: "Color",
        variants: [
          ProductVariant(label: "White", price: 0),
          ProductVariant(label: "Black", price: 0),
          ProductVariant(label: "Red", price: 0),
        ],
      ),
    ],
  ),
  Product(
    id: 'p5',
    title: 'Smartphone',
    description: 'Latest model smartphone with multiple capacities',
    imageUrl: 'assets/images/blackberry.jpg',
    categoryId: 'c1',
    options: [
      ProductOption(
        name: "Capacity",
        variants: [
          ProductVariant(label: "64GB", price: 699.99),
          ProductVariant(label: "128GB", price: 799.99),
          ProductVariant(label: "256GB", price: 899.99),
        ],
      ),
      ProductOption(
        name: "Color",
        variants: [
          ProductVariant(label: "Black", price: 0),
          ProductVariant(label: "Silver", price: 0),
          ProductVariant(label: "Blue", price: 0),
        ],
      ),
    ],
  ),
  Product(
    id: 'p6',
    title: 'T-Shirt',
    description: 'Cotton T-shirt with multiple sizes',
    imageUrl: 'assets/images/t-shirt.jpg',
    categoryId: 'c2',
    options: [
      ProductOption(
        name: "Size",
        variants: [
          ProductVariant(label: "S", price: 14.99),
          ProductVariant(label: "M", price: 16.99),
          ProductVariant(label: "L", price: 18.99),
        ],
      ),
      ProductOption(
        name: "Color",
        variants: [
          ProductVariant(label: "White", price: 0),
          ProductVariant(label: "Black", price: 0),
          ProductVariant(label: "Red", price: 0),
        ],
      ),
    ],
  ),
  
  Product(
    id: 'p7',
    title: 'T-Shirt',
    description: 'Cotton T-shirt with multiple sizes',
    imageUrl: 'assets/images/t-shirt.jpg',
    categoryId: 'c2',
    options: [
      ProductOption(
        name: "Size",
        variants: [
          ProductVariant(label: "S", price: 14.99),
          ProductVariant(label: "M", price: 16.99),
          ProductVariant(label: "L", price: 18.99),
        ],
      ),
      ProductOption(
        name: "Color",
        variants: [
          ProductVariant(label: "White", price: 0),
          ProductVariant(label: "Black", price: 0),
          ProductVariant(label: "Red", price: 0),
        ],
      ),
    ],
  ),
  Product(
    id: 'p8',
    title: 'Sneakers',
    description: 'Comfortable sneakers',
    imageUrl: 'assets/images/sneakers.jpeg',
    categoryId: 'c3',
    options: [
      ProductOption(
        name: "Size",
        variants: [
          ProductVariant(label: "43", price: 14.99),
          ProductVariant(label: "42", price: 12.99),
          ProductVariant(label: "41", price: 10.99),
        ],
      ),
      ProductOption(
        name: "Color",
        variants: [
          ProductVariant(label: "White", price: 0),
          ProductVariant(label: "Black", price: 0),
          ProductVariant(label: "Red", price: 0),
        ],
      ),
    ],
  ),
  Product(
    id: 'p9',
    title: 'Smartphone',
    description: 'Latest model smartphone with multiple capacities',
    imageUrl: 'assets/images/blackberry.jpg',
    categoryId: 'c1',
    options: [
      ProductOption(
        name: "Capacity",
        variants: [
          ProductVariant(label: "64GB", price: 699.99),
          ProductVariant(label: "128GB", price: 799.99),
          ProductVariant(label: "256GB", price: 899.99),
        ],
      ),
      ProductOption(
        name: "Color",
        variants: [
          ProductVariant(label: "Black", price: 0),
          ProductVariant(label: "Silver", price: 0),
          ProductVariant(label: "Blue", price: 0),
        ],
      ),
    ],
  ),
  Product(
    id: 'p10',
    title: 'T-Shirt',
    description: 'Cotton T-shirt with multiple sizes',
    imageUrl: 'assets/images/t-shirt.jpg',
    categoryId: 'c2',
    options: [
      ProductOption(
        name: "Size",
        variants: [
          ProductVariant(label: "S", price: 14.99),
          ProductVariant(label: "M", price: 16.99),
          ProductVariant(label: "L", price: 18.99),
        ],
      ),
      ProductOption(
        name: "Color",
        variants: [
          ProductVariant(label: "White", price: 0),
          ProductVariant(label: "Black", price: 0),
          ProductVariant(label: "Red", price: 0),
        ],
      ),
    ],
  ),
  
  Product(
    id: 'p11',
    title: 'T-Shirt',
    description: 'Cotton T-shirt with multiple sizes',
    imageUrl: 'assets/images/t-shirt.jpg',
    categoryId: 'c2',
    options: [
      ProductOption(
        name: "Size",
        variants: [
          ProductVariant(label: "S", price: 14.99),
          ProductVariant(label: "M", price: 16.99),
          ProductVariant(label: "L", price: 18.99),
        ],
      ),
      ProductOption(
        name: "Color",
        variants: [
          ProductVariant(label: "White", price: 0),
          ProductVariant(label: "Black", price: 0),
          ProductVariant(label: "Red", price: 0),
        ],
      ),
    ],
  ),
  Product(
    id: 'p12',
    title: 'Sneakers',
    description: 'Comfortable sneakers',
    imageUrl: 'assets/images/sneakers.jpeg',
    categoryId: 'c3',
    options: [
      ProductOption(
        name: "Size",
        variants: [
          ProductVariant(label: "43", price: 14.99),
          ProductVariant(label: "42", price: 12.99),
          ProductVariant(label: "41", price: 10.99),
        ],
      ),
      ProductOption(
        name: "Color",
        variants: [
          ProductVariant(label: "White", price: 0),
          ProductVariant(label: "Black", price: 0),
          ProductVariant(label: "Red", price: 0),
        ],
      ),
    ],
  ),
  Product(
    id: 'p13',
    title: 'Smartphone',
    description: 'Latest model smartphone with multiple capacities',
    imageUrl: 'assets/images/blackberry.jpg',
    categoryId: 'c1',
    options: [
      ProductOption(
        name: "Capacity",
        variants: [
          ProductVariant(label: "64GB", price: 699.99),
          ProductVariant(label: "128GB", price: 799.99),
          ProductVariant(label: "256GB", price: 899.99),
        ],
      ),
      ProductOption(
        name: "Color",
        variants: [
          ProductVariant(label: "Black", price: 0),
          ProductVariant(label: "Silver", price: 0),
          ProductVariant(label: "Blue", price: 0),
        ],
      ),
    ],
  ),
  Product(
    id: 'p14',
    title: 'T-Shirt',
    description: 'Cotton T-shirt with multiple sizes',
    imageUrl: 'assets/images/t-shirt.jpg',
    categoryId: 'c2',
    options: [
      ProductOption(
        name: "Size",
        variants: [
          ProductVariant(label: "S", price: 14.99),
          ProductVariant(label: "M", price: 16.99),
          ProductVariant(label: "L", price: 18.99),
        ],
      ),
      ProductOption(
        name: "Color",
        variants: [
          ProductVariant(label: "White", price: 0),
          ProductVariant(label: "Black", price: 0),
          ProductVariant(label: "Red", price: 0),
        ],
      ),
    ],
  ),
  
  Product(
    id: 'p15',
    title: 'T-Shirt',
    description: 'Cotton T-shirt with multiple sizes',
    imageUrl: 'assets/images/t-shirt.jpg',
    categoryId: 'c2',
    options: [
      ProductOption(
        name: "Size",
        variants: [
          ProductVariant(label: "S", price: 14.99),
          ProductVariant(label: "M", price: 16.99),
          ProductVariant(label: "L", price: 18.99),
        ],
      ),
      ProductOption(
        name: "Color",
        variants: [
          ProductVariant(label: "White", price: 0),
          ProductVariant(label: "Black", price: 0),
          ProductVariant(label: "Red", price: 0),
        ],
      ),
    ],
  ),
  Product(
    id: 'p16',
    title: 'Sneakers',
    description: 'Comfortable sneakers',
    imageUrl: 'assets/images/sneakers.jpeg',
    categoryId: 'c3',
    options: [
      ProductOption(
        name: "Size",
        variants: [
          ProductVariant(label: "43", price: 14.99),
          ProductVariant(label: "42", price: 12.99),
          ProductVariant(label: "41", price: 10.99),
        ],
      ),
      ProductOption(
        name: "Color",
        variants: [
          ProductVariant(label: "White", price: 0),
          ProductVariant(label: "Black", price: 0),
          ProductVariant(label: "Red", price: 0),
        ],
      ),
    ],
  ),
  Product(
    id: 'p16',
    title: 'Smartphone',
    description: 'Latest model smartphone with multiple capacities',
    imageUrl: 'assets/images/blackberry.jpg',
    categoryId: 'c1',
    options: [
      ProductOption(
        name: "Capacity",
        variants: [
          ProductVariant(label: "64GB", price: 699.99),
          ProductVariant(label: "128GB", price: 799.99),
          ProductVariant(label: "256GB", price: 899.99),
        ],
      ),
      ProductOption(
        name: "Color",
        variants: [
          ProductVariant(label: "Black", price: 0),
          ProductVariant(label: "Silver", price: 0),
          ProductVariant(label: "Blue", price: 0),
        ],
      ),
    ],
  ),
  Product(
    id: 'p17',
    title: 'T-Shirt',
    description: 'Cotton T-shirt with multiple sizes',
    imageUrl: 'assets/images/t-shirt.jpg',
    categoryId: 'c2',
    options: [
      ProductOption(
        name: "Size",
        variants: [
          ProductVariant(label: "S", price: 14.99),
          ProductVariant(label: "M", price: 16.99),
          ProductVariant(label: "L", price: 18.99),
        ],
      ),
      ProductOption(
        name: "Color",
        variants: [
          ProductVariant(label: "White", price: 0),
          ProductVariant(label: "Black", price: 0),
          ProductVariant(label: "Red", price: 0),
        ],
      ),
    ],
  ),
  
  Product(
    id: 'p18',
    title: 'T-Shirt',
    description: 'Cotton T-shirt with multiple sizes',
    imageUrl: 'assets/images/t-shirt.jpg',
    categoryId: 'c2',
    options: [
      ProductOption(
        name: "Size",
        variants: [
          ProductVariant(label: "S", price: 14.99),
          ProductVariant(label: "M", price: 16.99),
          ProductVariant(label: "L", price: 18.99),
        ],
      ),
      ProductOption(
        name: "Color",
        variants: [
          ProductVariant(label: "White", price: 0),
          ProductVariant(label: "Black", price: 0),
          ProductVariant(label: "Red", price: 0),
        ],
      ),
    ],
  ),
  Product(
    id: 'p19',
    title: 'Sneakers',
    description: 'Comfortable sneakers',
    imageUrl: 'assets/images/sneakers.jpeg',
    categoryId: 'c3',
    options: [
      ProductOption(
        name: "Size",
        variants: [
          ProductVariant(label: "43", price: 14.99),
          ProductVariant(label: "42", price: 12.99),
          ProductVariant(label: "41", price: 10.99),
        ],
      ),
      ProductOption(
        name: "Color",
        variants: [
          ProductVariant(label: "White", price: 0),
          ProductVariant(label: "Black", price: 0),
          ProductVariant(label: "Red", price: 0),
        ],
      ),
    ],
  ),
  Product(
    id: 'p20',
    title: 'Smartphone',
    description: 'Latest model smartphone with multiple capacities',
    imageUrl: 'assets/images/blackberry.jpg',
    categoryId: 'c1',
    options: [
      ProductOption(
        name: "Capacity",
        variants: [
          ProductVariant(label: "64GB", price: 699.99),
          ProductVariant(label: "128GB", price: 799.99),
          ProductVariant(label: "256GB", price: 899.99),
        ],
      ),
      ProductOption(
        name: "Color",
        variants: [
          ProductVariant(label: "Black", price: 0),
          ProductVariant(label: "Silver", price: 0),
          ProductVariant(label: "Blue", price: 0),
        ],
      ),
    ],
  ),
  Product(
    id: 'p21',
    title: 'T-Shirt',
    description: 'Cotton T-shirt with multiple sizes',
    imageUrl: 'assets/images/t-shirt.jpg',
    categoryId: 'c2',
    options: [
      ProductOption(
        name: "Size",
        variants: [
          ProductVariant(label: "S", price: 14.99),
          ProductVariant(label: "M", price: 16.99),
          ProductVariant(label: "L", price: 18.99),
        ],
      ),
      ProductOption(
        name: "Color",
        variants: [
          ProductVariant(label: "White", price: 0),
          ProductVariant(label: "Black", price: 0),
          ProductVariant(label: "Red", price: 0),
        ],
      ),
    ],
  ),
  
  Product(
    id: 'p22',
    title: 'T-Shirt',
    description: 'Cotton T-shirt with multiple sizes',
    imageUrl: 'assets/images/t-shirt.jpg',
    categoryId: 'c2',
    options: [
      ProductOption(
        name: "Size",
        variants: [
          ProductVariant(label: "S", price: 14.99),
          ProductVariant(label: "M", price: 16.99),
          ProductVariant(label: "L", price: 18.99),
        ],
      ),
      ProductOption(
        name: "Color",
        variants: [
          ProductVariant(label: "White", price: 0),
          ProductVariant(label: "Black", price: 0),
          ProductVariant(label: "Red", price: 0),
        ],
      ),
    ],
  ),
  Product(
    id: 'p23',
    title: 'Sneakers',
    description: 'Comfortable sneakers',
    imageUrl: 'assets/images/sneakers.jpeg',
    categoryId: 'c3',
    options: [
      ProductOption(
        name: "Size",
        variants: [
          ProductVariant(label: "43", price: 14.99),
          ProductVariant(label: "42", price: 12.99),
          ProductVariant(label: "41", price: 10.99),
        ],
      ),
      ProductOption(
        name: "Color",
        variants: [
          ProductVariant(label: "White", price: 0),
          ProductVariant(label: "Black", price: 0),
          ProductVariant(label: "Red", price: 0),
        ],
      ),
    ],
  ),
  Product(
    id: 'p25',
    title: 'Smartphone',
    description: 'Latest model smartphone with multiple capacities',
    imageUrl: 'assets/images/blackberry.jpg',
    categoryId: 'c1',
    options: [
      ProductOption(
        name: "Capacity",
        variants: [
          ProductVariant(label: "64GB", price: 699.99),
          ProductVariant(label: "128GB", price: 799.99),
          ProductVariant(label: "256GB", price: 899.99),
        ],
      ),
      ProductOption(
        name: "Color",
        variants: [
          ProductVariant(label: "Black", price: 0),
          ProductVariant(label: "Silver", price: 0),
          ProductVariant(label: "Blue", price: 0),
        ],
      ),
    ],
  ),
  Product(
    id: 'p24',
    title: 'T-Shirt',
    description: 'Cotton T-shirt with multiple sizes',
    imageUrl: 'assets/images/t-shirt.jpg',
    categoryId: 'c2',
    options: [
      ProductOption(
        name: "Size",
        variants: [
          ProductVariant(label: "S", price: 14.99),
          ProductVariant(label: "M", price: 16.99),
          ProductVariant(label: "L", price: 18.99),
        ],
      ),
      ProductOption(
        name: "Color",
        variants: [
          ProductVariant(label: "White", price: 0),
          ProductVariant(label: "Black", price: 0),
          ProductVariant(label: "Red", price: 0),
        ],
      ),
    ],
  ),
  
  Product(
    id: 'p26',
    title: 'T-Shirt',
    description: 'Cotton T-shirt with multiple sizes',
    imageUrl: 'assets/images/t-shirt.jpg',
    categoryId: 'c2',
    options: [
      ProductOption(
        name: "Size",
        variants: [
          ProductVariant(label: "S", price: 14.99),
          ProductVariant(label: "M", price: 16.99),
          ProductVariant(label: "L", price: 18.99),
        ],
      ),
      ProductOption(
        name: "Color",
        variants: [
          ProductVariant(label: "White", price: 0),
          ProductVariant(label: "Black", price: 0),
          ProductVariant(label: "Red", price: 0),
        ],
      ),
    ],
  ),
  Product(
    id: 'p27',
    title: 'Sneakers',
    description: 'Comfortable sneakers',
    imageUrl: 'assets/images/sneakers.jpeg',
    categoryId: 'c3',
    options: [
      ProductOption(
        name: "Size",
        variants: [
          ProductVariant(label: "43", price: 14.99),
          ProductVariant(label: "42", price: 12.99),
          ProductVariant(label: "41", price: 10.99),
        ],
      ),
      ProductOption(
        name: "Color",
        variants: [
          ProductVariant(label: "White", price: 0),
          ProductVariant(label: "Black", price: 0),
          ProductVariant(label: "Red", price: 0),
        ],
      ),
    ],
  ),
  Product(
    id: 'p29',
    title: 'Smartphone',
    description: 'Latest model smartphone with multiple capacities',
    imageUrl: 'assets/images/blackberry.jpg',
    categoryId: 'c1',
    options: [
      ProductOption(
        name: "Capacity",
        variants: [
          ProductVariant(label: "64GB", price: 699.99),
          ProductVariant(label: "128GB", price: 799.99),
          ProductVariant(label: "256GB", price: 899.99),
        ],
      ),
      ProductOption(
        name: "Color",
        variants: [
          ProductVariant(label: "Black", price: 0),
          ProductVariant(label: "Silver", price: 0),
          ProductVariant(label: "Blue", price: 0),
        ],
      ),
    ],
  ),
  Product(
    id: 'p28',
    title: 'T-Shirt',
    description: 'Cotton T-shirt with multiple sizes',
    imageUrl: 'assets/images/t-shirt.jpg',
    categoryId: 'c2',
    options: [
      ProductOption(
        name: "Size",
        variants: [
          ProductVariant(label: "S", price: 14.99),
          ProductVariant(label: "M", price: 16.99),
          ProductVariant(label: "L", price: 18.99),
        ],
      ),
      ProductOption(
        name: "Color",
        variants: [
          ProductVariant(label: "White", price: 0),
          ProductVariant(label: "Black", price: 0),
          ProductVariant(label: "Red", price: 0),
        ],
      ),
    ],
  ),
  
  Product(
    id: 'p30',
    title: 'T-Shirt',
    description: 'Cotton T-shirt with multiple sizes',
    imageUrl: 'assets/images/t-shirt.jpg',
    categoryId: 'c2',
    options: [
      ProductOption(
        name: "Size",
        variants: [
          ProductVariant(label: "S", price: 14.99),
          ProductVariant(label: "M", price: 16.99),
          ProductVariant(label: "L", price: 18.99),
        ],
      ),
      ProductOption(
        name: "Color",
        variants: [
          ProductVariant(label: "White", price: 0),
          ProductVariant(label: "Black", price: 0),
          ProductVariant(label: "Red", price: 0),
        ],
      ),
    ],
  ),
  
  
];
