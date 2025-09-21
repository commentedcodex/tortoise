import 'package:tortoise_assignment/common/constants/image_paths.dart';
import 'package:tortoise_assignment/product_catalog/model/brand.dart';
import 'package:tortoise_assignment/product_catalog/model/device.dart';
import 'package:tortoise_assignment/product_details/models/product.dart';
import 'package:tortoise_assignment/product_details/models/product_color.dart';
import 'package:tortoise_assignment/product_details/models/product_specifications.dart';

final List<Brand> mockBrands = [
  Brand(id: 1, image: ImagePaths.appleLogo, name: 'Apple'),
  Brand(id: 2, image: ImagePaths.googleLogo, name: 'Google'),
  Brand(id: 3, image: ImagePaths.samsungLogo, name: 'Samsung'),
  Brand(id: 4, image: ImagePaths.oneplusLogo, name: 'OnePlus'),
];

final List<Device> mockDevices = [
  Device(id: 101, name: 'iPhone 16', image: ImagePaths.iphone16, brandId: 1),
  Device(
    id: 102,
    name: 'iPhone 16 Plus',
    image: ImagePaths.iphone16Plus,
    brandId: 1,
  ),
  Device(
    id: 103,
    name: 'iPhone 16 Pro',
    image: ImagePaths.iphone16Pro,
    brandId: 1,
  ),
  Device(
    id: 104,
    name: 'iPhone 16 Pro Max',
    image: ImagePaths.iphone16ProMax,
    brandId: 1,
  ),
  Device(
    id: 105,
    name: 'MacBook Pro',
    image: ImagePaths.macbookPro,
    brandId: 1,
  ),
  Device(id: 106, name: 'iPad Pro', image: ImagePaths.ipadPro, brandId: 1),
  Device(id: 107, name: 'iPhone 15', image: ImagePaths.iphone15, brandId: 1),
  Device(
    id: 108,
    name: 'iPhone 15 Plus',
    image: ImagePaths.iphone15Plus,
    brandId: 1,
  ),
  Device(
    id: 109,
    name: 'MacBook Air',
    image: ImagePaths.macbookPro,
    brandId: 1,
  ),
  Device(
    id: 110,
    name: 'MacBook Pro M3',
    image: ImagePaths.macbookPro,
    brandId: 1,
  ),
  Device(id: 111, name: 'iPad Air', image: ImagePaths.ipadPro, brandId: 1),
  Device(id: 112, name: 'iPad Mini', image: ImagePaths.ipadPro, brandId: 1),
  Device(id: 201, name: 'Pixel 8', image: ImagePaths.ipadPro, brandId: 2),
  Device(id: 202, name: 'Pixel 8 Pro', image: ImagePaths.iphone15, brandId: 2),
  Device(id: 301, name: 'Galaxy S24', image: ImagePaths.iphone15, brandId: 3),
  Device(
    id: 302,
    name: 'Galaxy S24 Ultra',
    image: ImagePaths.iphone15,
    brandId: 3,
  ),
  Device(id: 401, name: 'OnePlus 12', image: ImagePaths.iphone15, brandId: 4),
  Device(id: 402, name: 'OnePlus 12R', image: ImagePaths.iphone15, brandId: 4),
];

final mockProducts = [
  Product(
    id: 1,
    name: 'iPhone 17 Pro',
    brand: 'Apple',
    imageUrl: ImagePaths.iphone17ProHeroImage,
    price: 138963,
    effectivePrice: 92483,
    monthlyDeduction: 18900,
    taxSlab: 30,
    impactMonthlyInHand: 7706,
    colors: [
      ProductColor(id: 1, name: 'Cosmic Orange', colorCode: '#F77E31'),
      ProductColor(id: 2, name: 'Silver', colorCode: '#E7E7E7'),
      ProductColor(id: 3, name: 'Deep Blue', colorCode: '#3E4B77'),
    ],
    shippingDetails: 'Shipping will begin in 3-4 weeks',
    storageOptions: ['128 GB', '256 GB', '512 GB', '1 TB'],
    specifications: ProductSpecifications(
      screenSize: '6.3 inches',
      camera: 'Rear facing: 48 MP',
      storage: '512 GB',
      ram: '8 GB',
      battery: 'Up to 27 hours video playback',
      connectivity: '5G',
      processor: 'A18 Pro chip with 6-core CPU',
      operatingSystem: 'iOS 18',
      displayType: 'Super Retina XDR OLED',
      refreshRate: '120Hz ProMotion',
      frontCamera: '12 MP TrueDepth',
      videoRecording: '4K ProRes at 60 fps',
      chargingSpeed: '27W fast charging',
      wirelessCharging: '15W MagSafe wireless',
      waterResistance: 'IP68 (6m for 30 min)',
      biometrics: 'Face ID',
      colors: 'Natural Titanium, Blue Titanium, White Titanium, Black Titanium',
      weight: '199 grams',
      dimensions: '159.9 × 76.7 × 8.25 mm',
    ),
  ),
];
