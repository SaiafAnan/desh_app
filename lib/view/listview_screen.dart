import 'package:desh_app/model/list.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class DistrictList extends StatefulWidget {
  const DistrictList({Key? key}) : super(key: key);

  @override
  State<DistrictList> createState() => _DistrictListState();
}

class _DistrictListState extends State<DistrictList> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              alignment: Alignment.topLeft,
              child: Image.asset('images/grpRedCrcl.png'),
            ),
            const SizedBox(
              height: 18.0,
            ),
            Expanded(
              child: buildList(),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildList() => ListView.builder(
      itemCount: images.length,
      itemBuilder: (context, index) {
        return Image.asset(images[index]);
      });
}
