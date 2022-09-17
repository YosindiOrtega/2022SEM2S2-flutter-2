import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:noticias/pages/detalle.page.dart';
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double peso = 70.0;
  int edad =20;
  double _currentSliderValue = 150;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculo de masa corporal'),
      ),
      body: Column(
        children: [

          Expanded( // 2 bordes
          flex : 3,
            child: Container(
              //color: Colors.red,
              child: Row(
                children: [
                Expanded( child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.man, size:100),
                        Text("Hombre")
                      ],
                      
                    ),
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(20.0),
                      ),
                  ),
                )                
                ),
                Expanded( child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.woman, size:100),
                        Text("Mujer")
                      ],
                    ),
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(20.0),
                      ),
                  ),
                )                
                ),
                ]),
            )
          ),
          Expanded( //Altura -slider
            flex : 3,
            child: Container(              
              child: Row(
                children: [
                Expanded( child: Padding(
                  padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                  child: Container(
                    decoration: BoxDecoration( color: Colors.grey,
                                         borderRadius: BorderRadius.circular(10.0),
                      ),                      
                      child: Column(children: [
                        Text("Altura"),
                        Text(_currentSliderValue.round().toString()+ " cm", style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold)),
                        Slider(value: _currentSliderValue,
                        inactiveColor: Color.fromARGB(255, 229, 229, 229),
                        activeColor: Colors.pink,
                        min: 50,
                        max: 250,
                        divisions: 200,
                        label: _currentSliderValue.round().toString(),
                        onChanged: (double value) {
                          setState(() {
                            _currentSliderValue = value;
                          });
                        },
                      )
                      ]),
                      ),
                )           
                
                )]),
            )
          ),        
          Expanded( // Peso y edad
          flex : 3,
            child: Container(
              //color: Colors.red,
              child: Row(
                children: [
                Expanded( child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Peso"),
                        Text(peso.toString()+ " Kg", style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold),),
                        
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            IconButton(
                              iconSize: 40,
                              onPressed: (){
                                setState(() {
                                  peso+=1;
                                });
                              }, 
                            icon: Icon( Icons.add_circle,)),
                            IconButton(
                              iconSize: 40,
                              onPressed: (){                                
                                setState(() {
                                  peso-=1;
                                });
                              }, 
                            icon: Icon( Icons.remove_circle, ))
                          ],
                        )
                      ],
                    ),
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(20.0),
                      ),
                  ),
                )                
                ),
                
                Expanded( child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    // ignore: sort_child_properties_last
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Edad"),
                        Text(edad.toString()+" Años", style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold),),
                        
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            IconButton(
                              iconSize: 40,
                              onPressed: (){                               
                                setState(() {
                                  edad+=1;
                                });}, 
                            icon: Icon( Icons.add_circle,)),
                            IconButton(
                              iconSize: 40,
                              onPressed: (){                               
                                setState(() {
                                  edad-=1;
                                });}, 
                            icon: Icon( Icons.remove_circle, ))
                          ],
                        )
                      ],
                    ),
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(20.0),
                      ),
                  ),
                )                
                )
                ]),
            )
          ),
          GestureDetector( //1 largo
            onTap: (){
              var valorCalculado=peso/(_currentSliderValue*_currentSliderValue);
              String estado='';
              Color colorEstado =Colors.black;

              if(valorCalculado <18.5){
                estado="Bajo peso";
                colorEstado= Colors.orange;                
              }
              if(valorCalculado >=18.5 && valorCalculado<=24.9){
                estado="Normal";
                colorEstado= Colors.green;                
              }
              if(valorCalculado >24.9){
                estado="Sobrepeso";
                colorEstado= Colors.purple;                
              }
              print(valorCalculado);
              Navigator.push(context, MaterialPageRoute(builder: ((context)=>Detallepage(valor:25,estado:estado, colorEstado:colorEstado))));
            },
            //Mi creación            
            child: Container(              
              height: 80,
              color: Colors.pink,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Calcular", style: TextStyle(fontSize:20,fontWeight: FontWeight.bold )),
                ],),
            )


          )
        
        ]),
    );

  }
}
