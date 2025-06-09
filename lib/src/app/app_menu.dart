import 'package:flutter/material.dart';
import 'package:training/src/models/about_model.dart';
import 'package:training/src/models/menu_model.dart';
import 'package:training/src/views/aboutMouse.dart';
import 'package:training/src/views/home_view.dart';

final List<MenuModel> appMenuItems = [
  MenuModel(
    title: "Home",
    icon: Icons.home,
    route: "/home",
    page: const HomeView(),
  ),
];