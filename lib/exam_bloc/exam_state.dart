part of 'exam_bloc.dart';

abstract class ExamState extends Equatable {
  const ExamState();
}

class ExamInitial extends ExamState {
  @override
  List<Object> get props => [];
}
