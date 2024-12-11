import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _State();
}

class _State extends State<HomeScreen> {
  bool Personal = true,College=false,Office=false;
  bool suggest=false;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Icon((Icons.add),
            size:35,
            color: Colors.white),
        backgroundColor: Colors.black,
      ),


      body:Container(
        padding: EdgeInsets.only(top: 70,left: 20),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.white,
              Colors.red,
            ],
            // begin: Alignment.topLeft,
            // end: Alignment.bottomRight,

          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: Text("hi",
                  style:TextStyle(
                    fontSize: 30,
                    color: Colors.black,
                  )
              ),
            ),
            SizedBox(height: 10),

            Container(
              child: Text("My Name Is Anurag",
                  style:TextStyle(
                    fontSize: 30,
                    color: Colors.black,
                  )
              ),
            ),

            SizedBox(height: 10),

            Container(
              child: Text("Let the work Begin",
                  style:TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                  )
              ),
            ),
            SizedBox(height: 10),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Personal ? Material(
                  elevation: 20,
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(20)
                    ),
                    child: Text("Personal",style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                    ),
                  ),
                ): GestureDetector(
                  onTap: (){
                    Personal= true;
                    College=false;
                    Office=false;
                    setState(() {

                    });
                  },
                  child: Text("Personal",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),




                College ? Material(
                  elevation: 20,
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(20)
                    ),
                    child: Text("College",style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                    ),
                  ),
                ): GestureDetector(
                  onTap: (){
                    Personal= false;
                    College=true;
                    Office=false;
                    setState(() {

                    });
                  },
                  child: Text("College",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),




                Office ? Material(
                  elevation: 20,
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(20)
                    ),
                    child: Text("Office",style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                    ),
                  ),
                ): GestureDetector(
                  onTap: (){
                    Personal= false;
                    College=false;
                    Office=true;
                    setState(() {

                    });
                  },
                  child: Text("Office",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),

              ],
            ),

            SizedBox(height: 20,),
            CheckboxListTile(
              activeColor: Colors.deepPurpleAccent,
              title: Text("make youtube videos"),
              value: suggest, onChanged: (newValue){
              setState(() {
                suggest=newValue!;
              });
            },
              controlAffinity: ListTileControlAffinity.leading,),

            SizedBox(height: 20,),
            CheckboxListTile(
              activeColor: Colors.deepPurpleAccent,
              title: Text("make Gym videos"),
              value: suggest, onChanged: (newValue){
              setState(() {
                suggest=newValue!;
              });
            },
              controlAffinity: ListTileControlAffinity.leading,)
          ],
        ),


      ),
    );
  }
}
