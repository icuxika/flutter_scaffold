import 'package:flutter/material.dart';
import 'package:flutter_scaffold/src/common/constant.dart';
import 'package:flutter_scaffold/src/util/storage.dart';

import '../sample_feature/sample_item_list_view.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  static const routeName = '/login';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(80.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Welcome'),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Username',
                ),
              ),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Password',
                ),
                obscureText: true,
              ),
              const SizedBox(
                height: 24,
              ),
              ElevatedButton(
                onPressed: () {
                  final storageUtil = StorageUtil();
                  storageUtil.setString(
                      Constant.storageRequestHeaderToken, "user_123456");

                  Navigator.pushNamedAndRemoveUntil(
                      context, SampleItemListView.routeName, (route) => false);
                },
                child: const Text('ENTER'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
