import 'package:flutter/material.dart';


class new_form extends StatefulWidget {
  @override
  _new_formState createState() => _new_formState();
}

class _new_formState extends State<new_form> {
  final GlobalKey<FormState> form_key=GlobalKey<FormState>();
  String _name;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Form Data'),
      ),
      body: SingleChildScrollView(
        
        child: Form(
          key: form_key,
          child: Container(
            margin: const EdgeInsets.all(24.0),
            child: Column(
              children: [
              TextFormField(

                maxLength: 20,
                decoration: InputDecoration(
                  hintText: "Enter Name",
                ),
                validator: (text){
                  if(text.isEmpty){
                    return "Name can't empty";
                  }
                  return null;
                },
                onSaved: (text){
                  _name=text;

                },
              ),
                SizedBox(
                  height: 100.0,
                ),
                Container(
                  child: RaisedButton(
                    child: Text('Save'),
                    onPressed: (){
                      if(form_key.currentState.validate())
                        {
                          form_key.currentState.save();
                          print(_name);
                        }

                    },
                  ),
                ),

              ],
            ),

          ),
        ),
      ),
    );
  }
}

