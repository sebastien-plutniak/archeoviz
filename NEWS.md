
# archeoViz 1.0.2
Released: 

* In the '3D plot', only the refitting lines related to the objects included in the data subset are displayed 

# archeoViz 1.0.1
Released: 2023-03-03

* fix timeline plots when the 'reverse.axis.values' parameter is used

# archeoViz 1.0
Released: 2023-02-27 (on CRAN)

* Add a 'Reproducibility' tab, generating an R command to launch archeoViz() with the current settings of the app.
* In the '3D plot' tab, add a button to download the 3D plot widget as a .html file.
* Add 'Italian'/'it' as an option for the 'lang' parameter in the 'archeoViz()' function.
* Various fixes, concerning the squares labels, the display of the summary tables.
* Plot background is now adapted when using dark graphic themes (cyborg, darkly, slate).

# archeoViz 0.2.3
Released: 2023-02-19

* add 'Portuguese'/'pt' as an option for the 'lang' parameter in the 'archeoViz()' function.
* square labels are not displayed if they do not correspond to the number of documented squares.
* add 'add.x.square.labels' and 'add.y.square.labels' parameters in the 'archeoViz()' function.
* add 'reverse.axis.values' parameter in the 'archeoViz()' function.
* add several parameters in the 'archeoViz()' function: square.size, reverse.axis.values, reverse.square.names, add.x.square.labels, add.y.square.labels, class.variable, class.values, location.mode, map.z.val, map.density, map.refits, plot3d.hulls, plot3d.surfaces, plot3d.refits, sectionX.x.val, sectionX.y.val, sectionX.refits, sectionY.x.val, sectionY.y.val, sectionY.refits, camera.center, camera.eye, run.plots.

# archeoViz 0.2.2
Released: 2023-01-10 (on CRAN)

* add 'default.group' parameter in the 'archeoViz()' function
* fix bugs in the display of the map

# archeoViz 0.2
Released: 2023-01-07

* Refits can be displayed in the X section, Y section, and Map plots.
* The 'objects' table can include an optional 'year' column, that is used to determine the timeline.
* The main features of the package are wrapped in functions and relative tests are included.
* Multiple checks of the data  are integrated.
* The display of optional features is now conditional to the availability of the related variables (the values of the location mode selector, the display of surfaces and refitting).
* It is possible to set whether the colors in 3D and 2D plots are determined by the layers or by an other variable.

# archeoViz 0.1
Released: 2022-12-17

* First release.
