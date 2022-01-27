import 'package:flutter/material.dart';
class Doctorsdittels extends StatefulWidget {
  String sriNo;
  String image;
  String name;
  String catagory;
  String location;
  String callForAppointment;
  String consultationHour;
  String bio;
  String visit;


  Doctorsdittels(this.sriNo, this.image, this.name, this.catagory,
      this.location, this.callForAppointment, this.consultationHour, this.bio,
      this.visit);

  @override
  _DoctorsdittelsState createState() => _DoctorsdittelsState();
}

class _DoctorsdittelsState extends State<Doctorsdittels> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(" Details"),
      ),
      body: Column(
        children: [
          Image.network(widget.image,
            height:
            MediaQuery.of(context).size.height/3,
          ),
          SizedBox(
            height: 30,
          ),
          Text(
                  widget.sriNo+"\!n"!+
                  widget.name+"\n"+
                  widget.catagory+"\n"+
                  widget.location+"\n"+
                  widget.callForAppointment+"\n"+
                  widget.consultationHour+"\n"+
                  widget.bio+"\n"+
                  widget.visit+"\n"

          )
        ],
      ),
    );
  }
}