import 'package:admin/screens/inner_screen/orders/orders_screen.dart';
import 'package:admin/screens/search_screen.dart';
import 'package:flutter/material.dart';

import '../screens/edit_upload_product_form.dart';


class DashboardButtonsModel {
  final String text, imagePath;
  final Function onPressed;

  DashboardButtonsModel({
    required this.text,
    required this.imagePath,
    required this.onPressed,
  });

  static List<DashboardButtonsModel> dashboardBtnList(context) => [
        DashboardButtonsModel(
          text: "Add a new product",
          imagePath: 'lib/icons/notification-svgrepo-com.svg',
          onPressed: () {
            Navigator.pushNamed(context, EditOrUploadProductScreen.routeName);
          },
        ),
        DashboardButtonsModel(
          text: "inspect all products",
          imagePath: 'lib/icons/womans-clothes-svgrepo-com.svg',
          onPressed: () {
            Navigator.pushNamed(context, SearchScreen.routeName);
          },
        ),
        DashboardButtonsModel(
          text: "View Orders",
          imagePath: 'lib/icons/delivery-logistics-shipping-svgrepo-com.svg',
          onPressed: () {
            Navigator.pushNamed(context, OrdersScreenFree.routeName);
          },
        ),
      ];
}
