import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'Leanding_page.dart';
import 'Secure_screen.dart';
import 'screens/home_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(ExpenseCalculatorApp());
}
class ExpenseCalculatorApp extends StatelessWidget {
  const ExpenseCalculatorApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Advanced Expense Calculator',
      theme: ThemeData(
        primarySwatch: Colors.green,
        useMaterial3: true,
      ),
      initialRoute: "/",
      routes: {
        "/":(context)=>FinanceIntroScreen(),
        "/login":(context)=>LoginScreen(),
      },
    );
  }
}

/*lib/
main.dart
models/
 expense.dart
 income.dart
screens/
 home_screen.dart
 add_edit_income_screen.dart
 add_edit_expence_screen.dart
widgets/
 income_tile.dart
 expense_tile.dart
utils/
 constants.dart*/