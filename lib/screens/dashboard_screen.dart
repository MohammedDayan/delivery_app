import 'package:delivery_app/widgets/dashboard_grid_card.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

class DashBoardScreen extends StatelessWidget {
  static const routeName = "/dashboard_screen";

  const DashBoardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text(
          'John Doe',
          style: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.w600,
            color: color.secondary,
          ),
        ),
        centerTitle: false,
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.message_outlined,
              color: color.secondary,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: GridView.count(
          shrinkWrap: true,
          crossAxisCount: 2,
          crossAxisSpacing: 15,
          mainAxisSpacing: 25,
          childAspectRatio: 4 / 5,
          children: [
            DashBoardGridCard(
              icon: IconlyLight.calendar,
              name: "Calender",
              // function: () {
              //   Navigator.pushNamed(context, AccountInfo.routeName);
              // },
              function: () {},
            ),
            DashBoardGridCard(
              icon: Icons.local_grocery_store_outlined,
              name: "Groceries",
              function: () {},
            ),
            DashBoardGridCard(
              icon: IconlyLight.location,
              name: "Location",
              function: () {},
            ),
            DashBoardGridCard(
              icon: IconlyLight.notification,
              name: "Activities",
              function: () {},
            ),
            DashBoardGridCard(
              icon: Icons.checklist_outlined,
              name: "To do",
              function: () {
                //todo:Navigate to settings screen
              },
            ),
            DashBoardGridCard(
              name: "Settings",
              icon: Icons.settings,
              function: () {},
            )
          ],
        ),
      ),
    );
  }
}
