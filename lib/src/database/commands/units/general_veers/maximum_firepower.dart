import 'package:swlegion/catalog.dart';
import 'package:swlegion/swlegion.dart';

final maximumFirepower = CommandCard(
  id: 'maximum-firepower',
  name: 'Maximum Firepower',
  unitsActivated: Units.generalVeers.name,
  unitsRequired: [Units.generalVeers],
  pips: 1,
  text: r'''
    At the end of General Veers’ activation, he may perform an attacking using the following weapon.
  ''',
  weapon: Weapons.maximumFirepower,
  waves: const [
    Wave.wGeneralVeersCommanderExpansion,
  ],
);
