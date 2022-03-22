import 'package:flutter/material.dart';

class RoomModel {
  final String? name;
  final double? pricePerHour;
  final String? description;
  final List<String>? images;
  final List<Map<String,dynamic>>? times;

  RoomModel({
    @required this.name,
    @required this.pricePerHour,
    @required this.description,
    @required this.images,
    @required this.times,
  });

}