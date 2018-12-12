import 'package:swlegion/swlegion.dart';

import '../../units/snowtroopers.dart' as unit;

final snowtrooper = Upgrade(
  name: 'Snowtrooper',
  type: UpgradeSlot.personnel,
  addsMiniature: true,
  restrictedToUnit: unit.snowtroopers,
  points: 12,
);
