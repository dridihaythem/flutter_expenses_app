import 'package:flutter_application_5/data/model/expsense.dart';

final List<Expense> expenses = [
  Expense(
    title: 'Flutter Course',
    category: Category.work,
    amount: 19.99,
    date: DateTime.now(),
  ),
  Expense(
    title: 'Pizza',
    category: Category.food,
    amount: 2.99,
    date: DateTime.now(),
  ),
  Expense(
    title: 'Angular Course',
    category: Category.work,
    amount: 19.99,
    date: DateTime.now(),
  )
];
