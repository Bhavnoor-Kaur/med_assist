import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  TextEditingController _nameCont;
  @override
  void initState(){
    super.initState();
    _nameCont = TextEditingController();
  }
  @override
  void dispose(){
    super.dispose();
    _nameCont.dispose();
  }
  Future<void> showInformationDialog(BuildContext context) async {
    return await showDialog(context: context,
    builder: (context){
      return AlertDialog(
        content: TextField(
          controller: _nameCont,

        ),
        actions: <Widget> [
          TextButton(
            child: Text('Done'),
            onPressed: () {
              Navigator.of(context).pop();
            }
          )
        ]
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: Text("Profile Page"),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            // Navigate to MainPage
          }
        )
      ),
        body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
             Card(
                elevation: 4.0,
                margin: const EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 1.0),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
              child: Column(
                children: <Widget>[
                  ListTile(
                        title: Text("Name"),
                        trailing: Icon(Icons.edit),
                        onTap: () async {
                          await showInformationDialog(context);
                        },
              ),
                  ListTile(
                        title: Text("Age"),
                        trailing: Icon(Icons.edit),
                        onTap: (){
                        //Open edit email ID
                        },
              ),
                  ListTile(
                        title: Text("Gender"),
                        trailing: Icon(Icons.edit),
                        onTap: (){
                        //Open edit Password
                        },
              ),
                  ListTile(
                    title: Text("Blood Group"),
                    trailing: Icon(Icons.edit),
                    onTap: (){
                      //Open edit Password
                    },
                  ),
                  ListTile(
                    title: Text("Address"),
                    trailing: Icon(Icons.edit),
                    onTap: (){
                      //Open edit Password
                    },
                  ),
                  ListTile(
                    title: Text("Contact"),
                    trailing: Icon(Icons.edit),
                    onTap: (){
                      //Open edit Password
                    },
                  ),

                ]
    )

    ),
            Card(
              elevation: 4.0,
              margin: const EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 1.0),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
              child: Column(
                children: <Widget>[
                  ListTile(
                    title: Text("Critical Medical Conditions"),
                  ),
                  ListTile(
                    title: Text("Emergency Contact"),
                  ),
                  ListTile(
                    title: Text("Alberta Health Card"),
                  )
                ],
              ),
            )
          ]
        )
    )
    );
  }
}