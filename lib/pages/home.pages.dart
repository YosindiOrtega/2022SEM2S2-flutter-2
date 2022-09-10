import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:noticias/pages/detalle.page.dart';
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double peso = 0.0;
  int edad =0;

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
          Expanded( //1 largo
            flex : 3,
            child: Container(
              
              child: Row(children: [
                Expanded( child: Padding(padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(10.0),
                      ),),
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
                          fontSize: 40,
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
                          fontSize: 40,
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
              Navigator.push(context, MaterialPageRoute(builder: ((context)=>Detallepage())));
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
