import 'package:flutter/material.dart';

class GenerateFormula extends StatelessWidget {
  final String title;
  final Color color1;
  final Color color2;
  final String routeHandle;
 // final bool isEnabled;

  GenerateFormula({
    this.title,
    this.color1,
    this.color2,
    this.routeHandle,
    //this.isEnabled=true
  });

  void tapHandler(BuildContext ctx) {
    Navigator.of(ctx).pushNamed(
      routeHandle,
      arguments: {'color1': color2, 'color2': color2},
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
    
      onTap: () => tapHandler(context),
      borderRadius: BorderRadius.circular(20),
      splashColor: color1,
      child: Container(
        padding: const EdgeInsets.all(15),
        child: Text(
          title,
          style: Theme.of(context).textTheme.title,
        ),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              color1,
              color2,
            ],
            begin: Alignment.topCenter,
            end: Alignment.topCenter,
          ),
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }
}
