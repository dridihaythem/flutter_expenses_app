import 'package:flutter/material.dart';

class NoExpenses extends StatelessWidget {
  const NoExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.menu,
              size: 100,
              color: Theme.of(context).colorScheme.onPrimaryContainer,
            ),
            Text(
              'No expenses added yet',
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ],
        ),
      ),
    );
  }
}
