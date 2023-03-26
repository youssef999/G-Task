
import 'package:app/widgets/Custom_Text_Form.dart';
import 'package:app/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'all_data_view.dart';


class RegisterScreen extends StatelessWidget{

  String date,txt,time;

  RegisterScreen({Key? key,required this.date,required this.txt,required this.time}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var formKey = GlobalKey<FormState>();
    TextEditingController nameController=TextEditingController();
    TextEditingController emailController=TextEditingController();
    TextEditingController passController=TextEditingController();
    TextEditingController phoneController=TextEditingController();


    return Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          elevation: 0,
        //  title: const Center(child: Text("Sign Up Screen")),
          backgroundColor: Colors.blue,
          toolbarHeight: 5,
        ),
        body: LayoutBuilder(
          builder: ((context, cons) {
            return ConstrainedBox(
              constraints: BoxConstraints(minHeight: cons.maxHeight),
              child: SingleChildScrollView(

                  child: Column(children: [
                    SizedBox(height: 40,),
                    Container(
                      width: MediaQuery.of(context).size.width*0.7,
                      height: 190,
                      child: Image.asset(
                        'assets/images/reg2.png',
                        fit: BoxFit.scaleDown,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Container(
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color:
                                  Colors.black12.withOpacity(0.3),
                                  spreadRadius: 5,
                                  blurRadius: 7,
                                  offset: const Offset(0,
                                      3), // changes position of shadow
                                ),
                              ],
                              borderRadius: BorderRadius.circular(15),
                              gradient: const LinearGradient(
                                colors: [
                               Colors.white,
                               Colors.white,
                                ],
                                begin: FractionalOffset(0.0, 0.4),
                                end: Alignment.topRight,
                              )),
                          child: Column(
                            children: [
                              Form(
                                key:formKey,
                                child: Column(children: [
                                  const SizedBox(height: 10),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: CustomTextFormField(
                                      controller:nameController,
                                      hint: ' name ',
                                      color: Colors.black,
                                      obs: false,
                                      obx: false,
                                      ontap: () {},
                                      type: TextInputType.emailAddress,
                                    ),
                                  ),
                                  const SizedBox(height: 10),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: CustomTextFormField(
                                      controller:phoneController,
                                      hint: ' Phone Number ',
                                      color: Colors.black,
                                      obs: false,
                                      obx: false,
                                      ontap: () {},
                                      type: TextInputType.emailAddress,
                                    ),
                                  ),
                                  const SizedBox(height: 10),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: CustomTextFormField(
                                      controller: emailController,
                                      hint: ' Email ',
                                      color: Colors.black,
                                      obs: false,
                                      obx: false,
                                      ontap: () {},
                                      type: TextInputType.emailAddress,
                                    ),
                                  ),
                                  const SizedBox(height: 10),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: CustomTextFormField(

                                      controller: passController,
                                      hint: ' Password ',
                                      color: Colors.black,
                                      obs: true,
                                      obx: true,
                                      ontap: () {},
                                      type: TextInputType.emailAddress,
                                    ),
                                  ),
                                ]),
                              ),
                            ],
                          )),
                    ),

                    InkWell(
                      child:const SizedBox(
                        width:129,
                        child: Card(
                          color:Colors.white,
                          child:Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Center(child: Text('Next',style:TextStyle(color:Colors.blue,fontSize:21),)),
                          ),
                        ),
                      ),
                      onTap:(){
                        Get.to(AllDataView(
                          txt: txt,
                          date: date,
                          name: nameController.text,
                          email: emailController.text,
                          phone: phoneController.text,
                          password: passController.text,
                        ));
                      },
                    ),


                 ]))
              // )
            );
          }),
        ));
  }
}
