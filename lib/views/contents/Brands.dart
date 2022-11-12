import 'package:flutter/material.dart';

import '../../design/app_colors.dart';


class BrandsScreen extends StatefulWidget {
  const BrandsScreen({Key? key}) : super(key: key);

  @override
  State<BrandsScreen> createState() => _BrandsScreenState();
}

class _BrandsScreenState extends State<BrandsScreen> {
  final List<Map> _brands = [
    {
      'brand': "lc waikiki",
      'productName': '100 TL FASHION KART',
      'branch': 'Fashion',
      'expiryDate': "22.10.22",
      'usageCost': '350 TL',
    },
    {
      'brand': "lc waikiki",
      'productName': '100 TL FASHION KART',
      'branch': 'Fashion',
      'expiryDate': "22.10.22",
      'usageCost': '350 TL',
    },
    {
      'brand': "lc waikiki",
      'productName': '100 TL FASHION KART',
      'branch': 'Fashion',
      'expiryDate': "22.10.22",
      'usageCost': '350 TL',
    }
  ];

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
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  Text(
                    "Markalar",
                    style: TextStyle(fontSize: 32),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Flexible(
                    child: Text(
                      "Daha önce hangi markada indirim kartımız kulanılmış ve ne zaman bu kullanım \ngerçekleşmiş bu tür bilgiler raporlanır.",
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
    return DataTable(
        columns: _createColumns(),
        rows: _createRows());
  }

  List<DataColumn> _createColumns() {
    return [
      const DataColumn(
        label: Text(
          'Marka',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
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
          'Branşı',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      const DataColumn(
        label: Text(
          'Kullanım Tarihi',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      const DataColumn(
        label: Text(
          'Kullanım Bedeli',
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
    return _brands
        .map((brands) => DataRow(
      cells: [
        DataCell(Text(brands['brand'], style: const TextStyle(fontFamily: "Rubik",fontSize: 16),)),
        DataCell(Text(brands['productName'], style: const TextStyle(fontFamily: "Rubik",fontSize: 16),)),
        DataCell(Text(brands['branch'], style: const TextStyle(fontFamily: "Rubik",fontSize: 16),)),
        DataCell(Text(brands['expiryDate'], style: const TextStyle(fontFamily: "Rubik",fontSize: 16),)),
        DataCell(Text(brands['usageCost'], style: const TextStyle(fontFamily: "Rubik",fontSize: 16),)),
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
            if (_brands.indexOf(brands).isEven) {
              return AppColors.primary30;
            }
            return null;
          }),
    ))
        .toList();
  }
}
