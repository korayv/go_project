import 'package:flutter/material.dart';
import 'package:go_project/design/app_colors.dart';
import 'package:go_project/widgets/app_cards.dart';
import 'package:go_project/widgets/qr_generator_modal.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  final List<Map> _dashboard = [
    {
      'brand': "BP",
      'productName': '200 TL Restorant KART',
      'barcode': '984999454',
      'deliveryCount': "340",
      'sellingCount': '340',
      'totalSelling': '68,000 TL',
    },
    {
      'brand': "OPET",
      'productName': '4 Gecelik Hotel ',
      'barcode': '984999454',
      'deliveryCount': "340",
      'sellingCount': '340',
      'totalSelling': '850,000 TL',
    },
    {
      'brand': "ŞOK",
      'productName': '100 TL FASHION KART',
      'barcode': '984999454',
      'deliveryCount': "720",
      'sellingCount': '340',
      'totalSelling': '34,000 TL',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("Markalar", style: TextStyle(fontFamily: "Rubik", fontSize: 32),),
              Container(
                child: const Text("Daha önce hangi markada indirim kartımız kulanılmış ve ne zaman bu kullanım gerçekleşmiş bu tür bilgiler raporlanır.", style: TextStyle(fontFamily: "Rubik", fontSize: 16,color: AppColors.gray),),
              ),
               Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Text("Dasboard Screen"),
              ElevatedButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return
                            QrGeneratorModal();

                        });
                  },
                  child: Row(
                    children: [Icon(Icons.add), Text("QR oluştur")],
                  )),

            ],
          ),
          Container(
            padding: const EdgeInsets.all(12),
            //color: AppColors.warning,
            height: MediaQuery.of(context).size.height * 0.6,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  //mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        AppCards.dasboardCard(
                            color: AppColors.success90,
                            title: "Gelir",
                            content: "14.345",
                            onTap: () {}),
                        AppCards.dasboardCard(
                            color: AppColors.tertiary90,
                            title: "Gelir",
                            content: "14.345",
                            onTap: () {}),
                        AppCards.dasboardCard(
                            color: AppColors.danger90,
                            title: "Gelir",
                            content: "14.345",
                            onTap: () {}),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        AppCards.dasboardCard(
                            color: AppColors.warning,
                            title: "Gelir",
                            content: "14.345",
                            onTap: () {}),
                        AppCards.dasboardCard(
                            color: AppColors.primary70,
                            title: "Gelir",
                            content: "14.345",
                            onTap: () {}),
                        AppCards.dasboardCard(
                            color: AppColors.success90,
                            title: "Gelir",
                            content: "14.345",
                            onTap: () {}),
                      ],
                    ),
                  ],
                ),
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Image.network(
                    "https://support.content.office.net/tr-tr/media/5f8252c4-09fd-40a1-ae03-1d498f9dedfd.png",
                    fit: BoxFit.cover,
                  ),
                )),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(24),
            child: FittedBox(
              child: _createDataTable(),
            ),
          ),
        ],
      ),
    ]));
  }

  DataTable _createDataTable() {
    return DataTable(
        columns: _createColumns(),
        rows: _createRows());
  }

  List<DataColumn> _createColumns() {
    return [
      const DataColumn(label: Text('Marka', style: TextStyle(fontFamily: "Rubik",fontSize: 16),)),
      const DataColumn(label: Text('Sipariş edilen Ürün Adı', style: TextStyle(fontFamily: "Rubik",fontSize: 16),)),
      const DataColumn(label: Text('Barkod', style: TextStyle(fontFamily: "Rubik",fontSize: 16),)),
      const DataColumn(label: Text('Sipariş Adedi', style: TextStyle(fontFamily: "Rubik",fontSize: 16),)),
      const DataColumn(label: Text('Satış Adedi', style: TextStyle(fontFamily: "Rubik",fontSize: 16),)),
      const DataColumn(label: Text('Toplam Satış', style: TextStyle(fontFamily: "Rubik",fontSize: 16),)),
      const DataColumn(label: Text('İşlemler', style: TextStyle(fontFamily: "Rubik",fontSize: 16),)),
    ];
  }

  List<DataRow> _createRows() {
    return _dashboard
        .map((dashboard) => DataRow(
        cells: [
              DataCell(Text(dashboard['brand'], style: const TextStyle(fontFamily: "Rubik",fontSize: 16),)),
              DataCell(Text(dashboard['productName'], style: const TextStyle(fontFamily: "Rubik",fontSize: 16),)),
              DataCell(Text(dashboard['barcode'], style: const TextStyle(fontFamily: "Rubik",fontSize: 16),)),
              DataCell(Text(dashboard['deliveryCount'], style: const TextStyle(fontFamily: "Rubik",fontSize: 16),)),
              DataCell(Text(dashboard['sellingCount'], style: const TextStyle(fontFamily: "Rubik",fontSize: 16),)),
              DataCell(Text(dashboard['totalSelling'], style: const TextStyle(fontFamily: "Rubik",fontSize: 16),)),
              DataCell(Container(
                decoration: BoxDecoration(
                  color: AppColors.primary1,
                  borderRadius: BorderRadius.circular(4),
                  border: Border.all(color: AppColors.primary90)
                ),
                child: Row(
                  children: [
                    IconButton(onPressed: (){}, icon: const Icon(Icons.edit, color: AppColors.primary90,)),
                    IconButton(onPressed: (){}, icon: const Icon(Icons.delete, color: AppColors.primary90,)),
                  ],
                ),
              )),
            ],
         color: MaterialStateProperty.resolveWith<Color?>(
              (Set<MaterialState> states) {
            if (states.contains(MaterialState.selected)) {
              return AppColors.success90;
            }
            if (_dashboard.indexOf(dashboard).isEven) {
              return AppColors.primary30;
            }
            return null;

          }),
    )) .toList();
  }
}
