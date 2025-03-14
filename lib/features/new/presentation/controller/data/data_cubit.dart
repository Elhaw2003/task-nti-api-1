import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../../data/models/data_model.dart';
import '../../../data/repo_implementation.dart';

part 'data_state.dart';

class DataCubit extends Cubit<DataState> {
  DataCubit() : super(DataInitial());
  RepoImplementation repoImplementation = RepoImplementation();
  List<DataModel> list = [];
  Future<void> getData() async {
    emit(DataLoading());
   var result = await repoImplementation.getData();
   return result.fold(
     (l){
       return emit(DataFailure(errorMessage: l.message));
     },
       (r){
       list = r;
         return emit(DataSuccess());
       });
  }
}
