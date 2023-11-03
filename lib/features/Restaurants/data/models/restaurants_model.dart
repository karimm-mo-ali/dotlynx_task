class RestaurantsModel {
  int? ack;
  int? count;
  List<Stores>? stores;

  RestaurantsModel({this.ack, this.count, this.stores});

  RestaurantsModel.fromJson(Map<String, dynamic> json) {
    ack = json['ack'];
    count = json['count'];
    if (json['stores'] != null) {
      stores = <Stores>[];
      json['stores'].forEach((v) {
        stores!.add(Stores.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['ack'] = ack;
    data['count'] = count;
    if (stores != null) {
      data['stores'] = stores!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Stores {
  String? createdAt;
  String? updatedAt;
  int? id;
  int? userId;
  int? businessTypeId;
  String? businessAddress;
  String? zoneNumber;
  String? streetNumber;
  String? buildingNumber;
  double? latitude;
  double? longitude;
  String? country;
  String? businessLogo;
  String? bannerImage;
  bool? recommended;
  int? createdBy;
  int? updatedBy;
  String? status;
  String? online;
  String? onlineStatusChangeTime;
  bool? isApproved;
  int? adminCommission;
  int? orderAcceptTime;
  int? orderTimeForPicker;
  String? reasonOfReject;
  String? slug;
  String? cuisineId;
  int? onlineStatus;
  String? avgRating;
  double? distance;
  List<StoresLocales>? storesLocales;
  List? discountsAndOfferRelations;

  Stores(
      {this.createdAt,
      this.updatedAt,
      this.id,
      this.userId,
      this.businessTypeId,
      this.businessAddress,
      this.zoneNumber,
      this.streetNumber,
      this.buildingNumber,
      this.latitude,
      this.longitude,
      this.country,
      this.businessLogo,
      this.bannerImage,
      this.recommended,
      this.createdBy,
      this.updatedBy,
      this.status,
      this.online,
      this.onlineStatusChangeTime,
      this.isApproved,
      this.adminCommission,
      this.orderAcceptTime,
      this.orderTimeForPicker,
      this.reasonOfReject,
      this.slug,
      this.cuisineId,
      this.onlineStatus,
      this.avgRating,
      this.distance,
      this.storesLocales,
      this.discountsAndOfferRelations});

  Stores.fromJson(Map<String, dynamic> json) {
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    id = json['id'];
    userId = json['userId'];
    businessTypeId = json['businessTypeId'];
    businessAddress = json['business_address'];
    zoneNumber = json['zone_number'];
    streetNumber = json['street_number'];
    buildingNumber = json['building_number'];
    latitude = json['latitude'];
    longitude = json['longitude'];
    country = json['country'];
    businessLogo = json['business_logo'];
    bannerImage = json['banner_image'];
    recommended = json['recommended'];
    createdBy = json['created_by'];
    updatedBy = json['updated_by'];
    status = json['status'];
    online = json['online'];
    onlineStatusChangeTime = json['online_status_change_time'];
    isApproved = json['is_approved'];
    adminCommission = json['admin_commission'];
    orderAcceptTime = json['order_accept_time'];
    orderTimeForPicker = json['order_time_for_picker'];
    reasonOfReject = json['reason_of_reject'];
    slug = json['slug'];
    cuisineId = json['cuisineId'];
    onlineStatus = json['online_status'];
    avgRating = json['avgRating'];
    distance = json['distance'];
    if (json['stores_locales'] != null) {
      storesLocales = <StoresLocales>[];
      json['stores_locales'].forEach((v) {
        storesLocales!.add(StoresLocales.fromJson(v));
      });
    }
    if (json['discounts_and_offer_relations'] != null) {
      discountsAndOfferRelations = [];
      json['discounts_and_offer_relations'].forEach((v) {
        discountsAndOfferRelations!.add(v);
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['createdAt'] = createdAt;
    data['updatedAt'] = updatedAt;
    data['id'] = id;
    data['userId'] = userId;
    data['businessTypeId'] = businessTypeId;
    data['business_address'] = businessAddress;
    data['zone_number'] = zoneNumber;
    data['street_number'] = streetNumber;
    data['building_number'] = buildingNumber;
    data['latitude'] = latitude;
    data['longitude'] = longitude;
    data['country'] = country;
    data['business_logo'] = businessLogo;
    data['banner_image'] = bannerImage;
    data['recommended'] = recommended;
    data['created_by'] = createdBy;
    data['updated_by'] = updatedBy;
    data['status'] = status;
    data['online'] = online;
    data['online_status_change_time'] = onlineStatusChangeTime;
    data['is_approved'] = isApproved;
    data['admin_commission'] = adminCommission;
    data['order_accept_time'] = orderAcceptTime;
    data['order_time_for_picker'] = orderTimeForPicker;
    data['reason_of_reject'] = reasonOfReject;
    data['slug'] = slug;
    data['cuisineId'] = cuisineId;
    data['online_status'] = onlineStatus;
    data['avgRating'] = avgRating;
    data['distance'] = distance;
    if (storesLocales != null) {
      data['stores_locales'] = storesLocales!.map((v) => v.toJson()).toList();
    }
    if (discountsAndOfferRelations != null) {
      data['discounts_and_offer_relations'] =
          discountsAndOfferRelations!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class StoresLocales {
  int? id;
  int? storeId;
  String? locale;
  String? businessName;
  String? createdAt;
  String? updatedAt;
  String? status;

  StoresLocales(
      {this.id,
      this.storeId,
      this.locale,
      this.businessName,
      this.createdAt,
      this.updatedAt,
      this.status});

  StoresLocales.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    storeId = json['storeId'];
    locale = json['locale'];
    businessName = json['business_name'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['storeId'] = storeId;
    data['locale'] = locale;
    data['business_name'] = businessName;
    data['createdAt'] = createdAt;
    data['updatedAt'] = updatedAt;
    data['status'] = status;
    return data;
  }
}
