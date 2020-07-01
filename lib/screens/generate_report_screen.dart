import 'package:flutter/material.dart';
import '../widgets/calculate_button.dart';
import '../widgets/input_field_widget.dart';
import '../widgets/output_result_widget.dart';
import '../data/data.dart';
import 'dart:math';
import '../widgets/generate_formula.dart';

class GenerateReportScreen extends StatefulWidget {
   static const routeName = '/generate-report';
  @override
  _GenerateReportScreen createState() => _GenerateReportScreen();
}
class Name{
  String p="";
  String n="";
  Name({this.p,this.n});
}
 var names=<Name>[
   
   
//Name(p: "",n:""),
 Name(p:"1.Volume",n:Data.volume),
 //Name(p:"2.Surface area of casting",n:Data.surfaceArea)
 //Name(p:"2.2.Surface area of casting(mm²)",n:Data.surfaceArea),
];



class _GenerateReportScreen extends State<GenerateReportScreen> {
    final _weightWithGratingController =
      TextEditingController(text: Data.fca);
      final _gateController =
      TextEditingController(text: Data.gate);
      final _volofcas =
      TextEditingController(text: Data.volume);
      final _sac =
      TextEditingController(text: Data.surfaceArea);
      final _mc =
      TextEditingController(text: Data.module);
       final _wc =
      TextEditingController(text: Data.castingWeight);
      final _den =
      TextEditingController(text: Data.density);
      final _pt =
      TextEditingController(text: Data. pouringTime);
       final _denliq =
      TextEditingController(text: Data. den);
       final _eta=
      TextEditingController(text: Data.eta);
       final _sh=
      TextEditingController(text: Data.sprueHeight);
      final _hb=
      TextEditingController(text: Data.sprueHeight);
      
      
      
      // double volofcas = double.parse(_volofcas.text);


       //final enteredWeight = double.parse(_weightWithGratingController.text);
  
  //final _a2Controller = TextEditingController(text: Data.a2);
 // final _weightController = TextEditingController(text: Data.weightcs);
  double _vc=0;
  double _sc=0;
  double _m=0;
  double _w=0;
  double _d=0;
  double _pt1=0;
  double _da=0;
  double eta=0;
  void _calculateData() {
   
    /*if (_gateController.text.isEmpty
        ) {
      return;
    }*/

   // final enteredWeight = double.parse(_weightWithGratingController.text);
   //final gate = double.parse(_gateController.text);
    final volofcas = double.parse(_volofcas.text);
     final sc = double.parse(_sac.text);
      final m = double.parse(_mc.text);
       final w = double.parse(_wc.text);
       final d = double.parse(_den.text);
       final p = double.parse(_pt.text);
       final da=double.parse(_denliq.text);
       final e=double.parse(_eta.text);
      
     
     
 // ignore: unused_local_variable
 

    //final enteredEta = double.parse(_etaController.text);w

/*if (gate.isNegative ) {
      return;
    }
*/
    

    setState(() {
    _vc= volofcas ;
    _sc= sc;
    _m=m;
    _w=w;
    _d=d;
    _pt1=p;
    _da=da;
    eta=e;
    Name(p:"2.Surface area of casting",n:Data.surfaceArea);
    // ignore: unused_local_variable
   
    
    
      // Add values to data file
     // Data.arp = _ar.toString();
      //Data.agp = _ag.toString();
      Data.volume="";
      Data.surfaceArea="";
      Data.module="";
      Data.castingWeight="";
      Data.weightcs="";
      Data.pouringTime="";
      Data.a2="";
      Data.sprueHeight="";
      Data.basinHeight="";
      
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
        title: Text('Report'),
        backgroundColor: _color2,
      ),
      body:ListView(
        padding: const EdgeInsets.all(25),
        children: <Widget>[
          /*InputFieldWidget(
            'Number of ingate:',
            _color2,
            _gateController,
            _calculateData,
          ),
            SizedBox(
            height: 20,
          ),
          */
          ImageAsset(),
          CalculateButton(
            _color2,
            _calculateData,
          ),
         
          OutputResultWidget(
            '1.Volume of Casting (Vc)',
             _vc,
            'mm³',
          ),
          
          OutputResultWidget(
            '2.Surface area of casting (Sac)',
             _sc,
            'mm²',
          ),
          OutputResultWidget(
            '3.Casting Modulus(Mc)',
             _m,
            'mm',
          ),
          OutputResultWidget(
            '4.Weight of casting(Wc)',
             _w,
            'mm',
          ),
           OutputResultWidget(
            '5.Density(ρ)',
             _d,
            'Kg/mm³',
          ),
          OutputResultWidget(
            '6.Pouring Time(t)',
             _pt1,
            'sec',
          ),
           OutputResultWidget(
            '7.Density of liquid Metal(d)',
            _da,
            'kg/mm³',
          ),
          OutputResultWidget(
            '8.Constant(η)',
            eta,
            '',
            
          ),
         
        
          /* OutputResultWidget(
            'Ingate area',
            _ag,
            'mm²',
          ),
          OutputResultWidget(
            'Area of each ingate',
            _iag,
            'mm²',
          ),
          OutputResultWidget(
            'Height of ingate',
            _ght,
            'mm',
          ),
          OutputResultWidget(
            'Width of ingate',
            _gwt,
            'mm',
          ),
          
        */
        ],
      ),
      

      
  /*  Column(
      children: <Widget>[
        ImageAsset(),
         CalculateButton(
            _color2,
            _calculateData,
          ),

        
        Center(
          child: DataTable(
            columns: const <DataColumn>[
              DataColumn(
                label: Text(
                  'Parameters',
                  style: TextStyle(fontStyle: FontStyle.italic, fontSize: 16),
                ),
              ),
              DataColumn(
                label: Text(
                  'Values',
                  style: TextStyle(fontStyle: FontStyle.italic,fontSize: 16),
                ),
              ),
              
            ],
            rows:names.map((name)=>DataRow(
              cells:[
                
                DataCell(
                 Text(name.p),
                ),
                DataCell(
                  Text(name.n),
                ),
                
              ] 
               )).toList()
          ),
        )
      ],
    )*/
    );
  }
}

class ImageAsset extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage= AssetImage('images/diagram.jpg');
    Image image = Image(image: assetImage,width: 250.0,height: 250.0,);
    return Container(child:image,);
  }
}