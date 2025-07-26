import 'package:flutter/material.dart';
import '../models/expense.dart';
import '../models/income.dart';
import '../widgets/expense_tile.dart';
import '../widgets/income_tile.dart';
import '../screens/add_edit_income_screen.dart';
import '../screens/add_edit_expence_screen.dart';
import '../utils/constants.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Income> incomes = [];
  List<Expense> expenses = [];

  double get totalIncome => incomes.fold(0, (sum, item) => sum + item.amount);
  double get totalExpense => expenses.fold(0, (sum, item) => sum + item.amount);
  double get balance => totalIncome - totalExpense;

  void _addIncome(Income income) {
    setState(() {
      incomes.add(income);
    });
  }

  void _editIncome(Income income) {
    setState(() {
      final idx = incomes.indexWhere((e) => e.id == income.id);
      if (idx != -1) incomes[idx] = income;
    });
  }

  void _deleteIncome(String id) {
    setState(() {
      incomes.removeWhere((e) => e.id == id);
    });
  }

  void _addExpense(Expense expense) {
    setState(() {
      expenses.add(expense);
    });
  }

  void _editExpense(Expense expense) {
    setState(() {
      final idx = expenses.indexWhere((e) => e.id == expense.id);
      if (idx != -1) expenses[idx] = expense;
    });
  }

  void _deleteExpense(String id) {
    setState(() {
      expenses.removeWhere((e) => e.id == id);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Advanced Expense Calculator'),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Card(
            child: ListTile(
              title: const Text('Total Income'),
              trailing: Text(
                '₹${totalIncome.toStringAsFixed(2)}',
                style: TextStyle(color: Colors.green[700], fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Card(
            child: ListTile(
              title: const Text('Total Expenses'),
              trailing: Text(
                '₹${totalExpense.toStringAsFixed(2)}',
                style: TextStyle(color: Colors.red[700], fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Card(
            child: ListTile(
              title: const Text('Balance'),
              trailing: Text(
                '₹${balance.toStringAsFixed(2)}',
                style: TextStyle(color: Colors.blue[700], fontWeight: FontWeight.bold),
              ),
            ),
          ),
          const SizedBox(height: 20),
          Row(
            children: [
              Expanded(
                child: ElevatedButton.icon(
                  icon: const Icon(Icons.add),
                  label: const Text('Add Income'),
                  onPressed: () async {
                    final result = await Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => const AddEditIncomeScreen(),
                      ),
                    );
                    if (result is Income) _addIncome(result);
                  },
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: ElevatedButton.icon(
                  icon: const Icon(Icons.add),
                  label: const Text('Add Expense'),
                  onPressed: () async {
                    final result = await Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => AddEditExpenseScreen(categories: expenseCategories),
                      ),
                    );
                    if (result is Expense) _addExpense(result);
                  },
                ),
              ),
            ],
          ),
          const SizedBox(height: 24),
          const Text('Income', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          ...incomes.map((income) => Card(
            child: IncomeTile(
              income: income,
              onEdit: () async {
                final result = await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => AddEditIncomeScreen(income: income),
                  ),
                );
                if (result is Income) _editIncome(result);
              },
              onDelete: () => _deleteIncome(income.id),
            ),
          )),
          const SizedBox(height: 10),
          const Text('Expenses', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          ...expenses.map((expense) => Card(
            child: ExpenseTile(
              expense: expense,
              onEdit: () async {
                final result = await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => AddEditExpenseScreen(expense: expense, categories: expenseCategories),
                  ),
                );
                if (result is Expense) _editExpense(result);
              },
              onDelete: () => _deleteExpense(expense.id),
            ),
          )),
        ],
      ),
    );
  }
}