import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Item {
  String nama;
  String nomor;
  String email;
  String gambar;
  bool tap;
  bool show;

  Item(this.nama, this.nomor, this.email, this.gambar, this.tap, this.show);
}

class Kontak extends StatefulWidget {
  var ListKontak;
  Kontak(this.ListKontak);
  @override
  _KontakState createState() => _KontakState();
}

class _KontakState extends State<Kontak> {
  var item = Item('kontak1', '23732823098', 'kontak1@mail.com',
      'images/mbap.jpeg', false, true);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white70,
          title: Row(
            children: [
              Text(
                'Kontak',
                style: TextStyle(color: Colors.black),
              ),
            ],
          ),
        ),
        body: ListView(
          padding: EdgeInsets.all(10),
          children: [
            for (int i = 0; i < widget.ListKontak.length; i++)
              InkWell(
                onTap: () {
                  setState(() {
                    if (widget.ListKontak[i].tap == false) {
                      widget.ListKontak[i].tap = true;
                    } else {
                      widget.ListKontak[i].tap = false;
                    }
                  });
                },
                child: Card(
                  shape: RoundedRectangleBorder(
                      side: BorderSide(color: Colors.grey, width: 1),
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    children: [
                      if (widget.ListKontak[i].tap == true)
                        Container(
                          width: double.infinity,
                          padding: EdgeInsets.all(15),
                          child: Column(
                            children: [
                              Container(
                                height: 90,
                                width: 90,
                                decoration: BoxDecoration(
                                    color: Colors.lightBlue,
                                    borderRadius: BorderRadius.circular(50),
                                    image: DecorationImage(
                                        image: AssetImage('images/' +
                                            widget.ListKontak[i].gambar),
                                        fit: BoxFit.cover)),
                              ),
                              Column(
                                children: [
                                  Text(
                                    widget.ListKontak[i].nama,
                                    style: GoogleFonts.oswald(
                                      fontSize: 21,
                                    ),
                                    //style: TextStyle(fontSize: 17),
                                  ),
                                ],
                              ),
                              // SizedBox(
                              //   height: 1,
                              // ),
                              Text(
                                widget.ListKontak[i].nomor,
                                style: GoogleFonts.oswald(),
                              ),
                              SizedBox(
                                height: 1,
                              ),
                              Text(
                                widget.ListKontak[i].email,
                                style: GoogleFonts.oswald(),
                              ),
                            ],
                          ),
                        )
                      else
                        Container(
                          padding: EdgeInsets.only(left: 15, right: 15),
                          height: 50,
                          width: double.infinity,
                          child: Row(
                            children: [
                              CircleAvatar(
                                  backgroundImage:
                                      AssetImage('images/profile-user.png'),
                                  backgroundColor: Colors.white),
                              SizedBox(
                                width: 15,
                              ),
                              Flexible(
                                fit: FlexFit.tight,
                                child: Container(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        widget.ListKontak[i].nama,
                                        style: TextStyle(fontSize: 14),
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                          // color: Colors.blue,
                        ),
                    ],
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
