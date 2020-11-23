import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  var text;
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Flickr app'),),
      body: Center(
        child: Container(
          height: 200,
          width: 300,
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                TextFormField(

                  decoration: const InputDecoration(
                    hintText: 'What do you like to find?',
                  ),
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Please enter some text for search';
                    }
                    return null;
                  },

                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  child: ElevatedButton(
                    onPressed: () {
                      // Validate will return true if the form is valid, or false if
                      // the form is invalid.
                      if (_formKey.currentState.validate()) {
                        // Process data.
                      }
                    },
                    child: Text('Submit'),
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
