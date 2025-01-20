import 'package:flutter/material.dart';

class MyFeedbackForm extends StatefulWidget {
  const MyFeedbackForm({super.key, required String title});

  @override
  State<MyFeedbackForm> createState() => _MyFeedbackFormState();
}

class _MyFeedbackFormState extends State<MyFeedbackForm> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _commentsController = TextEditingController();
  String _selectedCategory = 'General';
  bool _consentGiven = false;

  final List<String> _categories = [
    'General',
    'Bug Report',
    'Feature Request',
    'Other'
  ];

  void _submitForm() {
    if (_formKey.currentState!.validate() && _consentGiven) {
      final name = _nameController.text;
      final comments = _commentsController.text;
      final category = _selectedCategory;

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Thank you, $name!\nCategory: $category\nComments: $comments'),
        ),
      );

      _formKey.currentState!.reset();
      _nameController.clear();
      _commentsController.clear();
      setState(() {
        _selectedCategory = 'General';
        _consentGiven = false;
      });
    } else if (!_consentGiven) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Please agree to the terms.')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Feedback Form')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              TextFormField(
                controller: _nameController,
                decoration: const InputDecoration(
                  labelText: 'Name',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your name.';
                  }
                  return null;
                },
              ),
              SizedBox(height: 16.0),
              DropdownButtonFormField<String>(
                value: _selectedCategory,
                decoration: const InputDecoration(
                  labelText: 'Category',
                  border: OutlineInputBorder(),
                ),
                items: _categories.map((String category) {
                  return DropdownMenuItem<String>(
                    value: category,
                    child: Text(category),
                  );
                }).toList(),
                onChanged: (value) {
                  setState(() {
                    _selectedCategory = value!;
                  });
                },
              ),
              SizedBox(height: 16.0),
              TextFormField(
                controller: _commentsController,
                decoration: const InputDecoration(
                  labelText: 'Comments',
                  border: OutlineInputBorder(),
                ),
                maxLines: 5,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your comments.';
                  }
                  return null;
                },
              ),
              SizedBox(height: 16.0),
              Row(
                children: [
                  Checkbox(
                    value: _consentGiven,
                    onChanged: (value) {
                      setState(() {
                        _consentGiven = value!;
                      });
                    },
                  ),
                  Expanded(
                    child: Text('I agree to the terms and conditions.'),
                  ),
                ],
              ),
              SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: _submitForm,
                child: const Text('Submit'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
