## User Stories

Nouns  | Verbs
------------- | -------------
person  | can
bike  | use
docking station | release
Bike | Dock

Objects | Messages
------------- | -------------
Person |
DockingStation | release_bike
Bike | see_if_working
Public |


Bike <-- see_if_working # => true or false
DockingStation <-- release_bike # => new Bike
