import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';

class AwesomeDialogg extends StatefulWidget {
  const AwesomeDialogg({super.key});

  @override
  State<AwesomeDialogg> createState() => _AwesomeDialoggState();
}

class _AwesomeDialoggState extends State<AwesomeDialogg> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Awesome Dialog Example"),
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(16),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                item_dialog(color: Colors.red),
                item_dialog(color: Colors.green),
                item_dialog(color: Colors.blue),
                item_dialog(color: Colors.orange),
                item_dialog(color: Colors.pink),
                item_dialog(color: Colors.brown),
                item_dialog(color: Colors.lightBlueAccent),
              ],
            ),
          ),
        ),
      ),
    );
  }
  Widget item_dialog ({color}){
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: AnimatedButton(
        color: color,
        text: "Info Dialog fixed width and square buttons",
        pressEvent: () {
          AwesomeDialog(
            context: context,
            dialogType: DialogType.info,
            borderSide: BorderSide(
              color: Colors.green,
              width: 2,
            ),
            width: MediaQuery.of(context).size.width*1,
            buttonsBorderRadius: BorderRadius.all(
              Radius.circular(2),
            ),
            dismissOnTouchOutside: true,
            dismissOnBackKeyPress: false,
            onDismissCallback: (type) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text("Dismissed by $type"),
                ),
              );
            },
            headerAnimationLoop: false,
            animType: AnimType.bottomSlide,
            title: "INFO",
            desc: "This Dialog can be dismissed touching outside",
            showCloseIcon: true,
            btnCancelOnPress: () {},
            btnOkOnPress: () {},
          ).show();
        },
      ),
    );
  }
}
