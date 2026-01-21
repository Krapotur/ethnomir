import 'package:auto_route/auto_route.dart';
import 'package:ethnomir/features/establishment/widgets/widgets.dart';
import 'package:ethnomir/repositories/models.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SliverAppbarWidget extends StatefulWidget {
  const SliverAppbarWidget({
    super.key,
    required this.scrollController,
    required this.establishment,
  });

  final Establishment establishment;
  final ScrollController scrollController;

  @override
  State<SliverAppbarWidget> createState() => _SliverAppbarWidgetState();
}

class _SliverAppbarWidgetState extends State<SliverAppbarWidget> {
  double expandedHeight = 230;
  double toolbarHeight = 75;

  bool isCollapsed = false;

  Future scrollListener() async {
    if (widget.scrollController.offset > expandedHeight - toolbarHeight) {
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
    final theme = Theme.of(context);

    return SliverAppBar(
      automaticallyImplyLeading: false,
      backgroundColor: Colors.white,
      surfaceTintColor: Colors.white,
      toolbarHeight: toolbarHeight,
      expandedHeight: expandedHeight,
      pinned: true,
      leading: BtnToBackScreenWidget(),
      // centerTitle: isCollapsed ? true : false,
      // title: isCollapsed
      //     ? AppbarTitleWidget(establishment: widget.establishment)
      //     : null,
      actions: [
        isCollapsed && widget.establishment.isDeliveryFreeThreshold
            ? Padding(
                padding: const EdgeInsets.only(right: 20.0),
                child: Icon(Icons.access_time, color: Colors.red),
              )
            : const SizedBox.shrink(),
      ],
      flexibleSpace: FlexibleSpaceBar(
        titlePadding: EdgeInsets.only(left: 20, bottom: 20),
        centerTitle: true,
        expandedTitleScale: 1.1,
        collapseMode: CollapseMode.pin,
        title: GestureDetector(
          child: Container(
            padding: EdgeInsets.only(left: 15, top: 10, right: 15),
            decoration: BoxDecoration(
              color: const Color.fromARGB(159, 255, 255, 255),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              mainAxisSize: .min,
              crossAxisAlignment: .start,
              children: [
                Row(
                  mainAxisSize: .min,
                  children: [
                    const Icon(Icons.coffee_outlined, size: 18),
                    Text(
                      widget.establishment.establishmentTypeId,
                      style: theme.textTheme.labelMedium!.copyWith(
                        fontSize: 15,
                        height: 0.5,
                      ),
                    ),
                  ],
                ),
                Text(
                  '«${widget.establishment.title}»',
                  style: theme.textTheme.titleSmall!.copyWith(fontSize: 19),
                ),
              ],
            ),
          ),
          onTap: () => showModalBottomSheet(
            isScrollControlled: true,
            backgroundColor: Colors.transparent,
            context: context,
            builder: (context) => Scaffold(
              backgroundColor: Colors.transparent,
              body: Container(
                margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height / 4,
                ),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
                ),
                child: Column(
                  crossAxisAlignment: .start,
                  children: [
                    Container(
                      padding: const EdgeInsets.only(top: 10.0, right: 10.0),
                      height: 230,
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color: theme.primaryColor,
                            width: 5,
                          ),
                        ),
                        borderRadius: const BorderRadiusDirectional.vertical(
                          top: Radius.circular(20),
                        ),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                            'assets/images/rest/${widget.establishment.fileId}.png',
                          ),
                        ),
                      ),
                      child: GestureDetector(
                        child: Align(
                          alignment: AlignmentDirectional.topEnd,
                          child: Container(
                            padding: const EdgeInsets.all(3),
                            decoration: BoxDecoration(
                              color: theme.primaryColor,
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: const Icon(Icons.close, color: Colors.white),
                          ),
                        ),
                        onTap: () {
                          context.router.maybePop();
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        crossAxisAlignment: .start,
                        children: [
                          Row(
                            mainAxisAlignment: .spaceBetween,
                            children: [
                              TitleEstablishmentWidget(
                                establishment: widget.establishment,
                              ),
                            ],
                          ),
                          Text(
                            '«${widget.establishment.title}»',
                            style: theme.textTheme.titleLarge!.copyWith(
                              fontSize: 19,
                            ),
                          ),
                          Text(
                            '(${widget.establishment.kitchen.toLowerCase()} кухня)',
                            style: theme.textTheme.labelSmall,
                          ),
                          const SizedBox(height: 15),
                          // Text(
                          //   'Часы работы: 10:00 - 22:00',
                          //   style: theme.textTheme.labelSmall,
                          // ),
                          const Divider(),

                          // Flexible(
                          //   child: Text(
                          //     textDirection: TextDirection.ltr,
                          //     softWrap: true,
                          //     maxLines: 10,
                          //     'После долгой прогулки по парку, наполненной увлекательными приключениями, так хочется найти уютное место, чтобы подкрепиться, отдохнуть и не спеша обменяться полученными впечатлениями.',
                          //   ),
                          // ),
                          // Flexible(
                          //   child: Text(
                          //     textDirection: TextDirection.ltr,
                          //     softWrap: true,
                          //     maxLines: 10,
                          //     'Для этого идеально подходит ресторан восточной кухни «Чайхана»!',
                          //   ),
                          // ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              // bottomNavigationBar: ButtonAddCart(widget: widget),
            ),
          ),
        ),
        background: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(15),
              bottomRight: Radius.circular(15),
            ),
            image: DecorationImage(
              image: AssetImage(
                'assets/images/rest/${widget.establishment.fileId}.png',
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
