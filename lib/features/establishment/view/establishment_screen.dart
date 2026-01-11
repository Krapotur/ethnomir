import 'package:auto_route/auto_route.dart';
import 'package:ethnomir/features/establishment/provider/model.dart';
import 'package:ethnomir/features/establishment/widgets/widgets.dart';
import 'package:ethnomir/repositories/models.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

@RoutePage()
class EstablishmentScreen extends StatefulWidget {
  final Establishment establishment;

  const EstablishmentScreen({super.key, required this.establishment});

  @override
  State<EstablishmentScreen> createState() => _EstablishmentScreenState();
}

class _EstablishmentScreenState extends State<EstablishmentScreen> {
  @override
  Widget build(BuildContext context) {
    ScrollController scrollController = ScrollController();

    return ChangeNotifierProvider(
      create: (context) => RestaurantModel(),
      lazy: true,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: const Color.fromARGB(255, 255, 255, 255),
          body: CustomScrollView(
            controller: scrollController,
            slivers: [
              SliverAppbarWidget(
                scrollController: scrollController,
                establishment: widget.establishment,
              ),
              SliverInfoRestaurantWidget(establishment: widget.establishment),
              const SliverCategoriesWidget(),
              const SliverGridPositionsWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
