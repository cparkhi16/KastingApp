import 'package:flutter/material.dart';

class FinalOutput extends StatelessWidget {
  final Color color;
  final Function tapHandler;
  final bool isEnabled;

  FinalOutput(this.color, this.tapHandler,this.isEnabled);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      elevation: 5,
    
      onPressed: isEnabled?tapHandler:null,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(30)),
      ),
      color: color,
      child: Text(
        'Generate',
        style: Theme.of(context).textTheme.title,
      ),
    );
  }
}
