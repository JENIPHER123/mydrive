import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import '../widgets/button1/button1.dart';
import '../widgets/sidenav/sidenav.dart';

class CompanyAssets extends StatefulWidget {
  const CompanyAssets({super.key});

  @override
  State<CompanyAssets> createState() => _CompanyAssetsState();
}

class _CompanyAssetsState extends State<CompanyAssets> {
  /* variable declaration */
  final assetcategoryController = TextEditingController();
  final assetcodeController = TextEditingController();
  final assetcostController = TextEditingController();
  final assetnameController = TextEditingController();
  final assetsupplierController = TextEditingController();
  final dateofpurchaseController = TextEditingController();
  /* function for creating data */
  Future createAsset({
    required String asset_category,
    required String asset_name,
    required String asset_cost,
    required String asset_supplier,
    required String date_of_purchase,
    required String asset_code,
  }) async {
    final docUser =
        FirebaseFirestore.instance.collection('assets').doc('asset trial');
    final json = {
      'asset_category': asset_category,
      'asset_name': asset_name,
      'asset_cost': asset_cost,
      'asset_supplier': asset_supplier,
      'date_of_purchase': date_of_purchase,
      'asset_code': asset_code,
    };
    await docUser.set(json);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const AdminSideNav(),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 121, 22, 15),
        title: const Text('Analytics and Data'),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 12,
              ),
              Padding(
                padding: const EdgeInsetsDirectional.symmetric(vertical: 30),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, 'admin-analytics');
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 139, 22, 14),
                    minimumSize: const Size(300, 60),
                    side: const BorderSide(
                      color: Color.fromARGB(255, 250, 249, 249),
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: const Text(
                    'Explore Analytical Data',
                  ),
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Good Afternoon',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    SizedBox(
                      width: 4,
                    ),
                    Text(
                      'Jenipher',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    )
                  ],
                ),
              ),
              const Text(
                "view company's Assets",
                style: TextStyle(color: Colors.grey),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor:
                                const Color.fromARGB(255, 121, 22, 15),
                            minimumSize: const Size(60, 60),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(60))),
                        onPressed: () {
                          showDialog(
                              context: context,
                              builder: (ctx) => AlertDialog(
                                    backgroundColor:
                                        Color.fromARGB(255, 194, 193, 193),
                                    content: Stack(
                                      children: <Widget>[
                                        Form(
                                          child: SingleChildScrollView(
                                            child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              children: <Widget>[
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.all(8.0),
                                                  child: Positioned(
                                                    top: -190.0,
                                                    child: InkResponse(
                                                      onTap: () {
                                                        Navigator.of(context)
                                                            .pop();
                                                      },
                                                      child: const CircleAvatar(
                                                        child:
                                                            Icon(Icons.close),
                                                        backgroundColor:
                                                            const Color
                                                                    .fromARGB(
                                                                255,
                                                                121,
                                                                22,
                                                                15),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.all(8.0),
                                                  child: TextField(
                                                    controller:
                                                        assetnameController,
                                                    decoration:
                                                        const InputDecoration(
                                                            hintText:
                                                                'Asset Name',
                                                            hintStyle: TextStyle(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                color:
                                                                    Color.fromARGB(
                                                                        255,
                                                                        201,
                                                                        199,
                                                                        199)),
                                                            enabledBorder:
                                                                OutlineInputBorder(
                                                              borderSide:
                                                                  BorderSide(
                                                                color: Colors
                                                                    .white,
                                                              ),
                                                            ),
                                                            focusedBorder:
                                                                OutlineInputBorder(
                                                              borderSide:
                                                                  BorderSide(
                                                                color: Color
                                                                    .fromARGB(
                                                                        255,
                                                                        216,
                                                                        211,
                                                                        210),
                                                              ),
                                                            ),
                                                            fillColor:
                                                                Colors.white,
                                                            filled: true),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.all(8.0),
                                                  child: TextField(
                                                    controller:
                                                        assetcodeController,
                                                    decoration:
                                                        const InputDecoration(
                                                            hintText:
                                                                'Asset Code',
                                                            hintStyle: TextStyle(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                color:
                                                                    Color.fromARGB(
                                                                        255,
                                                                        201,
                                                                        199,
                                                                        199)),
                                                            enabledBorder:
                                                                OutlineInputBorder(
                                                              borderSide:
                                                                  BorderSide(
                                                                color: Colors
                                                                    .white,
                                                              ),
                                                            ),
                                                            focusedBorder:
                                                                OutlineInputBorder(
                                                              borderSide:
                                                                  BorderSide(
                                                                color: Color
                                                                    .fromARGB(
                                                                        255,
                                                                        216,
                                                                        211,
                                                                        210),
                                                              ),
                                                            ),
                                                            fillColor:
                                                                Colors.white,
                                                            filled: true),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.all(8.0),
                                                  child: TextField(
                                                    controller:
                                                        assetcategoryController,
                                                    decoration:
                                                        const InputDecoration(
                                                            hintText:
                                                                'Asset Category',
                                                            hintStyle: TextStyle(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                color:
                                                                    Color.fromARGB(
                                                                        255,
                                                                        201,
                                                                        199,
                                                                        199)),
                                                            enabledBorder:
                                                                OutlineInputBorder(
                                                              borderSide:
                                                                  BorderSide(
                                                                color: Colors
                                                                    .white,
                                                              ),
                                                            ),
                                                            focusedBorder:
                                                                OutlineInputBorder(
                                                              borderSide:
                                                                  BorderSide(
                                                                color: Color
                                                                    .fromARGB(
                                                                        255,
                                                                        216,
                                                                        211,
                                                                        210),
                                                              ),
                                                            ),
                                                            fillColor:
                                                                Colors.white,
                                                            filled: true),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.all(8.0),
                                                  child: TextField(
                                                    controller:
                                                        assetcostController,
                                                    decoration:
                                                        const InputDecoration(
                                                            hintText:
                                                                'Asset Cost',
                                                            hintStyle: TextStyle(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                color:
                                                                    Color.fromARGB(
                                                                        255,
                                                                        201,
                                                                        199,
                                                                        199)),
                                                            enabledBorder:
                                                                OutlineInputBorder(
                                                              borderSide:
                                                                  BorderSide(
                                                                color: Colors
                                                                    .white,
                                                              ),
                                                            ),
                                                            focusedBorder:
                                                                OutlineInputBorder(
                                                              borderSide:
                                                                  BorderSide(
                                                                color: Color
                                                                    .fromARGB(
                                                                        255,
                                                                        216,
                                                                        211,
                                                                        210),
                                                              ),
                                                            ),
                                                            fillColor:
                                                                Colors.white,
                                                            filled: true),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.all(8.0),
                                                  child: TextField(
                                                    controller:
                                                        assetsupplierController,
                                                    decoration:
                                                        const InputDecoration(
                                                            hintText:
                                                                'Supplier Name',
                                                            hintStyle: TextStyle(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                color:
                                                                    Color.fromARGB(
                                                                        255,
                                                                        201,
                                                                        199,
                                                                        199)),
                                                            enabledBorder:
                                                                OutlineInputBorder(
                                                              borderSide:
                                                                  BorderSide(
                                                                color: Colors
                                                                    .white,
                                                              ),
                                                            ),
                                                            focusedBorder:
                                                                OutlineInputBorder(
                                                              borderSide:
                                                                  BorderSide(
                                                                color: Color
                                                                    .fromARGB(
                                                                        255,
                                                                        216,
                                                                        211,
                                                                        210),
                                                              ),
                                                            ),
                                                            fillColor:
                                                                Colors.white,
                                                            filled: true),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.all(8.0),
                                                  child: TextField(
                                                    controller:
                                                        dateofpurchaseController,
                                                    decoration:
                                                        const InputDecoration(
                                                            hintText:
                                                                'Date Of Purchase',
                                                            hintStyle: TextStyle(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                color:
                                                                    Color.fromARGB(
                                                                        255,
                                                                        201,
                                                                        199,
                                                                        199)),
                                                            enabledBorder:
                                                                OutlineInputBorder(
                                                              borderSide:
                                                                  BorderSide(
                                                                color: Colors
                                                                    .white,
                                                              ),
                                                            ),
                                                            focusedBorder:
                                                                OutlineInputBorder(
                                                              borderSide:
                                                                  BorderSide(
                                                                color: Color
                                                                    .fromARGB(
                                                                        255,
                                                                        216,
                                                                        211,
                                                                        210),
                                                              ),
                                                            ),
                                                            fillColor:
                                                                Colors.white,
                                                            filled: true),
                                                  ),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.all(8.0),
                                                  child: ElevatedButton(
                                                    onPressed: () {
                                                      final asset_name =
                                                          assetnameController
                                                              .text;
                                                      final asset_code =
                                                          assetcodeController
                                                              .text;
                                                      final asset_category =
                                                          assetcategoryController
                                                              .text;
                                                      final asset_cost =
                                                          assetcostController
                                                              .text;
                                                      final date_of_purchase =
                                                          dateofpurchaseController
                                                              .text;
                                                      final supplier_name =
                                                          assetsupplierController
                                                              .text;

                                                      createAsset(
                                                        asset_name: asset_name,
                                                        asset_code: asset_code,
                                                        asset_cost: asset_cost,
                                                        asset_category:
                                                            asset_category,
                                                        date_of_purchase:
                                                            date_of_purchase,
                                                        asset_supplier:
                                                            supplier_name,
                                                      );
                                                      Navigator.of(ctx).pop();
                                                    },
                                                    style: ElevatedButton
                                                        .styleFrom(
                                                      backgroundColor:
                                                          const Color.fromARGB(
                                                              255, 121, 22, 15),
                                                      minimumSize:
                                                          const Size(300, 50),
                                                      shape:
                                                          RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8)),
                                                    ),
                                                    child: const Text(
                                                        'Save Details'),
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ));
                        },
                        child: Icon(Icons.analytics),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        'Add Asset',
                        style: TextStyle(
                          color: const Color.fromARGB(255, 121, 22, 15),
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor:
                                const Color.fromARGB(255, 121, 22, 15),
                            minimumSize: const Size(60, 60),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(60))),
                        onPressed: () {},
                        child: Icon(Icons.money_off_csred),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        'Filter Year',
                        style: TextStyle(
                          color: const Color.fromARGB(255, 121, 22, 15),
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor:
                                const Color.fromARGB(255, 121, 22, 15),
                            minimumSize: const Size(60, 60),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(60))),
                        onPressed: () {},
                        child: Icon(Icons.house),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        'Filter Type',
                        style: TextStyle(
                          color: const Color.fromARGB(255, 121, 22, 15),
                        ),
                      )
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Button1(),
              const SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
