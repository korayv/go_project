
import 'package:flutter/material.dart';
import 'package:go_project/design/app_colors.dart';
import 'package:go_project/widgets/app_cards.dart';

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
          const Text("Dasboard Screen"),
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
          _createDataTable(),
        ],
      ),
    );
  }

  DataTable _createDataTable() {
    return DataTable(
        dataRowColor: MaterialStateProperty.resolveWith<Color?>((Set<MaterialState> states) {
          if (states.contains(MaterialState.selected))
            return AppColors.danger90;
          return AppColors.primary30;  // Use the default value.
        }),
        columns: _createColumns(),
        rows: _createRows());
  }

  List<DataColumn> _createColumns() {
    return [
      const DataColumn(label: Text('Marka')),
      const DataColumn(label: Text('Sipariş edilen Ürün Adı')),
      const DataColumn(label: Text('Barkod')),
      const DataColumn(label: Text('Sipariş Adedi')),
      const DataColumn(label: Text('Satış Adedi')),
      const DataColumn(label: Text('Toplam Satış')),
      const DataColumn(label: Text('İşlemler')),
    ];
  }

  List<DataRow> _createRows() {
    return _dashboard
        .map((dashboard) => DataRow(
        cells: [
              DataCell(Text(dashboard['brand'])),
              DataCell(Text(dashboard['productName'])),
              DataCell(Text(dashboard['barcode'])),
              DataCell(Text(dashboard['deliveryCount'])),
              DataCell(Text(dashboard['sellingCount'])),
              DataCell(Text(dashboard['totalSelling'])),
              DataCell(Row(
                children: [
                  IconButton(onPressed: (){}, icon: const Icon(Icons.edit)),
                  IconButton(onPressed: (){}, icon: const Icon(Icons.delete)),
                ],
              )),
            ],
         /*color: MaterialStateProperty.resolveWith<Color?>(
              (Set<MaterialState> states) {
            if (states.contains(MaterialState.selected)) {
              return AppColors.success90;
            }
            if (index.isEven) {
              return AppColors.info;
            }
            return null;
          }),*/
    ))
        .toList();
  }
}

/*GridView.count(
                    childAspectRatio: 3,
                    padding: const EdgeInsets.all(24),
                    shrinkWrap: true,
                    crossAxisCount: 2,
                    crossAxisSpacing: 24,
                    mainAxisSpacing: 24,
                    children: List.generate(6, (index) {
                      return InkWell(
                        onTap: (){},
                        child: Container(
                          height: 100,
                            decoration: BoxDecoration(
                            color: AppColors.secondary,
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text("Gelir", style: TextStyle(fontFamily: "Rubik",fontSize: 16, color: AppColors.white),),
                              SizedBox(height: 16),
                              Text(" 14.345", style: TextStyle(fontFamily: "Rubik",fontSize: 32, color: AppColors.white),),
                            ],
                          ),
                        ),
                      );
                    }
                    ),
                  )*/
/* color: MaterialStateProperty.resolveWith<Color?>(
          (Set<MaterialState> states) {
        if (states.contains(MaterialState.selected)) {
          return AppColors.lightPrimary.withOpacity(0.5);
        }
        if (index.isEven) {
          return AppColors.lightPrimary.withOpacity(0.08);
        }
        return null;
      }),*/