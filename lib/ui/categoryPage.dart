import 'package:quotesapp/widget/baseTemplate.dart';
import 'package:quotesapp/widget/categoryPageLayout.dart';
import 'package:flutter/material.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseTemplate(
      pageBody: CategoryPageLayout(),
    );
  }
}
