import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '/index.dart';
import '/flutter_flow/flutter_flow_util.dart';

export 'package:go_router/go_router.dart';
export 'serialization_util.dart';

const kTransitionInfoKey = '__transition_info__';

class AppStateNotifier extends ChangeNotifier {
  AppStateNotifier._();

  static AppStateNotifier? _instance;
  static AppStateNotifier get instance => _instance ??= AppStateNotifier._();

  bool showSplashImage = true;

  void stopShowingSplashImage() {
    showSplashImage = false;
    notifyListeners();
  }
}

GoRouter createRouter(AppStateNotifier appStateNotifier) => GoRouter(
      initialLocation: '/',
      debugLogDiagnostics: true,
      refreshListenable: appStateNotifier,
      errorBuilder: (context, state) => appStateNotifier.showSplashImage
          ? Builder(
              builder: (context) => Container(
                color: const Color(0xD1FDDE00),
                child: Center(
                  child: Image.asset(
                    'assets/images/RV_2.0.png',
                    width: 300.0,
                    height: 300.0,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            )
          : const HomePageWidget(),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) => appStateNotifier.showSplashImage
              ? Builder(
                  builder: (context) => Container(
                    color: const Color(0xD1FDDE00),
                    child: Center(
                      child: Image.asset(
                        'assets/images/RV_2.0.png',
                        width: 300.0,
                        height: 300.0,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                )
              : const HomePageWidget(),
        ),
        FFRoute(
          name: 'HomePage',
          path: '/homePage',
          builder: (context, params) => const HomePageWidget(),
        ),
        FFRoute(
          name: 'Referees',
          path: '/referees',
          builder: (context, params) => const RefereesWidget(),
        ),
        FFRoute(
          name: 'Books',
          path: '/books',
          builder: (context, params) => const BooksWidget(),
        ),
        FFRoute(
          name: 'Videos',
          path: '/videos',
          builder: (context, params) => const VideosWidget(),
        ),
        FFRoute(
          name: 'Webinars',
          path: '/webinars',
          builder: (context, params) => const WebinarsWidget(),
        ),
        FFRoute(
          name: 'Coaches',
          path: '/coaches',
          builder: (context, params) => const CoachesWidget(),
        ),
        FFRoute(
          name: 'Vault',
          path: '/vault',
          builder: (context, params) => const VaultWidget(),
        ),
        FFRoute(
          name: 'About',
          path: '/about',
          builder: (context, params) => const AboutWidget(),
        ),
        FFRoute(
          name: 'Referees_Mechanics',
          path: '/refereesMechanics',
          builder: (context, params) => const RefereesMechanicsWidget(),
        ),
        FFRoute(
          name: 'Referees_Duties',
          path: '/refereesDuties',
          builder: (context, params) => const RefereesDutiesWidget(),
        ),
        FFRoute(
          name: 'Referees_Signals',
          path: '/refereesSignals',
          builder: (context, params) => const RefereesSignalsWidget(),
        ),
        FFRoute(
          name: 'Referees_Fitnesstests',
          path: '/refereesFitnesstests',
          builder: (context, params) => const RefereesFitnesstestsWidget(),
        ),
        FFRoute(
          name: 'Referees_Physicaltraining',
          path: '/refereesPhysicaltraining',
          builder: (context, params) => const RefereesPhysicaltrainingWidget(),
        ),
        FFRoute(
          name: 'Referees_Warmupexercises',
          path: '/refereesWarmupexercises',
          builder: (context, params) => const RefereesWarmupexercisesWidget(),
        ),
        FFRoute(
          name: 'Referees_MentalPrep',
          path: '/refereesMentalPrep',
          builder: (context, params) => const RefereesMentalPrepWidget(),
        ),
        FFRoute(
          name: 'Referees_FIBALic',
          path: '/refereesFIBALic',
          builder: (context, params) => const RefereesFIBALicWidget(),
        ),
        FFRoute(
          name: 'Referees_Assist',
          path: '/refereesAssist',
          builder: (context, params) => const RefereesAssistWidget(),
        ),
        FFRoute(
          name: 'Books_Curriculum',
          path: '/booksCurriculum',
          builder: (context, params) => const BooksCurriculumWidget(),
        ),
        FFRoute(
          name: 'Books_Rules',
          path: '/booksRules',
          builder: (context, params) => const BooksRulesWidget(),
        ),
        FFRoute(
          name: 'Books_3X3',
          path: '/books3X3',
          builder: (context, params) => const Books3X3Widget(),
        ),
        FFRoute(
          name: 'Books_Scoresheet',
          path: '/booksScoresheet',
          builder: (context, params) => const BooksScoresheetWidget(),
        ),
        FFRoute(
          name: 'Books_Equipment',
          path: '/booksEquipment',
          builder: (context, params) => const BooksEquipmentWidget(),
        ),
        FFRoute(
          name: 'Books_Regulations',
          path: '/booksRegulations',
          builder: (context, params) => const BooksRegulationsWidget(),
        ),
        FFRoute(
          name: 'Books_Presentations',
          path: '/booksPresentations',
          builder: (context, params) => const BooksPresentationsWidget(),
        ),
        FFRoute(
          name: 'Vault_Assist',
          path: '/vaultAssist',
          builder: (context, params) => const VaultAssistWidget(),
        ),
        FFRoute(
          name: 'Vault_Micd',
          path: '/vaultMicd',
          builder: (context, params) => const VaultMicdWidget(),
        ),
        FFRoute(
          name: 'Vault_Quiz',
          path: '/vaultQuiz',
          builder: (context, params) => const VaultQuizWidget(),
        ),
        FFRoute(
          name: 'Vault_Rulebooks',
          path: '/vaultRulebooks',
          builder: (context, params) => const VaultRulebooksWidget(),
        ),
        FFRoute(
          name: 'Vault_Books',
          path: '/vaultBooks',
          builder: (context, params) => const VaultBooksWidget(),
        ),
        FFRoute(
          name: 'Vault_Documentaries',
          path: '/vaultDocumentaries',
          builder: (context, params) => const VaultDocumentariesWidget(),
        ),
        FFRoute(
          name: 'Vault_Articles',
          path: '/vaultArticles',
          builder: (context, params) => const VaultArticlesWidget(),
        ),
        FFRoute(
          name: 'Vault_Tools',
          path: '/vaultTools',
          builder: (context, params) => const VaultToolsWidget(),
        ),
        FFRoute(
          name: 'Vault_Rulebooks_Rules',
          path: '/vaultRulebooksRules',
          builder: (context, params) => const VaultRulebooksRulesWidget(),
        ),
        FFRoute(
          name: 'Vault_Rulebooks_Interp',
          path: '/vaultRulebooksInterp',
          builder: (context, params) => const VaultRulebooksInterpWidget(),
        ),
        FFRoute(
          name: 'Vault_Rulebooks_TableOff',
          path: '/vaultRulebooksTableOff',
          builder: (context, params) => const VaultRulebooksTableOffWidget(),
        ),
        FFRoute(
          name: 'Vault_Rulebooks_Equip',
          path: '/vaultRulebooksEquip',
          builder: (context, params) => const VaultRulebooksEquipWidget(),
        ),
        FFRoute(
          name: 'Vault_Rulebooks_3X3',
          path: '/vaultRulebooks3X3',
          builder: (context, params) => const VaultRulebooks3X3Widget(),
        ),
        FFRoute(
          name: 'Vault_Rulebooks_Mechanics',
          path: '/vaultRulebooksMechanics',
          builder: (context, params) => const VaultRulebooksMechanicsWidget(),
        ),
        FFRoute(
          name: 'Vault_Rulebooks_Misc',
          path: '/vaultRulebooksMisc',
          builder: (context, params) => const VaultRulebooksMiscWidget(),
        ),
        FFRoute(
          name: 'Webinars_Rules',
          path: '/webinarsRules',
          builder: (context, params) => const WebinarsRulesWidget(),
        ),
        FFRoute(
          name: 'Webinars_Fouls',
          path: '/webinarsFouls',
          builder: (context, params) => const WebinarsFoulsWidget(),
        ),
        FFRoute(
          name: 'Webinars_GameMgmt',
          path: '/webinarsGameMgmt',
          builder: (context, params) => const WebinarsGameMgmtWidget(),
        ),
        FFRoute(
          name: 'Webinars_3X3',
          path: '/webinars3X3',
          builder: (context, params) => const Webinars3X3Widget(),
        ),
        FFRoute(
          name: 'Webinars_TableOff',
          path: '/webinarsTableOff',
          builder: (context, params) => const WebinarsTableOffWidget(),
        ),
        FFRoute(
          name: 'Webinars_Mechanics',
          path: '/webinarsMechanics',
          builder: (context, params) => const WebinarsMechanicsWidget(),
        ),
        FFRoute(
          name: 'Webinars_Statistics',
          path: '/webinarsStatistics',
          builder: (context, params) => const WebinarsStatisticsWidget(),
        ),
        FFRoute(
          name: 'Webinars_Misc',
          path: '/webinarsMisc',
          builder: (context, params) => const WebinarsMiscWidget(),
        ),
        FFRoute(
          name: 'Webinars_WiO',
          path: '/webinarsWiO',
          builder: (context, params) => const WebinarsWiOWidget(),
        ),
        FFRoute(
          name: 'Webinars_FibaMon',
          path: '/webinarsFibaMon',
          builder: (context, params) => const WebinarsFibaMonWidget(),
        ),
        FFRoute(
          name: 'Coaches_Curriculum',
          path: '/coachesCurriculum',
          builder: (context, params) => const CoachesCurriculumWidget(),
        ),
        FFRoute(
          name: 'Coaches_Books',
          path: '/coachesBooks',
          builder: (context, params) => const CoachesBooksWidget(),
        ),
        FFRoute(
          name: 'Coaches_Drills',
          path: '/coachesDrills',
          builder: (context, params) => const CoachesDrillsWidget(),
        ),
        FFRoute(
          name: 'Coaches_Drills_Mini',
          path: '/coachesDrillsMini',
          builder: (context, params) => const CoachesDrillsMiniWidget(),
        ),
        FFRoute(
          name: 'Coaches_Drills_1314',
          path: '/coachesDrills1314',
          builder: (context, params) => const CoachesDrills1314Widget(),
        ),
        FFRoute(
          name: 'Coaches_Drills_1518',
          path: '/coachesDrills1518',
          builder: (context, params) => const CoachesDrills1518Widget(),
        ),
        FFRoute(
          name: 'Coaches_Wabc',
          path: '/coachesWabc',
          builder: (context, params) => const CoachesWabcWidget(),
        ),
        FFRoute(
          name: 'Coaches_FIBAEur',
          path: '/coachesFIBAEur',
          builder: (context, params) => const CoachesFIBAEurWidget(),
        ),
        FFRoute(
          name: 'Coaches_Wabc_General',
          path: '/coachesWabcGeneral',
          builder: (context, params) => const CoachesWabcGeneralWidget(),
        ),
        FFRoute(
          name: 'Coaches_Wabc_Drills',
          path: '/coachesWabcDrills',
          builder: (context, params) => const CoachesWabcDrillsWidget(),
        ),
        FFRoute(
          name: 'Coaches_Wabc_Offense',
          path: '/coachesWabcOffense',
          builder: (context, params) => const CoachesWabcOffenseWidget(),
        ),
        FFRoute(
          name: 'Coaches_Wabc_Defense',
          path: '/coachesWabcDefense',
          builder: (context, params) => const CoachesWabcDefenseWidget(),
        ),
        FFRoute(
          name: 'Coaches_FIBAEur_Misc',
          path: '/coachesFIBAEurMisc',
          builder: (context, params) => const CoachesFIBAEurMiscWidget(),
        ),
        FFRoute(
          name: 'Coaches_FIBAEur_General',
          path: '/coachesFIBAEurGeneral',
          builder: (context, params) => const CoachesFIBAEurGeneralWidget(),
        ),
        FFRoute(
          name: 'Coaches_FIBAEur_Offense',
          path: '/coachesFIBAEurOffense',
          builder: (context, params) => const CoachesFIBAEurOffenseWidget(),
        ),
        FFRoute(
          name: 'Coaches_FIBAEur_Defense',
          path: '/coachesFIBAEurDefense',
          builder: (context, params) => const CoachesFIBAEurDefenseWidget(),
        ),
        FFRoute(
          name: 'Videos_Others',
          path: '/videosOthers',
          builder: (context, params) => const VideosOthersWidget(),
        ),
        FFRoute(
          name: 'Videos_Throwin',
          path: '/videosThrowin',
          builder: (context, params) => const VideosThrowinWidget(),
        ),
        FFRoute(
          name: 'Videos_GameCtrl',
          path: '/videosGameCtrl',
          builder: (context, params) => const VideosGameCtrlWidget(),
        ),
        FFRoute(
          name: 'Videos_DQF',
          path: '/videosDQF',
          builder: (context, params) => const VideosDQFWidget(),
        ),
        FFRoute(
          name: 'Videos_Fake',
          path: '/videosFake',
          builder: (context, params) => const VideosFakeWidget(),
        ),
        FFRoute(
          name: 'Videos_TF',
          path: '/videosTF',
          builder: (context, params) => const VideosTFWidget(),
        ),
        FFRoute(
          name: 'Videos_35824',
          path: '/videos35824',
          builder: (context, params) => const Videos35824Widget(),
        ),
        FFRoute(
          name: 'Videos_GI',
          path: '/videosGI',
          builder: (context, params) => const VideosGIWidget(),
        ),
        FFRoute(
          name: 'Videos_Brtbc',
          path: '/videosBrtbc',
          builder: (context, params) => const VideosBrtbcWidget(),
        ),
        FFRoute(
          name: 'Videos_ChargeBlock',
          path: '/videosChargeBlock',
          builder: (context, params) => const VideosChargeBlockWidget(),
        ),
        FFRoute(
          name: 'Videos_NC',
          path: '/videosNC',
          builder: (context, params) => const VideosNCWidget(),
        ),
        FFRoute(
          name: 'Videos_USF',
          path: '/videosUSF',
          builder: (context, params) => const VideosUSFWidget(),
        ),
        FFRoute(
          name: 'Videos_Screening',
          path: '/videosScreening',
          builder: (context, params) => const VideosScreeningWidget(),
        ),
        FFRoute(
          name: 'Videos_Dribbling',
          path: '/videosDribbling',
          builder: (context, params) => const VideosDribblingWidget(),
        ),
        FFRoute(
          name: 'Videos_AOS',
          path: '/videosAOS',
          builder: (context, params) => const VideosAOSWidget(),
        ),
        FFRoute(
          name: 'Videos_Contact',
          path: '/videosContact',
          builder: (context, params) => const VideosContactWidget(),
        ),
        FFRoute(
          name: 'Videos_Cylinder',
          path: '/videosCylinder',
          builder: (context, params) => const VideosCylinderWidget(),
        ),
        FFRoute(
          name: 'Videos_Travel',
          path: '/videosTravel',
          builder: (context, params) => const VideosTravelWidget(),
        ),
        FFRoute(
          name: 'Videos_35824_3sec',
          path: '/videos358243sec',
          builder: (context, params) => const Videos358243secWidget(),
        ),
        FFRoute(
          name: 'Videos_35824_8sec',
          path: '/videos358248sec',
          builder: (context, params) => const Videos358248secWidget(),
        ),
        FFRoute(
          name: 'Videos_35824_5sec',
          path: '/videos358245sec',
          builder: (context, params) => const Videos358245secWidget(),
        ),
        FFRoute(
          name: 'Videos_35824_24sec',
          path: '/videos3582424sec',
          builder: (context, params) => const Videos3582424secWidget(),
        ),
        FFRoute(
          name: 'Videos_Others_FreeThrows',
          path: '/videosOthersFreeThrows',
          builder: (context, params) => const VideosOthersFreeThrowsWidget(),
        ),
        FFRoute(
          name: 'Videos_Others_Jumpball',
          path: '/videosOthersJumpball',
          builder: (context, params) => const VideosOthersJumpballWidget(),
        ),
        FFRoute(
          name: 'Videos_Others_Special',
          path: '/videosOthersSpecial',
          builder: (context, params) => const VideosOthersSpecialWidget(),
        ),
        FFRoute(
          name: 'Videos_Others_Correctable',
          path: '/videosOthersCorrectable',
          builder: (context, params) => const VideosOthersCorrectableWidget(),
        ),
        FFRoute(
          name: 'Videos_Others_Misc',
          path: '/videosOthersMisc',
          builder: (context, params) => const VideosOthersMiscWidget(),
        ),
        FFRoute(
          name: 'Videos_Others_Irs',
          path: '/videosOthersIrs',
          builder: (context, params) => const VideosOthersIrsWidget(),
        )
      ].map((r) => r.toRoute(appStateNotifier)).toList(),
      observers: [routeObserver],
    );

extension NavParamExtensions on Map<String, String?> {
  Map<String, String> get withoutNulls => Map.fromEntries(
        entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
}

extension NavigationExtensions on BuildContext {
  void safePop() {
    // If there is only one route on the stack, navigate to the initial
    // page instead of popping.
    if (canPop()) {
      pop();
    } else {
      go('/');
    }
  }
}

extension _GoRouterStateExtensions on GoRouterState {
  Map<String, dynamic> get extraMap =>
      extra != null ? extra as Map<String, dynamic> : {};
  Map<String, dynamic> get allParams => <String, dynamic>{}
    ..addAll(pathParameters)
    ..addAll(queryParameters)
    ..addAll(extraMap);
  TransitionInfo get transitionInfo => extraMap.containsKey(kTransitionInfoKey)
      ? extraMap[kTransitionInfoKey] as TransitionInfo
      : TransitionInfo.appDefault();
}

class FFParameters {
  FFParameters(this.state, [this.asyncParams = const {}]);

  final GoRouterState state;
  final Map<String, Future<dynamic> Function(String)> asyncParams;

  Map<String, dynamic> futureParamValues = {};

  // Parameters are empty if the params map is empty or if the only parameter
  // present is the special extra parameter reserved for the transition info.
  bool get isEmpty =>
      state.allParams.isEmpty ||
      (state.extraMap.length == 1 &&
          state.extraMap.containsKey(kTransitionInfoKey));
  bool isAsyncParam(MapEntry<String, dynamic> param) =>
      asyncParams.containsKey(param.key) && param.value is String;
  bool get hasFutures => state.allParams.entries.any(isAsyncParam);
  Future<bool> completeFutures() => Future.wait(
        state.allParams.entries.where(isAsyncParam).map(
          (param) async {
            final doc = await asyncParams[param.key]!(param.value)
                .onError((_, __) => null);
            if (doc != null) {
              futureParamValues[param.key] = doc;
              return true;
            }
            return false;
          },
        ),
      ).onError((_, __) => [false]).then((v) => v.every((e) => e));

  dynamic getParam<T>(
    String paramName,
    ParamType type, [
    bool isList = false,
  ]) {
    if (futureParamValues.containsKey(paramName)) {
      return futureParamValues[paramName];
    }
    if (!state.allParams.containsKey(paramName)) {
      return null;
    }
    final param = state.allParams[paramName];
    // Got parameter from `extras`, so just directly return it.
    if (param is! String) {
      return param;
    }
    // Return serialized value.
    return deserializeParam<T>(
      param,
      type,
      isList,
    );
  }
}

class FFRoute {
  const FFRoute({
    required this.name,
    required this.path,
    required this.builder,
    this.requireAuth = false,
    this.asyncParams = const {},
    this.routes = const [],
  });

  final String name;
  final String path;
  final bool requireAuth;
  final Map<String, Future<dynamic> Function(String)> asyncParams;
  final Widget Function(BuildContext, FFParameters) builder;
  final List<GoRoute> routes;

  GoRoute toRoute(AppStateNotifier appStateNotifier) => GoRoute(
        name: name,
        path: path,
        pageBuilder: (context, state) {
          fixStatusBarOniOS16AndBelow(context);
          final ffParams = FFParameters(state, asyncParams);
          final page = ffParams.hasFutures
              ? FutureBuilder(
                  future: ffParams.completeFutures(),
                  builder: (context, _) => builder(context, ffParams),
                )
              : builder(context, ffParams);
          final child = page;

          final transitionInfo = state.transitionInfo;
          return transitionInfo.hasTransition
              ? CustomTransitionPage(
                  key: state.pageKey,
                  child: child,
                  transitionDuration: transitionInfo.duration,
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) =>
                          PageTransition(
                    type: transitionInfo.transitionType,
                    duration: transitionInfo.duration,
                    reverseDuration: transitionInfo.duration,
                    alignment: transitionInfo.alignment,
                    child: child,
                  ).buildTransitions(
                    context,
                    animation,
                    secondaryAnimation,
                    child,
                  ),
                )
              : MaterialPage(key: state.pageKey, child: child);
        },
        routes: routes,
      );
}

class TransitionInfo {
  const TransitionInfo({
    required this.hasTransition,
    this.transitionType = PageTransitionType.fade,
    this.duration = const Duration(milliseconds: 300),
    this.alignment,
  });

  final bool hasTransition;
  final PageTransitionType transitionType;
  final Duration duration;
  final Alignment? alignment;

  static TransitionInfo appDefault() => const TransitionInfo(hasTransition: false);
}

class RootPageContext {
  const RootPageContext(this.isRootPage, [this.errorRoute]);
  final bool isRootPage;
  final String? errorRoute;

  static bool isInactiveRootPage(BuildContext context) {
    final rootPageContext = context.read<RootPageContext?>();
    final isRootPage = rootPageContext?.isRootPage ?? false;
    final location = GoRouter.of(context).location;
    return isRootPage &&
        location != '/' &&
        location != rootPageContext?.errorRoute;
  }

  static Widget wrap(Widget child, {String? errorRoute}) => Provider.value(
        value: RootPageContext(true, errorRoute),
        child: child,
      );
}
