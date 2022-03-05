import 'package:flutter/material.dart';
import 'package:fooderlich/fooderlich_theme.dart';

class Card3 extends StatelessWidget {
  const Card3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        constraints: const BoxConstraints.expand(width: 350, height: 450),
        //Nền
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/mag2.png'),
            fit: BoxFit.cover, //bao phủ toàn bộ
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(10.0),
          ),
        ),
        child: Stack(
          children: [
            //Hiệu ứng nền tối
            Container(
              decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.6), //Làm mờ
                  borderRadius: BorderRadius.all(Radius.circular(10.0))),
            ),
            //Nhãn hiển thị
            Container(
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Icon(
                    Icons.book,
                    color: Colors.white,
                    size: 40,
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    'Recipe Trends',
                    style: FooderlichTheme.darkTextTheme.headline2,
                  ),
                  const SizedBox(
                    height: 30,
                  )
                ],
              ),
            ),
            //Thẻ tuỳ chọn
            Center(
              child: Wrap(
                alignment: WrapAlignment.start, //Thứ tự liên tục
                spacing: 12, //Khoảng cách các nhãn
                children: [
                  Chip(
                    label: Text(
                      'Healthy',
                      style: FooderlichTheme.darkTextTheme.bodyText1,
                    ),
                    backgroundColor: Colors.black.withOpacity(0.7),
                    onDeleted: () {
                      print('del it!');
                    },
                  ),
                  Chip(
                    label: Text('Vegan',
                        style: FooderlichTheme.darkTextTheme.bodyText1),
                    backgroundColor: Colors.black.withOpacity(0.7),
                    onDeleted: () {
                      print('delete');
                    },
                  ),
                  Chip(
                    label: Text('Carrots',
                        style: FooderlichTheme.darkTextTheme.bodyText1),
                    backgroundColor: Colors.black.withOpacity(0.7),
                  ),
                  Chip(
                    label: Text('Greens',
                        style: FooderlichTheme.darkTextTheme.bodyText1),
                    backgroundColor: Colors.black.withOpacity(0.7),
                  ),
                  Chip(
                    label: Text('Wheat',
                        style: FooderlichTheme.darkTextTheme.bodyText1),
                    backgroundColor: Colors.black.withOpacity(0.7),
                  ),
                  Chip(
                    label: Text('Pescetarian',
                        style: FooderlichTheme.darkTextTheme.bodyText1),
                    backgroundColor: Colors.black.withOpacity(0.7),
                  ),
                  Chip(
                    label: Text('Mint',
                        style: FooderlichTheme.darkTextTheme.bodyText1),
                    backgroundColor: Colors.black.withOpacity(0.7),
                  ),
                  Chip(
                    label: Text('Lemongrass',
                        style: FooderlichTheme.darkTextTheme.bodyText1),
                    backgroundColor: Colors.black.withOpacity(0.7),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}