import 'filter_and_sort_enum.dart';

enum AllFilterEnum {
  year,
  trim,
  regionalSpecs,
  sellerType,
  price,
  kilometers,
  bodyType,
  seats,
  fuelType,
  transmissionType,
  numberOfCylinders,
  exteriorColor,
  interiorColor,
  doors,
  keywords,
  dealerName,
  warranty,
  horsePower,
  engineCapacity,
  technicalFeature,
  exportStatus,
  steeringSide,
  extras,
  badges,
  adsPosts,
  location,
}

extension MyAllFilterEnumEnum on AllFilterEnum {
  String get name {
    switch (this) {
      case AllFilterEnum.year:
        return 'Year';
      case AllFilterEnum.trim:
        return 'Trim';
      case AllFilterEnum.regionalSpecs:
        return 'Regional Specs';
      case AllFilterEnum.sellerType:
        return 'Seller Type';
      case AllFilterEnum.price:
        return 'Price';
      case AllFilterEnum.kilometers:
        return 'Kilometers';
      case AllFilterEnum.bodyType:
        return 'Body Type';
      case AllFilterEnum.seats:
        return 'Seats';
      case AllFilterEnum.fuelType:
        return 'Fuel Type';
      case AllFilterEnum.transmissionType:
        return 'Transmission Type';
      case AllFilterEnum.numberOfCylinders:
        return 'Number Of Cylinders';
      case AllFilterEnum.exteriorColor:
        return 'Exterior Color';
      case AllFilterEnum.interiorColor:
        return 'Interior Color';
      case AllFilterEnum.doors:
        return 'Doors';
      case AllFilterEnum.keywords:
        return 'Keywords';
      case AllFilterEnum.dealerName:
        return 'Dealer Name';
      case AllFilterEnum.warranty:
        return 'Warranty';
      case AllFilterEnum.horsePower:
        return 'Horse Power';
      case AllFilterEnum.engineCapacity:
        return 'Engine Capacity';
      case AllFilterEnum.technicalFeature:
        return 'Technical Feature';
      case AllFilterEnum.exportStatus:
        return 'Export Status';
      case AllFilterEnum.steeringSide:
        return 'Steering Side';
      case AllFilterEnum.extras:
        return 'Extras';
      case AllFilterEnum.badges:
        return 'Badges';
      case AllFilterEnum.adsPosts:
        return 'Ads Posts';
      case AllFilterEnum.location:
        return 'Location';
      default:
        return '';
    }
  }
}
