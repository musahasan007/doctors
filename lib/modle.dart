
class Doctors {
  int? sriNo;
  String? image;
  String? name;
  String? catagory;
  String?location;
  String? callForAppointment;
  String? consultationHour;
  String? bio;
  String? visit;

  Doctors(
      {this.sriNo, this.image, this.name, this.catagory, this.location, this.callForAppointment, this.consultationHour, this.bio,
        this.visit});

  Doctors.fromJson(Map<String, dynamic> json) {
    sriNo = json['Sri no'];
    image = json['image'];
    name = json['name'];
    catagory = json['catagory'];
    location = json['location'];
    callForAppointment = json['Call For Appointment'];
    consultationHour = json['Consultation Hour'];
    bio = json['bio'];
    visit = json['visit'];
  }


  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Sri no'] = this.sriNo;
    data['image'] = this.image;
    data['name'] = this.name;
    data['catagory'] = this.catagory;
    data['location'] = this.location;
    data['Call For Appointment'] = this.callForAppointment;
    data['Consultation Hour'] = this.consultationHour;
    data['bio'] = this.bio;
    data['visit'] = this.visit;
    return data;
  }
}