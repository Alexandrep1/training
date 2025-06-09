import 'package:flutter/material.dart';
import 'package:training/src/models/about_model.dart';

class AboutController {
  AboutModel getAbout() {
    return AboutModel(
      photoUrl: '',
      product: [
        "Designed for competitive esports, the Zowie gaming mouse delivers exceptional precision and responsiveness.",
        "With its ergonomic shape, low latency, and plug-and-play simplicity.",
        "No drivers, no distractions — just pure aim.",
      ],
      socialLinks: [
        Link(
          name: "Zowie",
          url: "https://zowie.com.br",
          icon: Icons.mouse_outlined,
        ),
      ],
    );
  }
}
