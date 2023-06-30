import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled/cartpage.dart';
import 'package:untitled/constant.dart';
import 'package:untitled/home_page.dart';
import 'package:untitled/mainprovider.dart';
import 'package:untitled/profilePage.dart';
import 'package:untitled/search_page.dart';

import 'addpage.dart';
import 'bottom_nav_bar.dart';


    class MainScreen extends StatelessWidget {
       MainScreen({super.key});

 List <Widget> pageList = const  [
   HomePage(),
   SearchPage(),
   AddPage(),
   CartPage(),
   ProfilePage()

 ];
      @override
      Widget build(BuildContext context) {

        return  Consumer<MainScreenNotifier>(builder: (context , mainScreenNotifier, child){

          return   Scaffold(
            backgroundColor: const Color(0xffe2e2e2),
            body: pageList [mainScreenNotifier.getpageIndex],
            bottomNavigationBar:  SafeArea (
              child: Padding (padding: EdgeInsets.all(8),
                child: Container(
                  padding: EdgeInsets.all(12),
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.all(Radius.circular(16))
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      BottomNavWidget(
                        onTap: (){
                          context.read<MainScreenNotifier>().pageIndex= 0;
                        },

                        icon:  mainScreenNotifier.getpageIndex == 0?

                        Icons.home : Icons.home_outlined
                      ),
                      BottomNavWidget(
                        onTap: (){
                          context.read<MainScreenNotifier>().pageIndex = 1;
                        },
                          icon: mainScreenNotifier.getpageIndex == 1 ?

                          Icons.search : Icons.search
                      ),
                      BottomNavWidget(
                        onTap: (){
                          context.read<MainScreenNotifier>().pageIndex = 2;
                        },

                          icon : mainScreenNotifier.getpageIndex == 2 ?

                          Icons.add : Icons.add
                      ),
                      BottomNavWidget(
                        onTap: (){
                          mainScreenNotifier.pageIndex = 3;
                        },
                          icon : mainScreenNotifier == 3 ?

                          Icons.shopping_cart : Icons.shopping_cart
                      ),
                      BottomNavWidget(
                        onTap: (){
                          mainScreenNotifier.pageIndex = 4;
                        },
                        icon: mainScreenNotifier == 4 ?

                        Icons.person : Icons.person
                      ),
                    ],

                  ),
                ),
              ),
            ),

          );
        }

        );
      }
    }












