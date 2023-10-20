import 'package:flutter/material.dart';

class Date extends StatefulWidget {
  const Date({super.key});
  @override
  State<Date> createState() => _DateState();
}

class _DateState extends State<Date> {
  final TextEditingController _datecontroller = TextEditingController();
  String _inputText = '';
  //final TextEditingController _namecontroller = TextEditingController();
  DateTime date = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'welcome',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.all(30),
              child: TextField(
                //controller: _namecontroller,
                decoration: const InputDecoration(
                  labelText: 'Enter you name',
                  prefixIcon: Icon(Icons.cake),
                  enabledBorder:
                      OutlineInputBorder(borderSide: BorderSide.none),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.cyanAccent),
                  ),
                ),
                onChanged: (value){
                  setState(() {
                    _inputText =value;
                  });
                },
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(30),
              child: TextField(
                controller: _datecontroller,
                decoration: const InputDecoration(
                  labelText: 'Date',
                  filled: true,
                  prefixIcon: Icon(Icons.calendar_today),
                  enabledBorder:
                      OutlineInputBorder(borderSide: BorderSide.none),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue),
                  ),
                ),
                readOnly: true,
                onTap: () {
                  _selectDate();
                },
              ),
            ),
          ),
          //ElevatedButton
            TextButton(
            onPressed: () async {
              await showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0)),
                      backgroundColor: Colors.pinkAccent,
                      content: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text('$_inputText'),
                          //Text('$_picked'),
                        ],
                      ),
                    );
                  });
            },
            child: const Text('Submit'),
          ),
        ],
      ),
    );
  }

  Future<void> _selectDate() async {
    DateTime? _picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2025),
    );
    if (_picked != null) {
      setState(() {
        //date = _picked;
        _datecontroller.text = _picked.toString().split(" ")[0];
      });
    }
  }
}
