import 'package:corsouel_slider/data_table/data_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Tablescreen extends StatefulWidget {
  const Tablescreen({super.key});

  @override
  State<Tablescreen> createState() => _TablescreenState();
}

class _TablescreenState extends State<Tablescreen> {
  Tablecontroller controller = Get.put(Tablecontroller());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: ListView(
            scrollDirection: Axis.vertical,
            children: [
              Obx(
                () => DataTable(
                  columns: [
                    DataColumn(label: Text("id")),
                    DataColumn(label: Text("Name")),
                    DataColumn(label: Text("Course")),
                    DataColumn(label: Text("Phone no.")),
                  ],
                  rows: [
                    for (int i = 0; i < controller.tablelist.length; i++)
                      cells(controller.tablelist[i], i),
                  ],
                  border: TableBorder.all(color: Colors.white, width: 1),
                  dataRowColor: MaterialStateColor.resolveWith(
                      (states) => Colors.grey.shade300),
                  headingRowColor:
                      MaterialStateColor.resolveWith((states) => Colors.black),
                  headingTextStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  DataRow cells(Map<dynamic, dynamic> e, int i) {
    return DataRow(
      cells: [
        DataCell(
          Text("${e['id']}"),
        ),
        DataCell(
          Text("${e['name']}"),
        ),
        DataCell(
          Text("${e['course']}"),
        ),
        DataCell(
          Text("${e['no']}"),
        ),
      ],
      selected: e['select'],
      onSelectChanged: (value) {
        Map m1 = {
          "id": e['id'],
          "name": "${e['name']}",
          "course": "${e['course']}",
          "no": e['no'],
          "select": value,
        };
        controller.tablelist[i]=m1;
      },
    );
  }
}
