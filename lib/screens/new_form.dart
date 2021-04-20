import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class new_form extends StatefulWidget {
  @override
  _new_formState createState() => _new_formState();
}

class _new_formState extends State<new_form> {
  final GlobalKey<FormState> form_key=GlobalKey<FormState>();
  String _name;
  String _email;
  String _password;

  int _number;
  Widget _buildedNamefunction(){
    return  TextFormField(

      maxLength: 20,
      decoration: InputDecoration(
        labelText: "Name",
        hintText: "Enter Your Name",
      ),
      validator: (text){

        return HelperValidate.nameValidate(text);
      },
      onSaved: (value){
        _name=value;

      },
    );
  }

  Widget _buildEmailField(){
    return TextFormField(
      maxLength: 20,
      validator: (text){
        if(text.isEmpty){
          return 'Please enter a valid email';
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: "Email",
        hintText: "Enter Your Email",
      ),
      onSaved: (value){
        _email=value;
      },
    );
  }
Widget _buildPasswordField(){
    return TextFormField(
      maxLength: 20,
      obscureText: true,
      validator:(text){
        if(text.isEmpty){
          return 'Please Enter Password';

        }
        return null;
      },
      decoration: InputDecoration(
        labelText: 'Password',
        hintText: "Enter Your Password",
      ),
      onSaved: (value){
        _password=value;
      },
    );
}

Widget _buildNumberFiled(){
    return TextFormField(
      maxLength: 10,
      validator:(text){
        if(text.isEmpty){
          return 'Please enter a phone number';
        }
        if(text.length<10){
          return ' Phone number should be 10 numbers';
        }
        return null;

      },
      decoration: InputDecoration(
        labelText: 'Phone Number',
        hintText: 'Please Enter Phone number',
      ),
      onSaved: (value){
        _number=value as int;}
    );
}

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
                Padding(
                  padding:const EdgeInsets.all(8.0) ,
                  child: _buildedNamefunction(),
                ),
                Padding(padding:const EdgeInsets.all(8.0),
                child: _buildEmailField(),),
                Padding(padding: const EdgeInsets.all(8.0),
                child: _buildPasswordField(),),
                Padding(padding: EdgeInsets.all(8.0),
                child: _buildNumberFiled(),),


                SizedBox(
                  height: 100.0,
                ),
                Container(
                  child: RaisedButton(
                    child: Text('Save'),
                    onPressed: (){
                      if(form_key.currentState.validate())
                        {
                          print("Valid form");
                          form_key.currentState.save();

                        }else{
                        print("Not Valid Form");

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
class HelperValidate{
  static String nameValidate(String value){
    if(value.isEmpty){
      return "Name Can't Empty";
    }
    if(value.length<2){
      return "String must be two characters";
    }

return null;
  }
}

