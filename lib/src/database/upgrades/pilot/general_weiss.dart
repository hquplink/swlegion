import 'package:swlegion/swlegion.dart';

final generalWeiss = Upgrade(
  id: 'general-weiss',
  name: 'General Weiss',
  type: UpgradeSlot.pilot,
  restrictedToFaction: Faction.imperials,
  restrictedToType: UnitType.groundVehicle,
  points: 10,
  isExhaustible: true,
  text: r'''
    Exhaust Action: Until the end of your activation, you gain Arsenal 2.
  ''',
  keywordsForUnit: {
    UnitKeyword.kArsenal: 2,
  },
  waves: const [
    Wave.wAtStUnitExpansion,
  ],
);
