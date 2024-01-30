import 'dart:convert';

import 'package:armada/core/api/endpoints.dart';
import 'package:armada/core/failures/failures.dart';
import 'package:armada/feature/data/abstract%20repos/absractrepos.dart';
import 'package:armada/feature/data/models/recent_ordered/recent_ordered.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:http/http.dart' as http;

@LazySingleton(as: IRecentOrdersRepo)
class RecentOrdersRepo implements IRecentOrdersRepo {
  @override
  Future<Either<MainFailures, List<RecentOrdered>>> getallRecentOrders(
      String cusID, String userID) async {
    try {
      final response = await http.post(Uri.parse(baseurl + recentitemsurl),
          body: {"cusID": cusID, "userID": userID});
      // log(response.body);
      if (response.statusCode == 200) {
        Map<String, dynamic> json = jsonDecode(response.body);

        final List<dynamic> recentdata = json['result'];
        List<RecentOrdered> recentorderlist = recentdata
            .map<RecentOrdered>((json) => RecentOrdered.fromJson(json))
            .toList();

        return right(recentorderlist);
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
