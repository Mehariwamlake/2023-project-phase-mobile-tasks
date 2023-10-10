import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';



class Authentication extends Equatable {
  String password;
  String userName;

 
  Authentication({
    required this.password,
    required this.userName,
    }) : super();

  @override

  List<Object?> get props => [userName];
}
 