import 'package:bloc/bloc.dart';
import 'package:bookly_app/Features/home/Data/models/book_model/book_model.dart';
import 'package:bookly_app/Features/home/Data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'newset_books_state.dart';

class NewsetBooksCubit extends Cubit<NewsetBooksState> {
  NewsetBooksCubit(this.homeRebo) : super(NewsetBooksInitial());
  final HomeRepo homeRebo;
  Future<void> fetchBestSellerBooks() async {
    emit(NewsetBooksLoading());

    var result = await homeRebo.fectchBestSellerBooks();

    result.fold((failure) {
      emit(NewsetBooksFailure(failure.errMessage));
    }, (books) {
      emit(NewsetBooksSucsses(books));
    });
  }
}
