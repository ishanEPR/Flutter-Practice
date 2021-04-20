import 'package:flutter/material.dart';


class new_form extends StatefulWidget {
  @override
  _new_formState createState() => _new_formState();
}

class _new_formState extends State<new_form> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Form Data'),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.all(24.0),
          child: Column(
            children: [
              Container(
                color: Colors.orange,
                height: 300.0,
              ),
              Container(
                color: Colors.blue,
                height: 300.0,
              ),
              Container(
                color: Colors.black87,
                height: 300.0,
              ),

            ],
          ),

        ),
      ),
    );
  }
}

