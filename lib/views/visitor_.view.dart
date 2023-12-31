import 'package:flutter/material.dart';

import '../widgets/visitor_view_body.dart';

class VistorView extends StatefulWidget {
  const VistorView({
    super.key,
  });

  @override
  State<VistorView> createState() => _VistorViewState();
}

class _VistorViewState extends State<VistorView> {
  final ScrollController _scrollController = ScrollController();
  Color _appBarColor = Colors.transparent;
  Color icons = Colors.white;

  @override
  void initState() {
    super.initState();

    _scrollController.addListener(() {
      if (_scrollController.offset > 0) {
        setState(() {
          _appBarColor = Colors.white;
          icons = Colors.black;
        });
      } else {
        setState(() {
          icons = Colors.white;
          _appBarColor = Colors.transparent;
        });
      }
    });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            child: Image.asset(
              'assets/images/user.png',
              fit: BoxFit.fitWidth,
            ),
          ),
          VisitorViewBody(
            appBarColor: _appBarColor,
            controller: _scrollController,
            icons: icons,
          )
        ],
      ),
    );
  }
}
