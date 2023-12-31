import 'package:bookly_app/Features/home/presentation/manager/similer_books_cubit/similer_books_cubit.dart';
import 'package:bookly_app/Features/home/presentation/view/widget/custom_list_view_item.dart';
import 'package:bookly_app/core/widget/custom_error.dart';
import 'package:bookly_app/core/widget/custom_loding_indecator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimilerBooksListView extends StatelessWidget {
  const SimilerBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilerBooksCubit, SimilerBooksState>(
      builder: (context, state) {
        if (state is SimilerBooksSucsses) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .16,
            child: ListView.builder(
              padding: EdgeInsets.zero,
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (context, index) {
                return CustomListViewItem(
                  imageUrl: state.books[index].volumeInfo.imageLinks.thumbnail,
                );
              },
            ),
          );
        } else if (state is SimilerBooksFailure) {
          return CustomError(errMessage: state.errMessage);
        } else {
          return const CustomLodingIndecator();
        }
      },
    );
  }
}
