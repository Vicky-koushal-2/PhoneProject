import 'package:flutter/material.dart';
import 'package:liveasyphonetask/phoneaunthi.dart';
// Make sure to import the phone authentication screen

class LanguageSelectionPage extends StatefulWidget {
  @override
  _LanguageSelectionPageState createState() => _LanguageSelectionPageState();
}

class _LanguageSelectionPageState extends State<LanguageSelectionPage> {
  String _selectedLanguage = 'English'; // Default language

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Select Your Language'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Please select your language',
              style: TextStyle(fontSize: 20.0),
            ),
            SizedBox(height: 20.0),
            DropdownButton<String>(
              value: _selectedLanguage,
              onChanged: (String? newValue) {
                setState(() {
                  _selectedLanguage = newValue!;
                });
              },
              items: <String>['English', 'Spanish', 'French', 'German']
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
            SizedBox(height: 20.0),
            Text(
              'You can change the language at any time.',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 40.0),
            ElevatedButton(
              onPressed: () {
                // Navigate to the Phone Authentication screen
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PhoneAuthScreen(),),
                );
              },
              child: Text('Next'),
            ),
          ],
        ),
      ),
    );
  }
}
