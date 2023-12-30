import 'package:bloc/bloc.dart';
import 'package:bookly_app/Features/home/Data/models/book_model/book_model.dart';
import 'package:bookly_app/Features/home/Data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'similer_books_state.dart';

class SimilerBooksCubit extends Cubit<SimilerBooksState> {
  SimilerBooksCubit(this.homeRebo) : super(SimilerBooksInitial());
  final HomeRepo homeRebo;
  Future<void> fetchSimilerBooks({required String category}) async {
    emit(SimilerBooksLoading());

    var result = await homeRebo.fetchSimilarBooks(category: category);

    result.fold((failure) {
      emit(SimilerBooksFailure(failure.errMessage));
    }, (books) {
      emit(SimilerBooksSucsses(books));
    });
  }
}
