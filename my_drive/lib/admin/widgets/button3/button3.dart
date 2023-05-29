import 'package:flutter/material.dart';

class Button3 extends StatelessWidget {
  const Button3({super.key});

  @override
  Widget build(BuildContext context) {
    return DataTable(columns: const [
      DataColumn(
        label: Text('ID'),
      ),
      DataColumn(
        label: Text('User Full Name'),
      ),
      DataColumn(
        label: Text('Action'),
      ),
    ], rows: [
      DataRow(
        cells: [
          const DataCell(Text('1')),
          const DataCell(Text('Janel Kimunto')),
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
                minimumSize: const Size(40, 40),
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
          const DataCell(Text('Jenipher Onyango')),
          DataCell(
            ElevatedButton(
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        backgroundColor: Color.fromARGB(255, 250, 248, 248),
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
                minimumSize: const Size(40, 40),
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
          const DataCell(Text('Brian Kimani')),
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
                                        const Color.fromARGB(255, 121, 22, 15),
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
                minimumSize: const Size(40, 40),
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
          const DataCell(Text('Annise Onyango')),
          DataCell(
            ElevatedButton(
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        backgroundColor: Color.fromARGB(255, 250, 248, 248),
                        content: Stack(
                          children: <Widget>[
                            Container(
                              child: Column(
                                children: [
                                  const CircleAvatar(
                                    child: Icon(Icons.close),
                                    backgroundColor:
                                        const Color.fromARGB(255, 121, 22, 15),
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
               minimumSize: const Size(40, 40),
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
          const DataCell(Text('Alice Kimanzi')),
          DataCell(
            ElevatedButton(
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        backgroundColor: Color.fromARGB(255, 250, 248, 248),
                        content: Stack(
                          children: <Widget>[
                            Container(
                              child: Column(
                                children: [
                                  const CircleAvatar(
                                    child: Icon(Icons.close),
                                    backgroundColor:
                                        const Color.fromARGB(255, 121, 22, 15),
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
                 minimumSize: const Size(40, 40),
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
          const DataCell(Text('Simon Peter')),
          DataCell(
            ElevatedButton(
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        backgroundColor: Color.fromARGB(255, 250, 248, 248),
                        content: Stack(
                          children: <Widget>[
                            Container(
                              child: Column(
                                children: [
                                  const CircleAvatar(
                                    child: Icon(Icons.close),
                                    backgroundColor:
                                        const Color.fromARGB(255, 121, 22, 15),
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
                minimumSize: const Size(40, 40),
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
          const DataCell(Text('Paiuline Onyango')),
          DataCell(
            ElevatedButton(
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        backgroundColor: Color.fromARGB(255, 250, 248, 248),
                        content: Stack(
                          children: <Widget>[
                            Container(
                              child: Column(
                                children: [
                                  const CircleAvatar(
                                    child: Icon(Icons.close),
                                    backgroundColor:
                                        const Color.fromARGB(255, 121, 22, 15),
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
               minimumSize: const Size(40, 40),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50)),
              ),
              child: Icon(Icons.next_plan_rounded),
            ),
          ),
        ],
      )
    ]);
  }
}
