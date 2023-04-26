archeoViz
================

`archeoViz` is a packaged R Shiny application for the *visualisation*,
*exploration*, and web *communication* of archaeological excavation
data. It includes interactive 3D and 2D *visualisations*, can generate
*cross sections* and *map* of the remains, can run basic *spatial
statistics* methods (convex hull, regression surfaces, 2D kernel density
estimation), and display an interactive *timeline* of an excavation.
`archeoViz` can be used locally or deployed on a server, either by
allowing the user to load data through the interface or by running the
app with a specific data set. The app interface is available in English,
French, Italian, and Portuguese.

[![Project Status: Active – The project has reached a stable, usable
state and is being actively
developed.](https://www.repostatus.org/badges/latest/active.svg)](https://www.repostatus.org/#active)
[![Lifecycle:
maturing](https://img.shields.io/badge/lifecycle-maturing-blue.svg)](https://lifecycle.r-lib.org/articles/stages.html#maturing)
[![R](https://github.com/sebastien-plutniak/archeoviz/actions/workflows/r.yml/badge.svg)](https://github.com/sebastien-plutniak/archeoviz/actions/workflows/r.yml)
[![codecov](https://codecov.io/gh/sebastien-plutniak/archeoviz/branch/main/graph/badge.svg?token=6QKYVKISCT)](https://app.codecov.io/gh/sebastien-plutniak/archeoviz)
[![archeoViz status
badge](https://sebastien-plutniak.r-universe.dev/badges/archeoViz)](https://sebastien-plutniak.r-universe.dev/archeoViz)
[![license](https://img.shields.io/badge/License-GPL%20v3-blue.svg)](https://www.r-project.org/Licenses/GPL-3)
[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.7460193.svg)](https://doi.org/10.5281/zenodo.7460193)
[![CRAN
Version](http://www.r-pkg.org/badges/version/archeoViz)](https://cran.r-project.org/package=archeoViz)
[![CRAN
Downloads](http://cranlogs.r-pkg.org/badges/archeoViz)](https://cran.r-project.org/package=archeoViz)

  - [**Installation**](#installation)
      - [Local use](#local-use)
      - [Deployed use](#deployed-use)
      - [Demonstration](#demonstration)
  - [**Community guidelines**](#community-guidelines)
      - [Reporting bugs](#reporting-bugs)
      - [Suggesting changes](#suggesting-changes)
  - [**Use**](#use)
      - [Data input](#data-input)
          - [Loading files through the Input data
            tab](#loading-files-through-the-input-data-tab)
          - [Random data](#random-data)
          - [Through function parameters](#through-function-parameters)
      - [Data sub-setting](#data-sub-setting)
          - [Location mode](#location-mode)
          - [Objects category](#objects-category)
          - [Data subgroups](#data-subgroups)  
          - [Objects selection](#objects-selection)
      - [Interactive visualisation](#interactive-visualisation)
      - [Graphical outputs](#graphical-outputs)
      - [Spatial statistics](#spatial-statistics)
          - [Regression surfaces](#regression-surfaces)
          - [Convex hulls](#convex-hulls)
          - [2D kernel density](#2d-kernel-density)
  - [**Reproducibility**](#reproducibility)
  - [**Advanced parameters**](#advanced-parameters)
      - [Square grid](#square-grid)
      - [Parameters presetting](#parameters-presetting)
      - [Reactive plot display](#reactive-plot-display)
  - [**Acknowledgment**](#acknowledgment)
  - [**References**](#references)

# Installation

`archeoViz` can be used in two ways:

  - locally, on the user’s machine
  - remotely, after deploying the app on a distant server

## Local use

The package can be installed from CRAN with:

``` r
install.packages("archeoViz")
```

The development version is available on *GitHub* and can be installed
with:

``` r
# install.packages("devtools")
devtools::install_github("sebastien-plutniak/archeoviz")
```

Then, load the package and launch the app with:

``` r
library(archeoViz)
archeoViz()
```

## Deployed use

To deploy `archeoViz` on your Shiny server, first download and unzip the
package:

``` r
# set the working directory on your shiny server:
setwd(dir = "/some/path/")
# download the package:
download.file(
  url = "https://github.com/sebastien-plutniak/archeoviz/archive/master.zip",
  destfile = "archeoviz.zip")
# unzip it:
unzip(zipfile = "archeoviz.zip")
```

Then, go to `https://<your-shiny-server>/archeoviz-main`.

To set the app with your data and preferences, edit the app.R file,
located at the root of the directory:

``` r
archeoViz(objects.df = NULL,   # data.frame with data about the objects
          refits.df = NULL,    # optional data.frame for refitting data
          timeline.df = NULL,  # optional data.frame for the excavation timeline
          title = NULL,        # title of the site / data set
          home.text = NULL,    # html content to display on the home page
          lang = "en"          # interface language ("en": English, "fr": French, "it": Italian, "pt": Portuguese)
          set.theme = "cosmo") # graphic theme for the Shiny interface
```

The possible values for the `set.theme` parameter are illustrated on
[this page](https://rstudio.github.io/shinythemes/). The language of the
application can be set with the `lang` parameter.

## Demonstration

Demonstration instances of the application are deployed on the *Huma
Num* Shiny server:

  - [`archeoViz` in
    English](https://analytics.huma-num.fr/archeoviz/en).
  - [`archeoViz` in French](https://analytics.huma-num.fr/archeoviz/fr).
  - [`archeoViz` in
    Italian](https://analytics.huma-num.fr/archeoviz/it).
  - [`archeoViz` in
    Portuguese](https://analytics.huma-num.fr/archeoviz/pt).

Real use cases are presented on the [*archeoViz
Portal*](https://analytics.huma-num.fr/archeoviz/home).

# Community guidelines

## Reporting bugs

If you encounter a bug, please fill an
[issue](https://github.com/sebastien-plutniak/archeoviz/issues) with all
the details needed to reproduce it.

## Suggesting changes

Suggestions of changes to `archeoViz` are welcome. These requests may
concern additional functions, changes to documentation, additional
examples, new features, etc. They can be made by filling an
[issue](https://github.com/sebastien-plutniak/archeoviz/issues) and,
even better, using pull requests and the [GitHub Fork and Pull
model](https://docs.github.com/articles/about-pull-requests).

# Use

Having archaeological remains from a given site, `archeoViz` is designed
to lower the technical barriers to fulfil three objectives:

  - basic spatial exploration and generation of simple graphical
    reports;
  - fast pre-publication of archaeological data, intended for the
    scientific community;
  - fast deployment of a display and communication tool intended for a
    broader audience.

N.B.: consequently, `archeoViz` is not intended to replace more
sophisticated analysis tools (e.g., GIS, statistical packages, etc.)

## Data input

There are three ways to input data in `archeoViz`:

1.  uploading tables in the “Input data” tab,
2.  using randomly generated data from the “Input data” tab;
3.  set the `archeoViz` main function’s parameters before running the
    application.

### Loading files through the Input data tab

Tables for three types of data can be uploaded from the “Input data”
tab:

  - an “objects” table (mandatory), with data about the objects;
  - a “refits” table (optional), with data about the refitting objects;
  - a “timeline” table (optional), with data about when each square of
    the site was excavated.

The tables must be .csv files with the first row used containing the
columns’ labels (the separator can be set).

#### Objects table

A row describes a single object with the following mandatory fields:

  - **id**: *alphanumerical value*, unique identifier of the object
  - **xmin**: *numerical value*, coordinate of the object on the X axis
    (in cm)
  - **ymin**: *numerical value*, coordinate of the object on the Y axis
    (in cm)
  - **zmin**: *numerical value*, coordinate of the object on the Z axis
    (positive depth value in cm)
  - **layer**: *alphanumerical value*, identifier of the object’s layer
  - **object\_type**: *alphanumerical value*, category of the object

In addition, optional fields are possible, including:

  - **square\_x**: *alphanumerical value*, identifier of the square on
    the X axis
  - **square\_y**: *alphanumerical value*, identifier of the square on
    the Y axis
  - **year** : *numerical value*, year when the object was excavated
  - **xmax**: *numerical value*, when the X location of the object is
    included in a range of X coordinates
  - **ymax**: *numerical value*, when the Y location of the object is
    included in a range of Y coordinates
  - **zmax**: *numerical value*, when the Z location of the object is
    included in a range of Z coordinates
  - **object\_edit**: unlimited number of additional variable describing
    the object (field names must start with `object_` and have different
    suffixes)

The labels of the squares of the grid:

  - are ordered alpha-numerically;
  - are not displayed, in order to avoid erroneous displays, if the
    number of labels does not correspond exactly to the total number of
    100 cm squares that can be defined in the range of minimum and
    maximum coordinates contained in the xmin and ymin variables;
  - can be completed with the `add.x.square.labels` and
    `add.y.square.labels` parameters of the `archeoViz()` function in
    order to add the missing labels (on the X and Y axes of the grid,
    respectively).

### Random data

For demonstration purposes using randomly generated data is made
possible. To activate this feature, set the slider in “Input data” to a
value higher than 0 (setting the value back to 0 deactivates the
feature). An “objects” data set, a “refits” data set, and a “timeline”
data set are generated, making it possible to test all the `archeoViz`
functionalities.

### Through function parameters

`archeoViz`’s launching function (`archeoViz()`) can be run without
parameter

``` r
archeoViz()
```

or by using the `objects.df`, `refits.df`, or `timeline.df` parameters
to input data.frames about the archaeological objects, refitting
relationships between these objects, and the chronology of the
excavation, respectively.

``` r
archeoViz(objects.df = NULL,  # data.frame with data about the objects
          refits.df = NULL,   # data.frame for refitting objects
          timeline.df = NULL) # optional data.frame for the excavation timeline
```

## Data sub-setting

Once data are loaded, a sub-selection of the data set can be done in the
left side menu. Several parameters are possible: the type of location
recording, the category of the objects, and the way to group the data.

### Location mode

The location of archaeological objects can be recorded in different
ways, depending on the precision of the data: as points (xyz
coordinates), on lines, plans, or within a volume (ranges of x, y, and z
values). In `archeoViz`, a distinction is made between exact locations
(points) and the other types of fuzzy location methods (lines, plans,
volumes). The radio buttons allow selecting these options.

### Objects category

Sub-sets can be defined by object categories, using the “variable” and
“values” fields. Once one of the “object\_type” (or other possible
“object\_” variables) is selected, its values appear below and can be
selected using the tick boxes. The selection must be validated by
clicking on the “Validate” button. This selection determines the data
that will be displayed in the plots and tables.

### Data subgroups

The data can be grouped in two ways: either by layer or by the selected
“object\_” variable. This option determines the colours of the points
in the 3D and 2D plots and the subsets when computing surfaces and
convex hulls.

### Objects selection

In the “3D plot” tab, clicking on a point displays information about
that point in the table below the plot.

## Interactive visualisation

The plots in the “3D plot”, “Map”, “Section X”, and “Section Y” tabs are
generated using the
[`plotly`](https://CRAN.R-project.org/package=plotly) library. All the
plots are dynamic and include a menu bar above the plot with several
options (generating an image file, zooming, moving the view, etc). See
details on the [`plotly`
website](http://plotly.github.io/getting-to-know-the-plotly-modebar/).

Clicking on a legend’s item modifies the display:

  - a simple click on an item activates/deactivates its display;
  - a double click on an item displays this item only (another double
    click cancels it).

This feature makes it possible to choose which layers are shown. In
addition, the size of the points can be set and whether the refitting
relationships must be represented or not.

## Graphical outputs

Several graphical outputs can be generated in `archeoViz`.

  - The 3D visualisation, the map and the section visualisation can all
    be exported in .svg format (by cliking on the “camera” icon in the
    menu bar above the plot).
  - The 3D visualisation can be exported in interactive html format by
    clicking on the “Download” button.
  - The plan of the excavation chronology can be exported in .svg format
    by clicking on the “Download” button.

## Reffiting

Refitting are usually recorded by archaologists in two ways:

1.  by sets of refitting objects: using a two columns table, where a row
    corresponds to an **object**. The first column stores the object’
    unique id and the second column stores the id of the set of
    refitting objects this object belongs to.
2.  by refitting relationships: using a two columns table, where a row
    corresponds to a **relationship**. The first column stores the first
    object’s unique id and the second column stores the second object’s
    unique id.

Although the second data structure is more accurate, the first is more
commonly used.

`archeoViz` processes the two data structures in different ways:

  - sets of refitting objects must be described using a specific column
    in the `objects.df` table (e.g. `object_refits`) and are represented
    by the color of points in the plots (as for any other variable);
  - refitting relationships must be described using the `refits.df`
    table and are visualised as segments connecting the refitting
    objects in the plots.

## Spatial statistics

`archeoViz` includes some spatial analysis functionalities, intended for
basic and exploratory use.

### Regression surfaces

In the “3D plot” tab, clicking on “Compute surfaces” and “Validate”
displays the regression surface associated with each layer (with at
least 100 points). The surfaces are computed using the generalized
additive model implemented in the
[`mgcv`](https://CRAN.R-project.org/package=mgcv) package.

### Convex hulls

In the “3D plot” tab, clicking on “Compute hulls” and “Validate”
displays the convex hull associated with each layer (with at least 20
points). The convex hulls are computed using the
[`cxhull`](https://CRAN.R-project.org/package=cxhull) package.

### 2D kernel density

In the “Map” tab, ticking the “Compute density” box and clicking on
“Validate” generates a map with contour lines showing the points’
density. Density can be computed for all the points together or by layer
(with at least 30 points). The 2D kernel density is computed with the
`kde2d` function of the
[`MASS`](https://CRAN.R-project.org/package=MASS) package (through
[`ggplot2`](https://CRAN.R-project.org/package=ggplot2)).

## Reproducibility

`archeoViz` is, by definition, an interactive application. However,
several features guarantee the reproducibility and communicability of
the result of interactions with the application.

  - The 3D visualisation can be exported in an interactive html
    standalone format, considering the data selection made by the user.
  - In the “Reproducibility” tab, an R command is dynamically generated,
    considering the current application settings made by the user.

## Advanced parameters

The `archeoViz()` function can be set with multiple optional parameters,
related to:

  - the input data (already detailed
    [above](#through-function-parameters)),
  - the contents of the home page (already detailed
    [above](#deployed-use)),
  - the [square grid](#square-grid),
  - the [presetting](#parameters-presetting) of the parameters that can
    be set through the application’s interface,
  - the [reactive behavior](#reactive-plot-display) of the application
    regarding the generation of plots.

<!-- end list -->

``` r
archeoViz(objects.df=NULL, refits.df=NULL, timeline.df=NULL,
          title=NULL, home.text=NULL, lang="en", set.theme="cosmo",
          square.size = 100, reverse.axis.values = NULL, reverse.square.names = NULL,
          add.x.square.labels = NULL, add.y.square.labels = NULL,
          class.variable = NULL, class.values = NULL,
          default.group = "by.layer", location.mode = NULL,
          map.z.val = NULL, map.density = "no", map.refits = NULL,
          plot3d.hulls = NULL, plot3d.surfaces = NULL, plot3d.refits = NULL,
          sectionX.x.val = NULL, sectionX.y.val = NULL, sectionX.refits = NULL, 
          sectionY.x.val = NULL, sectionY.y.val = NULL, sectionY.refits = NULL,
          camera.center = NULL, camera.eye = NULL, run.plots = FALSE
          )
```

### Square grid

``` r
archeoViz(square.size = 100,
          reverse.axis.values = NULL, reverse.square.names = NULL,
          add.x.square.labels = NULL, add.y.square.labels = NULL
          )
```

  - **square.size**: numerical. Size (width and height) in centimeter of
    the squares in the grid system. Default value is 100 cm.
  - **reverse.axis.values**: character. Name of the axis or axes to be
    reversed (any combination of “x”, “y”, “z”).
  - **reverse.square.names**: character. Name of the axis or axes for
    which to reverse the order of the square labels (any combination of
    “x”, “y”, “z”).
  - **add.x.square.labels**: character. Additional square labels for the
    “x” axis.
  - **add.y.square.labels**: character. Additional square labels for the
    “y” axis.

### Parameters presetting

``` r
archeoViz(class.variable = NULL, class.values = NULL,
          default.group = "by.layer", location.mode = NULL,
          map.z.val = NULL, map.density = "no", map.refits = NULL,
          plot3d.hulls = NULL, plot3d.surfaces = NULL, plot3d.refits = NULL,
          sectionX.x.val = NULL, sectionX.y.val = NULL, sectionX.refits = NULL, 
          sectionY.x.val = NULL, sectionY.y.val = NULL, sectionY.refits = NULL,
          camera.center = NULL, camera.eye = NULL
          )
```

  - **class.variable**: character. At the launch of the app, name of the
    variable to preselect.
  - **class.values**: character vector. At the launch of the app, names
    of the values to preselect.
  - **default.group**: character. At the launch of the app, preselection
    of the variable used to group data (one of “by.layer” or
    “by.variable”).
  - **location.mode**: character. At the launch of the app, preselection
    of the location method (one of “exact”, “fuzzy”, “exact.fuzzy”).
  - **map.z.val**: numerical. Minimal and maximal Z coordinates values
    to display in the map plot.
  - **map.density**: character. At the launch of the app, whether to
    compute and show density contours in the map plot (one of “no”,
    “overall”, “by.variable”).
  - **map.refits**: TRUE or FALSE. Whether to show refits in the map
    plot.
  - **plot3d.hulls**: TRUE or FALSE. At the launch of the app, whether
    to compute and show convex hulls in the 3D plot.
  - **plot3d.surfaces**: TRUE or FALSE. At the launch of the app,
    whether to compute and show regression in the 3D plot.
  - **plot3d.refits**: TRUE or FALSE. At the launch of the app, whether
    to show refits on the 3D section plot.
  - **sectionX.x.val**: numerical. At the launch of the app, minimal and
    maximal X coordinates values to display in the X section plot.
  - **sectionX.y.val**: numerical. At the launch of the app, minimal and
    maximal Y coordinates values to display in the X section plot.
  - **sectionX.refits**: TRUE or FALSE. At the launch of the app,
    whether to show refits in the X section plot.
  - **sectionY.x.val**: numerical. At the launch of the app, minimal and
    maximal X coordinates values to display in the Y section plot.
  - **sectionY.y.val**: numerical. At the launch of the app, minimal and
    maximal Y coordinates values to display in the Y section plot.
  - **sectionY.refits**: TRUE or FALSE. At the launch of the app,
    whether to show refits in the Y section plot.
  - **camera.center**: numerical. In 3D plot, coordinates of the point
    to which the camera looks at (default values: x=0, y=0, z=0).
  - **camera.eye**: numerical. In 3D plot, coordinates of the camera’s
    position (default values: x=1.25, y=1.25, z=1.25).

### Reactive plot display

``` r
archeoViz(run.plots = FALSE)
```

  - **run.plots**: TRUE or FALSE. Whether to immediately compute and
    show plots (without requiring the user to click on the buttons in
    the interface).

# Acknowledgment

The `archeoViz` application and package is developed and maintained by
Sébastien Plutniak. Arthur Coulon, Solène Denis, Olivier Marlet, and
Thomas Perrin tested and supported the project in its early stage.
Renata Araujo and Sara Giardino translated the application into
Portuguese and Italian, respectively.

# References

  - Plutniak, Sébastien, Renata Araujo, Sara Giardino. 2023. “archeoViz.
    Visualisation, Exploration, and Web Communication of Archaeological
    Excavation Data”. v1.0.0, DOI:
    [10.5281/zenodo.7682227](https://doi.org/10.5281/zenodo.7682227).
  - Plutniak, Sébastien. 2023. “[Visualiser et explorer la distribution
    spatiale du mobilier archéologique: l’application archeoViz et son
    portail
    web](https://www.prehistoire.org/offres/doc_inline_src/515/0-BSPF_2023_1_2e_partie_Correspondance_PLUTNIAK.pdf)”.
    **Bulletin de la Société préhistorique française**, 120(1),
    p. 70-74.
