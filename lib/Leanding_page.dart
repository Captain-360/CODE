import 'package:flutter/material.dart';

class FinanceIntroScreen extends StatefulWidget {
  @override
  State<FinanceIntroScreen> createState() => _FinanceIntroScreenState();
}

class _FinanceIntroScreenState extends State<FinanceIntroScreen> {
  @override
  Widget build(BuildContext context) {
    // Colors
    final Color bankColor = Color(0xFF3B6CCA);
    final Color cardColor = Color(0xFF55C2A4);
    final Color cashColor = Color(0xFFD6D6D6);
    final Color cryptoColor = Color(0xFFF8C24E);

    return Scaffold(
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            return SingleChildScrollView(
              child: Center(
                child: ConstrainedBox(
                  constraints: BoxConstraints(
                    minHeight: constraints.maxHeight,
                  ),
                  child: IntrinsicHeight(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // Top illustration
                        Padding(
                          padding: const EdgeInsets.only(top: 32.0),
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              // Blue circle background
                              Container(
                                width: 160,
                                height: 160,
                                decoration: BoxDecoration(
                                  color: Color(0xFFE6F3FF),
                                  shape: BoxShape.circle,
                                ),
                              ),
                              // Dashed border (approximate with dotted decoration)
                              Container(
                                width: 200,
                                height: 200,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(16),
                                  border: Border.all(
                                    color: Color(0xFFB6DAF6),
                                    width: 2,
                                    style: BorderStyle.solid,
                                  ),
                                ),
                                child: GridView.count(
                                  crossAxisCount: 2,
                                  padding: const EdgeInsets.all(16),
                                  physics: NeverScrollableScrollPhysics(),
                                  shrinkWrap: true,
                                  children: [
                                    _iconBox(
                                      Icons.account_balance,
                                      bankColor,
                                      "BANK",
                                    ),
                                    _iconBox(
                                      Icons.credit_card,
                                      cardColor,
                                      "",
                                    ),
                                    _iconBox(
                                      Icons.money,
                                      cashColor,
                                      "",
                                    ),
                                    _iconBox(
                                      Icons.currency_bitcoin,
                                      cryptoColor,
                                      "",
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 32),
                        // Title
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16.0),
                          child: Text(
                            "Your Finances in One Place",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        SizedBox(height: 16),
                        // Subtitle
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 32.0),
                          child: Text(
                            "Get the big picture on all your money. Connect your bank, track cash, or import data.",
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.grey[700],
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        SizedBox(height: 32),
                        // Progress dots
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            _dot(true),
                            _dot(false),
                          ],
                        ),
                        Spacer(),
                        // Start Now button
                        Padding(
                          padding: const EdgeInsets.only(bottom: 32.0),
                          child: SizedBox(
                            width: 160,
                            child: OutlinedButton(
                              style: OutlinedButton.styleFrom(
                                side: BorderSide(color: Color(0xFF3B6CCA)),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(6),
                                ),
                              ),
                              onPressed: () {
                                Navigator.pushNamed(context, "/login");
                              },
                              child: Text(
                                "START NOW",
                                style: TextStyle(
                                  color: Color(0xFF3B6CCA),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  Widget _iconBox(IconData icon, Color color, String label) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.all(4),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
          child: label.isNotEmpty
              ? Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon, color: Colors.white, size: 28),
              SizedBox(height: 2),
              Text(
                label,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 11,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          )
              : Icon(icon, color: Colors.white, size: 32),
        ),
      ),
    );
  }

  Widget _dot(bool active) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 4),
      width: 10,
      height: 10,
      decoration: BoxDecoration(
        color: active ? Color(0xFF3B6CCA) : Color(0xFFE6E6E6),
        shape: BoxShape.circle,
      ),
    );
  }
}