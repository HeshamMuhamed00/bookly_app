import 'package:bookly_app/Features/home/presentation/manager/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookly_app/Features/home/presentation/view/widget/custom_list_view_item.dart';
import 'package:bookly_app/core/widget/custom_error.dart';
import 'package:bookly_app/core/widget/custom_loding_indecator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ListViewBody extends StatelessWidget {
  const ListViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (context, state) {
        if (state is FeaturedBooksSucsses) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .3,
            child: ListView.builder(
              padding: EdgeInsets.zero,
              scrollDirection: Axis.horizontal,
              itemCount: state.books.length,
              itemBuilder: (context, index) {
                return CustomListViewItem(
                  imageUrl: state.books[index].volumeInfo.imageLinks.thumbnail,
                );
              },
            ),
          );
        } else if (state is FeaturedBooksFailure) {
          return CustomError(errMessage: state.errMessage);
        } else {
          return const CustomLodingIndecator();
        }
      },
    );
  }
}
