class ProductsModel {
  int? ack;
  int? count;
  List<Products>? products;

  ProductsModel({this.ack, this.count, this.products});

  ProductsModel.fromJson(Map<String, dynamic> json) {
    ack = json['ack'];
    count = json['count'];
    if (json['products'] != null) {
      products = <Products>[];
      json['products'].forEach((v) {
        products!.add(Products.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['ack'] = ack;
    data['count'] = count;
    if (products != null) {
      data['products'] = products!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Products {
  int? id;
  int? storeId;
  String? itemCode;
  int? categoryId;
  int? isApproved;
  String? status;
  String? slug;
  String? availabilityStartTime;
  String? availabilityEndTime;
  dynamic price;
  int? salePrice;
  String? uomData;
  int? stockQuantity;
  int? baseUomId;
  List<ProductsLocales>? productsLocales;
  List? discountsAndOfferRelations;

  Products(
      {this.id,
      this.storeId,
      this.itemCode,
      this.categoryId,
      this.isApproved,
      this.status,
      this.slug,
      this.availabilityStartTime,
      this.availabilityEndTime,
      this.price,
      this.salePrice,
      this.uomData,
      this.stockQuantity,
      this.baseUomId,
      this.productsLocales,
      this.discountsAndOfferRelations});

  Products.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    storeId = json['storeId'];
    itemCode = json['itemCode'];
    categoryId = json['categoryId'];
    isApproved = json['is_approved'];
    status = json['status'];
    slug = json['slug'];
    availabilityStartTime = json['availability_start_time'];
    availabilityEndTime = json['availability_end_time'];
    price = json['price'];
    salePrice = json['salePrice'];
    uomData = json['uom_data'];
    stockQuantity = json['stockQuantity'];
    baseUomId = json['baseUomId'];
    if (json['products_locales'] != null) {
      productsLocales = <ProductsLocales>[];
      json['products_locales'].forEach((v) {
        productsLocales!.add(ProductsLocales.fromJson(v));
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
    data['id'] = id;
    data['storeId'] = storeId;
    data['itemCode'] = itemCode;
    data['categoryId'] = categoryId;
    data['is_approved'] = isApproved;
    data['status'] = status;
    data['slug'] = slug;
    data['availability_start_time'] = availabilityStartTime;
    data['availability_end_time'] = availabilityEndTime;
    data['price'] = price;
    data['salePrice'] = salePrice;
    data['uom_data'] = uomData;
    data['stockQuantity'] = stockQuantity;
    data['baseUomId'] = baseUomId;
    if (productsLocales != null) {
      data['products_locales'] =
          productsLocales!.map((v) => v.toJson()).toList();
    }
    if (discountsAndOfferRelations != null) {
      data['discounts_and_offer_relations'] =
          discountsAndOfferRelations!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class ProductsLocales {
  String? title;
  String? description;

  ProductsLocales({this.title, this.description});

  ProductsLocales.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    description = json['description'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['title'] = title;
    data['description'] = description;
    return data;
  }
}
