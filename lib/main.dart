import 'package:flutter/material.dart';
import 'Leanding_page.dart';
import 'Secure_screen.dart';
import 'screens/home_screen.dart';

void main() async {
  // WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp(
  //   options: DefaultFirebaseOptions.currentPlatform, // required for FlutterFire CLI
  // );
  runApp(ExpenseCalculatorApp());
}

class DefaultFirebaseOptions {
  static var currentPlatform;
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
        "/home":(context)=>HomeScreen()
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