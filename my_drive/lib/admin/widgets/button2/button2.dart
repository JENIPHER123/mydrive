import 'package:flutter/material.dart';

class Button2 extends StatelessWidget {
  const Button2({super.key});

  @override
  Widget build(BuildContext context) {
    return DataTable(columns: const [
      DataColumn(
        label: Text('ID'),
      ),
      DataColumn(
        label: Text('Name'),
      ),
      DataColumn(
        label: Text('Code'),
      ),
      DataColumn(
        label: Text('Action'),
      ),
    ], rows: [
      DataRow(
        cells: [
          const DataCell(Text('1')),
          const DataCell(Text('Arshik')),
          const DataCell(Text('56446')),
          DataCell(
            ElevatedButton(
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        backgroundColor:
                            const Color.fromARGB(255, 250, 248, 248),
                        content: Stack(
                          children: <Widget>[
                            Container(
                              child: Column(
                                children: [
                                  const CircleAvatar(
                                    
                                    child: Icon(Icons.close,),
                                    backgroundColor:
                                        Color.fromARGB(255, 121, 22, 15),
                                  ),
                                  const SizedBox(
                                    height: 30,
                                  ),
                                  const Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'RECORD NO:',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(
                                        width: 4,
                                      ),
                                      Text(
                                        '0001',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                  DataTable(columns: const [
                                    DataColumn(
                                      label: Text('Property'),
                                    ),
                                    DataColumn(
                                      label: Text('Description'),
                                    ),
                                  ], rows: const [
                                    DataRow(cells: [
                                      DataCell(Text('Supplier')),
                                      DataCell(Text('Digitali')),
                                    ]),
                                    DataRow(cells: [
                                      DataCell(Text('Ouantity')),
                                      DataCell(Text('1')),
                                    ]),
                                    DataRow(cells: [
                                      DataCell(Text('Total Cost')),
                                      DataCell(Text('560,000')),
                                    ]),
                                    DataRow(cells: [
                                      DataCell(Text('Date Of Purchase')),
                                      DataCell(Text('02/20/2021')),
                                    ]),
                                    DataRow(cells: [
                                      DataCell(Text('Type/Category')),
                                      DataCell(Text('Software')),
                                    ])
                                  ])
                                ],
                              ),
                            )
                          ],
                        ),
                      );
                    });
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 121, 22, 15),
                minimumSize: const Size(30, 30),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50)),
              ),
              child: Icon(Icons.next_plan_rounded),
            ),
          ),
        ],
      ),
      DataRow(
        cells: [
          const DataCell(Text('2')),
          const DataCell(Text('Janet')),
          const DataCell(Text('56445')),
          DataCell(
            ElevatedButton(
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        backgroundColor:
                            const Color.fromARGB(255, 250, 248, 248),
                        content: Stack(
                          children: <Widget>[
                            Container(
                              child: Column(
                                children: [
                                  const CircleAvatar(
                                    child: Icon(Icons.close),
                                    backgroundColor:
                                        Color.fromARGB(255, 121, 22, 15),
                                  ),
                                  const SizedBox(
                                    height: 30,
                                  ),
                                  const Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'RECORD NO:',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(
                                        width: 4,
                                      ),
                                      Text(
                                        '0001',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                  DataTable(columns: const [
                                    DataColumn(
                                      label: Text('Property'),
                                    ),
                                    DataColumn(
                                      label: Text('Description'),
                                    ),
                                  ], rows: const [
                                    DataRow(cells: [
                                      DataCell(Text('Supplier')),
                                      DataCell(Text('Digitali')),
                                    ]),
                                    DataRow(cells: [
                                      DataCell(Text('Ouantity')),
                                      DataCell(Text('1')),
                                    ]),
                                    DataRow(cells: [
                                      DataCell(Text('Total Cost')),
                                      DataCell(Text('560,000')),
                                    ]),
                                    DataRow(cells: [
                                      DataCell(Text('Date Of Purchase')),
                                      DataCell(Text('02/20/2021')),
                                    ]),
                                    DataRow(cells: [
                                      DataCell(Text('Type/Category')),
                                      DataCell(Text('Software')),
                                    ])
                                  ])
                                ],
                              ),
                            )
                          ],
                        ),
                      );
                    });
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 121, 22, 15),
                minimumSize: const Size(30, 30),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50)),
              ),
              child: Icon(Icons.next_plan_rounded),
            ),
          ),
        ],
      ),
      DataRow(
        cells: [
          const DataCell(Text('3')),
          const DataCell(Text('Edna')),
          const DataCell(Text('56445')),
          DataCell(
            ElevatedButton(
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        backgroundColor:
                            const Color.fromARGB(255, 250, 248, 248),
                        content: Stack(
                          children: <Widget>[
                            Container(
                              child: Column(
                                children: [
                                  const CircleAvatar(
                                    child: Icon(Icons.close),
                                    backgroundColor:
                                        Color.fromARGB(255, 121, 22, 15),
                                  ),
                                  const SizedBox(
                                    height: 30,
                                  ),
                                  const Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'RECORD NO:',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(
                                        width: 4,
                                      ),
                                      Text(
                                        '0001',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                  DataTable(columns: const [
                                    DataColumn(
                                      label: Text('Property'),
                                    ),
                                    DataColumn(
                                      label: Text('Description'),
                                    ),
                                  ], rows: const [
                                    DataRow(cells: [
                                      DataCell(Text('Supplier')),
                                      DataCell(Text('Digitali')),
                                    ]),
                                    DataRow(cells: [
                                      DataCell(Text('Ouantity')),
                                      DataCell(Text('1')),
                                    ]),
                                    DataRow(cells: [
                                      DataCell(Text('Total Cost')),
                                      DataCell(Text('560,000')),
                                    ]),
                                    DataRow(cells: [
                                      DataCell(Text('Date Of Purchase')),
                                      DataCell(Text('02/20/2021')),
                                    ]),
                                    DataRow(cells: [
                                      DataCell(Text('Type/Category')),
                                      DataCell(Text('Software')),
                                    ])
                                  ])
                                ],
                              ),
                            )
                          ],
                        ),
                      );
                    });
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 121, 22, 15),
                minimumSize: const Size(30, 30),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50)),
              ),
              child: Icon(Icons.next_plan_rounded),
            ),
          ),
        ],
      ),
      DataRow(
        cells: [
          const DataCell(Text('4')),
          const DataCell(Text('Tevin')),
          const DataCell(Text('44645')),
          DataCell(
            ElevatedButton(
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        backgroundColor:
                            const Color.fromARGB(255, 250, 248, 248),
                        content: Stack(
                          children: <Widget>[
                            Container(
                              child: Column(
                                children: [
                                  const CircleAvatar(
                                    child: Icon(Icons.close),
                                    backgroundColor:
                                        Color.fromARGB(255, 121, 22, 15),
                                  ),
                                  const SizedBox(
                                    height: 30,
                                  ),
                                  const Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'RECORD NO:',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(
                                        width: 4,
                                      ),
                                      Text(
                                        '0001',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                  DataTable(columns: const [
                                    DataColumn(
                                      label: Text('Property'),
                                    ),
                                    DataColumn(
                                      label: Text('Description'),
                                    ),
                                  ], rows: const [
                                    DataRow(cells: [
                                      DataCell(Text('Supplier')),
                                      DataCell(Text('Digitali')),
                                    ]),
                                    DataRow(cells: [
                                      DataCell(Text('Ouantity')),
                                      DataCell(Text('1')),
                                    ]),
                                    DataRow(cells: [
                                      DataCell(Text('Total Cost')),
                                      DataCell(Text('560,000')),
                                    ]),
                                    DataRow(cells: [
                                      DataCell(Text('Date Of Purchase')),
                                      DataCell(Text('02/20/2021')),
                                    ]),
                                    DataRow(cells: [
                                      DataCell(Text('Type/Category')),
                                      DataCell(Text('Software')),
                                    ])
                                  ])
                                ],
                              ),
                            )
                          ],
                        ),
                      );
                    });
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 121, 22, 15),
                minimumSize: const Size(30, 30),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50)),
              ),
              child: Icon(Icons.next_plan_rounded),
            ),
          ),
        ],
      ),
      DataRow(
        cells: [
          const DataCell(Text('5')),
          const DataCell(Text('Pauline')),
          const DataCell(Text('54645')),
          DataCell(
            ElevatedButton(
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        backgroundColor:
                            const Color.fromARGB(255, 250, 248, 248),
                        content: Stack(
                          children: <Widget>[
                            Container(
                              child: Column(
                                children: [
                                  const CircleAvatar(
                                    child: Icon(Icons.close),
                                    backgroundColor:
                                        Color.fromARGB(255, 121, 22, 15),
                                  ),
                                  const SizedBox(
                                    height: 30,
                                  ),
                                  const Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'RECORD NO:',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(
                                        width: 4,
                                      ),
                                      Text(
                                        '0001',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                  DataTable(columns: const [
                                    DataColumn(
                                      label: Text('Property'),
                                    ),
                                    DataColumn(
                                      label: Text('Description'),
                                    ),
                                  ], rows: const [
                                    DataRow(cells: [
                                      DataCell(Text('Supplier')),
                                      DataCell(Text('Digitali')),
                                    ]),
                                    DataRow(cells: [
                                      DataCell(Text('Ouantity')),
                                      DataCell(Text('1')),
                                    ]),
                                    DataRow(cells: [
                                      DataCell(Text('Total Cost')),
                                      DataCell(Text('560,000')),
                                    ]),
                                    DataRow(cells: [
                                      DataCell(Text('Date Of Purchase')),
                                      DataCell(Text('02/20/2021')),
                                    ]),
                                    DataRow(cells: [
                                      DataCell(Text('Type/Category')),
                                      DataCell(Text('Software')),
                                    ])
                                  ])
                                ],
                              ),
                            )
                          ],
                        ),
                      );
                    });
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 121, 22, 15),
                minimumSize: const Size(30, 30),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50)),
              ),
              child: Icon(Icons.next_plan_rounded),
            ),
          ),
        ],
      ),
      DataRow(
        cells: [
          const DataCell(Text('6')),
          const DataCell(Text('Caleb')),
          const DataCell(Text('56645')),
          DataCell(
            ElevatedButton(
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        backgroundColor:
                            const Color.fromARGB(255, 250, 248, 248),
                        content: Stack(
                          children: <Widget>[
                            Container(
                              child: Column(
                                children: [
                                  const CircleAvatar(
                                    child: Icon(Icons.close),
                                    backgroundColor:
                                        Color.fromARGB(255, 121, 22, 15),
                                  ),
                                  const SizedBox(
                                    height: 30,
                                  ),
                                  const Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'RECORD NO:',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(
                                        width: 4,
                                      ),
                                      Text(
                                        '0001',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                  DataTable(columns: const [
                                    DataColumn(
                                      label: Text('Property'),
                                    ),
                                    DataColumn(
                                      label: Text('Description'),
                                    ),
                                  ], rows: const [
                                    DataRow(cells: [
                                      DataCell(Text('Supplier')),
                                      DataCell(Text('Digitali')),
                                    ]),
                                    DataRow(cells: [
                                      DataCell(Text('Ouantity')),
                                      DataCell(Text('1')),
                                    ]),
                                    DataRow(cells: [
                                      DataCell(Text('Total Cost')),
                                      DataCell(Text('560,000')),
                                    ]),
                                    DataRow(cells: [
                                      DataCell(Text('Date Of Purchase')),
                                      DataCell(Text('02/20/2021')),
                                    ]),
                                    DataRow(cells: [
                                      DataCell(Text('Type/Category')),
                                      DataCell(Text('Software')),
                                    ])
                                  ])
                                ],
                              ),
                            )
                          ],
                        ),
                      );
                    });
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 121, 22, 15),
                minimumSize: const Size(30, 30),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50)),
              ),
              child: Icon(Icons.next_plan_rounded),
            ),
          ),
        ],
      ),
      DataRow(
        cells: [
          const DataCell(Text('7')),
          const DataCell(Text('James')),
          const DataCell(Text('56445')),
          DataCell(
            ElevatedButton(
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        backgroundColor:
                            const Color.fromARGB(255, 250, 248, 248),
                        content: Stack(
                          children: <Widget>[
                            Container(
                              child: Column(
                                children: [
                                  const CircleAvatar(
                                    child: Icon(Icons.close),
                                    backgroundColor:
                                        Color.fromARGB(255, 121, 22, 15),
                                  ),
                                  const SizedBox(
                                    height: 30,
                                  ),
                                  const Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'RECORD NO:',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(
                                        width: 4,
                                      ),
                                      Text(
                                        '0001',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                  DataTable(columns: const [
                                    DataColumn(
                                      label: Text('Property'),
                                    ),
                                    DataColumn(
                                      label: Text('Description'),
                                    ),
                                  ], rows: const [
                                    DataRow(cells: [
                                      DataCell(Text('Supplier')),
                                      DataCell(Text('Digitali')),
                                    ]),
                                    DataRow(cells: [
                                      DataCell(Text('Ouantity')),
                                      DataCell(Text('1')),
                                    ]),
                                    DataRow(cells: [
                                      DataCell(Text('Total Cost')),
                                      DataCell(Text('560,000')),
                                    ]),
                                    DataRow(cells: [
                                      DataCell(Text('Date Of Purchase')),
                                      DataCell(Text('02/20/2021')),
                                    ]),
                                    DataRow(cells: [
                                      DataCell(Text('Type/Category')),
                                      DataCell(Text('Software')),
                                    ])
                                  ])
                                ],
                              ),
                            )
                          ],
                        ),
                      );
                    });
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 121, 22, 15),
                minimumSize: const Size(30, 30),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50)),
              ),
              child: Icon(Icons.next_plan_rounded),
            ),
          ),
        ],
      ),
      DataRow(
        cells: [
          const DataCell(Text('8')),
          const DataCell(Text('Ezekiel')),
          const DataCell(Text('56445')),
          DataCell(
            ElevatedButton(
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        backgroundColor:
                            const Color.fromARGB(255, 250, 248, 248),
                        content: Stack(
                          children: <Widget>[
                            Container(
                              child: Column(
                                children: [
                                  const CircleAvatar(
                                    child: Icon(Icons.close),
                                    backgroundColor:
                                        Color.fromARGB(255, 121, 22, 15),
                                  ),
                                  const SizedBox(
                                    height: 30,
                                  ),
                                  const Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'RECORD NO:',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(
                                        width: 4,
                                      ),
                                      Text(
                                        '0001',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                  DataTable(columns: const [
                                    DataColumn(
                                      label: Text('Property'),
                                    ),
                                    DataColumn(
                                      label: Text('Description'),
                                    ),
                                  ], rows: const [
                                    DataRow(cells: [
                                      DataCell(Text('Supplier')),
                                      DataCell(Text('Digitali')),
                                    ]),
                                    DataRow(cells: [
                                      DataCell(Text('Ouantity')),
                                      DataCell(Text('1')),
                                    ]),
                                    DataRow(cells: [
                                      DataCell(Text('Total Cost')),
                                      DataCell(Text('560,000')),
                                    ]),
                                    DataRow(cells: [
                                      DataCell(Text('Date Of Purchase')),
                                      DataCell(Text('02/20/2021')),
                                    ]),
                                    DataRow(cells: [
                                      DataCell(Text('Type/Category')),
                                      DataCell(Text('Software')),
                                    ])
                                  ])
                                ],
                              ),
                            )
                          ],
                        ),
                      );
                    });
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 121, 22, 15),
                minimumSize: const Size(30, 30),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50)),
              ),
              child: Icon(Icons.next_plan_rounded),
            ),
          ),
        ],
      ),
    ]);
  }
}