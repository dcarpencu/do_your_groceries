enum CuisineFilter {
  romanian,
  serbian,
  hungarian,
  italian,
  mexican,
  american,
  french,
  japanese,
  chinese,
  indian,
  greek,
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
  broth,
  biscuit,
  honey,
  basil,
  paprika,
  chilly,
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
    DietaryRestrictionsFilter.lactoseIntolerant => 'intolerant la lactoză',
    DietaryRestrictionsFilter.wheatAllergies => 'fără gluten',
    DietaryRestrictionsFilter.nutAllergies => 'alergie la nuci',
    DietaryRestrictionsFilter.fishAllergies => 'alergie la pește',
    DietaryRestrictionsFilter.soyAllergies => 'alergie la soia',
  };
}

String cuisineReadable(CuisineFilter filter) {
  return switch (filter) {
    CuisineFilter.romanian => 'românească',
    CuisineFilter.serbian => 'sârbească',
    CuisineFilter.hungarian => 'ungurească',
    CuisineFilter.italian => 'italiană',
    CuisineFilter.mexican => 'mexicană',
    CuisineFilter.american => 'americană',
    CuisineFilter.french => 'franceză',
    CuisineFilter.japanese => 'japoneză',
    CuisineFilter.chinese => 'chinezească',
    CuisineFilter.indian => 'indiană',
    CuisineFilter.greek => 'grecească',
    CuisineFilter.southAfrican => 'africană',
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
    BasicIngredientsFilter.broth => 'bulion',
    BasicIngredientsFilter.biscuit => 'pesmet',
    BasicIngredientsFilter.honey => 'miere',
    BasicIngredientsFilter.basil => 'busuioc',
    BasicIngredientsFilter.paprika => 'paprika',
    BasicIngredientsFilter.chilly => 'chilly',
  };
}
