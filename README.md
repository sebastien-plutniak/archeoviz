archeoViz
================

`archeoViz` is a packaged R Shiny application for the *visualisation*,
*exploration*, and web *communication* of archaeological spatial data.
It includes interactive 3D and 2D *visualisations*, can generate *cross
sections* and *maps* of the remains, can run basic *spatial statistics*
methods (convex hull, regression surfaces, 2D kernel density
estimation), and display an interactive *timeline* of an excavation.
`archeoViz` can be used locally or deployed on a server, either by
allowing the user to load data through the interface or by running the
app with a specific data set. The app interface is available in English,
French, Italian, and Portuguese.

[![Project Status: Active – The project has reached a stable, usable
state and is being actively
developed.](https://www.repostatus.org/badges/latest/active.svg)](https://www.repostatus.org/#active)
[![Lifecycle:
stable](https://img.shields.io/badge/lifecycle-stable-blue.svg)](https://lifecycle.r-lib.org/articles/stages.html#stable)
[![R](https://github.com/sebastien-plutniak/archeoviz/actions/workflows/r.yml/badge.svg)](https://github.com/sebastien-plutniak/archeoviz/actions/workflows/r.yml)
[![codecov](https://codecov.io/gh/sebastien-plutniak/archeoviz/branch/main/graph/badge.svg?token=6QKYVKISCT)](https://app.codecov.io/gh/sebastien-plutniak/archeoviz)
[![archeoViz status
badge](https://sebastien-plutniak.r-universe.dev/badges/archeoViz)](https://sebastien-plutniak.r-universe.dev/archeoViz)
[![license](https://img.shields.io/badge/License-GPL%20v3-blue.svg)](https://www.r-project.org/Licenses/GPL-3)
[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.7460193.svg)](https://doi.org/10.5281/zenodo.7460193)
[![SWH](https://archive.softwareheritage.org/badge/origin/https://github.com/sebastien-plutniak/archeoviz)](https://archive.softwareheritage.org/browse/origin/directory/?origin_url=https://github.com/sebastien-plutniak/archeoviz)
[![CRAN
Version](http://www.r-pkg.org/badges/version/archeoViz)](https://cran.r-project.org/package=archeoViz)
[![CRAN
Downloads](http://cranlogs.r-pkg.org/badges/archeoViz)](https://cran.r-project.org/package=archeoViz)

  - [**Installation**](#installation)
      - [Local Use](#local-use)
      - [Remote Use](#remote-use)
      - [Demonstration](#demonstration)
  - [**Community Guidelines**](#community-guidelines)
      - [Reporting Bugs](#reporting-bugs)
      - [Suggesting Changes](#suggesting-changes)
  - [**Use**](#use)
      - [Data Format](#data-format)
          - [Formatting Data](#formatting-data)
          - [Objects Table](#objects-table)
          - [Refitting Table](#refitting-table)
          - [Timeline Table](#timeline-table)
      - [Data Input](#data-input)
          - [Through the Application
            Interface](#through-the-application-interface)
          - [Generating Random Data](#generating-random-data)
          - [Through the R Function
            Parameters](#through-the-r-function-parameters)
          - [Through URL Parameters](#through-url-parameters)
      - [Data sub-setting](#data-sub-setting)
          - [Location mode](#location-mode)
          - [Objects Category](#objects-category)
          - [Data Subgroups](#data-subgroups)  
          - [Objects Selection](#objects-selection)
      - [Interactive Visualisation](#interactive-visualisation)
      - [Graphical Outputs](#graphical-outputs)
      - [Spatial Statistics](#spatial-statistics)
          - [Regression Surfaces](#regression-surfaces)
          - [Convex Hulls](#convex-hulls)
          - [2D Kernel Density](#2d-kernel-density)
  - [**Reproducibility**](#reproducibility)
  - [**Advanced Parameters**](#advanced-parameters)
      - [Square Grid](#square-grid)
      - [Parameter Presetting](#parameter-presetting)
      - [Reactive Plot Display](#reactive-plot-display)
      - [URL parameters](#url-parameters)
  - [**Acknowledgments**](#acknowledgments)
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

## Remote use

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
          home.text = NULL,    # HTML content to display on the home page
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
to lower the technical barriers to fulfill three objectives:

  - basic spatial exploration and generation of simple graphical
    reports;
  - fast pre-publication of archaeological data, intended for the
    scientific community;
  - fast deployment of a display and communication tool intended for a
    broader audience.

In addition, `archeoViz` is a suitable pedagogical resource for teaching
spatial analysis in archaeology, data structuring, open science, and
reproducible workflow.

N.B.: consequently, `archeoViz` is not intended to replace more
sophisticated analysis tools (e.g., GIS, statistical packages, etc.)

## Data Format

Three types of data can be loaded in `archeoViz`:

  - an “objects” table (mandatory), with data about the objects;
  - a “refits” table (optional), with data about the refitting objects;
  - a “timeline” table (optional), with data about when each square of
    the site was excavated or surveyed.

### Formatting data

The tables must be CSV files with the first row containing the column
labels. Contents in HTML are allowed. This makes it possible, in
particular, to add links to external resources (e.g., to objects
permanent identifier in other databases, or to concepts identifiers in
standard ontologies / thesaurii, etc.).

Formatting your data can be done:

  - either using a spreadsheet editor on your machine to generate CSV
    files;
  - or, for the `objects table,` using the
    [*SEAHORS*](https://aurelienroyer.shinyapps.io/Seahors/) application
    to load your data, define the variables (in the “Load data” tab),
    and export it to the `archeoViz` format (in the “Table” / “archeoViz
    exports” tab). It is also possible to directly send the data to an
    online `archeoViz` instance.

### Objects table

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
  - **object\_edit**: unlimited number of additional variables
    describing the object (field names must start with `object_` and
    have different suffixes)

The labels of the squares of the grid:

  - are ordered alpha-numerically;
  - are not displayed to avoid erroneous displays, if the number of
    labels does not correspond exactly to the total number of 100 cm
    squares that can be defined in the range of minimum and maximum
    coordinates contained in the xmin and ymin variables;
  - can be completed with the `add.x.square.labels` and
    `add.y.square.labels` parameters of the `archeoViz()` function in
    order to add the missing labels (on the X and Y axes of the grid,
    respectively).

### Refitting table

A data table with two columns can be uploaded for refitting data (CSV
format). Each row must contain the unique identifiers of two refitting
objects (corresponding to the values of the `id` column in the objects
table).

### Timeline table

A table (CSV format) can be uploaded about excavation history. Row gives
the year when each grid square of the site was excavated or surveyed.
This table must include the following variables:

  - **year**: numerical value, the year of excavation
  - **square\_x**: alphanumerical value, identifier of the excavated
    square on the X axis
  - **square\_y**: alphanumerical value, identifier of the excavated
    square on the Y axis

## Data Input

There are four ways to input data in `archeoViz`:

1.  uploading data tables through the “Input data” tab,
2.  generating random data in the “Input data” tab;
3.  loading data tables through the `archeoViz` function’s parameters,
    in the R interface;
4.  uploading data tables through URL parameters, when using an online
    instance of `archeoViz`.

### Through the application interface

The three types of tables can be loaded in the “Input data” tab. The CSV
separator (one of: comma, semicolon, tabulation) and the character used
for decimal points (period or comma).

### Generating random data

Using randomly generated data is made possible for demonstration
purposes. To activate this feature, set the slider in “Input data” to a
value higher than 0 (setting the value back to 0 deactivates the
feature). An “objects” data set, a “refits” data set, and a “timeline”
data set are generated, making it possible to test all the `archeoViz`
functionalities.

### Through the R function parameters

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

### Through URL parameters

The URL of an online instance of `archeoViz` can include the parameters:

  - `objects.df=`
  - \`refits.df=\`\`
  - `timeline.df=`

whose values must be the URL of a CSV file observing the `archeoViz`
format described above. For example:
<https://analytics.huma-num.fr/archeoviz/en/?objects.df=https://zenodo.org/record/8003880/files/bilzingsleben.csv>

## Data sub-setting

Once data are loaded, a sub-selection of the data set can be done in the
left side menu. Several parameters are possible: the type of location
recording, the category of the objects, and the way to group the data.

### Location mode

The location of archaeological objects may have been recorded in
different, more or less precise ways: on the one hand, exactly with
points (located by a triplet of x, y and z coordinates) and, on the
other hand, more or less imprecisely with lines, planes, or within
volumes (with different sets of x, y and/or z value pairs). In
`archeoViz`, a distinction is made between exact location (points) and
other types of vague location (located on lines, planes, and volumes).
Both types of locations (exact and vague) can be displayed, and location
uncertainties can also be visualised as lines, planes and volumes. This
last option is resource intensive, and using it with too much data can
significantly slow down the application.

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

In the “3D plot”, “Map”, “Section X”, and “Section Y” tabs, clicking on
a point displays information about that point in the table below the
plot.

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

  - The plots in The plots in the “3D plot”, “Map”, “Section X”, and
    “Section Y” can be exported:
      - in SVG format (by clicking on the “camera” icon in the menu bar
        above the plot),
      - in an interactive HTML format, by clicking on the “Export”
        button.
  - The plan of the excavation chronology can be exported in SVG format
    by clicking on the “Download” button.

## Reffitings

Refittings are usually recorded by archaeologists in two ways:

1.  by sets of refitting objects: using a two columns table, where a row
    corresponds to an **object**. The first column stores the object’s
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

  - The 3D visualisation can be exported in an interactive HTML
    standalone format, considering the data selection made by the user.
  - In the “Reproducibility” tab, an R command is dynamically generated,
    considering the current application settings made by the user.
  - In a more advanced use, the URL parameters makes it possible to set
    an online instance of the application parameters of interest and to
    communicate it by sending the URL.

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
  - the [HTML export](#html-export).
  - the [URL parameters](#url-parameters).

<!-- end list -->

``` r
archeoViz(objects.df=NULL, refits.df=NULL, timeline.df=NULL,
          title=NULL, home.text=NULL, lang="en", set.theme="cosmo",
          square.size = 100, reverse.axis.values = NULL, reverse.square.names = NULL,
          add.x.square.labels = NULL, add.y.square.labels = NULL,
          class.variable = NULL, class.values = NULL,
          default.group = "by.layer", location.mode = NULL,
          map.z.val = NULL, map.density = "no", map.refits = NULL,
          plot3d.ratio = 1, plot3d.hulls = NULL, plot3d.surfaces = NULL, plot3d.refits = NULL,
          sectionX.x.val = NULL, sectionX.y.val = NULL, sectionX.refits = NULL, 
          sectionY.x.val = NULL, sectionY.y.val = NULL, sectionY.refits = NULL,
          camera.center = c(0, 0, 0), camera.eye = c(1.25, 1.25, 1.25),
          run.plots = FALSE, html.export = TRUE
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

### Parameter presetting

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
    of the location method (one of “exact”, “fuzzy”,
    “show.uncertainty”).
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

### HTML export

  - **html.export** : TRUE or FALSE. Whether or not to allow figures to
    be exported as interactive HTML widgets.

### URL parameters

An instance of `archeoViz` deployed online on a server can be set with
URL parameters. Supported parameters include:

  - `objects.df`, `refits.df`, `timeline.df`
  - `title`, `home.text`
  - `reverse.axis.values`, `reverse.square.names`
  - `square.size`
  - `add.x.square.labels`, `add.y.square.labels`
  - `class.variable`, `class.values`
  - `default.group`
  - `location.mode`
  - `map.density`, `map.refits`
  - `plot3d.hulls`, `plot3d.surfaces`, `plot3d.refits`
  - `sectionX.refits`
  - `sectionY.refits`
  - `run.plots`

(The following parameters are not supported in the current version:
`map.z.val`, `sectionX.x.val`, `sectionX.y.val`, `sectionY.x.val`,
`sectionY.y.val`, `lang`, `set.theme`, `camera.center`, `camera.eye`,
`html.export`.)

The parameters must be written using the URL syntax
(?param1=value\&param2=value2) and have the same type of values than
when used in the R interface. For example, the following URL launches an
`archeoViz` instance using the
[Bilzingsleben](https://zenodo.org/record/8003880)
dataset:

<https://analytics.huma-num.fr/archeoviz/en/?objects.df=https://zenodo.org/record/8003880/files/bilzingsleben.csv>

This URL does the same, but also includes the refitting table (parameter
`&refits.df=`) and set the activate the display of the refitting
relationships in the 3D and map
plots:

<https://analytics.huma-num.fr/archeoviz/en/?map.refits=TRUE&plot3d.refits=TRUE&objects.df=https://zenodo.org/record/8003880/files/bilzingsleben.csv&refits.df=https://zenodo.org/record/8003880/files/bilzingsleben-antlers-refits.csv>

The following URL launches the Bilzingsleben dataset, pre-setting the
app to:

1.  groups the points by variable (parameter `default.group`, with walue
    `by.variable` instead of `by.layer`)
2.  selects only the “Antlers” (parameter `class.values`)
3.  redefines the size of the square grid (parameter `square.size`, 500
    cm instead of the 100 cm default value)
4.  enable the immediate display of the plots (parameter `run.plots`)
5.  modifies the title of the page (parameter `title`)
6.  modifies the content of the home page with basic html contents
    (parameter
`home.txt`)

[https://analytics.huma-num.fr/archeoviz/en/?default.group=by.variable\&class.values=Antler\&square.size=500\&run.plots=TRUE\&title=Antlers%20at%20Bilzingsleben\&home.text=Many%20<b>antlers</b>\&objects.df=https://zenodo.org/record/8003880/files/bilzingsleben.csv](https://analytics.huma-num.fr/archeoviz/en/?default.group=by.variable&class.values=Antler&square.size=500&run.plots=TRUE&title=Anters%20at%20Bilzingsleben&home.text=Many%20%3Cb%3Eantlers%3C/b%3E&objects.df=https://zenodo.org/record/8003880/files/bilzingsleben.csv)

Note that the parameters `add.x.square.labels`, `add.y.square.labels`,
`location.mode`, and `class.values`, which accept simple or multiple
values in the R interface (e.g. c(“value1”, “value2”)) only accept one
value when set as URL parameters (this is a restriction due to the URL
syntax).

# Acknowledgments

The `archeoViz` application and package is developed and maintained by
Sébastien Plutniak. Arthur Coulon, Solène Denis, Olivier Marlet, and
Thomas Perrin tested and supported the project in its early stage.
Renata Araujo and Sara Giardino translated the application into
Portuguese and Italian, respectively.

# References

  - Plutniak, Sébastien, Renata Araujo, Sara Giardino. 2023. “archeoViz.
    Visualisation, Exploration, and Web Communication of Archaeological
    Spatial Data”. v1.2.0, DOI:
    [10.5281/zenodo.7460193](https://doi.org/10.5281/zenodo.7460193).
  - Plutniak, Sébastien. 2023. “[Visualiser et explorer la distribution
    spatiale du mobilier archéologique: l’application archeoViz et son
    portail
    web](https://www.prehistoire.org/offres/doc_inline_src/515/0-BSPF_2023_1_2e_partie_Correspondance_PLUTNIAK.pdf)”.
    *Bulletin de la Société préhistorique française*, 120(1), p. 70-74.
