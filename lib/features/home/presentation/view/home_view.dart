import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:hungry/core/constans/app_colors.dart';
import 'package:hungry/features/home/presentation/manager/animated_category_cubit.dart';
import 'widgets/burgers_sliver_grid.dart';
import 'widgets/categories_list_generate.dart';
import 'widgets/home_header.dart';
import 'widgets/home_search.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AnimatedCategoryCubit(),
      child: GestureDetector(
        behavior: HitTestBehavior.translucent,
        onTap: () => FocusScope.of(context).unfocus(),
        child: Scaffold(
          backgroundColor: AppColors.darkWhite,
          body: SafeArea(
            child: Container(
              margin: EdgeInsets.all(16),
              child: CustomScrollView(
                slivers: [
                  SliverAppBar(
                    elevation: 0,
                    pinned: true,
                    floating: false,
                    scrolledUnderElevation: 0,
                    backgroundColor: AppColors.darkWhite,
                    toolbarHeight: 200,
                    flexibleSpace: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 5,
                      ),
                      child: Column(
                        children: [HomeHeader(), Gap(16), HomeSeach()],
                      ),
                    ),
                  ),
                  SliverToBoxAdapter(child: Gap(16)),
                  SliverToBoxAdapter(child: CategoreisListGenerate()),
                  SliverToBoxAdapter(child: Gap(16)),
                  SliverPadding(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    sliver: BurgersSliverGrid(),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
