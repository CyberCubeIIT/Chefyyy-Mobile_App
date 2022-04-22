// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'new_recipes_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<NewRecipesRecord> _$newRecipesRecordSerializer =
    new _$NewRecipesRecordSerializer();

class _$NewRecipesRecordSerializer
    implements StructuredSerializer<NewRecipesRecord> {
  @override
  final Iterable<Type> types = const [NewRecipesRecord, _$NewRecipesRecord];
  @override
  final String wireName = 'NewRecipesRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, NewRecipesRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.image;
    if (value != null) {
      result
        ..add('image')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.aggregatedRating;
    if (value != null) {
      result
        ..add('aggregatedRating')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.authorName;
    if (value != null) {
      result
        ..add('authorName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.calories;
    if (value != null) {
      result
        ..add('calories')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.carbohydrateContent;
    if (value != null) {
      result
        ..add('carbohydrateContent')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.cholesterolContent;
    if (value != null) {
      result
        ..add('cholesterolContent')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.cookTime;
    if (value != null) {
      result
        ..add('cookTime')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.description;
    if (value != null) {
      result
        ..add('description')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.fatContent;
    if (value != null) {
      result
        ..add('fatContent')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.fiberContent;
    if (value != null) {
      result
        ..add('fiberContent')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.foodTypes;
    if (value != null) {
      result
        ..add('foodTypes')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.healthy;
    if (value != null) {
      result
        ..add('healthy')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.imagesArray;
    if (value != null) {
      result
        ..add('imagesArray')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.index;
    if (value != null) {
      result
        ..add('index')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.keywords;
    if (value != null) {
      result
        ..add('keywords')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.nonVegDessert;
    if (value != null) {
      result
        ..add('non-VegDessert')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.nonVeg;
    if (value != null) {
      result
        ..add('non-veg')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.prepTime;
    if (value != null) {
      result
        ..add('prepTime')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.proteinContent;
    if (value != null) {
      result
        ..add('proteinContent')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.recipeCategory;
    if (value != null) {
      result
        ..add('recipeCategory')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.recipeId;
    if (value != null) {
      result
        ..add('recipeId')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.recipeIngredientQuantities;
    if (value != null) {
      result
        ..add('recipeIngredientQuantities')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.recipeInstructions;
    if (value != null) {
      result
        ..add('recipeInstructions')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.recipeServings;
    if (value != null) {
      result
        ..add('recipeServings')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.saturatedFatContent;
    if (value != null) {
      result
        ..add('saturatedFatContent')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.sodiumContent;
    if (value != null) {
      result
        ..add('sodiumContent')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.sugarContent;
    if (value != null) {
      result
        ..add('sugarContent')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.totalTime;
    if (value != null) {
      result
        ..add('totalTime')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.veg;
    if (value != null) {
      result
        ..add('veg')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.vegDessert;
    if (value != null) {
      result
        ..add('vegDessert')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.recipeIngredientParts;
    if (value != null) {
      result
        ..add('recipeIngredientParts')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.reference;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    return result;
  }

  @override
  NewRecipesRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new NewRecipesRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'image':
          result.image = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'aggregatedRating':
          result.aggregatedRating = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'authorName':
          result.authorName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'calories':
          result.calories = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'carbohydrateContent':
          result.carbohydrateContent = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'cholesterolContent':
          result.cholesterolContent = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'cookTime':
          result.cookTime = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'fatContent':
          result.fatContent = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'fiberContent':
          result.fiberContent = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'foodTypes':
          result.foodTypes = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'healthy':
          result.healthy = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'imagesArray':
          result.imagesArray.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<Object>);
          break;
        case 'index':
          result.index = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'keywords':
          result.keywords.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<Object>);
          break;
        case 'non-VegDessert':
          result.nonVegDessert = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'non-veg':
          result.nonVeg = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'prepTime':
          result.prepTime = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'proteinContent':
          result.proteinContent = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'recipeCategory':
          result.recipeCategory = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'recipeId':
          result.recipeId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'recipeIngredientQuantities':
          result.recipeIngredientQuantities.replace(serializers.deserialize(
                  value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<Object>);
          break;
        case 'recipeInstructions':
          result.recipeInstructions.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<Object>);
          break;
        case 'recipeServings':
          result.recipeServings = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'saturatedFatContent':
          result.saturatedFatContent = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'sodiumContent':
          result.sodiumContent = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'sugarContent':
          result.sugarContent = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'totalTime':
          result.totalTime = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'veg':
          result.veg = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'vegDessert':
          result.vegDessert = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'recipeIngredientParts':
          result.recipeIngredientParts.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<Object>);
          break;
        case 'Document__Reference__Field':
          result.reference = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
      }
    }

    return result.build();
  }
}

class _$NewRecipesRecord extends NewRecipesRecord {
  @override
  final String image;
  @override
  final double aggregatedRating;
  @override
  final String name;
  @override
  final String authorName;
  @override
  final double calories;
  @override
  final double carbohydrateContent;
  @override
  final double cholesterolContent;
  @override
  final String cookTime;
  @override
  final String description;
  @override
  final double fatContent;
  @override
  final double fiberContent;
  @override
  final String foodTypes;
  @override
  final int healthy;
  @override
  final BuiltList<String> imagesArray;
  @override
  final int index;
  @override
  final BuiltList<String> keywords;
  @override
  final int nonVegDessert;
  @override
  final int nonVeg;
  @override
  final String prepTime;
  @override
  final double proteinContent;
  @override
  final String recipeCategory;
  @override
  final int recipeId;
  @override
  final BuiltList<String> recipeIngredientQuantities;
  @override
  final BuiltList<String> recipeInstructions;
  @override
  final double recipeServings;
  @override
  final double saturatedFatContent;
  @override
  final double sodiumContent;
  @override
  final double sugarContent;
  @override
  final String totalTime;
  @override
  final int veg;
  @override
  final int vegDessert;
  @override
  final BuiltList<String> recipeIngredientParts;
  @override
  final DocumentReference<Object> reference;

  factory _$NewRecipesRecord(
          [void Function(NewRecipesRecordBuilder) updates]) =>
      (new NewRecipesRecordBuilder()..update(updates)).build();

  _$NewRecipesRecord._(
      {this.image,
      this.aggregatedRating,
      this.name,
      this.authorName,
      this.calories,
      this.carbohydrateContent,
      this.cholesterolContent,
      this.cookTime,
      this.description,
      this.fatContent,
      this.fiberContent,
      this.foodTypes,
      this.healthy,
      this.imagesArray,
      this.index,
      this.keywords,
      this.nonVegDessert,
      this.nonVeg,
      this.prepTime,
      this.proteinContent,
      this.recipeCategory,
      this.recipeId,
      this.recipeIngredientQuantities,
      this.recipeInstructions,
      this.recipeServings,
      this.saturatedFatContent,
      this.sodiumContent,
      this.sugarContent,
      this.totalTime,
      this.veg,
      this.vegDessert,
      this.recipeIngredientParts,
      this.reference})
      : super._();

  @override
  NewRecipesRecord rebuild(void Function(NewRecipesRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NewRecipesRecordBuilder toBuilder() =>
      new NewRecipesRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NewRecipesRecord &&
        image == other.image &&
        aggregatedRating == other.aggregatedRating &&
        name == other.name &&
        authorName == other.authorName &&
        calories == other.calories &&
        carbohydrateContent == other.carbohydrateContent &&
        cholesterolContent == other.cholesterolContent &&
        cookTime == other.cookTime &&
        description == other.description &&
        fatContent == other.fatContent &&
        fiberContent == other.fiberContent &&
        foodTypes == other.foodTypes &&
        healthy == other.healthy &&
        imagesArray == other.imagesArray &&
        index == other.index &&
        keywords == other.keywords &&
        nonVegDessert == other.nonVegDessert &&
        nonVeg == other.nonVeg &&
        prepTime == other.prepTime &&
        proteinContent == other.proteinContent &&
        recipeCategory == other.recipeCategory &&
        recipeId == other.recipeId &&
        recipeIngredientQuantities == other.recipeIngredientQuantities &&
        recipeInstructions == other.recipeInstructions &&
        recipeServings == other.recipeServings &&
        saturatedFatContent == other.saturatedFatContent &&
        sodiumContent == other.sodiumContent &&
        sugarContent == other.sugarContent &&
        totalTime == other.totalTime &&
        veg == other.veg &&
        vegDessert == other.vegDessert &&
        recipeIngredientParts == other.recipeIngredientParts &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc(
                                                    $jc(
                                                        $jc(
                                                            $jc(
                                                                $jc(
                                                                    $jc(
                                                                        $jc(
                                                                            $jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc(0, image.hashCode), aggregatedRating.hashCode), name.hashCode), authorName.hashCode), calories.hashCode), carbohydrateContent.hashCode), cholesterolContent.hashCode), cookTime.hashCode), description.hashCode), fatContent.hashCode), fiberContent.hashCode), foodTypes.hashCode), healthy.hashCode), imagesArray.hashCode),
                                                                                index.hashCode),
                                                                            keywords.hashCode),
                                                                        nonVegDessert.hashCode),
                                                                    nonVeg.hashCode),
                                                                prepTime.hashCode),
                                                            proteinContent.hashCode),
                                                        recipeCategory.hashCode),
                                                    recipeId.hashCode),
                                                recipeIngredientQuantities.hashCode),
                                            recipeInstructions.hashCode),
                                        recipeServings.hashCode),
                                    saturatedFatContent.hashCode),
                                sodiumContent.hashCode),
                            sugarContent.hashCode),
                        totalTime.hashCode),
                    veg.hashCode),
                vegDessert.hashCode),
            recipeIngredientParts.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('NewRecipesRecord')
          ..add('image', image)
          ..add('aggregatedRating', aggregatedRating)
          ..add('name', name)
          ..add('authorName', authorName)
          ..add('calories', calories)
          ..add('carbohydrateContent', carbohydrateContent)
          ..add('cholesterolContent', cholesterolContent)
          ..add('cookTime', cookTime)
          ..add('description', description)
          ..add('fatContent', fatContent)
          ..add('fiberContent', fiberContent)
          ..add('foodTypes', foodTypes)
          ..add('healthy', healthy)
          ..add('imagesArray', imagesArray)
          ..add('index', index)
          ..add('keywords', keywords)
          ..add('nonVegDessert', nonVegDessert)
          ..add('nonVeg', nonVeg)
          ..add('prepTime', prepTime)
          ..add('proteinContent', proteinContent)
          ..add('recipeCategory', recipeCategory)
          ..add('recipeId', recipeId)
          ..add('recipeIngredientQuantities', recipeIngredientQuantities)
          ..add('recipeInstructions', recipeInstructions)
          ..add('recipeServings', recipeServings)
          ..add('saturatedFatContent', saturatedFatContent)
          ..add('sodiumContent', sodiumContent)
          ..add('sugarContent', sugarContent)
          ..add('totalTime', totalTime)
          ..add('veg', veg)
          ..add('vegDessert', vegDessert)
          ..add('recipeIngredientParts', recipeIngredientParts)
          ..add('reference', reference))
        .toString();
  }
}

class NewRecipesRecordBuilder
    implements Builder<NewRecipesRecord, NewRecipesRecordBuilder> {
  _$NewRecipesRecord _$v;

  String _image;
  String get image => _$this._image;
  set image(String image) => _$this._image = image;

  double _aggregatedRating;
  double get aggregatedRating => _$this._aggregatedRating;
  set aggregatedRating(double aggregatedRating) =>
      _$this._aggregatedRating = aggregatedRating;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _authorName;
  String get authorName => _$this._authorName;
  set authorName(String authorName) => _$this._authorName = authorName;

  double _calories;
  double get calories => _$this._calories;
  set calories(double calories) => _$this._calories = calories;

  double _carbohydrateContent;
  double get carbohydrateContent => _$this._carbohydrateContent;
  set carbohydrateContent(double carbohydrateContent) =>
      _$this._carbohydrateContent = carbohydrateContent;

  double _cholesterolContent;
  double get cholesterolContent => _$this._cholesterolContent;
  set cholesterolContent(double cholesterolContent) =>
      _$this._cholesterolContent = cholesterolContent;

  String _cookTime;
  String get cookTime => _$this._cookTime;
  set cookTime(String cookTime) => _$this._cookTime = cookTime;

  String _description;
  String get description => _$this._description;
  set description(String description) => _$this._description = description;

  double _fatContent;
  double get fatContent => _$this._fatContent;
  set fatContent(double fatContent) => _$this._fatContent = fatContent;

  double _fiberContent;
  double get fiberContent => _$this._fiberContent;
  set fiberContent(double fiberContent) => _$this._fiberContent = fiberContent;

  String _foodTypes;
  String get foodTypes => _$this._foodTypes;
  set foodTypes(String foodTypes) => _$this._foodTypes = foodTypes;

  int _healthy;
  int get healthy => _$this._healthy;
  set healthy(int healthy) => _$this._healthy = healthy;

  ListBuilder<String> _imagesArray;
  ListBuilder<String> get imagesArray =>
      _$this._imagesArray ??= new ListBuilder<String>();
  set imagesArray(ListBuilder<String> imagesArray) =>
      _$this._imagesArray = imagesArray;

  int _index;
  int get index => _$this._index;
  set index(int index) => _$this._index = index;

  ListBuilder<String> _keywords;
  ListBuilder<String> get keywords =>
      _$this._keywords ??= new ListBuilder<String>();
  set keywords(ListBuilder<String> keywords) => _$this._keywords = keywords;

  int _nonVegDessert;
  int get nonVegDessert => _$this._nonVegDessert;
  set nonVegDessert(int nonVegDessert) => _$this._nonVegDessert = nonVegDessert;

  int _nonVeg;
  int get nonVeg => _$this._nonVeg;
  set nonVeg(int nonVeg) => _$this._nonVeg = nonVeg;

  String _prepTime;
  String get prepTime => _$this._prepTime;
  set prepTime(String prepTime) => _$this._prepTime = prepTime;

  double _proteinContent;
  double get proteinContent => _$this._proteinContent;
  set proteinContent(double proteinContent) =>
      _$this._proteinContent = proteinContent;

  String _recipeCategory;
  String get recipeCategory => _$this._recipeCategory;
  set recipeCategory(String recipeCategory) =>
      _$this._recipeCategory = recipeCategory;

  int _recipeId;
  int get recipeId => _$this._recipeId;
  set recipeId(int recipeId) => _$this._recipeId = recipeId;

  ListBuilder<String> _recipeIngredientQuantities;
  ListBuilder<String> get recipeIngredientQuantities =>
      _$this._recipeIngredientQuantities ??= new ListBuilder<String>();
  set recipeIngredientQuantities(
          ListBuilder<String> recipeIngredientQuantities) =>
      _$this._recipeIngredientQuantities = recipeIngredientQuantities;

  ListBuilder<String> _recipeInstructions;
  ListBuilder<String> get recipeInstructions =>
      _$this._recipeInstructions ??= new ListBuilder<String>();
  set recipeInstructions(ListBuilder<String> recipeInstructions) =>
      _$this._recipeInstructions = recipeInstructions;

  double _recipeServings;
  double get recipeServings => _$this._recipeServings;
  set recipeServings(double recipeServings) =>
      _$this._recipeServings = recipeServings;

  double _saturatedFatContent;
  double get saturatedFatContent => _$this._saturatedFatContent;
  set saturatedFatContent(double saturatedFatContent) =>
      _$this._saturatedFatContent = saturatedFatContent;

  double _sodiumContent;
  double get sodiumContent => _$this._sodiumContent;
  set sodiumContent(double sodiumContent) =>
      _$this._sodiumContent = sodiumContent;

  double _sugarContent;
  double get sugarContent => _$this._sugarContent;
  set sugarContent(double sugarContent) => _$this._sugarContent = sugarContent;

  String _totalTime;
  String get totalTime => _$this._totalTime;
  set totalTime(String totalTime) => _$this._totalTime = totalTime;

  int _veg;
  int get veg => _$this._veg;
  set veg(int veg) => _$this._veg = veg;

  int _vegDessert;
  int get vegDessert => _$this._vegDessert;
  set vegDessert(int vegDessert) => _$this._vegDessert = vegDessert;

  ListBuilder<String> _recipeIngredientParts;
  ListBuilder<String> get recipeIngredientParts =>
      _$this._recipeIngredientParts ??= new ListBuilder<String>();
  set recipeIngredientParts(ListBuilder<String> recipeIngredientParts) =>
      _$this._recipeIngredientParts = recipeIngredientParts;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  NewRecipesRecordBuilder() {
    NewRecipesRecord._initializeBuilder(this);
  }

  NewRecipesRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _image = $v.image;
      _aggregatedRating = $v.aggregatedRating;
      _name = $v.name;
      _authorName = $v.authorName;
      _calories = $v.calories;
      _carbohydrateContent = $v.carbohydrateContent;
      _cholesterolContent = $v.cholesterolContent;
      _cookTime = $v.cookTime;
      _description = $v.description;
      _fatContent = $v.fatContent;
      _fiberContent = $v.fiberContent;
      _foodTypes = $v.foodTypes;
      _healthy = $v.healthy;
      _imagesArray = $v.imagesArray?.toBuilder();
      _index = $v.index;
      _keywords = $v.keywords?.toBuilder();
      _nonVegDessert = $v.nonVegDessert;
      _nonVeg = $v.nonVeg;
      _prepTime = $v.prepTime;
      _proteinContent = $v.proteinContent;
      _recipeCategory = $v.recipeCategory;
      _recipeId = $v.recipeId;
      _recipeIngredientQuantities = $v.recipeIngredientQuantities?.toBuilder();
      _recipeInstructions = $v.recipeInstructions?.toBuilder();
      _recipeServings = $v.recipeServings;
      _saturatedFatContent = $v.saturatedFatContent;
      _sodiumContent = $v.sodiumContent;
      _sugarContent = $v.sugarContent;
      _totalTime = $v.totalTime;
      _veg = $v.veg;
      _vegDessert = $v.vegDessert;
      _recipeIngredientParts = $v.recipeIngredientParts?.toBuilder();
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NewRecipesRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$NewRecipesRecord;
  }

  @override
  void update(void Function(NewRecipesRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$NewRecipesRecord build() {
    _$NewRecipesRecord _$result;
    try {
      _$result = _$v ??
          new _$NewRecipesRecord._(
              image: image,
              aggregatedRating: aggregatedRating,
              name: name,
              authorName: authorName,
              calories: calories,
              carbohydrateContent: carbohydrateContent,
              cholesterolContent: cholesterolContent,
              cookTime: cookTime,
              description: description,
              fatContent: fatContent,
              fiberContent: fiberContent,
              foodTypes: foodTypes,
              healthy: healthy,
              imagesArray: _imagesArray?.build(),
              index: index,
              keywords: _keywords?.build(),
              nonVegDessert: nonVegDessert,
              nonVeg: nonVeg,
              prepTime: prepTime,
              proteinContent: proteinContent,
              recipeCategory: recipeCategory,
              recipeId: recipeId,
              recipeIngredientQuantities: _recipeIngredientQuantities?.build(),
              recipeInstructions: _recipeInstructions?.build(),
              recipeServings: recipeServings,
              saturatedFatContent: saturatedFatContent,
              sodiumContent: sodiumContent,
              sugarContent: sugarContent,
              totalTime: totalTime,
              veg: veg,
              vegDessert: vegDessert,
              recipeIngredientParts: _recipeIngredientParts?.build(),
              reference: reference);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'imagesArray';
        _imagesArray?.build();

        _$failedField = 'keywords';
        _keywords?.build();

        _$failedField = 'recipeIngredientQuantities';
        _recipeIngredientQuantities?.build();
        _$failedField = 'recipeInstructions';
        _recipeInstructions?.build();

        _$failedField = 'recipeIngredientParts';
        _recipeIngredientParts?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'NewRecipesRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
