enum FilterAndSortEnum {
  year,
  trim,
  regionalSpecs,
  sellerType,
  price,
  kilometers
}

extension MyFilterAndSortEnum on FilterAndSortEnum {
  String get name {
    switch (this) {
      case FilterAndSortEnum.year:
        return 'Year';
      case FilterAndSortEnum.trim:
        return 'Trim';
      case FilterAndSortEnum.regionalSpecs:
        return 'Regional Specs';
      case FilterAndSortEnum.sellerType:
        return 'Seller Type';
      case FilterAndSortEnum.price:
        return 'Price';
      case FilterAndSortEnum.kilometers:
        return 'Kilometers';
      default:
        return '';
    }
  }
}
