import 'package:baronbay_pos/settings/theme.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  NavigationRailLabelType labelType = NavigationRailLabelType.none;
  int _selectedIndex = 0;
  bool IsRailExtended = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: content(),
    );
  }

  Widget list() {
    return Row(
      children: <Widget> [
        GestureDetector(
          onTap: () {
            setState(() {
              IsRailExtended = true;
            });
          },
          child: NavigationRail(
            elevation: 13,
            extended: IsRailExtended,
            backgroundColor: whiteColor,
            labelType: (IsRailExtended==false) ? NavigationRailLabelType.selected:NavigationRailLabelType.none,
            selectedIndex: _selectedIndex,
            selectedLabelTextStyle: TextStyle(
              color: primaryColor
            ),
            selectedIconTheme: IconThemeData(color: primaryColor),
            unselectedIconTheme: const IconThemeData(color: Colors.black),
            destinations: const [
              NavigationRailDestination(icon: Icon(Icons.home_filled), label: Text("Beranda")),
              NavigationRailDestination(icon: Icon(Icons.account_balance_wallet), label: Text("Transaksi")),
              NavigationRailDestination(icon: Icon(Icons.history), label: Text("Riwayat Transaksi")),
              NavigationRailDestination(icon: Icon(Icons.person), label: Text("Pelanggan")),
              NavigationRailDestination(icon: Icon(Icons.receipt_rounded), label: Text("Laporan")),
          ]),
        ),
        Expanded(
          child: GestureDetector(
            onTap: (){
              setState(() {
                IsRailExtended = false;
              });
            },
            child: Container(
              color: Colors.amber,
              child: (_selectedIndex == 0) ? AddPage()
              : (_selectedIndex == 1) ? ListPage()
              : (_selectedIndex == 2) ? HelpPage()
              : CallPage(),
            ),
          ))
      ],
    );
  }

  Widget content() {
    return Row(
      children: [
        NavigationRail(
          elevation: 14.0,
          backgroundColor: whiteColor,
          onDestinationSelected: ((value) {
            setState(() {
              _selectedIndex = value;
            });
          }),
          destinations: const [
          NavigationRailDestination(
            icon: Icon(Icons.home_filled), 
            label: Text(""),),
          NavigationRailDestination(
            icon: Icon(Icons.account_balance_wallet),
            label: Text(""),),
          NavigationRailDestination(
            icon: Icon(Icons.history),
            label: Text(""),),
          NavigationRailDestination(
            icon: Icon(Icons.person),
            label: Text(""),),
          NavigationRailDestination(
            icon: Icon(Icons.receipt_rounded),
            label: Text(""),),
        ], 
        selectedIndex: _selectedIndex,
        labelType: labelType,
        ),
        Expanded(
        child: Container(
          color: backgroundColor6,
          child: (_selectedIndex == 0) ? AddPage()
          : (_selectedIndex == 1) ? ListPage()
          : (_selectedIndex == 2) ? HelpPage()
          : (_selectedIndex == 3) ? HelpPage()
          : CallPage(),

        ))
      ],
    );
  }
}

class AddPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment:MainAxisAlignment.center,
      crossAxisAlignment:CrossAxisAlignment.center,
      children: <Widget>[
        Text("Selamat Datang")
      ],
    );
  }
}

class ListPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment:MainAxisAlignment.center,
      crossAxisAlignment:CrossAxisAlignment.center,
      children: <Widget>[
        Text("Transaksi")
      ],
    );
  }
}

class HelpPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment:MainAxisAlignment.center,
      crossAxisAlignment:CrossAxisAlignment.center,
      children: <Widget>[
        Text("Bantuan")
      ],
    );
  }
}

class CallPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment:MainAxisAlignment.center,
      crossAxisAlignment:CrossAxisAlignment.center,
      children: <Widget>[
        Text("Kontak"),
      ],
    );
  }
}