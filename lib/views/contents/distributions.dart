
import 'package:flutter/material.dart';
import 'package:go_project/models/distribution.dart';

import '../../design/app_colors.dart';
import '../../services/distribution_service.dart';

class DistributionsScreen extends StatefulWidget {
  const DistributionsScreen({Key? key}) : super(key: key);

  @override
  State<DistributionsScreen> createState() => _DistributionsScreenState();
}

class _DistributionsScreenState extends State<DistributionsScreen> {
  /*final List<Map> _salesChannels = [
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
  ];*/

  final List<Distribution> distributions = [];

  void getAllDistributions() {
    DistributionService.getAllDistributions().then((value) => {
      if (value != null){
        for (var data in value){
          distributions.add(Distribution.fromJson(data)),
        },
        if (mounted) setState(() {}),
      }
    });
  }

  @override
  void initState() {
    super.initState();
    getAllDistributions();
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
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  Text(
                    "Satış Kanalları",
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
                      "Buradan toplu satılan ürün raporunu oluşturabilir, ürünlerin satışlarının hangi \nkanallar üzerinde ne değerde yapıldığını görüntüleyebilirsiniz.",
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
          'Sipariş Edilen Ürün Adı',
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
          'Sipariş Adedi',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      const DataColumn(
        label: Text(
          'Satış Adedi',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      const DataColumn(
        label: Text(
          'Toplam Satış',
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
    return distributions
        .map((distribution) => DataRow(
      cells: [
        DataCell(Text("salesChannels['brand']", style: const TextStyle(fontFamily: "Rubik",fontSize: 16),)),
        DataCell(Text("salesChannels['productName']", style: const TextStyle(fontFamily: "Rubik",fontSize: 16),)),
        DataCell(Text("salesChannels['barcode']", style: const TextStyle(fontFamily: "Rubik",fontSize: 16),)),
        DataCell(Text("salesChannels['deliveryCount']", style: const TextStyle(fontFamily: "Rubik",fontSize: 16),)),
        DataCell(Text("salesChannels['sellingCount']", style: const TextStyle(fontFamily: "Rubik",fontSize: 16),)),
        DataCell(Text("salesChannels['totalSelling']", style: const TextStyle(fontFamily: "Rubik",fontSize: 16),)),
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
            if (distributions.indexOf(distribution).isEven) {
              return AppColors.primary30;
            }
            return null;
          }),
    ))
        .toList();
  }
}
