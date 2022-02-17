import 'package:flutter/material.dart';

class TransactionModel {
  String name;
  String avatar;
  String currentBalance;
  String month;
  String changePercentageIndicator;
  String changePercentage;
  Color color;

  TransactionModel({
    this.avatar,
    this.changePercentage,
    this.changePercentageIndicator,
    this.currentBalance,
    this.month,
    this.name,
    this.color,
  });
}

List<TransactionModel> myTransactions = [
  TransactionModel(
    avatar: "assets/images/icons/avatar5.png",
    currentBalance: "\$5482",
    changePercentage: "",
    changePercentageIndicator: "",
    month: "",
    name: "Shirt 1",
    color: Colors.green[100],
  ),
  TransactionModel(
    avatar: "assets/images/icons/avatar5.png",
    currentBalance: "\$4252",
    changePercentageIndicator: "",
    changePercentage: "",
    month: "",
    name: "Shirt 2",
    color: Colors.white,
  ),
  TransactionModel(
    avatar: "assets/images/icons/avatar5.png",
    currentBalance: "\$4052",
    changePercentage: "",
    changePercentageIndicator: "",
    month: "",
    name: "Shirt 3",
    color: Colors.red[100],
  ),
  TransactionModel(
    avatar: "assets/images/icons/avatar5.png",
    currentBalance: "\$5052",
    changePercentageIndicator: "",
    changePercentage: "",
    month: "",
    name: "Shirt 4",
    color: Colors.deepPurple[100],
  ),
  TransactionModel(
    avatar: "assets/images/icons/avatar5.png",
    currentBalance: "\$5482",
    changePercentage: "",
    changePercentageIndicator: "",
    month: "",
    name: "Shirt 5",
    color: Colors.green[100],
  ),
  TransactionModel(
    avatar: "assets/images/icons/avatar5.png",
    currentBalance: "\$4252",
    changePercentageIndicator: "",
    changePercentage: "",
    month: "",
    name: "Shirt 6",
    color: Colors.orange[100],
  ),
];
