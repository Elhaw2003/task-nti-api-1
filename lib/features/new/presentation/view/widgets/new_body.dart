import 'package:flutter/material.dart';
import 'package:task_nti_api_1/core/utitiles/app_texts.dart';
import 'package:task_nti_api_1/features/new/data/models/data_model.dart';
import 'package:task_nti_api_1/features/new/presentation/view/widgets/item_widget.dart';

class NewBody extends StatelessWidget {
  const NewBody({super.key, required this.dataModel});
  final DataModel dataModel;
  @override
  Widget build(BuildContext context) {
    return Card(
      child:
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 15,),
            ItemWidget(
                text: AppTexts.postId,
                maxLine: 1,
                value: dataModel.id.toString(),
                width: 250
            ),
            const SizedBox(height: 15,),
            ItemWidget(
                text: AppTexts.name,
                maxLine: 1,
                value: dataModel.name,
                width: 250
            ),
            const SizedBox(height: 15,),
            ItemWidget(
                text: AppTexts.email,
                maxLine: 1,
                value: dataModel.email,
                width: 250
            ),
            const SizedBox(height: 15,),
            ItemWidget(
                text: AppTexts.body,
                value: dataModel.body,
                maxLine: 3,
                width: 250
            ),
            const SizedBox(height: 15,)
          ],
        ),
      ),
    );
  }
}
