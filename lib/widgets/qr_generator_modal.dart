import 'package:flutter/material.dart';
import 'package:go_project/widgets/app_form.dart';

class QrGeneratorModal extends StatefulWidget {
  const QrGeneratorModal({Key? key}) : super(key: key);

  @override
  State<QrGeneratorModal> createState() => _QrGeneratorModalState();
}

class _QrGeneratorModalState extends State<QrGeneratorModal> {
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
                      Text("ID:2Q5CE8")
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
                              child: AppForm.appTextFormField(
                                  label: "Miktar",
                                  hint: "",
                                  controller: TextEditingController()),
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
            ElevatedButton(onPressed: () {}, child: Text("QR oluştur")),
          ],
        ),
      ],
      actionsPadding: EdgeInsets.all(8),
      contentPadding: EdgeInsets.all(16),
    );
  }
}
