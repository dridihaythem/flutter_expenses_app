import 'package:flutter/material.dart';
import 'package:flutter_application_5/data/model/expsense.dart';

class ExpenseItem extends StatelessWidget {
  final Expense expense;
  final Function onDismissed;
  const ExpenseItem({
    required this.expense,
    required this.onDismissed,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      background: Container(
        alignment: Alignment.centerRight,
        padding: const EdgeInsets.all(16),
        color: Theme.of(context).colorScheme.error,
        child: const Icon(
          Icons.delete,
          color: Colors.white,
        ),
      ),
      key: ValueKey(expense.id),
      onDismissed: (direction) {
        onDismissed();
      },
      child: Card(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 16,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                expense.title,
                style: Theme.of(context).textTheme.titleMedium,
              ),
              const SizedBox(
                height: 7,
              ),
              Row(
                children: [
                  Text(
                    '\$${expense.amount.toStringAsFixed(2)}',
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                  const Spacer(),
                  Row(
                    children: [
                      Icon(
                        expense.icon,
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                      Text(
                        expense.formatedDate,
                        style: Theme.of(context).textTheme.titleSmall,
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
