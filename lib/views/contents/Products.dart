
import 'package:flutter/material.dart';
import 'package:go_project/widgets/app_form.dart';

import '../../design/app_colors.dart';

class ProductsScreen extends StatefulWidget {
  const ProductsScreen({Key? key}) : super(key: key);

  @override
  State<ProductsScreen> createState() => _ProductsScreenState();
}

class _ProductsScreenState extends State<ProductsScreen> {
  final List<Map> _products = [
    {
      'productName': '200 TL Restorant KART',
      'barcode': '984999454',
      "branch": "Fashion",
      'productCount': "340",
      'cost': '50 TL',
      'date': '22.10.22',
    },
    {
      'productName': '200 TL Restorant KART',
      'barcode': '984999454',
      "branch": "Fashion",
      'productCount': "340",
      'cost': '50 TL',
      'date': '22.10.22',
    },
    {
      'productName': '200 TL Restorant KART',
      'barcode': '984999454',
      "branch": "Fashion",
      'productCount': "340",
      'cost': '50 TL',
      'date': '22.10.22',
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
      const DataColumn(label: Text('Ürün Adı', style: TextStyle(fontFamily: "Rubik",fontSize: 16),)),
      const DataColumn(label: Text('Barkod', style: TextStyle(fontFamily: "Rubik",fontSize: 16),)),
      const DataColumn(label: Text('Branşı', style: TextStyle(fontFamily: "Rubik",fontSize: 16),)),
      const DataColumn(label: Text('Ürün Adedi', style: TextStyle(fontFamily: "Rubik",fontSize: 16),)),
      const DataColumn(label: Text('Değeri', style: TextStyle(fontFamily: "Rubik",fontSize: 16),)),
      const DataColumn(label: Text('Tarihi', style: TextStyle(fontFamily: "Rubik",fontSize: 16),)),
      const DataColumn(label: Text('İşlemler', style: TextStyle(fontFamily: "Rubik",fontSize: 16),)),
    ];
  }

  List<DataRow> _createRows() {
    return _products
        .map((products) => DataRow(
      cells: [
        DataCell(Text(products['productName'], style: const TextStyle(fontFamily: "Rubik",fontSize: 16),)),
        DataCell(Text(products['barcode'], style: const TextStyle(fontFamily: "Rubik",fontSize: 16),)),
        DataCell(Text(products['branch'], style: const TextStyle(fontFamily: "Rubik",fontSize: 16),)),
        DataCell(Text(products['productCount'], style: const TextStyle(fontFamily: "Rubik",fontSize: 16),)),
        DataCell(Text(products['cost'], style: const TextStyle(fontFamily: "Rubik",fontSize: 16),)),
        DataCell(Text(products['date'], style: const TextStyle(fontFamily: "Rubik",fontSize: 16),)),
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
            if (_products.indexOf(products).isEven) {
              return AppColors.primary30;
            }
            return null;
          }),
    ))
        .toList();
  }
}
