import 'dart:convert';

import 'package:armada/core/api/endpoints.dart';
import 'package:armada/core/failures/failures.dart';
import 'package:armada/feature/data/abstract%20repos/absractrepos.dart';
import 'package:armada/feature/data/models/ftrd_sub_catgry_model/ftrd_sub_catgry_model.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:http/http.dart' as http;

@LazySingleton(as: ISubCategories)
class SubcategoryRepo implements ISubCategories {
  @override
  Future<Either<MainFailures, List<FtrdSubCatgryModel>>>
      getallsubcategories() async {
    try {
      final response = await http.post(Uri.parse(baseurl + selfeaturedSubcats));

      if (response.statusCode == 200) {
        Map<String, dynamic> json = jsonDecode(response.body);

        final List<dynamic> categoriesdata = json['result'];
        List<FtrdSubCatgryModel> categorieslist = categoriesdata
            .map<FtrdSubCatgryModel>(
                (json) => FtrdSubCatgryModel.fromJson(json))
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
