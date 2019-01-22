import 'package:swlegion/swlegion.dart';

import '../weapons/brawl.dart';
import '../weapons/hans_dl_44_blaster_pistol.dart';

final hanSolo = Unit(
  id: 'han-solo',
  name: 'Han Solo',
  subTitle: 'Unorthodox General',
  faction: Faction.lightSide,
  isUnique: true,
  miniatures: 1,
  rank: Rank.commander,
  type: UnitType.trooper,
  wounds: 6,
  courage: 2,
  attackSurge: AttackSurge.critical,
  defense: DefenseDice.white,
  hasDefenseSurge: true,
  speed: 2,
  points: 120,
  upgrades: const {
    UpgradeSlot.command: 1,
    UpgradeSlot.elite: 1,
    UpgradeSlot.gear: 1,
  },
  weapons: [
    brawl,
    hansDl44BlasterPistol,
  ],
  keywords: const {
    UnitKeyword.kLowProfile: '',
    UnitKeyword.kGunslinger: '',
    UnitKeyword.kSharpshooter: 1,
    UnitKeyword.kUncannyLuck: 3,
  },
);
