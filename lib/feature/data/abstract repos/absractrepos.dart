import 'package:armada/core/failures/failures.dart';
import 'package:armada/feature/data/models/active_promotions/active_promotions.dart';
import 'package:armada/feature/data/models/banners_model/banners_model.dart';
import 'package:armada/feature/data/models/delete_cart_model/delete_cart_model.dart';
import 'package:armada/feature/data/models/featured_categories/featured_categories.dart';
import 'package:armada/feature/data/models/ftrd_sub_catgry_model/ftrd_sub_catgry_model.dart';
import 'package:armada/feature/data/models/insert_cart_model/insert_cart_model.dart';
import 'package:armada/feature/data/models/inset_cart_resp_model/inset_cart_resp_model.dart';
import 'package:armada/feature/data/models/promotions_model/promotions_model.dart';
import 'package:armada/feature/data/models/recent_ordered/recent_ordered.dart';
import 'package:dartz/dartz.dart';

abstract class IBannersRepo {
  Future<Either<MainFailures, List<BannersModel>>> getallBanner();
}

abstract class IFeturedCategoriesRepo {
  Future<Either<MainFailures, List<FeaturedCategories>>>
      getallfeaturedcategories();
}

abstract class ISubCategories {
  Future<Either<MainFailures, List<FtrdSubCatgryModel>>> getallsubcategories();
}

abstract class IRecentOrdersRepo {
  Future<Either<MainFailures, List<RecentOrdered>>> getallRecentOrders(
      String cusID, String userID);
}

abstract class ICartOperationRepo {
  Future<Either<MainFailures, InsetCartRespModel>> insertitemtocart(
      InsertCartModel cartitem);
  Future<Either<MainFailures, InsetCartRespModel>> deleteitemfromcart(
      DeleteCartModel cartitem);
}

abstract class IPromotionsRepo {
  Future<Either<MainFailures, List<PromotionsModel>>> getallpromotions();
  Future<Either<MainFailures, List<ActivePromotions>>> getallActivepromotions();
}
