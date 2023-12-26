import 'package:bookly_app/Features/home/presentation/manager/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookly_app/core/widget/custom_error.dart';
import 'package:bookly_app/core/widget/custom_loding_indecator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomListViewItem extends StatelessWidget {
  const CustomListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (context, state) {
        if (state is FeaturedBooksSucsses) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4),
            child: AspectRatio(
              aspectRatio: 2.7 / 4,
              child: Container(
                height: 240,
                width: 160,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  image: const DecorationImage(
                    fit: BoxFit.fill,
                    image: NetworkImage(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRc2JOwcEiV5l__x-gG8bVr5EIYBbB4v1C_ig&usqp=CAU'),
                  ),
                ),
              ),
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
