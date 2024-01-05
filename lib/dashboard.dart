import 'package:delivery_app/widgets/dashboard_grid_card.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

class DashBoard extends StatelessWidget {
  const DashBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      // appBar: AppBar(
      //   leading: Padding(
      //     padding: const EdgeInsets.only(left: 13.0),
      //     child: CustomBackButton(
      //       backgroundColor: color.background,
      //     ),
      //   ),
      //   title: const Text(
      //     'User',
      //     style: TextStyle(
      //         fontSize: 17,
      //         fontWeight: FontWeight.w600,
      //         color: Colors.lightBlue),
      //   ),
      //   centerTitle: true,
      // ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: GridView.count(
          shrinkWrap: true,
          crossAxisCount: 2,
          crossAxisSpacing: 15,
          mainAxisSpacing: 25,
          childAspectRatio: 3 / 4,
          children: [
            DashBoardGridCard(
              icon: IconlyLight.calendar,
              name: "Account Information",
              // function: () {
              //   Navigator.pushNamed(context, AccountInfo.routeName);
              // },
              function: () {},
            ),
            DashBoardGridCard(
              icon: Icons.local_grocery_store_outlined,
              name: "Password",
              function: () {},
            ),
            DashBoardGridCard(
              icon: IconlyLight.location,
              name: "Orders",
              function: () {},
            ),
            DashBoardGridCard(
              icon: IconlyLight.notification,
              name: "Wishlist",
              function: () {},
            ),
            DashBoardGridCard(
              icon: Icons.checklist_outlined,
              name: "Settings",
              function: () {
                //todo:Navigate to settings screen
              },
            ),
            DashBoardGridCard(
              name: "Dark Mode",
              icon: Icons.settings,
              function: () {},
            )
          ],
        ),
      ),
    );
  }
}
