import 'dart:convert';

import 'package:armada/core/api/endpoints.dart';
import 'package:armada/core/failures/failures.dart';
import 'package:armada/feature/data/abstract%20repos/absractrepos.dart';
import 'package:armada/feature/data/models/featured_categories/featured_categories.dart';
import 'package:dartz/dartz.dart';

import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';

@LazySingleton(as: IFeturedCategoriesRepo)
class FeaturedCategoriesRepo implements IFeturedCategoriesRepo {
  @override
  Future<Either<MainFailures, List<FeaturedCategories>>>
      getallfeaturedcategories() async {
    try {
      final response =
          await http.post(Uri.parse(baseurl + selfeaturedCategoryurl));

      if (response.statusCode == 200) {
        Map<String, dynamic> json = jsonDecode(response.body);

        final List<dynamic> categoriesdata = json['result'];
        List<FeaturedCategories> categorieslist = categoriesdata
            .map<FeaturedCategories>(
                (json) => FeaturedCategories.fromJson(json))
            .toList();

        return right(categorieslist);
      } else {
        return left(
          const MainFailures.networkerror(error: 'Something went Wrong'),
        );
      }
    } catch (e) {
      return left(const MainFailures.serverfailure());
    }
  }
}
