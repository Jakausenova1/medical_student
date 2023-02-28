
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:odnajdyvkgma/core/theme/app_colors.dart';
import 'package:odnajdyvkgma/util/date_util.dart';

class ModelCardSlider {
  final String? imageLogo;
  final String deadlineText;
  final String title;
  final String contentText;
  final String category;
  final String? date;
  final int? timestamp;
  final Color textColor;
  final bool? visible;
  final int? filter;
  final LinearGradient? gradientBackground;
  final String? imageBackground;
  final Color? colorBackground;

  ModelCardSlider({
    this.imageLogo,
    required this.deadlineText,
    required this.title,
    required this.contentText,
    required this.category,
    this.date,
    this.timestamp,
    this.textColor = AppColors.white,
    this.visible = false,
    this.filter,
    this.gradientBackground,
    this.imageBackground,
    this.colorBackground = AppColors.liberty,
  });

  factory ModelCardSlider.fromFirestore(
      {required DocumentSnapshot<Map<String, dynamic>> snapshot,
      SnapshotOptions? options}) {
    final data = snapshot.data();
    return ModelCardSlider(
      imageLogo: data?['image_logo'],
      deadlineText: data?['deadline_text'],
      title: data?['title'],
      contentText: data?['content_text'],
      category: data?['category'],
      date: data?['date'],
      timestamp: data?['timestamp'],
      textColor: data?['text_color'],
      visible: data?['visible'],
      filter: data?['filter'],
      gradientBackground: data?['gradient_background'],
      imageBackground: data?['image_background'],
      colorBackground: data?['color_background'],
    );
  }

  Map<String, dynamic> toFirestore() {
    return {
      if (imageLogo != null) 'image_logo': imageLogo,
      'deadline_text': deadlineText,
      'title': title,
      'content_text': contentText,
      'category': category,
      if (date != null) 'date': getDate(),
      if (timestamp != null) 'timestamp': getTimestamp(),
      'text_color': textColor,
      if (visible != null) 'visible': visible,
      if (filter != null) 'filter': filter,
      if (gradientBackground != null) 'gradient_background': gradientBackground,
      if (imageBackground != null) 'image_background': imageBackground,
      if (colorBackground != null) 'color_background': colorBackground,
    };
  }
}
