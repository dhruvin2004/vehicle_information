import 'package:flutter/material.dart';
import 'package:whatsapp_sticker_app/httpService.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: AppBarTheme(centerTitle: true,color: Colors.black,elevation: 0)
      ),
      home: HomePage(),
    );
  }
}


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  TextEditingController controller = TextEditingController();

  String name = "";
  void initState() {
    // TODO: implement initState
    super.initState();
    httpService.getVehicleData("");
  }
HttpService httpService = HttpService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        padding: const EdgeInsets.all(12),
        children: [
          TextField(
            controller: controller,
            onChanged: (val){
              name = val;
            },
            decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.white),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.grey.shade400),
                ),
                fillColor: Colors.grey.shade200,
                filled: true,
                hintText: "Enter Vehicle No",
                hintStyle: TextStyle(color: Colors.grey[500])),
          ),
          MaterialButton(onPressed: (){

          },child: Text("Search"),),
        ],
      ),
    );
  }
}
