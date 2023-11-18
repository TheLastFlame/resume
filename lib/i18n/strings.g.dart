/// Generated file. Do not edit.
///
/// Original: i18n
/// To regenerate, run: `dart run slang`
///
/// Locales: 2
/// Strings: 28 (14 per locale)
///
/// Built on 2023-11-18 at 09:05 UTC

// coverage:ignore-file
// ignore_for_file: type=lint

import 'package:flutter/widgets.dart';
import 'package:slang/builder/model/node.dart';
import 'package:slang_flutter/slang_flutter.dart';
export 'package:slang_flutter/slang_flutter.dart';

const AppLocale _baseLocale = AppLocale.en;

/// Supported locales, see extension methods below.
///
/// Usage:
/// - LocaleSettings.setLocale(AppLocale.en) // set locale
/// - Locale locale = AppLocale.en.flutterLocale // get flutter locale from enum
/// - if (LocaleSettings.currentLocale == AppLocale.en) // locale check
enum AppLocale with BaseAppLocale<AppLocale, _StringsEn> {
	en(languageCode: 'en', build: _StringsEn.build),
	ru(languageCode: 'ru', build: _StringsRu.build);

	const AppLocale({required this.languageCode, this.scriptCode, this.countryCode, required this.build}); // ignore: unused_element

	@override final String languageCode;
	@override final String? scriptCode;
	@override final String? countryCode;
	@override final TranslationBuilder<AppLocale, _StringsEn> build;

	/// Gets current instance managed by [LocaleSettings].
	_StringsEn get translations => LocaleSettings.instance.translationMap[this]!;
}

/// Method A: Simple
///
/// No rebuild after locale change.
/// Translation happens during initialization of the widget (call of t).
/// Configurable via 'translate_var'.
///
/// Usage:
/// String a = t.someKey.anotherKey;
/// String b = t['someKey.anotherKey']; // Only for edge cases!
_StringsEn get t => LocaleSettings.instance.currentTranslations;

/// Method B: Advanced
///
/// All widgets using this method will trigger a rebuild when locale changes.
/// Use this if you have e.g. a settings page where the user can select the locale during runtime.
///
/// Step 1:
/// wrap your App with
/// TranslationProvider(
/// 	child: MyApp()
/// );
///
/// Step 2:
/// final t = Translations.of(context); // Get t variable.
/// String a = t.someKey.anotherKey; // Use t variable.
/// String b = t['someKey.anotherKey']; // Only for edge cases!
class Translations {
	Translations._(); // no constructor

	static _StringsEn of(BuildContext context) => InheritedLocaleData.of<AppLocale, _StringsEn>(context).translations;
}

/// The provider for method B
class TranslationProvider extends BaseTranslationProvider<AppLocale, _StringsEn> {
	TranslationProvider({required super.child}) : super(settings: LocaleSettings.instance);

	static InheritedLocaleData<AppLocale, _StringsEn> of(BuildContext context) => InheritedLocaleData.of<AppLocale, _StringsEn>(context);
}

/// Method B shorthand via [BuildContext] extension method.
/// Configurable via 'translate_var'.
///
/// Usage (e.g. in a widget's build method):
/// context.t.someKey.anotherKey
extension BuildContextTranslationsExtension on BuildContext {
	_StringsEn get t => TranslationProvider.of(this).translations;
}

/// Manages all translation instances and the current locale
class LocaleSettings extends BaseFlutterLocaleSettings<AppLocale, _StringsEn> {
	LocaleSettings._() : super(utils: AppLocaleUtils.instance);

	static final instance = LocaleSettings._();

	// static aliases (checkout base methods for documentation)
	static AppLocale get currentLocale => instance.currentLocale;
	static Stream<AppLocale> getLocaleStream() => instance.getLocaleStream();
	static AppLocale setLocale(AppLocale locale, {bool? listenToDeviceLocale = false}) => instance.setLocale(locale, listenToDeviceLocale: listenToDeviceLocale);
	static AppLocale setLocaleRaw(String rawLocale, {bool? listenToDeviceLocale = false}) => instance.setLocaleRaw(rawLocale, listenToDeviceLocale: listenToDeviceLocale);
	static AppLocale useDeviceLocale() => instance.useDeviceLocale();
	@Deprecated('Use [AppLocaleUtils.supportedLocales]') static List<Locale> get supportedLocales => instance.supportedLocales;
	@Deprecated('Use [AppLocaleUtils.supportedLocalesRaw]') static List<String> get supportedLocalesRaw => instance.supportedLocalesRaw;
	static void setPluralResolver({String? language, AppLocale? locale, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver}) => instance.setPluralResolver(
		language: language,
		locale: locale,
		cardinalResolver: cardinalResolver,
		ordinalResolver: ordinalResolver,
	);
}

/// Provides utility functions without any side effects.
class AppLocaleUtils extends BaseAppLocaleUtils<AppLocale, _StringsEn> {
	AppLocaleUtils._() : super(baseLocale: _baseLocale, locales: AppLocale.values);

	static final instance = AppLocaleUtils._();

