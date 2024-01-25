import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../controllers/peminjaman_controller.dart';

class PeminjamanView extends GetView<PeminjamanController> {
  const PeminjamanView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pinjam Buku ${Get.parameters['judul'].toString()}'),
        centerTitle: true,
      ),
        body: controller.obx((state) => ListView.separated(
          itemCount: state!.length,
          itemBuilder: (context, index){
            return ListTile(
                title: Text("${state[index].book?.judul}(${state[index].book}"),
                subtitle: Text("${state[index].peminjam}, ${state[index].userId}"),
                trailing: ElevatedButton(
                    child: Text("pinjam"),
                    onPressed: (){
                    }
                )
            );
          },
          separatorBuilder: (context, index){
            return Divider();
          },
        ))
    );
  }
}
