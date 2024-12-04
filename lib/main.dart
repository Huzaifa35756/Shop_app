import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:get/get.dart';
import 'package:shop_app/FirebaseAuth/wrapper.dart';
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options:FirebaseOptions(
        apiKey: "AIzaSyCWXbE0qdTQU7wuPANh6A3iBc7Grqrv-tQ",
        authDomain: "e-comerce-93684.firebaseapp.com",
        projectId: "e-comerce-93684",
        messagingSenderId: "545583526555",
        appId: "1:545583526555:web:47a7d61e136a65d2090c3e"
    )
  );
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Wrapper(),
    ),
  );
}


