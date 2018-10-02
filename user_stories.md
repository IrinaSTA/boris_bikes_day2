## User Stories

Nouns  | Verbs
------------- | -------------
person  | can
bike  | use
docking station | release
 | like
 | see

Objects | Messages
------------- | -------------
Person |
DockingStation | release_bike
Bike | see_if_working

Bike <-- see_if_working # => true or false
DockingStation <-- release_bike # => new Bike 
