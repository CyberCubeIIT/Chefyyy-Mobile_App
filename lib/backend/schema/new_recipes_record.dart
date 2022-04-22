import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'new_recipes_record.g.dart';

abstract class NewRecipesRecord
    implements Built<NewRecipesRecord, NewRecipesRecordBuilder> {
  static Serializer<NewRecipesRecord> get serializer =>
      _$newRecipesRecordSerializer;

  @nullable
  String get image;

  @nullable
  double get aggregatedRating;

  @nullable
  String get name;

  @nullable
  String get authorName;

  @nullable
  double get calories;

  @nullable
  double get carbohydrateContent;

  @nullable
  double get cholesterolContent;

  @nullable
  String get cookTime;

  @nullable
  String get description;

  @nullable
  double get fatContent;

  @nullable
  double get fiberContent;

  @nullable
  String get foodTypes;

  @nullable
  int get healthy;

  @nullable
  BuiltList<String> get imagesArray;

  @nullable
  int get index;

  @nullable
  BuiltList<String> get keywords;

  @nullable
  @BuiltValueField(wireName: 'non-VegDessert')
  int get nonVegDessert;

  @nullable
  @BuiltValueField(wireName: 'non-veg')
  int get nonVeg;

  @nullable
  String get prepTime;

  @nullable
  double get proteinContent;

  @nullable
  String get recipeCategory;

  @nullable
  int get recipeId;

  @nullable
  BuiltList<String> get recipeIngredientQuantities;

  @nullable
  BuiltList<String> get recipeInstructions;

  @nullable
  double get recipeServings;

  @nullable
  double get saturatedFatContent;

  @nullable
  double get sodiumContent;

  @nullable
  double get sugarContent;

  @nullable
  String get totalTime;

  @nullable
  int get veg;

  @nullable
  int get vegDessert;

  @nullable
  BuiltList<String> get recipeIngredientParts;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(NewRecipesRecordBuilder builder) => builder
    ..image = ''
    ..aggregatedRating = 0.0
    ..name = ''
    ..authorName = ''
    ..calories = 0.0
    ..carbohydrateContent = 0.0
    ..cholesterolContent = 0.0
    ..cookTime = ''
    ..description = ''
    ..fatContent = 0.0
    ..fiberContent = 0.0
    ..foodTypes = ''
    ..healthy = 0
    ..imagesArray = ListBuilder()
    ..index = 0
    ..keywords = ListBuilder()
    ..nonVegDessert = 0
    ..nonVeg = 0
    ..prepTime = ''
    ..proteinContent = 0.0
    ..recipeCategory = ''
    ..recipeId = 0
    ..recipeIngredientQuantities = ListBuilder()
    ..recipeInstructions = ListBuilder()
    ..recipeServings = 0.0
    ..saturatedFatContent = 0.0
    ..sodiumContent = 0.0
    ..sugarContent = 0.0
    ..totalTime = ''
    ..veg = 0
    ..vegDessert = 0
    ..recipeIngredientParts = ListBuilder();

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('newRecipes');

  static Stream<NewRecipesRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<NewRecipesRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  NewRecipesRecord._();
  factory NewRecipesRecord([void Function(NewRecipesRecordBuilder) updates]) =
      _$NewRecipesRecord;

  static NewRecipesRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createNewRecipesRecordData({
  String image,
  double aggregatedRating,
  String name,
  String authorName,
  double calories,
  double carbohydrateContent,
  double cholesterolContent,
  String cookTime,
  String description,
  double fatContent,
  double fiberContent,
  String foodTypes,
  int healthy,
  int index,
  int nonVegDessert,
  int nonVeg,
  String prepTime,
  double proteinContent,
  String recipeCategory,
  int recipeId,
  double recipeServings,
  double saturatedFatContent,
  double sodiumContent,
  double sugarContent,
  String totalTime,
  int veg,
  int vegDessert,
}) =>
    serializers.toFirestore(
        NewRecipesRecord.serializer,
        NewRecipesRecord((n) => n
          ..image = image
          ..aggregatedRating = aggregatedRating
          ..name = name
          ..authorName = authorName
          ..calories = calories
          ..carbohydrateContent = carbohydrateContent
          ..cholesterolContent = cholesterolContent
          ..cookTime = cookTime
          ..description = description
          ..fatContent = fatContent
          ..fiberContent = fiberContent
          ..foodTypes = foodTypes
          ..healthy = healthy
          ..imagesArray = null
          ..index = index
          ..keywords = null
          ..nonVegDessert = nonVegDessert
          ..nonVeg = nonVeg
          ..prepTime = prepTime
          ..proteinContent = proteinContent
          ..recipeCategory = recipeCategory
          ..recipeId = recipeId
          ..recipeIngredientQuantities = null
          ..recipeInstructions = null
          ..recipeServings = recipeServings
          ..saturatedFatContent = saturatedFatContent
          ..sodiumContent = sodiumContent
          ..sugarContent = sugarContent
          ..totalTime = totalTime
          ..veg = veg
          ..vegDessert = vegDessert
          ..recipeIngredientParts = null));
