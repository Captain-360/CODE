import 'package:flutter/material.dart';
import '../models/income.dart';

class IncomeTile extends StatelessWidget {
  final Income income;
  final VoidCallback? onEdit;
  final VoidCallback? onDelete;

  const IncomeTile({
    super.key,
    required this.income,
    this.onEdit,
    this.onDelete,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const Icon(Icons.monetization_on, color: Colors.green),
      title: Text(income.title),
      subtitle: Text('${income.date.toLocal()}'.split(' ')[0]),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text('₹${income.amount.toStringAsFixed(2)}', style: const TextStyle(color: Colors.green)),
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