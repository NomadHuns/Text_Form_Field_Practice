import 'package:flutter/material.dart';
import 'package:validators/validators.dart';

class TestPage extends StatefulWidget {
  const TestPage({Key? key}) : super(key: key);

  @override
  State<TestPage> createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  final _formKey = GlobalKey<FormState>();
  final _email = TextEditingController();
  bool nameInput = false;



  @override
  Widget build(BuildContext context) {
    _email.text = "초기값";
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          const SizedBox(height: 100),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              controller: _email,
              validator: (String? value) {
                if (value!.isEmpty) {
                  return "이메일은 공백이 들어갈 수 없습니다.";
                } else if (!isEmail(value)) {
                  return "이메일 형식에 맞지 않습니다.";
                } else {
                  return null;
                }
              },
              // 같이 사용할 수 없음.
              // initialValue: _email.text,
              decoration: InputDecoration(
                // enabledBorder: OutlineInputBorder(
                //   borderSide: BorderSide(
                //     color: Colors.black,
                //   ),
                // ),
              ),
            ),
          ),
        ],
      ),
    );
  }

}
