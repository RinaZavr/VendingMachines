import 'package:flutter/material.dart';
import 'package:vendingmachines/consts/bottomSheet/color_const.dart';
import 'package:vendingmachines/consts/bottomSheet/string_const.dart';
import 'package:vendingmachines/consts/bottomSheet/textstyle_const.dart';

class PriceListWidget extends StatefulWidget {
  const PriceListWidget({super.key});

  @override
  State<PriceListWidget> createState() => _PriceListWidgetState();
}

class _PriceListWidgetState extends State<PriceListWidget> {
  List<TableRow> rows = [];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(bottom: 8, top: 24),
          child: Text(
            StringConstBottomSheet.bottomSheetPriceListTitle,
            style: TextStyleConstBottomSheet.bottomSheetPriceListTitle,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              StringConstBottomSheet.bottomSheetPriceListInfoSync,
              style: TextStyle(
                color: ColorConstBottomSheet.bottomSheetMainColor,
                fontSize: size.width * 0.034,
                fontWeight: FontWeight.w300,
              ),
            ),
            Text(
              StringConstBottomSheet.bottomSheetPriceListInfoSyncTime,
              style: TextStyle(
                color: ColorConstBottomSheet.bottomSheetMainColor,
                fontSize: size.width * 0.034,
                fontWeight: FontWeight.w300,
              ),
            ),
          ],
        ),
        Table(
          border: TableBorder.all(color: Colors.transparent),
          columnWidths: <int, TableColumnWidth>{
            0: FixedColumnWidth(size.width * 0.13),
            1: FixedColumnWidth(size.width * 0.25),
            2: const FlexColumnWidth(),
          },
          defaultVerticalAlignment: TableCellVerticalAlignment.middle,
          children: <TableRow>[
            TableRow(
              children: <Widget>[
                TableCell(
                  verticalAlignment: TableCellVerticalAlignment.middle,
                  child: Container(
                    margin: const EdgeInsets.symmetric(vertical: 8),
                    alignment: Alignment.centerLeft,
                    child: const Text(
                      StringConstBottomSheet.bottomSheetPriceListTableNumColumn,
                      style: TextStyleConstBottomSheet
                          .bottomSheetPriceListTableNameColumn,
                    ),
                  ),
                ),
                TableCell(
                  verticalAlignment: TableCellVerticalAlignment.middle,
                  child: Container(
                    margin:
                        const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                    alignment: Alignment.centerLeft,
                    child: const Text(
                      StringConstBottomSheet
                          .bottomSheetPriceListTablePriceColumn,
                      style: TextStyleConstBottomSheet
                          .bottomSheetPriceListTableNameColumn,
                    ),
                  ),
                ),
                Container(),
              ],
            ),
            for (TableRow row in rows) row
          ],
        ),
        GestureDetector(
          onTap: () {
            setState(() {
              rows.add(addRow());
            });
          },
          child: Container(
            width: size.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(
                color: ColorConstBottomSheet.bottomSheetButtonColor,
              ),
            ),
            child: const Padding(
              padding: EdgeInsets.symmetric(vertical: 8),
              child: Text(
                StringConstBottomSheet.bottomSheetPriceListButton,
                style: TextStyleConstBottomSheet.bottomSheetPriceListButton,
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
        const SizedBox(height: 110),
      ],
    );
  }

  TableRow addRow() {
    LocalKey key = UniqueKey();
    return TableRow(
      key: key,
      children: <Widget>[
        TableCell(
          verticalAlignment: TableCellVerticalAlignment.middle,
          child: Container(
            margin: const EdgeInsets.only(bottom: 16),
            padding: const EdgeInsets.symmetric(horizontal: 8),
            decoration: BoxDecoration(
              border: Border.all(
                color: ColorConstBottomSheet.bottomSheetPriceListTableBorder,
              ),
              borderRadius: BorderRadius.circular(4),
            ),
            alignment: Alignment.centerLeft,
            child: TextFormField(
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(border: InputBorder.none),
              style: TextStyleConstBottomSheet
                  .bottomSheetPriceListTableValueColumn,
            ),
          ),
        ),
        TableCell(
          verticalAlignment: TableCellVerticalAlignment.middle,
          child: Container(
            margin: const EdgeInsets.only(bottom: 16, left: 16),
            padding: const EdgeInsets.symmetric(horizontal: 8),
            decoration: BoxDecoration(
              border: Border.all(
                color: ColorConstBottomSheet.bottomSheetPriceListTableBorder,
              ),
              borderRadius: BorderRadius.circular(4),
            ),
            alignment: Alignment.centerLeft,
            child: TextFormField(
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(border: InputBorder.none),
              style: TextStyleConstBottomSheet
                  .bottomSheetPriceListTableValueColumn,
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(bottom: 16, left: 16),
          alignment: Alignment.centerRight,
          child: IconButton(
            icon: Icon(
              Icons.close,
              color: ColorConstBottomSheet.bottomSheetPriceListDeleteButton,
            ),
            onPressed: () {
              setState(() {
                rows.removeWhere((element) => element.key == key);
              });
            },
          ),
        ),
      ],
    );
  }
}
