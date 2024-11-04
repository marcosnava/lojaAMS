// main.dart
import 'package:flutter/material.dart';
import 'package:loja/models/product_list.dart';
import 'package:loja/pages/product_detail_page.dart';
import 'package:loja/pages/product_overview_page.dart';
import 'package:loja/utils/app_routes.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => ProductList(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSwatch().copyWith(
            primary: Colors.purple,
            secondary: Colors.deepOrange,
          ),
          fontFamily: 'Lato',
        ),
        home: ProductOverviewPage(),
        routes: {AppRoutes.productDetail: (ctx) => const ProductDetailPage()},
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
