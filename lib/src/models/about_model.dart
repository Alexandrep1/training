import 'package:flutter/material.dart';

class AboutModel {
  final String photoUrl;
  final List<String> product;
  final List<Link> socialLinks;

  AboutModel({
    required this.photoUrl,
    required this.product,
    required this.socialLinks,
  });
}

class Link {
  final String name;
  final IconData icon;
  final String url;

  Link({required this.name, required this.icon, required this.url});
}
