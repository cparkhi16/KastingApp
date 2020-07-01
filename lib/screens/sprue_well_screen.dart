import 'dart:math';

import 'package:ed_formula_app/screens/generate_report_screen.dart';
import 'package:ed_formula_app/widgets/generate_formula.dart';
import 'package:flutter/material.dart';

import '../widgets/calculate_button.dart';
import '../widgets/input_field_widget.dart';
import '../widgets/output_result_widget.dart';

import '../data/data.dart';

class SprueWellScreen extends StatefulWidget {
  static const routeName = '/sprue-well';

  @override
  _SprueWellScreenState createState() => _SprueWellScreenState();
}

class _SprueWellScreenState extends State<SprueWellScreen> {
  final _fcaController = TextEditingController();
  //final _sprueHeightController = TextEditingController(text: Data.sprueHeight);
  //final _basinHeightController = TextEditingController(text: Data.basinHeight);
   //final _fdsbController = TextEditingController(text: Data.dsb);
    //final _basinHeightController = TextEditingController(text: Data.basinHeight);
  double _as1 = 0;
  double _hs = 0;
  double _ds = 0;
  void _calculateData() {
    if (_fcaController.text.isEmpty ) {
      return;
    }

    final enteredChokeArea = double.parse(_fcaController.text);
    //final enteredSprueHeight = double.parse(_sprueHeightController.text);
    //final enteredBasinHeight = double.parse(_basinHeightController.text);
    //final mm = double.parse(_fdsbController.text);


    if (enteredChokeArea <= 0) {
      return;
    }

    setState(() {
      _as1=3*enteredChokeArea;
      _ds=sqrt((4*_as1)/pi);
      _hs=_ds;    
      // Add values to data file
     // MaterialPageRoute(builder: GenerateReportScreen());
     
     
      Data.hs = _hs.toString();
      Data.ds = _ds.toString();
      Data.as1 = _as1.toString();
    });

    FocusScope.of(context).unfocus();
  }

  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context).settings.arguments as Map<String, Color>;
    //final Color _color1 = routeArgs['color1'];
    final Color _color2 = routeArgs['color2'];

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Sprue Well Design',
        ),
        backgroundColor: _color2,
      ),
      body: ListView(
        padding: const EdgeInsets.all(25),
        children: <Widget>[
          InputFieldWidget(
            'Final choke area(mm²)',
            _color2,
            _fcaController,
            _calculateData,
          ),
          SizedBox(
            height: 20,
          ),
         
          CalculateButton(
            _color2,
            _calculateData,
          ),
          SizedBox(
            height: 20,
          ),
         
          OutputResultWidget(
            'Sprue Well Area',
            _as1,
            'mm²',
          ),
          OutputResultWidget(
            'd(sprue)',
            _ds,
            'mm',
          ),
           OutputResultWidget(
            'H(sprue)',
            _hs,
            'mm',
          ),
           
        ],
      ),
    );
  }
}
