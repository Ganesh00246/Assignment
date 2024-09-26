import 'package:flutter/material.dart';

class RuleDropdown extends StatelessWidget {
  final String selectedRule;
  final Function(String) onRuleChanged;

  RuleDropdown({required this.selectedRule, required this.onRuleChanged});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 6,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
          value: selectedRule,
          style: TextStyle(fontSize: 18, color: Colors.black),
          items: [
            DropdownMenuItem(value: 'Odd Numbers', child: Text('Odd Numbers')),
            DropdownMenuItem(value: 'Even Numbers', child: Text('Even Numbers')),
            DropdownMenuItem(value: 'Prime Numbers', child: Text('Prime Numbers')),
            DropdownMenuItem(value: 'Fibonacci Sequence', child: Text('Fibonacci Sequence')),
          ],
          onChanged: (value) {
            onRuleChanged(value!);
          },
          icon: Icon(Icons.arrow_drop_down, color: Colors.teal),
        ),
      ),
    );
  }
}
