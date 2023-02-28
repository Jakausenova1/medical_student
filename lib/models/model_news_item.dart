
import 'package:cloud_firestore/cloud_firestore.dart';


class ModelNews {
  final String? uid;
  final String? name;
  final String? email;
  final String? title;
  final String? contentText;
  final String? category;
  final String? date;
  final int? timestamp;
  final List<String> images;
  final bool? visible;
  final int? like;

  ModelNews({
    required this.uid,
    required this.name,
    required this.email,
    required this.title,
    required this.contentText,
    required this.category,
    this.date,
    this.timestamp,
    required this.images,
    required this.visible,
    required this.like,
  });

  factory ModelNews.fromFirestore(
      {required DocumentSnapshot<Map<String, dynamic>> snapshot,
      SnapshotOptions? options}) {
    final data = snapshot.data();
    return ModelNews(
      uid: data?['uid'],
      name: data?['name'],
      email: data?['email'],
      title: data?['title'],
      contentText: data?['contentText'],
      category: data?['category'],
      date: data?['date'],
      timestamp: data?['timestamp'],
      images: data?['images'],
      visible: data?['visible'],
      like: data?['like'],
    );
  }

  Map<String, dynamic> toFirestore() {
    return {
      if (uid != null) 'uid': uid,
      if (name != null) 'name': name,
      if (email != null) 'email': email,
      if (title != null) 'title': title,
      if (contentText != null) 'contentText': contentText,
      if (category != null) 'category': category,
      if (date != null) 'date': date,
      if (timestamp != null) 'timestamp': timestamp,
       'images': images,
      if (visible != null) 'visible': visible,
      if (like != null) 'like': like,
    };
  }
}
