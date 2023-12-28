part of 'newset_books_cubit.dart';

sealed class NewsetBooksState extends Equatable {
  const NewsetBooksState();

  @override
  List<Object> get props => [];
}

final class NewsetBooksInitial extends NewsetBooksState {}

final class NewsetBooksLoading extends NewsetBooksState {}

final class NewsetBooksFailure extends NewsetBooksState {
  final String errmessage;

  const NewsetBooksFailure(this.errmessage);
}

final class NewsetBooksSucsses extends NewsetBooksState {
  final List<BookModel> books;

  const NewsetBooksSucsses(this.books);
}