	// static aliases (checkout base methods for documentation)
	static AppLocale parse(String rawLocale) => instance.parse(rawLocale);
	static AppLocale parseLocaleParts({required String languageCode, String? scriptCode, String? countryCode}) => instance.parseLocaleParts(languageCode: languageCode, scriptCode: scriptCode, countryCode: countryCode);
	static AppLocale findDeviceLocale() => instance.findDeviceLocale();
	static List<Locale> get supportedLocales => instance.supportedLocales;
	static List<String> get supportedLocalesRaw => instance.supportedLocalesRaw;
}

// translations

// Path: <root>
class _StringsEn implements BaseTranslations<AppLocale, _StringsEn> {

	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	_StringsEn.build({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.en,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <en>.
	@override final TranslationMetadata<AppLocale, _StringsEn> $meta;

	/// Access flat map
	dynamic operator[](String key) => $meta.getTranslation(key);

	late final _StringsEn _root = this; // ignore: unused_field

	// Translations
	late final _StringsProfileEn profile = _StringsProfileEn._(_root);
}

// Path: profile
class _StringsProfileEn {
	_StringsProfileEn._(this._root);

	final _StringsEn _root; // ignore: unused_field

	// Translations
	String get personal_data => 'Personal Data:';
	String get surname => 'Surname';
	String get name => 'Name';
	String get middle_name => 'Middle Name';
	String get gender => 'Gender';
	late final _StringsProfileGendersEn genders = _StringsProfileGendersEn._(_root);
	String get birth_date => 'Date of Birth';
}

// Path: profile.genders
class _StringsProfileGendersEn {
	_StringsProfileGendersEn._(this._root);

	final _StringsEn _root; // ignore: unused_field

	// Translations
	String get male => 'Male';
	String get female => 'Female';
	String get helicopter => 'Attack Helicopter';
	String get su27 => 'Su-27 Fighter';
	String get katyusha => 'BM-13 Katyusha Rocket Launcher';
	String get sugar_horn => 'Sugar Horn 13 rubles each';
	String get moon_picnic => 'Moon Picnic';
	String get other => 'Other';
}

// Path: <root>
class _StringsRu implements _StringsEn {

	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	_StringsRu.build({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.ru,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <ru>.
	@override final TranslationMetadata<AppLocale, _StringsEn> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key);

	@override late final _StringsRu _root = this; // ignore: unused_field

	// Translations
	@override late final _StringsProfileRu profile = _StringsProfileRu._(_root);
}

// Path: profile
class _StringsProfileRu implements _StringsProfileEn {
	_StringsProfileRu._(this._root);

	@override final _StringsRu _root; // ignore: unused_field

	// Translations
	@override String get personal_data => 'Личные данные:';
	@override String get surname => 'Фамилия';
	@override String get name => 'Имя';
	@override String get middle_name => 'Отчество';
	@override String get gender => 'Пол';
	@override late final _StringsProfileGendersRu genders = _StringsProfileGendersRu._(_root);
	@override String get birth_date => 'Дата рождения';
}

// Path: profile.genders
class _StringsProfileGendersRu implements _StringsProfileGendersEn {
	_StringsProfileGendersRu._(this._root);

	@override final _StringsRu _root; // ignore: unused_field

	// Translations
	@override String get male => 'Мужской';
	@override String get female => 'Женский';
	@override String get helicopter => 'Боевой вертолёт';
	@override String get su27 => 'Истребитель Су-27';
	@override String get katyusha => 'Реактивная установка БМ-13 "Катюша"';
	@override String get sugar_horn => 'Сахарный рожок 13 рублей штука';
	@override String get moon_picnic => 'Пик Ник на Луне';
	@override String get other => 'Другое';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.

extension on _StringsEn {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'profile.personal_data': return 'Personal Data:';
			case 'profile.surname': return 'Surname';
			case 'profile.name': return 'Name';
			case 'profile.middle_name': return 'Middle Name';
			case 'profile.gender': return 'Gender';
			case 'profile.genders.male': return 'Male';
			case 'profile.genders.female': return 'Female';
			case 'profile.genders.helicopter': return 'Attack Helicopter';
			case 'profile.genders.su27': return 'Su-27 Fighter';
			case 'profile.genders.katyusha': return 'BM-13 Katyusha Rocket Launcher';
			case 'profile.genders.sugar_horn': return 'Sugar Horn 13 rubles each';
			case 'profile.genders.moon_picnic': return 'Moon Picnic';
			case 'profile.genders.other': return 'Other';
			case 'profile.birth_date': return 'Date of Birth';
			default: return null;
		}
	}
}

extension on _StringsRu {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'profile.personal_data': return 'Личные данные:';
			case 'profile.surname': return 'Фамилия';
			case 'profile.name': return 'Имя';
			case 'profile.middle_name': return 'Отчество';
			case 'profile.gender': return 'Пол';
			case 'profile.genders.male': return 'Мужской';
			case 'profile.genders.female': return 'Женский';
			case 'profile.genders.helicopter': return 'Боевой вертолёт';
			case 'profile.genders.su27': return 'Истребитель Су-27';
			case 'profile.genders.katyusha': return 'Реактивная установка БМ-13 "Катюша"';
			case 'profile.genders.sugar_horn': return 'Сахарный рожок 13 рублей штука';
			case 'profile.genders.moon_picnic': return 'Пик Ник на Луне';
			case 'profile.genders.other': return 'Другое';
			case 'profile.birth_date': return 'Дата рождения';
			default: return null;
		}
	}
}
