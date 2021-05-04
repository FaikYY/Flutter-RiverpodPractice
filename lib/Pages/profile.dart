import 'package:data_pratice/Objects/User.dart';
import 'package:data_pratice/Providers/profile_provider.dart';
import 'package:data_pratice/variables.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Profile extends ConsumerWidget {
  @override
  Widget build(context, watch) {
    final state = watch(ProfileProvider);
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Profile Page'),
        ),
        body: Column(
          children: [
            SizedBox(height: 100),
            ProfileCard(state: state),
          ],
        ),
      ),
    );
  }
}

////////////////////////\\\\\\\\\\\\\\\\\\\\\\
//////////////// PROFILE CARD \\\\\\\\\\\\\\\\
////////////////////////\\\\\\\\\\\\\\\\\\\\\\
class ProfileCard extends StatelessWidget {
  const ProfileCard({
    Key key,
    @required this.state,
  }) : super(key: key);

  final User state;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.grey[200],
          border: Border.all(width: 2.0, color: Colors.white70),
          borderRadius: BorderRadius.all(
            Radius.circular(40.0),
          )),
      padding: EdgeInsets.all(25.0),
      margin: EdgeInsets.symmetric(horizontal: 50.0),
      width: 500,
      height: 300,
      child: Column(
        children: [
          Text(
            'Profile',
            style: Variables.text_style_header,
          ),
          SizedBox(height: 25),
          Text(
            'Name: ' + state.name,
            style: Variables.text_style,
          ),
          Text(
            'Exp:' + state.exp.toString(),
            style: Variables.text_style,
          ),
          Text(
            'Level:' + state.level.toString(),
            style: Variables.text_style,
          ),
          SizedBox(height: 50),
          ElevatedButton(
            onPressed: () {
              context.read(ProfileProvider).increaseExp();
            },
            child: Text("Increase Exp"),
            style: ElevatedButton.styleFrom(
              primary: Colors.red,
            ),
          )
        ],
      ),
    );
  }
}
