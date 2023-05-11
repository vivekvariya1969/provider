import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(GetMaterialApp(home: MaterialApp(home: provider()),));
}
class provider extends StatelessWidget {
  const provider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: ChangeNotifierProvider(
    create: (context) => Myprovider(),
  child: Consumer<Myprovider>(
  builder: (context, value, child) {
    return Column(
    children: [
      Text("${value.cnt}"),
     ElevatedButton(onPressed: () {
       value.Mysum();
     }, child: child)


    ],
    );

  },
  )
    ),

    );
  }
}
class Myprovider extends ChangeNotifier{
  int cnt=0;

  void Mysum(){
    cnt++;
    notifyListeners();
}

}
