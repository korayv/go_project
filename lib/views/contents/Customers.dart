
import 'package:flutter/material.dart';

import '../../design/app_colors.dart';

class CustomersScreen extends StatefulWidget {
  const CustomersScreen({Key? key}) : super(key: key);

  @override
  State<CustomersScreen> createState() => _CustomersScreenState();
}

class _CustomersScreenState extends State<CustomersScreen> {
  final List<Map> _customers = [
    {
      'phoneNumber': '+90 555 252 5555',
      'purchasedProduct': '4 Gecelik Hotel',
      "barcode": "984999454",
      'userName': "-",
      'status': 'Henüz kullanılmadı',
    },
    {
      'phoneNumber': '+90 555 252 5555',
      'purchasedProduct': '4 Gecelik Hotel',
      "barcode": "984999454",
      'userName': "-",
      'status': 'Henüz kullanılmadı',
    },
    {
      'phoneNumber': '+90 555 252 5555',
      'purchasedProduct': '4 Gecelik Hotel',
      "barcode": "984999454",
      'userName': "-",
      'status': 'Henüz kullanılmadı',
    },
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
                    "Müşteriler",
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
                      "Müşteriler kısmından ürünü  satın alanların raporunu oluşturabilirsiniz. Ayrıca  \nmüşterilere ait bilgileri düzenleyebilir ve elle müdahale sağlayabilirsiniz.",
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
          'Cep Numarası',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      const DataColumn(
        label: Text(
          'Satın Aldığı Ürün',
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
          'Kullanıcı Adı',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      const DataColumn(
        label: Text(
          'Kullanım Durumu',
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
    return _customers
        .map((customers) => DataRow(
      cells: [
        DataCell(Text(customers['phoneNumber'], style: const TextStyle(fontFamily: "Rubik",fontSize: 16),)),
        DataCell(Text(customers['purchasedProduct'], style: const TextStyle(fontFamily: "Rubik",fontSize: 16),)),
        DataCell(Text(customers['barcode'], style: const TextStyle(fontFamily: "Rubik",fontSize: 16),)),
        DataCell(Text(customers['userName'], style: const TextStyle(fontFamily: "Rubik",fontSize: 16),)),
        DataCell(Text(customers['status'], style: const TextStyle(fontFamily: "Rubik",fontSize: 16),)),
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
            if (_customers.indexOf(customers).isEven) {
              return AppColors.primary30;
            }
            return null;
          }),
    ))
        .toList();
  }
}
