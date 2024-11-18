import 'package:flutter/material.dart';
import 'package:flutter_ticket_reservation_app/pages/home/widgets/from_to_box.dart';
import 'package:flutter_ticket_reservation_app/pages/seats/seats_page.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String departureStation = "선택";
  String arrivalStation = "선택";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("기차 예매")),
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FromToBox(
                  onDepartureChanged: (value) {
                    setState(() {
                      departureStation = value;
                    });
                  },
                  onArrivalChanged: (value) {
                    setState(() {
                      arrivalStation = value;
                    });
                  },
                ),
                SizedBox(height: 20),
                Container(
                    width: double.infinity,
                    height: 56,
                    child: ElevatedButton(
                        onPressed: () {
                          if (departureStation != "선택" &&
                              arrivalStation != "선택") {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => SeatsPage(
                                      from: departureStation,
                                      to: arrivalStation),
                                ));
                          }
                        },
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20))),
                        child: Text("좌석 선택", style: TextStyle(fontSize: 18))))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
