import 'package:flutter/material.dart';
import 'widgets/number_grid.dart';
import 'widgets/rule_dropdown.dart';

class NumberGridScreen extends StatefulWidget {
  @override
  _NumberGridScreenState createState() => _NumberGridScreenState();
}

class _NumberGridScreenState extends State<NumberGridScreen> {
  final List<int> numbers = List.generate(100, (index) => index + 1); // Numbers 1 to 100
  String selectedRule = 'Odd Numbers'; // Default rule

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple.shade300,
      appBar: AppBar(

        title: Text('Number Grid',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
        centerTitle: true,
        backgroundColor: Colors.deepPurple.shade300,
        elevation: 0,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: RuleDropdown(
              selectedRule: selectedRule,
              onRuleChanged: (newRule) {
                setState(() {
                  selectedRule = newRule;
                });
              },
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: NumberGrid(
                numbers: numbers,
                selectedRule: selectedRule,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
