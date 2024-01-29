import 'package:armada/core/failures/failures.dart';
import 'package:armada/feature/data/models/banners_model/banners_model.dart';
import 'package:armada/feature/data/models/featured_categories/featured_categories.dart';
import 'package:armada/feature/data/models/recent_ordered/recent_ordered.dart';
import 'package:dartz/dartz.dart';

abstract class IBannersRepo {
  Future<Either<MainFailures, List<BannersModel>>> getallBanner();
}

abstract class IFeturedCategoriesRepo {
  Future<Either<MainFailures, List<FeaturedCategories>>>
      getallfeaturedcategories();
}

abstract class IRecentOrdersRepo {
  Future<Either<MainFailures, List<RecentOrdered>>> getallRecentOrders(
      String cusID, String userID);
}
