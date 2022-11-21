import 'package:bitsdojo_window/bitsdojo_window.dart';
import 'package:flutter/material.dart';
import 'package:go_project/design/app_colors.dart';
import 'package:go_project/design/app_theme_data.dart';
import 'package:go_project/services/base_service.dart';
import 'package:go_project/services/brand_service.dart';
import 'package:go_project/states/states.dart';
import 'package:go_project/views/home.dart';
import 'package:provider/provider.dart';

import 'models/brand.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  BaseService.initParse();

  runApp(
    ChangeNotifierProvider<States>(
      create: (BuildContext context) => States(),
      child: const MyApp(),
    ),
  );
  doWhenWindowReady(() {
    final win = appWindow;
    const initialSize = Size(1210, 700);
    win.minSize = initialSize;
    win.size = initialSize;
    win.alignment = Alignment.center;
    win.title = "Go Project";
    win.show();
  });
}

const borderColor = AppColors.primary90;

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Distribution distribution = Distribution(
    //   name: "Distribution 1",
    //   logo: "distribution_1_logo.png",
    //   address: "Distribution 1 Address",
    //   branch: "Distribution 1 Branch",
    //   phoneNumber: "Distribution 1 Phone Number",
    // );

    /*Brand brand = Brand(
      name: "Brand 4",
      logo: "brand_4_logo.png",
      address: "brand 4 address",
      branch: "Brand 4 Branch",
      phoneNumber: "Brand 4 Phone Number",
    );*/

    // Product product = Product(
    //   name: "Product 1",
    //   barcode: "Product 1 Barcode",
    //   image: "product_1_image.png",
    //   price: 0.0,
    // );

    // DiscountCode discountCode = DiscountCode(
    //   discountCode: "Discount Code 1",
    //   discountAmount: 0.0,
    // );

    /*Customer customer = Customer(
      firstName: "Customer 4 First Name",
      lastName: "Customer 4 Last Name",
      phoneNumber: "Customer 4 Phone Number",
      verificationCode: "Customer 4 Verification Code",
    );*/

    // DistributionService.addDistribution(distribution);
    // BrandService.addBrand(brand);
    // ProductService.addProduct(product, "JcJtckyJAN");
    // DiscountCodeService.addDiscountCode(discountCode, "JcJtckyJAN", "xQTfWWVo2C");
    // CustomerService.addCustomer(customer);

    return MaterialApp(
      title: "Go Project",
      debugShowCheckedModeBanner: false,
      theme: AppThemeData.lightTheme(context),
      home: const HomeScreen(),
    );
  }
}
