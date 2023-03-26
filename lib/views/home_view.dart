


 import 'package:app/views/next_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  List<String> names = ['Item 1', 'Item 2', 'Item 3'];

  List<String> images = ['assets/images/img1.jpg', 'assets/images/img2.jpg', 'assets/images/img3.jpg'];

  bool x=false;
  bool x2=false;
  bool x3=false;
  String _selectedColor = 'choose1';

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(
        toolbarHeight:10,
        elevation: 1,
        backgroundColor:Colors.blue,
      ),
      body:ListView.builder(
        itemCount: images.length,
        itemBuilder: ((context, index) {

          return Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                InkWell(
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius:BorderRadius.circular(18),
                        color:Colors.blue
                    ),
                    child: Column(
                      children: [

                      Padding(
                        padding: const EdgeInsets.all(1.0),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius:BorderRadius.circular(14),
                            color:Colors.white
                          ),
                              height:160,
                              width:MediaQuery.of(context).size.width,
                              child: Image.asset(images[index],fit:BoxFit.fill,)),
                      ),
                        const SizedBox(height: 12,),
                        Text(names[index],style:const TextStyle(fontSize: 21,color:Colors.white),),
                        const SizedBox(height: 12,),
                      ],
                    ),
                  ),
                  onTap:(){
                    setState(() {

                      if(index==0){
                        x=true;
                        x2=false;
                        x3=false;
                      }
                      if(index==1){
                        x2=true;
                        x=false;
                        x3=false;
                      }
                      if(index==2){
                        x3=true;
                        x2=false;
                        x=false;
                      }

                    });
                  },
                ),
                const SizedBox(height: 10,),

                (x==true&&index==0)?
                Column(
                  children: [
                    Row(
                      children: [
                        Radio(
                          value: '1',
                          groupValue: _selectedColor,
                          onChanged: (value) {
                            setState(() {
                              _selectedColor = value!;
                            });
                          },
                        ),
                        const Text('1'),
                      ],
                    ),

                    Row(
                      children: [
                        Radio(
                          value: '2',
                          groupValue: _selectedColor,
                          onChanged: (value) {
                            setState(() {
                              _selectedColor = value!;
                            });
                          },
                        ),
                        const Text('2'),
                      ],
                    ),

                    Row(
                      children: [
                        Radio(
                          value: '3',
                          groupValue: _selectedColor,
                          onChanged: (value) {
                            setState(() {
                              _selectedColor = value!;
                            });
                          },
                        ),
                        const Text('3'),
                      ],
                    ),

                    const SizedBox(height: 6,),
                    InkWell(
                      child:const SizedBox(
                        width:129,
                        child: Card(
                          color:Colors.blue,
                          child:Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Center(child: Text('Next',style:TextStyle(color:Colors.white,fontSize:21),)),
                          ),
                        ),
                      ),
                      onTap:(){
                        Get.to(NextView(
                          txt:  _selectedColor ,
                        ));
                      },
                    )
                  ],
                ):const SizedBox(height: 1,),

                  (x2==true&&index==1)?
                Column(
                  children: [
                    Row(
                      children: [
                        Radio(
                          value: '4',
                          groupValue: _selectedColor,
                          onChanged: (value) {
                            setState(() {
                              _selectedColor = value!;
                            });
                          },
                        ),
                        const Text('4'),
                      ],
                    ),

                    Row(
                      children: [
                        Radio(
                          value: '5',
                          groupValue: _selectedColor,
                          onChanged: (value) {
                            setState(() {
                              _selectedColor = value!;
                            });
                          },
                        ),
                        const Text('5'),
                      ],
                    ),

                    Row(
                      children: [
                        Radio(
                          value: '6',
                          groupValue: _selectedColor,
                          onChanged: (value) {
                            setState(() {
                              _selectedColor = value!;
                            });
                          },
                        ),
                        const Text('6'),
                      ],
                    ),

                    const SizedBox(height: 6,),
                    InkWell(
                      child:const SizedBox(
                        width:129,
                        child: Card(
                          color:Colors.blue,
                          child:Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Center(child: Text('Next',style:TextStyle(color:Colors.white,fontSize:21),)),
                          ),
                        ),
                      ),
                      onTap:(){
                        Get.to(NextView(
                          txt:  _selectedColor ,
                        ));
                      },
                    )
                  ],
                ):const SizedBox(height: 1,),

                (x3==true&&index==2)?
                Column(
                  children: [
                    Row(
                      children: [
                        Radio(
                          value: '7',
                          groupValue: _selectedColor,
                          onChanged: (value) {
                            setState(() {
                              _selectedColor = value!;
                            });
                          },
                        ),
                        const Text('7'),
                      ],
                    ),

                    Row(
                      children: [
                        Radio(
                          value: '8',
                          groupValue: _selectedColor,
                          onChanged: (value) {
                            setState(() {
                              _selectedColor = value!;
                            });
                          },
                        ),
                        const Text('8'),
                      ],
                    ),

                    Row(
                      children: [
                        Radio(
                          value: '9',
                          groupValue: _selectedColor,
                          onChanged: (value) {
                            setState(() {
                              _selectedColor = value!;
                            });
                          },
                        ),
                        const Text('9'),
                      ],
                    ),

                   const SizedBox(height: 6,),
                   InkWell(
                      child:const SizedBox(
                        width:129,
                        child: Card(
                          color:Colors.blue,
                          child:Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Center(child: Text('Next',style:TextStyle(color:Colors.white,fontSize:21),)),
                          ),
                        ),
                      ),
                     onTap:(){
                       Get.to(NextView(
                         txt:  _selectedColor,
                       ));
                     },
                    )
                  ],
                ):const SizedBox(height: 1,)



              ],
            ),
          );
        }),

      ),
    );
  }
}
