import 'package:flutter/material.dart';

class MenuModel {
  final IconData icon;
  final String title;
  final void Function()? onTap;

  const MenuModel({required this.icon, required this.title, this.onTap});
}
