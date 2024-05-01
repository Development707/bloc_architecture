import 'bloc_architecture_localizations.dart';

/// The translations for German (`de`).
class BlocArchitectureLocalizationsDe extends BlocArchitectureLocalizations {
  BlocArchitectureLocalizationsDe([String locale = 'de']) : super(locale);

  @override
  String get somethingWentWrong => 'Etwas ist schiefgelaufen';

  @override
  String get now => 'Jetzt';

  @override
  String get fewSecondsAgo => 'Wenige Sekunden her';

  @override
  String minutesRelative(Object minutes) {
    return '$minutes Minuten her';
  }

  @override
  String hoursRelative(Object hours) {
    return '$hours Stunden her';
  }

  @override
  String daysRelative(Object days) {
    return '$days Tage her';
  }

  @override
  String get search => 'Suche';

  @override
  String get pleaseUpgradeToNewVersion => 'Bitte auf eine neue Version aktualisieren';

  @override
  String get serverIsUnderMaintenance => 'Der Server liegt unter Wartung';

  @override
  String get networkConnectionIsUnstable => 'Die Netzverbindung ist unstabil';

  @override
  String get anErrorHasOccurred => 'Ein Fehler ist aufgetreten';

  @override
  String get yourSessionHasExpiredPleaseLogInAgain => 'Ihre Sitzung ist abgelaufen, bitte erneut einloggen';
}
