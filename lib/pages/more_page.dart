import 'package:flutter/material.dart';
import 'package:my_project_I/json/constant.dart';
import 'package:my_project_I/theme/colors.dart';

import 'package:my_project_I/constants/app_textstyle.dart';
import 'package:my_project_I/constants/color_constants.dart';
import 'package:my_project_I/data/card_data.dart';
import 'package:my_project_I/data/transaction_data.dart';
import 'package:my_project_I/widgets/my_card.dart';
import 'package:my_project_I/widgets/transaction_card.dart';

class MorePage extends StatefulWidget {
  @override
  _MorePageState createState() => _MorePageState();
}

class _MorePageState extends State<MorePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "My Bank",
          style: TextStyle(
            fontFamily: "Poppins",
            color: kPrimaryColor,
          ),
        ),
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundImage:
                NetworkImage("https://placeimg.com/640/480/people"),
          ),
        ),
        actions: [
          IconButton(
              icon: Icon(
                Icons.notifications_active_outlined,
                color: Colors.black,
                size: 27,
              ),
              onPressed: () {})
        ],
      ),
      body: SingleChildScrollView(
        physics: ClampingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 200,
                child: ListView.separated(
                    physics: ClampingScrollPhysics(),
                    separatorBuilder: (context, index) {
                      return SizedBox(
                        width: 10,
                      );
                    },
                    itemCount: myCards.length,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return MyCard(
                        card: myCards[index],
                      );
                    }),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                "Recent Transactions",
                style: ApptextStyle.BODY_TEXT,
              ),
              SizedBox(
                height: 15,
              ),
              ListView.separated(
                  itemCount: myTransactions.length,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  separatorBuilder: (context, index) {
                    return SizedBox(
                      height: 10,
                    );
                  },
                  itemBuilder: (context, index) {
                    return TransactionCard(transaction: myTransactions[index]);
                  })
            ],
          ),
        ),
      ),
    );
  }

  /*Widget getBody() {
    /*
    var size = MediaQuery.of(context).size;
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 25, right: 25, top: 25),
          child: Row(
            children: [
              Container(
                width: 70,
                height: 70,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        image: NetworkImage(profileUrl), fit: BoxFit.cover)),
              ),
              SizedBox(
                width: 20,
              ),
              Column(
                children: [
                  Text(
                    "Daniel",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.w400),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "4 Orders",
                    style: TextStyle(fontSize: 15, color: grey),
                  ),
                ],
              )
            ],
          ),
        ),
        SizedBox(
          height: 15,
        ),
        Divider(
          color: grey.withOpacity(0.8),
        ),
        SizedBox(
          height: 30,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 25, right: 25),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: List.generate(menusMore.length, (index) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 40),
                  child: Text(
                    menusMore[index],
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 23),
                  ),
                );
              })),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 25, right: 25),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: (size.width - 100) / 2,
                height: 50,
                decoration: BoxDecoration(
                    color: black, borderRadius: BorderRadius.circular(30)),
                child: Center(
                  child: Text(
                    "Settings",
                    style: TextStyle(fontSize: 15, color: white),
                  ),
                ),
              ),
              Container(
                width: (size.width - 100) / 2,
                height: 50,
                decoration: BoxDecoration(
                    color: black, borderRadius: BorderRadius.circular(30)),
                child: Center(
                  child: Text(
                    "Sign Out",
                    style: TextStyle(fontSize: 15, color: white),
                  ),
                ),
              )
            ],
          ),
        )
      ],
    );
  */
  }
  */
}
