import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:intl/intl.dart';

String getDate() {
  final date = Timestamp.now();
  final dateStr = DateFormat("dd.MM.yyyy").format(date.toDate().toLocal());
  return dateStr;
}

int getTimestamp() {
  final date = Timestamp.now().toDate().toLocal();
  final timestamp = date.millisecondsSinceEpoch;
  return timestamp;
}

String convertTimestampToDate({required int timestamp}) {
  final date = Timestamp.fromMillisecondsSinceEpoch(timestamp);
  final dateStr = DateFormat("dd.MM.yyyy").format(date.toDate().toLocal());
  return dateStr;
}