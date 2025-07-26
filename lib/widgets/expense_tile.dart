import 'package:flutter/material.dart';
import '../models/expense.dart';

class ExpenseTile extends StatelessWidget {
  final Expense expense;
  final VoidCallback? onEdit;
  final VoidCallback? onDelete;

  const ExpenseTile({
    super.key,
    required this.expense,
    this.onEdit,
    this.onDelete,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const Icon(Icons.money_off, color: Colors.red),
      title: Text(expense.title),
      subtitle: Text('${expense.category}  |  ${expense.date.toLocal()}'.split(' ')[0]),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text('₹${expense.amount.toStringAsFixed(2)}', style: const TextStyle(color: Colors.red)),
          IconButton(
            icon: const Icon(Icons.edit, color: Colors.blue),
            onPressed: onEdit,
          ),
          IconButton(
            icon: const Icon(Icons.delete, color: Colors.red),
            onPressed: onDelete,
          ),
        ],
      ),
    );
  }
}