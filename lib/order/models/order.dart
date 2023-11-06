class Order {
  double? id;
  String? orderType;
  String? subclass;

  String? poComment;
  String? buyerComment;

  Order(
      {required double id,
      required String orderType,
      required String subclass,
      required String poComment,
      required String buyerComment});
}
