import 'package:flutter/material.dart';
import 'package:kontak2/sort.dart';

import 'kontak.dart';

var data = [
  ['Dika', '098734262327', 'dika@mail.com', 'mbap.jpeg'],
  ['Mahar', '76328749834', 'mahar@mail.com', 'mes.jpeg'],
  ['Jhon', '36423747233', 'jhon@mail.com', 'ney.jpeg'],
  ['Al', '36423747233', 'al@mail.com', 'ney.jpeg'],
  ['Mike', '14451212252', 'mike@mail.com', 'ney.jpeg'],
  ['Dhon', '265483265489', 'dhon@mail.com', 'ney.jpeg'],
  ['Jhun', '54439873594', 'jhun@mail.com', 'mbap.jpeg'],
  ['Sit', '215486238', 'sit@mail.com', 'mbap.jpeg'],
  ['Man', '332489736255+', 'man@mail.com', 'mbap.jpeg'],
  ['Diks', '2914965523', 'diks@mail.com', 'ney.jpeg'],
  [
    'jjbdjkasfjashfjkaflkanskdsdkkbfjkfdvberjdsvafdbfaebsbssdafbaejvs',
    '7426127984',
    'mboh@mail.com',
    'mes.jpeg'
  ],
];

void main() {
  data = mergeSort(data);

  var ListKontak = [];
  for (var i = 0; i < data.length; i++) {
    ListKontak.add(
        Item(data[i][0], data[i][1], data[i][2], data[i][3], false, true));
  }
  runApp(Kontak(ListKontak));
}

// class MyApp extends StatelessWidget {
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return Kontak();
//   }
// }
