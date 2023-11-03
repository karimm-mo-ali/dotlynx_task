class CategoriesModel {
  int? ack;
  Store? store;
  List<Categories>? categories;

  CategoriesModel({this.ack, this.store, this.categories});

  CategoriesModel.fromJson(Map<String, dynamic> json) {
    ack = json['ack'];
    store = json['store'] != null ? Store.fromJson(json['store']) : null;
    if (json['categories'] != null) {
      categories = <Categories>[];
      json['categories'].forEach((v) {
        categories!.add(Categories.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['ack'] = ack;
    if (store != null) {
      data['store'] = store!.toJson();
    }
    if (categories != null) {
      data['categories'] = categories!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Store {
  int? id;
  int? userId;
  String? slug;
  int? businessTypeId;
  String? businessLogo;
  String? bannerImage;
  bool? recommended;
  String? zoneNumber;
  String? streetNumber;
  String? buildingNumber;
  String? country;
  double? latitude;
  double? longitude;
  bool? online;
  int? onlineStatus;
  String? onlineStatusChangeTime;
  bool? isApproved;
  String? businessAddress;
  int? adminCommission;
  int? orderAcceptTime;
  int? orderTimeForPicker;
  int? open247;
  int? categoryUpdateStatus;
  String? cuisineId;
  BusinessType? businessType;
  List<ManageWorkingHours>? manageWorkingHours;
  List<ManageHolidays>? manageHolidays;
  List<StoresLocales>? storesLocales;
  List? discountsAndOfferRelations;
  String? avgRating;
  String? countOfratings;

  Store(
      {this.id,
      this.userId,
      this.slug,
      this.businessTypeId,
      this.businessLogo,
      this.bannerImage,
      this.recommended,
      this.zoneNumber,
      this.streetNumber,
      this.buildingNumber,
      this.country,
      this.latitude,
      this.longitude,
      this.online,
      this.onlineStatus,
      this.onlineStatusChangeTime,
      this.isApproved,
      this.businessAddress,
      this.adminCommission,
      this.orderAcceptTime,
      this.orderTimeForPicker,
      this.open247,
      this.categoryUpdateStatus,
      this.cuisineId,
      this.businessType,
      this.manageWorkingHours,
      this.manageHolidays,
      this.storesLocales,
      this.discountsAndOfferRelations,
      this.avgRating,
      this.countOfratings});

  Store.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    userId = json['userId'];
    slug = json['slug'];
    businessTypeId = json['businessTypeId'];
    businessLogo = json['business_logo'];
    bannerImage = json['banner_image'];
    recommended = json['recommended'];
    zoneNumber = json['zone_number'];
    streetNumber = json['street_number'];
    buildingNumber = json['building_number'];
    country = json['country'];
    latitude = json['latitude'];
    longitude = json['longitude'];
    online = json['online'];
    onlineStatus = json['online_status'];
    onlineStatusChangeTime = json['online_status_change_time'];
    isApproved = json['is_approved'];
    businessAddress = json['business_address'];
    adminCommission = json['admin_commission'];
    orderAcceptTime = json['order_accept_time'];
    orderTimeForPicker = json['order_time_for_picker'];
    open247 = json['open247'];
    categoryUpdateStatus = json['category_update_status'];
    cuisineId = json['cuisineId'];
    businessType = json['business_type'] != null
        ? BusinessType.fromJson(json['business_type'])
        : null;
    if (json['manage_working_hours'] != null) {
      manageWorkingHours = <ManageWorkingHours>[];
      json['manage_working_hours'].forEach((v) {
        manageWorkingHours!.add(ManageWorkingHours.fromJson(v));
      });
    }
    if (json['manage_holidays'] != null) {
      manageHolidays = <ManageHolidays>[];
      json['manage_holidays'].forEach((v) {
        manageHolidays!.add(ManageHolidays.fromJson(v));
      });
    }
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
    avgRating = json['avgRating'];
    countOfratings = json['countOfratings'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['userId'] = userId;
    data['slug'] = slug;
    data['businessTypeId'] = businessTypeId;
    data['business_logo'] = businessLogo;
    data['banner_image'] = bannerImage;
    data['recommended'] = recommended;
    data['zone_number'] = zoneNumber;
    data['street_number'] = streetNumber;
    data['building_number'] = buildingNumber;
    data['country'] = country;
    data['latitude'] = latitude;
    data['longitude'] = longitude;
    data['online'] = online;
    data['online_status'] = onlineStatus;
    data['online_status_change_time'] = onlineStatusChangeTime;
    data['is_approved'] = isApproved;
    data['business_address'] = businessAddress;
    data['admin_commission'] = adminCommission;
    data['order_accept_time'] = orderAcceptTime;
    data['order_time_for_picker'] = orderTimeForPicker;
    data['open247'] = open247;
    data['category_update_status'] = categoryUpdateStatus;
    data['cuisineId'] = cuisineId;
    if (businessType != null) {
      data['business_type'] = businessType!.toJson();
    }
    if (manageWorkingHours != null) {
      data['manage_working_hours'] =
          manageWorkingHours!.map((v) => v.toJson()).toList();
    }
    if (manageHolidays != null) {
      data['manage_holidays'] = manageHolidays!.map((v) => v.toJson()).toList();
    }
    if (storesLocales != null) {
      data['stores_locales'] = storesLocales!.map((v) => v.toJson()).toList();
    }
    if (discountsAndOfferRelations != null) {
      data['discounts_and_offer_relations'] =
          discountsAndOfferRelations!.map((v) => v.toJson()).toList();
    }
    data['avgRating'] = avgRating;
    data['countOfratings'] = countOfratings;
    return data;
  }
}

class BusinessType {
  int? id;
  String? slug;
  String? image;
  int? categoryLevel;
  int? tax;
  List<BusinessTypeLocales>? businessTypeLocales;

  BusinessType(
      {this.id,
      this.slug,
      this.image,
      this.categoryLevel,
      this.tax,
      this.businessTypeLocales});

  BusinessType.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    slug = json['slug'];
    image = json['image'];
    categoryLevel = json['category_level'];
    tax = json['tax'];
    if (json['business_type_locales'] != null) {
      businessTypeLocales = <BusinessTypeLocales>[];
      json['business_type_locales'].forEach((v) {
        businessTypeLocales!.add(BusinessTypeLocales.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['slug'] = slug;
    data['image'] = image;
    data['category_level'] = categoryLevel;
    data['tax'] = tax;
    if (businessTypeLocales != null) {
      data['business_type_locales'] =
          businessTypeLocales!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class BusinessTypeLocales {
  String? name;
  String? description;

  BusinessTypeLocales({this.name, this.description});

  BusinessTypeLocales.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    description = json['description'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['description'] = description;
    return data;
  }
}

class ManageWorkingHours {
  int? id;
  int? storeId;
  String? day;
  String? startTime;
  String? endTime;
  bool? open;
  String? timeJson;

  ManageWorkingHours(
      {this.id,
      this.storeId,
      this.day,
      this.startTime,
      this.endTime,
      this.open,
      this.timeJson});

  ManageWorkingHours.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    storeId = json['storeId'];
    day = json['day'];
    startTime = json['starttime'];
    endTime = json['endtime'];
    open = json['open'];
    timeJson = json['timejson'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['storeId'] = storeId;
    data['day'] = day;
    data['starttime'] = startTime;
    data['endtime'] = endTime;
    data['open'] = open;
    data['timejson'] = timeJson;
    return data;
  }
}

class ManageHolidays {
  int? id;
  int? storeId;
  String? holidayName;
  String? date;

  ManageHolidays({this.id, this.storeId, this.holidayName, this.date});

  ManageHolidays.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    storeId = json['storeId'];
    holidayName = json['holidayName'];
    date = json['date'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['storeId'] = storeId;
    data['holidayName'] = holidayName;
    data['date'] = date;
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

class Categories {
  int? id;
  int? businessTypeId;
  String? slug;
  int? parentId;
  String? status;
  String? imageGif;
  String? image;
  int? productCount;
  List<CategoryLocales>? categoryLocales;
  StoreCategoryRelation? storeCategoryRelation;
  List<Category>? category;

  Categories(
      {this.id,
      this.businessTypeId,
      this.slug,
      this.parentId,
      this.status,
      this.imageGif,
      this.image,
      this.productCount,
      this.categoryLocales,
      this.storeCategoryRelation,
      this.category});

  Categories.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    businessTypeId = json['businessTypeId'];
    slug = json['slug'];
    parentId = json['parent_id'];
    status = json['status'];
    imageGif = json['image_gif'];
    image = json['image'];
    productCount = json['productCount'];
    if (json['category_locales'] != null) {
      categoryLocales = <CategoryLocales>[];
      json['category_locales'].forEach((v) {
        categoryLocales!.add(CategoryLocales.fromJson(v));
      });
    }
    storeCategoryRelation = json['store_category_relation'] != null
        ? StoreCategoryRelation.fromJson(json['store_category_relation'])
        : null;
    if (json['category'] != null) {
      category = <Category>[];
      json['category'].forEach((v) {
        category!.add(Category.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['businessTypeId'] = businessTypeId;
    data['slug'] = slug;
    data['parent_id'] = parentId;
    data['status'] = status;
    data['image_gif'] = imageGif;
    data['image'] = image;
    data['productCount'] = productCount;
    if (categoryLocales != null) {
      data['category_locales'] =
          categoryLocales!.map((v) => v.toJson()).toList();
    }
    if (storeCategoryRelation != null) {
      data['store_category_relation'] = storeCategoryRelation!.toJson();
    }
    if (category != null) {
      data['category'] = category!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class CategoryLocales {
  String? name;
  String? description;
  String? locale;

  CategoryLocales({this.name, this.description, this.locale});

  CategoryLocales.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    description = json['description'];
    locale = json['locale'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['description'] = description;
    data['locale'] = locale;
    return data;
  }
}

class StoreCategoryRelation {
  int? id;
  int? sequence;
  String? image;

  StoreCategoryRelation({this.id, this.sequence, this.image});

  StoreCategoryRelation.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    sequence = json['sequence'];
    image = json['image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['sequence'] = sequence;
    data['image'] = image;
    return data;
  }
}

class Category {
  int? id;
  int? businessTypeId;
  String? slug;
  int? parentId;
  String? status;
  String? imageGif;
  String? image;
  int? productCount;
  List<CategoryLocales>? categoryLocales;
  StoreCategoryRelation? storeCategoryRelation;

  Category(
      {this.id,
      this.businessTypeId,
      this.slug,
      this.parentId,
      this.status,
      this.imageGif,
      this.image,
      this.productCount,
      this.categoryLocales,
      this.storeCategoryRelation});

  Category.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    businessTypeId = json['businessTypeId'];
    slug = json['slug'];
    parentId = json['parent_id'];
    status = json['status'];
    imageGif = json['image_gif'];
    image = json['image'];
    productCount = json['productCount'];
    if (json['category_locales'] != null) {
      categoryLocales = <CategoryLocales>[];
      json['category_locales'].forEach((v) {
        categoryLocales!.add(CategoryLocales.fromJson(v));
      });
    }
    storeCategoryRelation = json['store_category_relation'] != null
        ? StoreCategoryRelation.fromJson(json['store_category_relation'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['businessTypeId'] = businessTypeId;
    data['slug'] = slug;
    data['parent_id'] = parentId;
    data['status'] = status;
    data['image_gif'] = imageGif;
    data['image'] = image;
    data['productCount'] = productCount;
    if (categoryLocales != null) {
      data['category_locales'] =
          categoryLocales!.map((v) => v.toJson()).toList();
    }
    if (storeCategoryRelation != null) {
      data['store_category_relation'] = storeCategoryRelation!.toJson();
    }
    return data;
  }
}
