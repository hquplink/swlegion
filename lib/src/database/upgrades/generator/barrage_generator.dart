import 'package:swlegion/swlegion.dart';

final barrageGenerator = Upgrade(
  id: 'barrage-generator',
  name: 'Barrage Generator',
  type: UpgradeSlot.generator,
  isExhaustible: true,
  points: 10,
  text: r'''
    While performing a ranged attack with a weapon that has FIXED, add 2 white attack dice and apply SUPPRESSIVE to your attack pool.
  ''',
  waves: const [
    Wave.wEWebHeavyBlasterTeamUnitExpansion,
    Wave.w1dot4FDLaserCannonUnitExpansion,
  ],
);
