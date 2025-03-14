import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_nti_api_1/features/new/presentation/view/widgets/new_body.dart';

import '../../../../core/utitiles/app_styles.dart';
import '../controller/data/data_cubit.dart';

class NewScreen extends StatelessWidget {
  const NewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => DataCubit()..getData(),
      child: BlocBuilder<DataCubit, DataState>(
        builder: (context, state) {
          return Scaffold(
            body: ListView.builder(
              itemCount: BlocProvider.of<DataCubit>(context).list.length,
              itemBuilder: (context, index) {
                return state is DataLoading ? const Center(child: CircularProgressIndicator()) :
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: NewBody(dataModel: BlocProvider.of<DataCubit>(context).list[index],),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
