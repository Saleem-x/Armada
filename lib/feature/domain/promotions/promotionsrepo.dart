import 'dart:convert';
import 'dart:developer';

import 'package:armada/core/api/endpoints.dart';
import 'package:armada/core/failures/failures.dart';
import 'package:armada/feature/data/abstract%20repos/absractrepos.dart';
import 'package:armada/feature/data/models/active_promotions/active_promotions.dart';
import 'package:armada/feature/data/models/promotions_model/promotions_model.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:http/http.dart' as http;

@LazySingleton(as: IPromotionsRepo)
class PromtionsRepo implements IPromotionsRepo {
  @override
  Future<Either<MainFailures, List<ActivePromotions>>>
      getallActivepromotions() async {
    try {
      final response = await http.post(Uri.parse(baseurl + selActPromos));

      if (response.statusCode == 200) {
        Map<String, dynamic> json = jsonDecode(response.body);

        final List<dynamic> promtionsdata = json['result'];
        List<ActivePromotions> promtionslist = promtionsdata
            .map<ActivePromotions>((json) => ActivePromotions.fromJson(json))
            .toList();

        return right(promtionslist);
      } else {
        return left(
          const MainFailures.networkerror(error: 'Something went Wrong'),
        );
      }
    } catch (e) {
      return left(const MainFailures.serverfailure());
    }
  }

  @override
  Future<Either<MainFailures, List<PromotionsModel>>> getallpromotions() async {
    try {
      final response = await http.post(Uri.parse(baseurl + selPromotionsurl));

      if (response.statusCode == 200) {
        Map<String, dynamic> json = jsonDecode(response.body);
        final List<dynamic> activepromosdata = json['result'];
        List<PromotionsModel> activelist = activepromosdata
            .map<PromotionsModel>((json) => PromotionsModel.fromJson(json))
            .toList();
        // log(activelist.length.toString());
        return right(activelist);
      } else {
        return left(
          const MainFailures.networkerror(error: 'Something went Wrong'),
        );
      }
    } catch (e) {
      log(e.toString());
      return left(const MainFailures.serverfailure());
    }
  }
}
