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
        padding: EdgeInsets.all(24),
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Oluşturulan kartlar",
                    style: TextStyle(fontFamily: "Rubik", fontSize: 32),
                  ),
                  ElevatedButton.icon(
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return Text("");
                        },
                      );
                    },
                    icon: const Icon(Icons.add, size: 20),
                    label: const Text("Yeni Ürün Ekle"),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Flexible(
                    child: Text(
                      "Products kısmından üretilen ürünler hakkında rapor oluşturabilir ve yeni barkoda sahip yeni ürünler oluşturulabilir.",
                      style: TextStyle(
                          fontFamily: "Rubik",
                          fontSize: 16,
                          color: AppColors.gray),
                      softWrap: false,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  OutlinedButton.icon(
                    onPressed: () => {},
                    icon: const Icon(Icons.file_download, size: 20),
                    label: const Text("İçe Aktar"),
                  ),
                  const SizedBox(width: 16),
                  OutlinedButton.icon(
                    onPressed: () => {},
                    icon: const Icon(Icons.file_copy_sharp, size: 20),
                    label: const Text("Dışa Aktar"),
                  ),
                ],
              ),
            ],
          ),
          FittedBox(
            child: _createDataTable(),
          ),
        ],
      ),
    );
  }

  DataTable _createDataTable() {
    return DataTable(columns: _createColumns(), rows: _createRows());
  }

  List<DataColumn> _createColumns() {
    return [
      const DataColumn(
          label: Text(
        'Ürün Adı',
        style: TextStyle(fontFamily: "Rubik", fontSize: 16),
      )),
      const DataColumn(
          label: Text(
        'Barkod',
        style: TextStyle(fontFamily: "Rubik", fontSize: 16),
      )),
      const DataColumn(
          label: Text(
        'Branşı',
        style: TextStyle(fontFamily: "Rubik", fontSize: 16),
      )),
      const DataColumn(
          label: Text(
        'Ürün Adedi',
        style: TextStyle(fontFamily: "Rubik", fontSize: 16),
      )),
      const DataColumn(
          label: Text(
        'Değeri',
        style: TextStyle(fontFamily: "Rubik", fontSize: 16),
      )),
      const DataColumn(
          label: Text(
        'Tarihi',
        style: TextStyle(fontFamily: "Rubik", fontSize: 16),
      )),
      const DataColumn(
          label: Text(
        'İşlemler',
        style: TextStyle(fontFamily: "Rubik", fontSize: 16),
      )),
    ];
  }

  List<DataRow> _createRows() {
    return _products
        .map((products) => DataRow(
              cells: [
                DataCell(Text(
                  products['productName'],
                  style: const TextStyle(fontFamily: "Rubik", fontSize: 16),
                )),
                DataCell(Text(
                  products['barcode'],
                  style: const TextStyle(fontFamily: "Rubik", fontSize: 16),
                )),
                DataCell(Text(
                  products['branch'],
                  style: const TextStyle(fontFamily: "Rubik", fontSize: 16),
                )),
                DataCell(Text(
                  products['productCount'],
                  style: const TextStyle(fontFamily: "Rubik", fontSize: 16),
                )),
                DataCell(Text(
                  products['cost'],
                  style: const TextStyle(fontFamily: "Rubik", fontSize: 16),
                )),
                DataCell(Text(
                  products['date'],
                  style: const TextStyle(fontFamily: "Rubik", fontSize: 16),
                )),
                DataCell(Container(
                  decoration: BoxDecoration(
                      color: AppColors.primary1,
                      borderRadius: BorderRadius.circular(4),
                      border: Border.all(color: AppColors.primary90)),
                  child: Row(
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.edit,
                            color: AppColors.primary90,
                          )),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.delete,
                            color: AppColors.primary90,
                          )),
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
