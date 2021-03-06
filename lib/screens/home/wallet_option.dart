import 'package:flutter/material.dart';
import 'package:wallet_dchain/screens/support/settings_detail.dart';

class OptionWallet extends StatefulWidget {
  const OptionWallet({Key? key}) : super(key: key);

  @override
  _OptionWalletState createState() => _OptionWalletState();
}

class _OptionWalletState extends State<OptionWallet> {
    
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
         Container(
            padding: const EdgeInsets.only(top: 50, bottom: 0, right: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: Icon(Icons.arrow_back),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
          ),
          Row(
            children: [
              Container(
                margin: new EdgeInsets.fromLTRB(15, 25, 0, 15),
                child: Text("You wallets",
                    style: Theme.of(context).textTheme.headline1),
              ),
            ],
          ),
          Container(
            child: Column(children: [
              SettingsDetail(title: 'Personal', subtitle: '5'),
              SettingsDetail(title: 'Business', subtitle: '0.00012'),
              SettingsDetail(title: 'Exploremonero.com', subtitle: '0.0032'),
            ],),
          ),
           ListTile(
            onTap: () {},
            leading: Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
              child: Icon(
                Icons.add_circle_outline_outlined,
                color:Colors.white,
                
              ),
            ),
            title:Text('Add wallet', style: TextStyle(fontSize: 20)),
            ),
             Divider(
            color: Colors.white,
            thickness: 0.8,
            indent: 18,
            endIndent: 18,
          )
      ],),
    );
  }
}
