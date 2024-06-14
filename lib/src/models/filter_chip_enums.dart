enum CuisineFilter {
  italian,
  mexican,
  american,
  french,
  japanese,
  chinese,
  indian,
  greek,
  moroccan,
  ethiopian,
  southAfrican,
}

enum BasicIngredientsFilter {
  oil,
  butter,
  flour,
  salt,
  pepper,
  sugar,
  milk,
  vinegar,
}

enum DietaryRestrictionsFilter {
  vegan,
  vegetarian,
  lactoseIntolerant,
  wheatAllergies,
  nutAllergies,
  fishAllergies,
  soyAllergies,
}

String dietaryRestrictionReadable(DietaryRestrictionsFilter filter) {
  return switch (filter) {
    DietaryRestrictionsFilter.vegan => 'vegan',
    DietaryRestrictionsFilter.vegetarian => 'vegetarian',
    DietaryRestrictionsFilter.lactoseIntolerant => 'intolerant la lactoza',
    DietaryRestrictionsFilter.wheatAllergies => 'fara gluten',
    DietaryRestrictionsFilter.nutAllergies => 'alergie la nuci',
    DietaryRestrictionsFilter.fishAllergies => 'alergie la peste',
    DietaryRestrictionsFilter.soyAllergies => 'alergie la soia',
  };
}

String cuisineReadable(CuisineFilter filter) {
  return switch (filter) {
    CuisineFilter.italian => 'italiana',
    CuisineFilter.mexican => 'mexicana',
    CuisineFilter.american => 'americana',
    CuisineFilter.french => 'francez',
    CuisineFilter.japanese => 'japoneza',
    CuisineFilter.chinese => 'chineza',
    CuisineFilter.indian => 'indiana',
    CuisineFilter.ethiopian => 'ethiopiana',
    CuisineFilter.moroccan => 'moroccana',
    CuisineFilter.greek => 'greaca',
    CuisineFilter.southAfrican => 'africana',
  };
}

String basicIngredientsReadable(BasicIngredientsFilter filter) {
  return switch (filter) {
    BasicIngredientsFilter.oil => 'ulei',
    BasicIngredientsFilter.butter => 'unt',
    BasicIngredientsFilter.flour => 'faina',
    BasicIngredientsFilter.salt => 'sare',
    BasicIngredientsFilter.pepper => 'piper',
    BasicIngredientsFilter.sugar => 'zahar',
    BasicIngredientsFilter.milk => 'lapte',
    BasicIngredientsFilter.vinegar => 'otet',
  };
}
