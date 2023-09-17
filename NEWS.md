# archeoViz 1.3.2
Released: 2023-09-XX

* In the 3D view, the subsets of points for which convex hulls are computed can be selected (using the graphic user interface or the 'hulls.class.values' parameter of the archeoViz() function).
* Add linguistic support for Rumanian.

# archeoViz 1.3.1
Released: 2023-08-29

* Refits lines are colored based on the selected variable and values (same as the points).
* Add the 'point.size' parameter to set the size of the points in the plots.
* Fix issues in the refreshing of the plots / the 'run.plots' argument.
* Add linguistic support for Spanish.

# archeoViz 1.3.0
Released: 2023-07-25

* The 'Tables' tab is renammed 'Statistics'.
* Add export links to third-party applications (the Seriograph and Archeofrag applications) in the 'Statistics' tab.
* Add a 'table.export' parameter.

# archeoViz 1.2.1
Released: 2023-06-28

* Add linguistic support for German.

# archeoViz 1.2.0
Released: 2023-06-07

* URL parameters are now supported, including the following parameters: objects.df, refits.df, timeline.df, title, home.text, reverse.axis.values, reverse.square.names, square.size, add.x.square.labels, add.y.square.labels, class.variable, class.values, default.group, location.mode, map.density, map.refits, plot3d.hulls, plot3d.surfaces, plot3d.refits, sectionX.refits, sectionY.refits, run.plots

# archeoViz 1.1.2
Released: 2023-06-03

* The display of the buttons to export the plots as HTML files can now be set to TRUE or FALSE with the 'export.html' parameter.
* The small maps in the 'Section X' and 'Section Y' tabs can now be downloaded.

# archeoViz 1.1.1
Released: 2023-05-15

* Change in the 'location' menu: add a third option to visualise spatial uncertainty in the location of the objects (as lines, plans, volumes). Consequently, chage in the pssible values for the 'location' parameter ('exact.fuzzy' is replaced by 'show.uncertainty').
* In the 'Tables' tab, the types of spatial uncertainty can now be displayed in the tables.
* Bugs fixed: activating the immediate display of the refitting lines (with the parameters 'map.refits', 'sectionX.refits', 'sectionX.refits') failed and has been fixed.

# archeoViz 1.0.2
Released: 2023-05-04

* In the '3D plot', only the refitting lines related to the objects included in the data subset are displayed.
* Fixing issues in the generation of the R command in the 'reproducibility' tab.
* Add a table with details about the clicked point in the 'Map', 'Section X', and 'Section Y' tabs (using knitr::kable(), what adds a dependency to knitr).
* Add support for HTML in the tables showing details about the clicked point.
* Add buttons to export the plots as HTML widgets in the 'Map', 'Section X', and 'Section Y' tabs.

# archeoViz 1.0.1
Released: 2023-03-03

* fix timeline plots when the 'reverse.axis.values' parameter is used.

# archeoViz 1.0
Released: 2023-02-27 (on CRAN)

* Add a 'Reproducibility' tab, generating an R command to launch archeoViz() with the current settings of the app.
* In the '3D plot' tab, add a button to download the 3D plot widget as HTML file.
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
