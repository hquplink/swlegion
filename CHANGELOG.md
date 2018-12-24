## 0.2.0

### Data Model

* Moved `Army` and `ArmyUnit` out of this package.
* `CommandCard` was added.
* Replaced `*Key` instances with a single `Reference<T>` instance.
  * `CommandCard`, `Unit`, `Upgrade` all now implement `Indexable<T>`.

### Database

* Added `'Emergency Stims'` (Gear), which was accidentally omitted.
* Fixed the cost of `'Estmeed Leader'` (Command), which is 5 points not 10.
* Fixed the ID of `'Esteemed Leader'`, which was mis-spelled.
* Added `CommandCard`(s) for every existing commander and operative.

## 0.1.0

* Initial stable release.