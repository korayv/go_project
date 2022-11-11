import 'package:flutter/material.dart';
import 'package:go_project/design/app_colors.dart';
import 'package:go_project/widgets/app_cards.dart';

import '../../widgets/qr_generator_modal.dart';

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
        padding: const EdgeInsets.all(24),
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text("Tarih Seçme Butonları Burada Olacak"),
              Row(
                children: [
                  ElevatedButton.icon(
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return const QrGeneratorModal();
                        },
                      );
                    },
                    icon: const Icon(Icons.add, size: 20),
                    label: const Text("QR Kod Oluştur"),
                  ),
                  ElevatedButton(
                    onPressed: () => {},
                    child: const Text("QR Kod Oluştur"),
                  ),
                  OutlinedButton(
                    onPressed: () => {},
                    child: const Text("QR Kod Oluştur"),
                  ),
                  OutlinedButton.icon(
                    onPressed: () => {},
                    icon: const Icon(Icons.add, size: 20),
                    label: const Text("QR Kod Oluştur"),
                  ),
                  /*TextButton(
                    onPressed: () => {},
                    child: const Text("QR Kod Oluştur"),
                  ),
                  TextButton.icon(
                    onPressed: () => {},
                    icon: const Icon(Icons.add, size: 20),
                    label: const Text("QR Kod Oluştur"),
                  ),*/
                ],
              ),
            ],
          ),
          const SizedBox(height: 24),
          Row(
            children: [
              Expanded(
                flex: 1,
                child: Row(
                  //mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IntrinsicWidth(
                      child: Column(
                        // mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          AppCards.dashboardCard(
                            color: AppColors.success90,
                            title: "Gelir",
                            content: "\$ 14.345",
                            onTap: () {},
                          ),
                          const SizedBox(height: 24),
                          AppCards.dashboardCard(
                            color: AppColors.tertiary90,
                            title: "Üretilen QR Kod Miktarı",
                            content: "450",
                            onTap: () {},
                          ),
                          const SizedBox(height: 24),
                          AppCards.dashboardCard(
                            color: AppColors.danger90,
                            title: "Havuzun Kullanım Oranı",
                            content: "% 47.7",
                            onTap: () {},
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 24),
                    IntrinsicWidth(
                      child: Column(
                        // mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          AppCards.dashboardCard(
                            color: AppColors.warning,
                            title: "Gelen Sipariş Miktarı",
                            content: "5.450",
                            onTap: () {},
                          ),
                          const SizedBox(height: 24),
                          AppCards.dashboardCard(
                            color: AppColors.primary70,
                            title: "Satılan Ürün Miktarı",
                            content: "37.890",
                            onTap: () {},
                          ),
                          const SizedBox(height: 24),
                          AppCards.dashboardCard(
                            color: AppColors.success90,
                            title: "Havuzdaki Para",
                            content: "\$ 125.903",
                            onTap: () {},
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Image.network(
                  "https://support.content.office.net/tr-tr/media/5f8252c4-09fd-40a1-ae03-1d498f9dedfd.png",
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
          const SizedBox(height: 24),
          FittedBox(child: _createDataTable()),
        ],
      ),
    ]));
  }

  DataTable _createDataTable() {
    return DataTable(columns: _createColumns(), rows: _createRows());
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
    return _dashboard
        .map((dashboard) => DataRow(
              cells: [
                DataCell(
                  Text(
                    dashboard['brand'],
                    style: const TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ),
                DataCell(
                  Text(
                    dashboard['productName'],
                    style: const TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ),
                DataCell(
                  Text(
                    dashboard['barcode'],
                    style: const TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ),
                DataCell(
                  Text(
                    dashboard['deliveryCount'],
                    style: const TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ),
                DataCell(
                  Text(
                    dashboard['sellingCount'],
                    style: const TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ),
                DataCell(
                  Text(
                    dashboard['totalSelling'],
                    style: const TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ),
                DataCell(
                  Container(
                    decoration: BoxDecoration(
                      color: AppColors.primary1,
                      borderRadius: BorderRadius.circular(4),
                      border: Border.all(color: AppColors.primary90),
                    ),
                    child: Row(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.edit_outlined,
                            color: AppColors.primary90,
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.delete_outline,
                            color: AppColors.primary90,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
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
            ))
        .toList();
  }
}
