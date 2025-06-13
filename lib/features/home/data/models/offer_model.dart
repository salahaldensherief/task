class OfferModel {
  final String offer1;
  final String offer2;

  OfferModel({required this.offer1, required this.offer2, });

  factory OfferModel.fromJson(Map<String, dynamic> json) {
    return OfferModel(
      offer1: json['offer1'],
      offer2: json['offer2'],
    );
  }
}
