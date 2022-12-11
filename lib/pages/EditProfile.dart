// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:flutter/material.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({ Key? key }) : super(key: key);

  @override
  _EditProfileState createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
          backgroundColor: Colors.white,
          title: Text('Edit Info',
            style: TextStyle(
              fontFamily: 'ElMessiri',
              fontWeight: FontWeight.w700,
              fontSize: 24,
              color: Colors.black,
            ),),
          actions: [
            IconButton(
              onPressed: () {},
              icon: ImageIcon(
                AssetImage('images/icons/hamburger.png',),
                color: Colors.black,),
            ),
          ],
        ),
      body:Container(
        padding:EdgeInsets.only(left:15,top:20,right:15),
        child:ListView(
          children:[
            Center(
              child:Stack(
                children:[
                  Container(
                    height:100,
                    width:100,
                    decoration: BoxDecoration(
                      color:Colors.grey,
                      shape:BoxShape.circle,
                      image: DecorationImage(
                        fit:BoxFit.cover,
                        image:NetworkImage("https://images.pexels.com/photos/36469/woman-person-flowers-wreaths.jpg?auto=compress&cs=tinysrgb&w=600"),
                      )
                    ),
                  ),
                Positioned(
                  bottom:0,
                  right:0,
                  child:Container(
                    height:30,
                    width:30,
                    decoration:BoxDecoration(
                      shape:BoxShape.circle,
                      color:Colors.grey
                    ),
                    child:Icon(Icons.add,color: Colors.black,size:30.0)
                  )
                )
                ]
              ),
            ),
            SizedBox(
              height:5.0,
            ),
            Center(
              child:ElevatedButton(onPressed: (){
                showModalBottomSheet(
                  useRootNavigator:true,
                  backgroundColor: Colors.grey[900],
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  context:context,
                  builder:(builder){
                    return Container(
                      height:100.0,
                      padding: EdgeInsets.all(20.0),
                      child: Column(children: [
                        Row(children: [
                          Icon(Icons.camera_alt_outlined,color:Colors.white,size:25.0),
                          SizedBox(
                            width: 10.0,
                          ),
                          Text("Take a photo",
                          style:TextStyle(color:Colors.white,fontSize: 17.0))
                        ],),
                        SizedBox(
                          height:10.0,
                        ),
                        Row(children: [
                          Icon(Icons.folder_copy_outlined,color:Colors.white,size:25.0),
                          SizedBox(
                            width: 10.0,
                          ),
                          Text("Upload the photo",
                          style:TextStyle(color:Colors.white,fontSize: 17.0))
                        ],),
                      ]),
                    );
                  }
                );
              }, 
              child:Text("Edit profile picture"),
                style: ElevatedButton.styleFrom(
                  shape: StadiumBorder(),
                  minimumSize: Size(160,35),
                  textStyle: TextStyle(color: Colors.white),
                  // backgroundColor:Colors.black,
                ), 
              )
              ),
              SizedBox(
                height:20.0
              ),
              Container(
                child:Text("Name"),
                margin: EdgeInsets.only(bottom:5.0),
              ),
              SizedBox(
                height:40.0,
                child: TextField(
                  cursorColor: Colors.black12,
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.black,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.black,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    contentPadding:EdgeInsets.only(left:10),
                  ),
                ),
              ),
              SizedBox(
                height:15.0
              ),
              Container(
                child:Text("E-mail"),
                margin: EdgeInsets.only(bottom:5.0),
              ),
              SizedBox(
                height:40.0,
                child: TextField(
                  cursorColor: Colors.black12,
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.black,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.black,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    contentPadding:EdgeInsets.only(left:10),
                  ),
                ),
              ),
              SizedBox(
                height:15.0
              ),
              Container(
                child:Text("Date"),
                margin: EdgeInsets.only(bottom:5.0),
              ),
              SizedBox(
                height:40.0,
                child:Row(
                  children:[
                    SizedBox(
                      width:40.0,
                      child:TextField(
                        keyboardType:TextInputType.number,
                  cursorColor: Colors.black12,
                  //maxLength: 2,
                  decoration: InputDecoration(
                    hintText: "DD",
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.black,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.black,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    contentPadding:EdgeInsets.only(left:10),
                  ),
                ),
                    ),
                    SizedBox(
                      width:20.0,
                    ),
                    SizedBox(
                      width:40.0,
                      child:TextField(
                        keyboardType:TextInputType.number,
                        //maxLength: 2,
                  cursorColor: Colors.black12,
                  decoration: InputDecoration(
                    hintText: "MM",
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.black,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.black,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    contentPadding:EdgeInsets.only(left:10),
                  ),
                ),
                    ),
                    SizedBox(
                      width:20.0,
                    ),
                    SizedBox(
                      width:60.0,
                      child:TextField(
                        keyboardType:TextInputType.number,
                        //maxLength: 4,
                  cursorColor: Colors.black12,
                  decoration: InputDecoration(
                    hintText: "YYYY",
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.black,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.black,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    contentPadding:EdgeInsets.only(left:10),
                  ),
                ),
                    ),
                  ]
                ),
              ),
            SizedBox(
                height:15.0
              ),
              Container(
                child:Text("Gender"),
                margin: EdgeInsets.only(bottom:5.0),
              ),
              Row(
                children:[
                  Container(
                    width:140.0,
                    height:40.0,
                    decoration: BoxDecoration(
                      border:Border.all(
                        color:Colors.black
                      ),
                      borderRadius:BorderRadius.circular(5)
                    ),
                    padding:EdgeInsets.all(10.0),
                    child:Row(
                      children:[
                        Container(
                          margin: EdgeInsets.only(left:10.0),
                          height:15.0,
                          width:15.0,
                          decoration:BoxDecoration(
                            shape:BoxShape.circle,
                            color:Colors.black
                          ),
                        ),
                        SizedBox(
                          width:30.0,
                        ),
                        Text("MALE")
                      ],
                    ),
                  ),
                  SizedBox(width:50.0),
                  Container(
                    width:140.0,
                    height:40.0,
                    decoration: BoxDecoration(
                      border:Border.all(
                        color:Colors.black
                      ),
                      borderRadius:BorderRadius.circular(5)
                    ),
                    padding:EdgeInsets.all(10.0),
                    child:Row(
                      children:[
                        Container(
                          margin: EdgeInsets.only(left:10.0),
                          height:15.0,
                          width:15.0,
                          decoration:BoxDecoration(
                            shape:BoxShape.circle,
                            color:Colors.grey
                          ),
                        ),
                        SizedBox(
                          width:30.0,
                        ),
                        Text("FEMALE")
                      ],
                    ),
                  ),
                ]
              ),
             SizedBox(
                height:15.0
              ),
             Container(
                child:Text("Mobile"),
                margin: EdgeInsets.only(bottom:5.0),
              ),
              SizedBox(
                height:40.0,
                child:Row(
                  children:[
                    SizedBox(
                      width:40.0,
                      child:TextField(
                        keyboardType:TextInputType.number,
                  cursorColor: Colors.black12,
                  //maxLength: 2,
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.black,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.black,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    contentPadding:EdgeInsets.only(left:10),
                  ),
                ),
                    ),
                    SizedBox(
                      width:10.0,
                    ),
                    SizedBox(
                      width:280.0,
                      child:TextField(
                        keyboardType:TextInputType.number,
                        //maxLength: 2,
                  cursorColor: Colors.black12,
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.black,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.black,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    contentPadding:EdgeInsets.only(left:10),
                  ),
                ),
                    ),
                    
                  ]
                ),
              ), 
            SizedBox(
                height:15.0
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children:[
                  ElevatedButton(onPressed: (){}, 
                  child:Text("save"),
                   style: ElevatedButton.styleFrom(
                    padding:EdgeInsets.all(10.0),
                  textStyle: TextStyle(color: Colors.white,fontSize:15.0),
                ), 
                  ),
                ],
              ),
          ]
        )
      ),
    );
  }
}