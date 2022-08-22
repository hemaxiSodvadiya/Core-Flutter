import 'package:flutter/material.dart';

class QuestionBank {
  Widget que;
  int? id;
  int? money;
  String? a;
  String? b;
  String? c;
  String? d;

  QuestionBank({
    required this.que,
    this.id,
    this.money,
    this.a,
    this.b,
    this.c,
    this.d,
  });
}
