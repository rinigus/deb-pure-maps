Poor Maps 0.16
==============

 * [X] Center on position by double-tapping map
 * [X] Toggle auto-center on position by tapping position marker
 * [X] Add point of interest by tapping map
 * [X] Use an animation when centering map
 * [ ] Make cache purge safer?
 * [ ] Add manual cache purge actions of different ages
 * [X] Bump required QtPositioning version to 5.2

Poor Maps 1.0
=============

 * Add support for scaling and retina tiles
   - Map.scale, MapQuickItem.zoomLevel?
 * Add a cover that shows narrative when navigating
 * Add voice guidance (espeak?)
 * Add a QtSensors Compass arrow that shows which way one is facing
 * Add ability to import a route from file
 * Allow landscape for the map when gestures work right
 * Allow layered tilesources (traffic, hillshade, etc.)
 * Add user interface translations
   - Strings in QML: mark with `qStr`, run `lupdate`
   - Strings in Python and JSON: ???
   - Selected API calls: send language parameter based on system default
 * Add support for non-SI units (miles, etc.)
   - <http://stackoverflow.com/a/14044413>