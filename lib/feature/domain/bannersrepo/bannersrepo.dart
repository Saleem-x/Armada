import 'dart:convert';

import 'package:armada/core/api/endpoints.dart';
import 'package:armada/core/failures/failures.dart';
import 'package:armada/feature/data/abstract%20repos/absractrepos.dart';
import 'package:armada/feature/data/models/banners_model/banners_model.dart';
import 'package:dartz/dartz.dart';

import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';

@LazySingleton(as: IBannersRepo)
class BannersRepo implements IBannersRepo {
  @override
  Future<Either<MainFailures, List<BannersModel>>> getallBanner() async {
    try {
      final response = await http.post(Uri.parse(baseurl + bannersurl));

      if (response.statusCode == 200) {
        Map<String, dynamic> json = jsonDecode(response.body);

        final List<dynamic> bannerdata = json['result'];
        List<BannersModel> bannerlist = bannerdata
            .map<BannersModel>((json) => BannersModel.fromJson(json))
            .toList();

        return right(bannerlist);
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
