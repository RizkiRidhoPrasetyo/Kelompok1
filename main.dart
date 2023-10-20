import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Data Hasil Perhitungan',
      home: ShowDataTable(),
    );    
  }
}

class ShowDataTable extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hasil Perhitungan'),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: DataTable(
          columns: [
            DataColumn(label: Text('No.')),
            DataColumn(label: Text('Kode Kriteria')),
            DataColumn(label: Text('Kriteria')),
          ],
          rows: [
            DataRow(cells: [
              DataCell(Text('01.')),
              DataCell(Text('001.')),
              DataCell(Text('KeripikTempe.')),
            ]),
            DataRow(cells: [
              DataCell(Text('02.')),
              DataCell(Text('002.')),
              DataCell(Text('KeripikBuah.')),
            ]),
            DataRow(cells: [
              DataCell(Text('03.')),
              DataCell(Text('003.')),
              DataCell(Text('KeripikKentang.')),
            ]),
            DataRow(cells: [
              DataCell(Text('04.')),
              DataCell(Text('004.')),
              DataCell(Text('DodolBuah.')),
            ]),
            DataRow(cells: [
              DataCell(Text('05.')),
              DataCell(Text('005.')),
              DataCell(Text('MinumanBuah.')),
            ]),
            DataRow(cells: [
              DataCell(Text('06.')),
              DataCell(Text('006.')),
              DataCell(Text('BremRasa.')),
            ]),
          ],
          
        ),
      ),
    );
  }
}

