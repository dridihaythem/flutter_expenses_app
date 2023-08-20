import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';

const Uuid uuid = Uuid();

enum Category { food, travel, work }

const CategoryIcons = {
  Category.food: Icons.fastfood,
  Category.travel: Icons.flight,
  Category.work: Icons.work,
};

class Expense {
  final String id;
  final Category category;
  final String title;
  final double amount;
  final DateTime date;

  Expense({
    required this.title,
    required this.category,
    required this.amount,
    required this.date,
  }) : id = uuid.v4();

  IconData get icon => CategoryIcons[category]!;

  String get formatedDate => '${date.day}/${date.month}/${date.year}';
}
