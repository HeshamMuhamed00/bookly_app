import 'package:bookly_app/Features/home/presentation/manager/newset_book_cubit/newset_books_cubit.dart';
import 'package:bookly_app/Features/home/presentation/view/widget/best_seller_item.dart';
import 'package:bookly_app/core/widget/custom_error.dart';
import 'package:bookly_app/core/widget/custom_loding_indecator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewsetBooksCubit, NewsetBooksState>(
      builder: (context, state) {
        if (state is NewsetBooksSucsses) {
          return GestureDetector(
            onTap: () {
              GoRouter.of(context).push('/bookDetailsView');
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                padding: EdgeInsets.zero,
                itemCount: state.books.length,
                itemBuilder: (context, index) {
                  return BestSellerItem(
                    bookModel: state.books[index],
                  );
                },
              ),
            ),
          );
        } else if (state is NewsetBooksFailure) {
          return CustomError(errMessage: state.errmessage);
        } else {
          return const CustomLodingIndecator();
        }
      },
    );
  }
}
