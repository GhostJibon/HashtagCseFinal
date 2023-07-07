import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AskQuestion extends StatefulWidget {
  const AskQuestion({super.key});

  @override
  State<AskQuestion> createState() => _AskQuestionState();
}

class _AskQuestionState extends State<AskQuestion> {
  String postText = '';
  void _updatePostText(String newText) {
    setState(() {
      postText = newText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 2, 39, 70),
        title: Text(
          'Post Text',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            TextField(
              maxLines: 20, // <-- SEE HERE
              minLines: 1,
              onChanged: _updatePostText,
              decoration: InputDecoration(
                labelText: 'Enter your questions',
              ),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStatePropertyAll<Color>(Colors.black),
              ),
              onPressed: () {
                // Perform post operation here
                print('Posted: $postText');
              },
              child: Text('Post'),
            ),
            SizedBox(height: 16.0),
            // Text(
            //   'Your post: $postText',
            //   style: TextStyle(fontSize: 18.0),
            // ),
          ],
        ),
      ),
    );
  }
}
