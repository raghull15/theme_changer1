import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/nav_model.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final nav = context.watch<NavModel>();

    return GestureDetector(
      onTap: () => nav.clear(),
      child: Scaffold(
        backgroundColor: Colors.purpleAccent,
        appBar: AppBar(title: Text('Home')),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (nav.message.isNotEmpty)
                Container(
                  margin: EdgeInsets.only(bottom: 20),
                  padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Colors.deepOrange,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Text(
                    nav.message,
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                ),
              ElevatedButton(
                onPressed: () => nav.navigate(context),
                child: Text('Go to Next Page'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
