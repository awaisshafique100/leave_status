import 'package:flutter/material.dart';

void main() {
  runApp(const LeaveManagementApp());
}

class LeaveManagementApp extends StatefulWidget {
  const LeaveManagementApp({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _LeaveManagementAppState createState() => _LeaveManagementAppState();
}

class _LeaveManagementAppState extends State<LeaveManagementApp> {
  final int _remainingLeaves = 15; // initial number of leaves
  final bool _isOnLeave =
      false; // whether the employee is currently on leave or not
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Leave Management'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Remaining leaves: $_remainingLeaves'),
            const SizedBox(height: 20),
            Text('On leave: ${_isOnLeave ? 'Yes' : 'No'}'),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
