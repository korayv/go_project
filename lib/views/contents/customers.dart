import 'package:flutter/material.dart';
import 'package:go_project/models/customer.dart';
import 'package:go_project/services/customer_service.dart';

import '../../design/app_colors.dart';

class CustomersScreen extends StatefulWidget {
  const CustomersScreen({Key? key}) : super(key: key);

  @override
  State<CustomersScreen> createState() => _CustomersScreenState();
}

class _CustomersScreenState extends State<CustomersScreen> {
  /*final List<Map> _customers = [
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
  ];*/

  final List<Customer> customers = [];

  void getAllCustomers() {
    CustomerService.getAllCustomers().then((value) => {
      if (value != null){
        for (var data in value){
          customers.add(Customer.fromJson(data)),
        },
        if (mounted) setState(() {}),
      }
    });
  }

  @override
  void initState() {
    super.initState();
    getAllCustomers();
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
                        icon: const Icon(
                          Icons.file_download_outlined,
                          size: 20,
                        ),
                        label: const Text("İçe Aktar"),
                      ),
                      const SizedBox(width: 16),
                      OutlinedButton.icon(
                        onPressed: () => {},
                        icon: const Icon(
                          Icons.file_copy_outlined,
                          size: 20,
                        ),
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
    return customers
        .map((customer) => DataRow(
              cells: [
                DataCell(
                  Text(
                    customer.phoneNumber.toString(),
                    style: const TextStyle(
                      fontFamily: "Rubik",
                      fontSize: 16,
                    ),
                  ),
                ),
                DataCell(
                  Text(
                    customer.discountCode == null
                        ? "-"
                        : customer.discountCode!.product!.name.toString(),
                    style: const TextStyle(
                      fontFamily: "Rubik",
                      fontSize: 16,
                    ),
                  ),
                ),
                DataCell(
                  Text(
                    customer.discountCode == null
                        ? "-"
                        : customer.discountCode!.product!.barcode.toString(),
                    style: const TextStyle(
                      fontFamily: "Rubik",
                      fontSize: 16,
                    ),
                  ),
                ),
                DataCell(
                  Text(
                    customer.firstName.toString(),
                    style: const TextStyle(
                      fontFamily: "Rubik",
                      fontSize: 16,
                    ),
                  ),
                ),
                DataCell(
                  Text(
                    customer.discountCode == null
                        ? "-"
                        : customer.discountCode!.product!.price.toString(),
                    style: const TextStyle(
                      fontFamily: "Rubik",
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
                            Icons.edit,
                            color: AppColors.primary90,
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.delete,
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
                if (customers.indexOf(customer).isEven) {
                  return AppColors.primary30;
                }
                return null;
              }),
            ))
        .toList();
  }
}
