import 'package:swlegion/swlegion.dart';

import '../../units/imperial_royal_guards.dart' as unit;
import '../../weapons/upgrades/electrostaff.dart' as weapon;

final electrostaffGuard = Upgrade(
  title: 'Electrostaff Guard',
  type: UpgradeSlot.heavyWeapon,
  restrictedToUnit: unit.imperialRoyalGuards,
  addsMiniature: true,
  weapon: weapon.electrostaff,
  points: 25,
  keywords: {
    Keyword.sidearmX: 'Melee',
  },
);