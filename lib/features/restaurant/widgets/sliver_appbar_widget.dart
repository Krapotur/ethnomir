import 'package:ethnomir/features/restaurant/widgets/widgets.dart';
import 'package:ethnomir/repositories/models.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SliverAppbarWidget extends StatefulWidget {
  const SliverAppbarWidget({
    super.key,
    required this.scrollController,
    required this.restaurant,
  });

  final Restaurant restaurant;
  final ScrollController scrollController;

  @override
  State<SliverAppbarWidget> createState() => _SliverAppbarWidgetState();
}

class _SliverAppbarWidgetState extends State<SliverAppbarWidget> {
  double expandedHeight = 200;
  double toolbarHeight = 64;

  bool isCollapsed = false;

  Future scrollListener() async {
    if (widget.scrollController.offset > expandedHeight - toolbarHeight + 30) {
      if (!isCollapsed) {
        await Future.delayed(Duration(milliseconds: 125));
        setState(() {
          isCollapsed = true;
        });
      }
    } else if (widget.scrollController.offset <
        expandedHeight - toolbarHeight) {
      if (isCollapsed) {
        setState(() {
          isCollapsed = false;
        });
      }
    }
  }

  @override
  void initState() {
    super.initState();
    widget.scrollController.addListener(scrollListener);
  }

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      automaticallyImplyLeading: false,
      backgroundColor: Colors.white,
      surfaceTintColor: Colors.white,
      toolbarHeight: toolbarHeight,
      expandedHeight: expandedHeight,
      pinned: true,
      leading: BtnToBackScreenWidget(),
      centerTitle: true,
      title: isCollapsed
          ? AppbarTitleWidget(restaurant: widget.restaurant)
          : null,
      actions: [
        isCollapsed && widget.restaurant.isClosed
            ? Padding(
                padding: const EdgeInsets.only(right: 20.0),
                child: Icon(Icons.access_time, color: Colors.red),
              )
            : SizedBox.shrink(),
      ],
      flexibleSpace: FlexibleSpaceBar(
        background: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(15),
              bottomRight: Radius.circular(15),
            ),
            image: DecorationImage(
              image: AssetImage(
                'assets/images/rest/${widget.restaurant.imgTitle}.png',
              ),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
      systemOverlayStyle: isCollapsed ? null : SystemUiOverlayStyle.light,
    );
  }
}
