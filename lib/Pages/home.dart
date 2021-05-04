import 'package:data_pratice/Providers/profile_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:data_pratice/variables.dart';

class Home extends ConsumerWidget {
  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final state = watch(ProfileProvider);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Home Page',
          style: Variables.text_style_header,
        ),
      ),
      body: Column(
        children: [
          SizedBox(height: 50),
          Text('User Information', style: Variables.text_style_header),
          SizedBox(height: 25),
          Text(
            'Name: ' + state.name,
            style: Variables.text_style,
          ),
          Text(
            'Exp: ' + state.exp.toString(),
            style: Variables.text_style,
          ),
          Text(
            'Level: ' + state.level.toString(),
            style: Variables.text_style,
          ),
          SizedBox(height: 100),
          Container(
            width: Variables.screenWidth(context),
            child: Column(
              children: [
                SizedBox(
                  height: 50,
                ),
                Text(
                  "PAGES",
                  style: TextStyle(fontSize: Variables.text_font_size),
                ),
                SizedBox(height: 12.5),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed('/profile');
                  },
                  child: Text('Profile'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
