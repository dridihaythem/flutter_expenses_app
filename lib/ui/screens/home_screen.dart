import 'package:flutter/material.dart';
import 'package:flutter_application_5/data/expenses.dart';
import 'package:flutter_application_5/data/model/expsense.dart';
import 'package:flutter_application_5/themes/app_theme.dart';
import 'package:flutter_application_5/themes/dark_theme.dart';
import 'package:flutter_application_5/ui/widgets/add_expense.dart';
import 'package:flutter_application_5/ui/widgets/expense_item.dart';
import 'package:flutter_application_5/ui/widgets/no_expenses.dart';

class HomeScreen extends StatefulWidget {
  final Function changeTheme;
  const HomeScreen({required this.changeTheme, super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  void _openExpenseOverlay() {
    showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      builder: (context) => AddExpense(addExpense),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(0),
        ),
      ),
    );
  }

  void addExpense(Expense expense) {
    setState(() {
      expenses.add(expense);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Expenses'),
        actions: [
          IconButton(
            onPressed: () {
              _openExpenseOverlay();
            },
            icon: const Icon(
              Icons.add,
            ),
          ),
          IconButton(
            onPressed: () {
              widget.changeTheme();
            },
            icon: AppTheme.theme is DarkTheme
                ? const Icon(
                    Icons.wb_sunny,
                    color: Colors.white,
                  )
                : const Icon(
                    Icons.nightlight_round,
                    color: Colors.white,
                  ),
          )
        ],
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            if (expenses.isEmpty)
              const NoExpenses()
            else
              ListView.builder(
                shrinkWrap: true,
                itemCount: expenses.length,
                itemBuilder: (context, index) => ExpenseItem(
                  expense: expenses[index],
                  onDismissed: () {
                    Expense expense = expenses[index];
                    setState(() {
                      expenses.removeAt(index);
                    });
                    ScaffoldMessenger.of(context).clearSnackBars();
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        showCloseIcon: true,
                        margin: const EdgeInsets.all(10),
                        action: SnackBarAction(
                          label: 'Undo',
                          onPressed: () {
                            setState(() {
                              expenses.insert(index, expense);
                            });
                          },
                        ),
                        content: const Text(
                          'expense deleted',
                        ),
                      ),
                    );
                  },
                ),
              )
          ],
        ),
      ),
    );
  }
}
