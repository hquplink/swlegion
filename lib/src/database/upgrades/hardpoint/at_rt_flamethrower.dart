import 'package:swlegion/swlegion.dart';

import '../../units/at_rt.dart' as unit;
import '../../weapons/upgrades/hardpoints/at_rt_flamethrower.dart' as weapon;

final atRtFlamethrower = Upgrade(
  name: 'AT-RT Fragmentation Grenades',
  type: UpgradeSlot.hardPoint,
  restrictedToUnit: unit.atRt,
  weapon: weapon.atRtFlamethrower,
  points: 25,
);
