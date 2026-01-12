import 'package:ethnomir/features/establishment/widgets/widgets.dart';
import 'package:ethnomir/repositories/models.dart';
import 'package:flutter/material.dart';

class SliverGridPositionsWidget extends StatelessWidget {
  const SliverGridPositionsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    List<Position> positionsList = [
      Position(
        isActive: true,
        title: 'Шорпа',
        description:
            'Шурпа — заправочный суп или мясной бульон, распространённый в восточной кухне. Как правило, шурпу готовят из баранины, но есть и варианты из говядины или курицы',
        weight: '200',
        caloric: '350',
        price: '390',
        discont: '5',
        establishmentId: '1',
        positionCategoryId: 'Горячее',
        fileId: 'shorpa',
        isPopular: false,
        isNew: false,
      ),
      Position(
        isActive: true,
        title: 'Каурма лагман',
        description:
            'Каурма лагман (ковурма лагман) — вариант жареного лагмана из узбекской кухни. Буквально переводится как «поджарка», что означает, что лагман готовится без подливы.',
        weight: '150',
        caloric: '300',
        price: '370',
        discont: '',
        establishmentId: '1',
        positionCategoryId: 'Горячее',
        fileId: 'lagman',
        isPopular: true,
        isNew: false,
      ),
      Position(
        isActive: true,
        title: 'Манты с бараниной',
        description:
            'Манты с бараниной — традиционное блюдо многих восточных кухонь, которое славится насыщенным вкусом и ароматом.',
        weight: '300',
        caloric: '350',
        price: '490',
        discont: '',
        establishmentId: '1',
        positionCategoryId: 'Горячее',
        fileId: 'manty',
        isPopular: false,
        isNew: true,
      ),
      Position(
        isActive: true,
        title: 'Плов по чайхански',
        description:
            'Плов по-чайхански — повседневный вариант узбекского плова, который готовят каждый день в чайханах. Название связано с старой ташкентской традицией «ош», когда мужчины собираются по четвергам в чайхане «на ош», что означает «на плов».',
        weight: '200',
        caloric: '310',
        price: '420',
        discont: '',
        establishmentId: '1',
        positionCategoryId: 'Горячее',
        fileId: 'plov',
        isPopular: false,
        isNew: true,
      ),
      Position(
        isActive: true,
        title: 'Плов по чайхански',
        description:
            'Плов по-чайхански — повседневный вариант узбекского плова, который готовят каждый день в чайханах. Название связано с старой ташкентской традицией «ош», когда мужчины собираются по четвергам в чайхане «на ош», что означает «на плов».',
        weight: '200',
        caloric: '310',
        price: '420',
        discont: '',
        establishmentId: '1',
        positionCategoryId: 'Горячее',
        fileId: 'plov',
        isPopular: false,
        isNew: true,
      ),
    ];

    return SliverPadding(
      padding: EdgeInsetsGeometry.only(
        left: 20,
        top: 15,
        right: 20,
        bottom: 15,
      ),
      sliver: SliverGrid(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 20,
          mainAxisExtent: 220,
        ),
        delegate: SliverChildBuilderDelegate((context, index) {
          return CardPositionWidget(position: positionsList[index]);
        }, childCount: positionsList.length),
      ),
    );
  }
}
