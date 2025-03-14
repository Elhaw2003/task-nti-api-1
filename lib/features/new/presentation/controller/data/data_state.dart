part of 'data_cubit.dart';

@immutable
sealed class DataState {}

final class DataInitial extends DataState {}
final class DataLoading extends DataState {}
final class DataSuccess extends DataState {}
final class DataFailure extends DataState {
  final String errorMessage;
  DataFailure({required this.errorMessage});
}
