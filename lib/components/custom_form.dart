import 'package:flutter/material.dart';
import 'package:state_management/components/custom_text_form_field.dart';
import 'package:state_management/size.dart';

class CustomForm extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          CustomTextFormField(text: "Login"),
          SizedBox(height: medium_gap),
          CustomTextFormField(text: "Password"),
          SizedBox(height: large_gap),
          TextButton(
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                Navigator.pushNamed(context, "/catalog");
              }
            },
            child: Text("Enter"),
          ),
        ],
      ),
    );
  }
}
