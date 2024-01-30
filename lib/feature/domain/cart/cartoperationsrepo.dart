import 'dart:convert';
import 'dart:developer';

import 'package:armada/core/api/endpoints.dart';
import 'package:armada/core/failures/failures.dart';
import 'package:armada/feature/data/abstract%20repos/absractrepos.dart';
import 'package:armada/feature/data/models/delete_cart_model/delete_cart_model.dart';
import 'package:armada/feature/data/models/insert_cart_model/insert_cart_model.dart';
import 'package:armada/feature/data/models/inset_cart_resp_model/inset_cart_resp_model.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import 'package:http/http.dart' as http;

@LazySingleton(as: ICartOperationRepo)
class CartOperationRepo implements ICartOperationRepo {
  @override
  Future<Either<MainFailures, InsetCartRespModel>> deleteitemfromcart(
      DeleteCartModel cartitem) async {
    log(jsonEncode(cartitem));
    try {
      final response = await http.post(
        Uri.parse(baseurl + deletecartitemurl),
        body: {
          "userID": cartitem.userId,
          "itmID": cartitem.itmId,
        },
      );

      log(response.body);
      if (response.statusCode == 200) {
        Map<String, dynamic> json = jsonDecode(response.body);
        final deleteitem = InsetCartRespModel.fromJson(json['result'][0]);

        return right(deleteitem);
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

  @override
  Future<Either<MainFailures, InsetCartRespModel>> insertitemtocart(
      InsertCartModel cartitem) async {
    try {
      final response = await http.post(
        Uri.parse(baseurl + insertcarturl),
        body: {
          "userID": cartitem.userId,
          "cusID": cartitem.cusId,
          "itm_ID": cartitem.itmId,
          "HigherQty": cartitem.higherQty,
          "HigherUOM": cartitem.higherUom,
          "LowerQty": cartitem.lowerQty,
          "lowerUOM": cartitem.lowerUom,
        },
      );
      log(response.body);
      if (response.statusCode == 200) {
        Map<String, dynamic> json = jsonDecode(response.body);

        final deleteitem = InsetCartRespModel.fromJson(json['result'][0]);

        return right(deleteitem);
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
