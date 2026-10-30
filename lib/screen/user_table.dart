import 'package:flutter/material.dart';
import 'package:pluto_grid/pluto_grid.dart';

class UserTableScreen extends StatefulWidget {
  const UserTableScreen({super.key});

  @override
  State<UserTableScreen> createState() => _UserTableScreenState();
}

class _UserTableScreenState extends State<UserTableScreen> {
  late final List<PlutoColumn> columns;
  late final List<PlutoRow> rows;

@override

void initState() {
    super.initState();

    columns = [
      PlutoColumn(
        title: 'ID',
        field: 'id',
        type: PlutoColumnType.text(),
      ),
      PlutoColumn(
        title: 'Name',
        field: 'name',
        type: PlutoColumnType.text(),
      ),
      PlutoColumn(
        title: 'Email',
        field: 'email',
        type: PlutoColumnType.text(),
      ),
      PlutoColumn(
        title: 'Role',
        field: 'role',
        type: PlutoColumnType.text(),
      ),
    ];

    rows = [
      PlutoRow(
        cells: {
          'id': PlutoCell(value: '1'),
          'name': PlutoCell(value: 'Aung Aung'),
          'email': PlutoCell(value: 'aungaung@example.com'),
          'role': PlutoCell(value: 'Admin'),
        }),
      PlutoRow(cells: {
        'id': PlutoCell(value: '2'),
        'name': PlutoCell(value: 'Zaw Zaw'),
        'email': PlutoCell(value: 'zawzaw@example.com'),
        'role': PlutoCell(value: 'User'),
      }),
      PlutoRow(cells: {
        'id': PlutoCell(value: '3'),
        'name': PlutoCell(value: 'Aye Aye'),
        'email': PlutoCell(value: 'ayeaye@example.com'),
        'role': PlutoCell(value: 'User'),
      }),
    ];
  }

  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('User Management'),
      ),
      body: Padding(

        padding: const EdgeInsets.all(16),
        child: PlutoGrid(
        
        columns: columns,
        rows: rows,
        configuration: PlutoGridConfiguration(),
      ),)
    );
  }
}