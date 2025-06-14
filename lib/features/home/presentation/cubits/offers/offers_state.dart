part of 'offers_cubit.dart';

@immutable
sealed class OffersState {}

final class OffersInitial extends OffersState {}
final class OffersLoading extends OffersState {

}
final class OffersFailure extends OffersState {
  final String message;

  OffersFailure(this.message);
}
final class OffersSuccess extends OffersState {
  final List<OfferModel> offers;

  OffersSuccess(this.offers);

}
