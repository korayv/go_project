import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:go_project/widgets/app_form.dart';
import 'dart:math';

class QrGeneratorModal extends StatefulWidget {
  const QrGeneratorModal({Key? key}) : super(key: key);

  @override
  State<QrGeneratorModal> createState() => _QrGeneratorModalState();
}

class _QrGeneratorModalState extends State<QrGeneratorModal> {
  String generateCode(int len) {
    var r = Random();
    const _chars = 'AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz1234567890';
    return List.generate(len, (index) => _chars[r.nextInt(_chars.length)]).join();
  }
  String qr = '';
  List<String> qrList =[];
  TextEditingController amountController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: SizedBox(
        width: 574,
        height: 300,
        child: Column(
          children: [
            Align(
                alignment: Alignment.centerRight,
                child: IconButton(onPressed: (){Navigator.pop(context);}, icon:Icon(Icons.close),splashRadius: 16,)),
            SizedBox(
              height: 260,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text("QR"),
                          Container(
                            width: 200,
                            height: 200,
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.black, width: 2),
                                borderRadius: BorderRadius.circular(4)),
                          ),
                        ],
                      ),
                      Text("ID:$qr")
                    ],
                  ),
                  Container(
                    width: 350,
                    child: Column(
                      children: [
                        AppForm.appTextFormField(
                            label: "İsim",
                            hint: "",
                            controller: TextEditingController()),
                        SizedBox(
                          height: 16,
                        ),
                        Row(
                          children: [
                            Expanded(
                              flex: 1,
                              child: AppForm.appTextFormField(
                                  label: "Değer",
                                  hint: "",
                                  controller: TextEditingController()),
                            ),
                            SizedBox(
                              width: 16,
                            ),
                            Expanded(
                              flex: 1,
                              child: AppForm.appTextFormFieldRegexNumber(
                                  label: "Miktar",
                                  hint: "",
                                  controller: amountController, keyboardType: TextInputType.number, key: GlobalKey() ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        AppForm.appTextFormField(
                            label: "Tür",
                            hint: "",
                            controller: TextEditingController()),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      actions: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            ElevatedButton(
                onPressed: () {},
                child: Row(
                  children: [
                    Icon(
                      Icons.save,
                      size: 20,
                    ),
                    Text("Dosyalara Kaydet")
                  ],
                )),
            SizedBox(
              width: 16,
            ),
            ElevatedButton(onPressed: () {
              if(amountController.text.isEmpty){
                amountController.text='0';
              }
              for(int i = 0;i<int.parse(amountController.text);i++){
                int counter=i+1;
                qr=generateCode(8);
                qrList.add(qr);
                print("QR kod $counter: $qr");
              }



            }, child: Text("QR oluştur")),
          ],
        ),
      ],
      actionsPadding: EdgeInsets.all(8),
      contentPadding: EdgeInsets.all(16),
    );
  }
}
