import 'dart:io';

import 'package:get/get.dart';
import 'package:slandrum/layers/presentationLayer/screens/taskCategories.dart';
import 'package:slandrum/layers/presentationLayer/widgets/mypasswordtextfield.dart';
import 'package:slandrum/layers/presentationLayer/widgets/mytextfield.dart';
import 'package:slandrum/main.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ProfileCreation extends StatefulWidget {
  @override
  _ProfileCreationState createState() => _ProfileCreationState();
}

class _ProfileCreationState extends State<ProfileCreation> {
     final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();
   List<String> _locations = ['A', 'B', 'C', 'D']; // Option 2
  String _selectedLocation; // Option 
  Widget _buildAllTextField() {
    return 
    Container(
      height: 400,
      width: double.infinity,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            MyTextField(
              iconData: Icons.email,
              textName: "Name",
              controller: email,
            ),
               MyTextField(
              iconData: Icons.email,
              textName: "Email",
              controller: email,
            ),
               MyTextField(
              iconData: Icons.email,
              textName: "Birthday",
              controller: email,
            ),
             Container(
               color: Colors.white,
               height: 50,
               width: Get.width,
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                   Padding(
                     padding: const EdgeInsets.only(left:20.0),
                     child: Text("Roles",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                   )
,                   Padding(
                     padding: const EdgeInsets.symmetric(horizontal:8.0),
                     child: DropdownButton(
            hint: Text('Please choose a location'), // Not necessary for Option 1
            value: _selectedLocation,
            onChanged: (newValue) {
                      setState(() {
                        _selectedLocation = newValue;
                      });
            },
            items: _locations.map((location) {
                      return DropdownMenuItem(
                        child: new Text(location),
                        value: location,
                      );
            }).toList(),
          ),
                   ),
                 ],
               ),
             ),

            // MyPasswordTextField(
            //   name: "Roles",
            //   controller: password,
            // ),
          ],
        ),
      ),
    );
  }
  File profilePhoto;
   _imgFromCamera(String photoPic) async {
      final pickedFile = await ImagePicker()
          .getImage(source: ImageSource.camera, imageQuality: 50);

      setState(() {
        if (pickedFile != null) {
          
               profilePhoto = File(pickedFile.path);
              
         
            
        }
      });
    }

    _imgFromGallery(String photoPic) async {
      final pickedFile = await ImagePicker()
          .getImage(source: ImageSource.gallery, imageQuality: 50);

      setState(() {
        if (pickedFile != null) {
         
             profilePhoto = File(pickedFile.path);
           
        }
      });
    }
   void _showPickerImage(String photo) {
      showModalBottomSheet(
          context: context,
          builder: (BuildContext bc) {
            return SafeArea(
              child: Container(
                child: new Wrap(
                  children: <Widget>[
                    new ListTile(
                        leading: new Icon(Icons.photo_library),
                        title: new Text('Photo Library'),
                        onTap: () {
                          _imgFromGallery(photo);
                          Navigator.of(context).pop();
                        }),
                    new ListTile(
                      leading: new Icon(Icons.photo_camera),
                      title: new Text('Camera'),
                      onTap: () {
                        _imgFromCamera(photo);
                        Navigator.of(context).pop();
                      },
                    ),
                  ],
                ),
              ),
            );
          });
    }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF9EDCF1),
     
      body: 
      
        Column(
          children: [
            Text("Create New Profile",style: TextStyle(fontSize:35,fontWeight:FontWeight.bold),),
            Container(
                height: 120.0,
                child: Stack(
                  children: <Widget>[
                    
                    Align(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          Container(
                            width: 100,
                            height: 100,
                            child: Stack(
                              children: [
                                Positioned.fill(
                                  child: Container(
                                    decoration: BoxDecoration(
                                        // color: Colors.grey[200],
                                        image: DecorationImage(
                                            image: NetworkImage(
                                                profilePhoto ?? ''),
                                            fit: BoxFit.cover),
                                        borderRadius: BorderRadius.circular(50),
                                        border: Border.all(
                                            color: Colors.black, width: 2)),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Padding(
                                    padding: const EdgeInsets.only(bottom: 8.0),
                                    child: GestureDetector(
                                      onTap: () {
                                        _showPickerImage("profilePhoto");
                                      },
                                      child: Icon(
                                        Icons.camera_alt,
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                     
                        ],
                      ),
                    )
                  ],
                ),
              ),
 _buildAllTextField(),
  SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:[
                  
                Container(
                  color: Colors.white,
                  height: 50,
                  width: 140,
                  child: Center(child: Text("Previous",style: TextStyle(fontSize:24,fontWeight:FontWeight.bold),)),),
                    GestureDetector(
                      onTap: (){
                        Get.to(ProfileCreation());
                      },
                                          child: GestureDetector(
                                            onTap: (){
                                              Get.to(TaskCategories());
                                            },
                                                                                      child: Container(
                  color: Colors.white,
                  height: 50,
                  width: 140,
                  child: Center(child: Text("Next",style: TextStyle(fontSize:24,fontWeight:FontWeight.bold),)),),
                                          ),
                    ),

              ]),
          ],
        ),
      
    );
  }
}