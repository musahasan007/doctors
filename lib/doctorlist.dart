import 'dart:convert';

import 'package:eee/doctorsDittels.dart';
import 'package:eee/modle.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


class doctorlist extends StatefulWidget {
  const doctorlist({Key? key}) : super(key: key);

  @override
  _doctorlistState createState() => _doctorlistState();
}

 class _doctorlistState extends State<doctorlist> {
 Future<List<Doctors>> jsonReader() async{
    final saveJson =await
    rootBundle.loadString("assets/abc/hallo.json");
    final saveUsList = json.decode(saveJson) as
    List<dynamic>;
    return saveUsList.map((e) =>
        Doctors.fromJson(e)).toList();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Product List"),
      ),
      body:
      FutureBuilder(
          future: jsonReader(),
          builder: (context,dc){
            var list = dc.data as
            List<Doctors>;
            return ListView.builder(
                itemCount: list.length,
                itemBuilder:
                    (context,position){
                  return InkWell(
                    child: Card(
                      elevation: 5,
                      child: Row(
                        children: [
                          SizedBox(width: 30,),
                          Image.network(
                            list[position].image.toString(),
                            height: 70,
                            width: 70,
                          ),
                          SizedBox(width: 30,),
                          Text(list[position].name.toString(),
                            style: TextStyle(
                                fontSize: 25
                            ),
                          )
                        ],
                      ),
                    ),
                    onTap: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Doctorsdittels(
                        list[position].sriNo.toString(),
                        list[position].sriNo.toString(),
                        list[position].sriNo.toString(),
                        list[position].sriNo.toString(),
                        list[position].sriNo.toString(),
                        list[position].sriNo.toString(),
                        list[position].sriNo.toString(),
                        list[position].sriNo.toString(),
                        list[position].sriNo.toString()

                          ),
                      )
                      );
                    },
                  );
                }
            );
          }
      ),
    );
  }
 }
