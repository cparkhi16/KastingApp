import 'package:flutter/material.dart';
import '../widgets/generate_formula.dart';
import '../widgets/formula_title.dart';
import './casting_weight_screen.dart';
import './casting_module_screen.dart';
import './choke_area_screen.dart';
import './pouring_time_screen.dart';
import './sprue_diameter_screen.dart';
import './sprue_well_screen.dart';
import './pressurized_grating_screen.dart';
import './unpressurized_grating_screen.dart';
import './generate_report_screen.dart';
//Color(0xff6d0c74)
//Color(0xffa8e063)
//

class FormulaListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'KASTING CALCULATOR',
        ),
        backgroundColor: Colors.blue,
      ),
      body: Container(
          child: GridView(
        padding: const EdgeInsets.all(10),
        children: <Widget>[
          
          FormulaTitle(
            title: '1. Casting\n\t\t\tModulus',
            
            color1:Colors.blue ,
            
            color2: Colors.blueAccent,            routeHandle: CastingModuleScreen.routeName,
          ),
          FormulaTitle(
            title: '2. Weight of\n\t\t\tCasting',
            color1: Colors.lightBlueAccent,
            color2: Colors.blueAccent,
            routeHandle: CastingWeightScreen.routeName,
          ),
          FormulaTitle(
            title: '3. Pouring \n\t\t\tTime',
            
            color1: Colors.lightBlueAccent,
            color2: Colors.blueAccent,

            routeHandle: PouringTimeScreen.routeName,
          ),
          FormulaTitle(
            title: '4. Choke\n\t\t\tArea',
            color1: Colors.blue,
            color2: Colors.blueAccent,
            routeHandle: ChokeAreaScreen.routeName,
          ),
          // FormulaTitle(
          //   title: 'Law of Continuity',
          //   color1: Color(0xff4568dc),
          //   color2: Color(0xffb06ab3),
          //   routeHandle: LawOfContinuity.routeName,
          // ),
          FormulaTitle(
            title: '5. Spure\n\t\t diameter at\n\t\t top',
            
            color1: Colors.blue,
            color2: Colors.blueAccent,
            routeHandle: SprueDiameterScreen.routeName,
          ),
            FormulaTitle(
            title: '6. Sprue\n\t\t\t Well\n\t\t\t Design',
            color1: Colors.lightBlueAccent,
            color2: Colors.blueAccent,
            routeHandle: SprueWellScreen.routeName,
          ),
          FormulaTitle(
            title: '7. Pressurized\n\t\t Grating',
            color1: Colors.lightBlueAccent,
            color2: Colors.blueAccent,
            routeHandle: PressurizedGratingScreen.routeName,
          ),
          FormulaTitle(
            title: '8. Un-\n\t\t\tPressurized\n\t\t\tGrating',
            color1: Colors.blue,
            color2: Colors.blueAccent,
            routeHandle: UnpressurizedGratingScreen.routeName,
          ),
          
          
           GenerateFormula(
            title: '\t Generate\n\t Final\n \tReport',
            color1: Colors.lightGreenAccent,
            color2: Colors.green,
            routeHandle: GenerateReportScreen.routeName,
          ),
          

         
        ],

      
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
        
      ),
      
      
     
      ),
     
    );
  }
}
