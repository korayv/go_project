
import 'package:flutter/material.dart';

import '../../design/app_colors.dart';

class SalesChannelsScreen extends StatefulWidget {
  const SalesChannelsScreen({Key? key}) : super(key: key);

  @override
  State<SalesChannelsScreen> createState() => _SalesChannelsScreenState();
}

class _SalesChannelsScreenState extends State<SalesChannelsScreen> {
  final List<Map> _salesChannels = [
    {
      'brand': "BP",
      'productName': '200 TL Restorant KART',
      'barcode': '984999454',
      'deliveryCount': "340",
      'sellingCount': '340',
      'totalSelling': '68,000 TL',
    },
    {
      'brand': "BP",
      'productName': '200 TL Restorant KART',
      'barcode': '984999454',
      'deliveryCount': "340",
      'sellingCount': '340',
      'totalSelling': '68,000 TL',
    },
    {
      'brand': "BP",
      'productName': '200 TL Restorant KART',
      'barcode': '984999454',
      'deliveryCount': "340",
      'sellingCount': '340',
      'totalSelling': '68,000 TL',
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
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(24),
            child: FittedBox(
              child: _createDataTable(),
            ),
          ),
        ],
      ),
    );
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
    return _salesChannels
        .map((salesChannels) => DataRow(
      cells: [
        DataCell(Text(salesChannels['brand'], style: const TextStyle(fontFamily: "Rubik",fontSize: 16),)),
        DataCell(Text(salesChannels['productName'], style: const TextStyle(fontFamily: "Rubik",fontSize: 16),)),
        DataCell(Text(salesChannels['barcode'], style: const TextStyle(fontFamily: "Rubik",fontSize: 16),)),
        DataCell(Text(salesChannels['deliveryCount'], style: const TextStyle(fontFamily: "Rubik",fontSize: 16),)),
        DataCell(Text(salesChannels['sellingCount'], style: const TextStyle(fontFamily: "Rubik",fontSize: 16),)),
        DataCell(Text(salesChannels['totalSelling'], style: const TextStyle(fontFamily: "Rubik",fontSize: 16),)),
        DataCell(
            Container(
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
            if (_salesChannels.indexOf(salesChannels).isEven) {
              return AppColors.primary30;
            }
            return null;
          }),
    ))
        .toList();
  }
}
