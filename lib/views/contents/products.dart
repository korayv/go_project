import 'package:flutter/material.dart';
import 'package:go_project/models/product.dart';

import '../../design/app_colors.dart';
import '../../services/product_service.dart';

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

  final List<Product> products = [];

  void getAllProducts() {
    ProductService.getAllProducts().then((value) => {
      if (value != null){
        for (var data in value){
          products.add(Product.fromJson(data)),
        },
        if (mounted) setState(() {}),
      }
    });
  }

  @override
  void initState() {
    super.initState();
    getAllProducts();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.all(24),
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    "Oluşturulan Kartlar",
                    style: TextStyle(fontSize: 32),
                  ),
                  ElevatedButton.icon(
                    onPressed: () {},
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
                      "Products kısmından üretilen ürünler hakkında rapor oluşturabilir ve yeni barkoda \nsahip yeni ürünler oluşturabilirsiniz.",
                      style: TextStyle(
                        fontSize: 16,
                        color: AppColors.gray,
                      ),
                      // softWrap: false,
                      maxLines: 2,
                      // overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Row(
                    children: [
                      OutlinedButton.icon(
                        onPressed: () => {},
                        icon: const Icon(Icons.file_download_outlined, size: 20),
                        label: const Text("İçe Aktar"),
                      ),
                      const SizedBox(width: 16),
                      OutlinedButton.icon(
                        onPressed: () => {},
                        icon: const Icon(Icons.file_copy_outlined, size: 20),
                        label: const Text("Dışa Aktar"),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 24),
          FittedBox(child: _createDataTable()),
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
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      const DataColumn(
        label: Text(
          'Barkod',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      const DataColumn(
        label: Text(
          'Branşı',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      const DataColumn(
        label: Text(
          'Ürün Adedi',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      const DataColumn(
        label: Text(
          'Değeri',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      const DataColumn(
        label: Text(
          'Tarihi',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      const DataColumn(
        label: Text(
          'İşlemler',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    ];
  }

  List<DataRow> _createRows() {
    return products
        .map((product) => DataRow(
              cells: [
                DataCell(Text(
                  product.name.toString(),
                  style: const TextStyle(fontFamily: "Rubik", fontSize: 16),
                )),
                DataCell(Text(
                  product.barcode.toString(),
                  style: const TextStyle(fontFamily: "Rubik", fontSize: 16),
                )),
                DataCell(Text(
                  "products['branch']",
                  style: const TextStyle(fontFamily: "Rubik", fontSize: 16),
                )),
                DataCell(Text(
                  "products['productCount']",
                  style: const TextStyle(fontFamily: "Rubik", fontSize: 16),
                )),
                DataCell(Text(
                  product.price.toString(),
                  style: const TextStyle(fontFamily: "Rubik", fontSize: 16),
                )),
                DataCell(Text(
                  product.createdAt.toString(),
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
                if (products.indexOf(product).isEven) {
                  return AppColors.primary30;
                }
                return null;
              }),
            ))
        .toList();
  }
}
