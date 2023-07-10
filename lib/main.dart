import 'package:ecommerce/Screens/StoreDetailPage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'Controllers/Stores_List_Controller.dart';
import 'Controllers/controller_bindings.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: ControllerBindings(),
      home:  MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
 Controller _controller = Get.put(Controller());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Stores'),
      centerTitle: true,),
      body:Column(
        children: [
          Expanded(
            child: Container(
              child: SizedBox(height: MediaQuery.of(context).size.height,
                child: Obx(() => ListView.builder(
                      itemCount: _controller.StoreList.length,
                      scrollDirection: Axis.vertical,
                      itemBuilder: (BuildContext context, int index) {
                        return Storesseven(
                          storename: "${_controller.StoreList[index][2]}",
                          storeadd: "${_controller.StoreList[index][3]}",
                        );
                  }),),
                ),

            ),
          ),
        ],
      )
    );
  }
}

class Storesseven extends StatelessWidget {
  Storesseven({Key? key, required this.storename, required this.storeadd}) : super(key: key);
  final String storename;
  final String storeadd;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical:13 ,horizontal: 14),
      child: Card(elevation: 2,
        child: ListTile(onTap:()=>Get.to(()=>StoreDetails(storename: storename, storeadd: storeadd)),
          leading:Icon(Icons.home) ,
          title: Text(storename) ,
          subtitle: Text(storeadd) ,
          trailing: Icon(Icons.arrow_forward_ios_outlined),
        ),
      ),
    );
  }
}

