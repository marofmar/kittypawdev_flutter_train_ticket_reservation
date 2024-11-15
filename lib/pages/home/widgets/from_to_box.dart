import 'package:flutter/material.dart';
import 'package:flutter_ticket_reservation_app/pages/station_list/station_list_page.dart';

class FromToBox extends StatefulWidget {
  final ValueChanged<String> onDepartureChanged;
  final ValueChanged<String> onArrivalChanged;

  FromToBox({
    required this.onDepartureChanged,
    required this.onArrivalChanged,
  });

  @override
  State<FromToBox> createState() => _FromToBoxState();
}

class _FromToBoxState extends State<FromToBox> {
  bool isFrom = true;

  String departureStation = "선택";
  String arrivalStation = "선택";

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 200,
      decoration: BoxDecoration(
        color: Theme.of(context).cardColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          Expanded(
            child: GestureDetector(
                onTap: () async {
                  final selectedStation = await Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => StationListPage(isFrom: true)));
                  if (selectedStation != null) {
                    setState(() {
                      departureStation = selectedStation;
                    });
                    widget.onDepartureChanged(selectedStation); // 부모로 값 전달
                  }
                },
                child: station(true, departureStation)),
          ),
          SizedBox(
            width: 2,
            height: 50,
            child: DecoratedBox(
                decoration:
                    BoxDecoration(color: Theme.of(context).dividerColor)),
          ),
          Expanded(
            child: GestureDetector(
                onTap: () async {
                  final selectedStation = await Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              StationListPage(isFrom: false)));
                  if (selectedStation != null) {
                    setState(() {
                      arrivalStation = selectedStation;
                    });
                    widget.onArrivalChanged(selectedStation); // 부모로 값 전달
                  }
                },
                child: station(false, arrivalStation)),
          ),
        ],
      ),
    );
  }
//TODO stationCard refactoring 하기

  Widget station(bool isFrom, String station) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(isFrom == true ? "출발역" : "도착역", style: TextStyle(fontSize: 16)),
        Container(
            child: Text(station,
                style: TextStyle(
                  fontSize: 40,
                ))),
      ],
    );
  }
}
