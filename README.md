archeoViz
================

`archeoViz` is a packaged R Shiny application for *visual* and
*statistical* exploration and web *communication* of archaeological
spatial data, either remains or sites. It offers interactive 3D and 2D
*visualisations* (*cross sections* and *maps* of remains, *timeline* of
the work made in a site) which can be *exported* in SVG and HTML
formats. It performs simple *spatial statistics* (convex hull,
regression surfaces, 2D kernel density estimation) and allows exporting
data to other online applications for more *complex methods*.
‘archeoViz’ can be used offline locally or deployed on a server,
either with interactive input of data or with a static data set. The app
interface is available in English, French, German, Italian, Portuguese,
Romanian, and Spanish. Website: <https://archeoviz.hypotheses.org>.

[![Project Status: Active – The project has reached a stable, usable
state and is being actively
developed.](https://www.repostatus.org/badges/latest/active.svg)](https://www.repostatus.org/#active)
[![Lifecycle:
stable](https://img.shields.io/badge/lifecycle-stable-blue.svg)](https://lifecycle.r-lib.org/articles/stages.html#stable)
[![R build
status](https://github.com/sebastien-plutniak/archeoviz/actions/workflows/r.yml/badge.svg)](https://github.com/sebastien-plutniak/archeoviz/actions/workflows/r.yml)
[![codecov](https://codecov.io/gh/sebastien-plutniak/archeoviz/branch/main/graph/badge.svg?token=6QKYVKISCT)](https://app.codecov.io/gh/sebastien-plutniak/archeoviz)
[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.7460193.svg)](https://doi.org/10.5281/zenodo.7460193)
[![SWH](https://archive.softwareheritage.org/badge/origin/https://github.com/sebastien-plutniak/archeoviz)](https://archive.softwareheritage.org/browse/origin/directory/?origin_url=https://github.com/sebastien-plutniak/archeoviz)
[![r-universe](https://sebastien-plutniak.r-universe.dev/badges/archeoViz)](https://sebastien-plutniak.r-universe.dev/archeoViz)
[![CRAN
status](https://www.r-pkg.org/badges/version/archeoViz)](https://CRAN.R-project.org/package=archeoViz)
[![CRAN
Downloads](https://cranlogs.r-pkg.org/badges/grand-total/archeoViz?color=brightgreen&.svg)](https://cran.r-project.org/package=archeoViz)
[![license](https://img.shields.io/badge/License-GPL%20v3-blue.svg)](https://www.r-project.org/Licenses/GPL-3)
[![status](https://joss.theoj.org/papers/ec7d14809161bb21d0e258742e64f131/status.svg)](https://joss.theoj.org/papers/ec7d14809161bb21d0e258742e64f131)

  - [**Installation**](#installation)
      - [Local Use](#local-use)
      - [Remote Use](#remote-use)
      - [Demonstration](#demonstration)
  - [**Community Guidelines**](#community-guidelines)
      - [Reporting Bugs](#reporting-bugs)
      - [Suggesting Changes](#suggesting-changes)
      - [Translation](#translation)
  - [**Use**](#use)
      - [Spatial Information in
        archeoViz](#spatial-information-in-archeoviz)
          - [Points, Exact Location: Plotted
            Objects](#points-exact-location-plotted-objects)
          - [Points, Vague Location: Spits, Buckets, Sieved Objects, and
            Recording
            Errors](#points-vague-location-spits-buckets-sieved-objects-and-recording-errors)
          - [Lines](#lines)
          - [Surfaces](#surfaces)
      - [Refittings and Fabric
        Measurements](#refittings-and-fabric-measurements)
          - [Refittings](#refittings)
          - [Fabric Measurements](#fabric-measurements)  
      - [Data Format](#data-format)
          - [Formatting Data](#formatting-data)
          - [Objects Table](#objects-table)
          - [Refitting Table](#refitting-table)
          - [Timeline Table](#timeline-table)
          - [Background drawing](#background-drawing)
      - [Data Input](#data-input)
          - [Through the Application
            Interface](#through-the-application-interface)
          - [Through the R Function
            Parameters](#through-the-r-function-parameters)
          - [Through URL Parameters](#through-url-parameters)
          - [Generating Random Data](#generating-random-data)
          - [Rotating the points](#rotating-the-points)
      - [Data sub-setting](#data-sub-setting)
          - [By Location Mode](#by-location-mode)
          - [By Layer or Object Category](#by-objects-category)
      - [Interactive Visualisation](#interactive-visualisation)
          - [General Features](#general-features)
          - [Visualising Spatial
            Uncertainty](#visualising-spatial-uncertainty)
          - [Graphical Outputs](#graphical-outputs)
      - [Spatial Statistics](#spatial-statistics)
          - [Regression Surfaces](#regression-surfaces)
          - [Convex Hulls](#convex-hulls)
          - [2D Kernel Density](#2d-kernel-density)
  - [**Reproducibility**](#reproducibility)
  - [**Exports from and to Third-party
    Applications**](#exports-from-and-to-third-party-applications)
      - [Export from archeoViz](#export-from-archeoviz)
      - [Import to archeoViz](#import-to-archeoviz)
  - [**Advanced Parameters**](#advanced-parameters)
      - [Coordinates](#Coordinates)
      - [Square Grid](#square-grid)
      - [Background drawing](#background-drawing)
      - [Parameter Presetting](#parameter-presetting)
      - [Reactive Plot Display](#reactive-plot-display)
      - [Control Export Formats](#control-export-formats)
      - [URL parameters](#url-parameters)
  - [**Acknowledgments**](#acknowledgments)
  - [**References**](#references)
      - [Software](#Software)
      - [Papers](#papers)
      - [Presentations](#presentations)
      - [Websites](#websites)

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
          lang = "en"          # interface language ("de": German, "en": English, "fr": French, "it": Italian, "pt": Portuguese, "es": Spanish)
          set.theme = "cosmo") # graphic theme for the Shiny interface
```

The possible values for the `set.theme` parameter are illustrated on
[this page](https://rstudio.github.io/shinythemes/). The language of the
application can be set with the `lang` parameter.

## Demonstration

Demonstration instances of the application are deployed on the *Huma
Num* Shiny server:

  - [`archeoViz` in German](https://analytics.huma-num.fr/archeoviz/de).
  - [`archeoViz` in
    English](https://analytics.huma-num.fr/archeoviz/en).
  - [`archeoViz` in French](https://analytics.huma-num.fr/archeoviz/fr).
  - [`archeoViz` in
    Spanish](https://analytics.huma-num.fr/archeoviz/es).
  - [`archeoViz` in
    Italian](https://analytics.huma-num.fr/archeoviz/it).
  - [`archeoViz` in
    Portuguese](https://analytics.huma-num.fr/archeoviz/pt).
  - [`archeoViz` in
    Romanian](https://analytics.huma-num.fr/archeoviz/ro).

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

## Translation

In the development of `archeoViz`, particular attention is paid to
multilingualism. The application interface is available in several
languages and translations into additional languages are welcome. To do
so, please edit this
[file](https://github.com/sebastien-plutniak/archeoviz/blob/main/R/load_interface_terms_utf8.R)
and submit a pull request.

# Use

Having archaeological remains from a given site, `archeoViz` is designed
to lower the technical barriers to fulfill three objectives:

  - basic spatial exploration and generation of simple graphical
    reports;
  - fast pre-publication of archaeological data, intended for the
    scientific community;
  - fast deployment of a visualisation and communication tool intended
    for a broader audience.

In addition, `archeoViz` is a suitable pedagogical resource for teaching
spatial analysis in archaeology, data structuring, open science, and
reproducible workflow.

N.B.: consequently, `archeoViz` is not intended to replace more
sophisticated analysis tools (e.g., GIS, statistical packages, etc.)

## Spatial Information in archeoViz

Archaeologists record the location of archaeological objects at
different scales and granularity. Accordingly, they use different
geometrical concepts to represent location.

### Points, Exact Location: Plotted Objects

Using grid coordinates or electronic “total station” enables recording
the individual location of objects on the field. In that case, the
location are represented as points in `archeoViz` (triplets of x, y and
z coordinates).

### Points, Vague Location: Spits, Buckets, Sieved Objects, and Recording Errors

However, it is also common that x, y, z, coordinates by object are not
available, for different reasons due to:

  - recording errors, loss of information, resulting in the need to
    replace one of several coordinates values by ranges (e.g., a X value
    is missing for an object and is replaced by the minimal and maximal
    X values of the square where this object was found);
  - choice of method (e.g., excavation made and recorded using spits of
    arbitrary depth, sieved objects, etc.).

In all these cases, we have to deal with vague location, when objects
cannot be located as points but are somewhere between ranges of
coordinates. Vague location can concern one, two, or the three spatial
dimensions (the x, y, z coordinates, respectively).

Note that this feature can also be used to deal with the imprecision of
topographical instruments.

### Lines

Lines are useful geometries for representing relationships. In
archaeology, these can be [refitting](#reffitings) relationships between
object fragments, orientation ([fabric
measurements](#fabric-measurements), etc. Lines are generated from data
loaded as refitting data, either from the “Data” tab, or with the
`refits.df` parameter of the `archeoViz()` function.

### Surfaces

Surfaces are useful geometries for representing ground levels, trenches,
pits, etc. In `archeoViz`, this can be achieved by defining a subset of
points summarising the desired surface, then displaying the [convex
hull](#convex-hulls) of this subset.

## Refittings and Fabric Measurements

### Refittings

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

`archeoViz` processes and represents the two data structures in two
ways:

  - sets of refitting objects must be described using a specific column
    in the `objects.df` table (e.g. `object_refits`) and are represented
    by the color of points in the plots (like any other variable);
  - refitting relationships must be described using the `refits.df`
    table and are visualised as segments connecting the refitting
    objects in the plots.

### Fabric Measurements

So far, `archeoViz` does not handle fabric measurements properly.
However, the process used to represent refittings can also adapted and
used to represent fabric measurements. This requires to distort the data
structure as follows:

  - assuming that fabric measurements were recorded with two
    measurements on each object (and not with dip and plunge
    measurements),
  - different unique `id` values must be given to the two points, and
  - the two measures are processed as if they were two refitting
    objects.

See an example of this method
[here](https://analytics.huma-num.fr/archeoviz/shuidonggou2).

## Data Format

Three types of data can be loaded in `archeoViz`:

  - an “objects” table (mandatory), with data about the objects;
  - a “refits” table (optional), with data about the refitting objects;
  - a “timeline” table (optional) giving the year when each square of
    the site was excavated or surveyed.

### Formatting Data

The tables must be CSV files with the first row containing the column
labels. Contents in HTML are allowed. This makes it possible, in
particular, to add links to external resources (e.g., to objects
permanent identifier in other databases, or to concepts identifiers in
standard ontologies / thesauri, etc.).

Formatting your data can be done:

  - either using a spreadsheet editor on your machine to generate CSV
    files;
  - or, for the `objects table,` using the
    [*SEAHORS*](https://aurelienroyer.shinyapps.io/Seahors/) application
    to load your data, define the variables (in the “Load data” tab),
    and export it to the `archeoViz` format (in the “Table” / “archeoViz
    exports” tab). It is also possible to directly send the data to an
    online `archeoViz` instance.

### Objects Table

A row describes a single object with the following mandatory fields:

  - **id**: *alphanumerical value*, unique identifier of the object
  - **xmin**: *numerical value*, coordinate of the object on the X axis
  - **ymin**: *numerical value*, coordinate of the object on the Y axis
  - **zmin**: *numerical value*, coordinate of the object on the Z axis
    (positive depth value)
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
    labels does not correspond exactly to the total number of 100 (cm,
    m, km) squares that can be defined in the range of minimum and
    maximum coordinates contained in the xmin and ymin variables;
  - can be completed with the `add.x.square.labels` and
    `add.y.square.labels` parameters of the `archeoViz()` function in
    order to add the missing labels (on the X and Y axes of the grid,
    respectively).

### Refitting Table

A data table with two columns can be uploaded for refitting data (CSV
format). Each row must contain the unique identifiers of two refitting
objects (corresponding to the values of the `id` column in the objects
table).

### Timeline Table

A table (CSV format) can be uploaded about excavation history. Row gives
the year when each grid square of the site was excavated or surveyed.
This table must include the following variables:

  - **year**: numerical value, the year of excavation
  - **square\_x**: alphanumerical value, identifier of the excavated
    square on the X axis
  - **square\_y**: alphanumerical value, identifier of the excavated
    square on the Y axis

### Background Drawing

A background drawing can be displayed in the 3D and Map plots. This
feature makes it possible, for example, to show a site map behind a
point cloud. It requires a data table in which each row gives the X and
Y coordinates of the points to be used to draw. Note that the lines will
be drawn following the order of the points in the table. The coordinates
system used must be the same that the one used for the objects. To draw
several lines, an additional column (named “group”) is required,
containing for each point the unique identifier of the line to which
this point belongs to. The data set is loaded using the `background.map`
parameter.

## Data Input

There are four ways to input data in `archeoViz`:

1.  uploading data tables through the “Input data” tab,
2.  loading data tables through the `archeoViz` function’s parameters,
    in the R interface;
3.  uploading data tables through URL parameters, when using an online
    instance of `archeoViz`.
4.  generating random data in the “Input data” tab;

### Through the Application Interface

The three types of tables can be loaded in the “Input data” tab. The CSV
separator (one of: comma, semicolon, tabulation) and the character used
for decimal points (period or comma).

### Through URL parameters

The URL of an online instance of `archeoViz` can include the parameters:

  - `objects.df=`
  - `refits.df=`
  - `timeline.df=`

whose values must be the URL of a CSV file observing the `archeoViz`
format described above. For example:
<https://analytics.huma-num.fr/archeoviz/en/?objects.df=https://zenodo.org/record/8003880/files/bilzingsleben.csv>

### Generating Random Data

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

### Rotating the points

You can change the orientation of the points in the plan. In the “Data”
tab, select a value (in degrees) and click on the “Validate selection”
button to confirm.

## Data Sub-setting

Once data are loaded, a sub-selection of the data can be done in the
left side menu. Grouping can be done by crossing the following
parameters: the mode of location, the layers, and the category of
object.

### By Location Mode

If all the objects have exact location or vague location, then no option
is proposed. However, if the dataset includes both exact and vague
location, then it is possible to select only one or both of these
options.

### By Layer or Object Category

The data can be grouped in two ways: either based on their layer or on
the selected “object\_” variable. This option determines the colours of
the points in the 3D and 2D plots and how to group points when computing
convex hulls and 3D regression surfaces. Sub-sets can be defined by
object categories, using the “variable” and “values” fields. Once one of
the “object\_type” (or other possible “object\_” variables) is selected,
its values appear below and can be selected using the tick boxes. The
selection must be validated by clicking on the “Validate” button. This
selection determines the data to be displayed in the plots and tables.

## Interactive visualisation

### General features

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

Finally, clicking on a point displays information about that point in
the table below the plot.

### Visualising Spatial Uncertainty

In `archeoViz`, a distinction is made between exact location (given as
x, y, z coordinates) and vague locations (given as ranges of
coordinates). Both types of locations can be displayed. The uncertainty
of vague locations can be visualised by representing objects not as
points but as lines, planes, and volumes (if ranges of coordinates are
given for one, two, or three spatial dimensions, respectively). Note
that this feature is resource intensive and using it with too much data
can significantly slow down the application.

### Graphical outputs

Several graphical outputs can be generated in `archeoViz`.

  - The plots in the “3D plot”, “Map”, “Section X”, and “Section Y” tabs
    can be exported:
      - in SVG format (by clicking on the “camera” icon in the menu bar
        above the plot),
      - as interactive plots in HTML format, by clicking on the “Export”
        button.
  - The small map in the “Section X” and “Section Y” tabs can be
    exported in SVG by clicking on the “Download Map” link.
  - The plan of the excavation chronology can be exported in SVG format
    by clicking on the “Download” button.

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

In the “3D plot” tab, convex hulls can be displayed as follows:

1.  tick the “Convex hulls” box,
2.  select, from the menu that appears, the subsets of points for which
    convex hulls are to be calculated,
3.  click on “Validate”.

Convex hulls associated with each subsets with at least 20 points are
displayed. The convex hulls are computed using the
[`geometry`](https://CRAN.R-project.org/package=geometry) package.

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

## Exports from and to Third-party Applications

`archeoViz` was designed as one of the building blocks of a
decentralised digital ecosystem for archaeological data and analysis. In
this perspective, features and functions are distributed in multiple
interconnected applications, rather than concentrated into few systems.
Consequently, data can be exported and imported between `archeoViz` and
other web-based applications. Note that, so far, the export
functionalities are only available when using online `archeoViz`
instances.

### Export from archeoViz

Data can be exported to other online applications from `archeoViz`
“Statistics” tab. Some exports are possible only for specific types of
data or if a minimum number of values is satisfied.

[*archeofrag*](https://analytics.huma-num.fr/Sebastien.Plutniak/archeofrag)
is an R package and web application to assess and evaluate the
distinctions between archaeological spatial units (e.g. layers) based on
the analysis of refitting relationships between fragments of objects.
The web version of the application includes methods to measure the
cohesion and admixture of spatial units, and compare it to simulated
data. If an instance of `archeoViz` is launched with [refitting
data](#refittings), then this data can be analysed with `archeofrag`.
See an example [here](https://analytics.huma-num.fr/archeoviz/grotte16).

The [*Seriograph*](https://analytics.huma-num.fr/ModAthom/seriograph/)
is a web application (part of the
[SPARTAAS](https://spartaas.gitpages.huma-num.fr/r-package/) collection)
to visualise changes in the quantitative distribution of artefacts types
in ordered or non-ordered series of spatial units. Export to
`Seriograph` is available from online `archeoViz` instance (only) for
dataset with at least 2 different values for the `layer` variable and 2
different values for the selected variable (by default, `object_type`).
See an example [here](https://analytics.huma-num.fr/archeoviz/poeymau).

[*Amado online*](https://app.ptm.huma-num.fr/amado/) is an on-line
application for analysing contingency tables. `Amado online` allows you
to manually reorder rows and columns, and perform automatic seriation
and classification. Export to `Amado online` is available from online
`archeoViz` instance (only) for dataset with at least 2 different values
for the `layer` variable and 2 different values for the selected
variable (by default, `object_type`). See an example
[here](https://analytics.huma-num.fr/archeoviz/tai).

[*explor*](https://cran.r-project.org/package=explor) is an R Shiny / R
package application for interactively exploring the results of
multi-dimensional analyses. Export to `explor` is available from online
`archeoViz` instance (only) for dataset with at least 2 different values
for the `layer` variable and 2 different values for the selected
variable (by default, `object_type`). The version of `explor` used from
`archeoViz` is a fork of the original application, adapted to run
correspondence analysis. See an example
[here](https://analytics.huma-num.fr/archeoviz/tai).

[*shinyHeatmaply*](https://cran.r-project.org/package=shinyHeatmaply) is
an R Shiny / R package application to generate and interactively explore
heatmaps. Multiple statistical distance and classification methods can
be applied. Export to `shinyHeatmaply` is available from online
`archeoViz` instance (only) for dataset with at least 2 different values
for the `layer` variable and 2 different values for the selected
variable (by default, `object_type`). The version of `shinyHeatmaply`
used from `archeoViz` is a fork of the original application. See an
example [here](https://analytics.huma-num.fr/archeoviz/grande-rivoire).

### Import to archeoViz

[*SEAHORS*](https://aurelienroyer.shinyapps.io/Seahors/) is a web
application and R package to visualise the spatial distribution of
archaeological remains. As mentioned [above](#formatting-data), SEAHORS
can be used to import, reshape, and send a dataset to an online instance
of the `archeoViz` application.

## Advanced parameters

The `archeoViz()` function can be set with multiple optional parameters,
related to:

  - the input data (see [above](#through-function-parameters)),
  - the contents of the home page (see [above](#deployed-use)),
  - the [square grid](#square-grid),
  - the [presetting](#parameters-presetting) of the parameters that can
    be set through the application’s graphical interface,
  - the [reactive behavior](#reactive-plot-display) of the application
    regarding the generation of plots,
  - the [HTML export](#html-export),
  - the [URL parameters](#url-parameters).

<!-- end list -->

``` r
archeoViz(objects.df=NULL, refits.df=NULL, timeline.df=NULL,
          title=NULL, home.text=NULL, lang="en", set.theme="cosmo",
          square.size = 100, unit = "cm", rotation = 0, 
          grid.orientation = NULL, background.map = NULL,
          reverse.axis.values = NULL, reverse.square.names = NULL,
          add.x.square.labels = NULL, add.y.square.labels = NULL,
          class.variable = NULL, class.values = NULL,
          default.group = "by.layer", location.mode = NULL,
          map.z.val = NULL, map.density = "no", map.refits = NULL,
          plot3d.ratio = 1, plot3d.hulls = FALSE, hulls.class.values = NULL,
          plot3d.surfaces = NULL, plot3d.refits = NULL, point.size = 2,
          sectionX.x.val = NULL, sectionX.y.val = NULL, sectionX.refits = NULL, 
          sectionY.x.val = NULL, sectionY.y.val = NULL, sectionY.refits = NULL,
          camera.center = c(0, 0, 0), camera.eye = c(1.25, 1.25, 1.25),
          run.plots = FALSE, html.export = TRUE, table.export = TRUE
          )
```

### Coordinates

``` r
archeoViz(unit = "cm", rotation = 0, reverse.axis.values = NULL)
```

  - **unit**: character. Unit for spatial distances. One of “cm”, “m”,
    “km”.
  - **rotation**: integer. Value (degrees) for the in-plane rotation of
    the point cloud.
  - **reverse.axis.values**: character. Name of the axis or axes to be
    reversed (any combination of “x”, “y”, “z”).

By default, all distances in `archeoViz` are in centimeter. However, it
can be changed by giving the `unit` parameter one of the following
value: “cm”, “m”, “km”. This parameter determines the contents of the
legend of the square size.

### Square grid

``` r
archeoViz(square.size = 100, 
          grid.orientation = NULL,
          reverse.square.names = NULL,
          add.x.square.labels = NULL, add.y.square.labels = NULL
          )
```

  - **square.size**: numerical. Size (width and height) of the squares
    in the grid system. Default value is 100.
  - **grid.orientation**: numerical. Orientation (degrees, positive or
    negative) of the grid (0 corresponds to a north orientation).
  - **reverse.square.names**: character. Name of the axis or axes for
    which to reverse the order of the square labels (any combination of
    “x”, “y”, “z”).
  - **add.x.square.labels**: character. Additional square labels for the
    “x” axis.
  - **add.y.square.labels**: character. Additional square labels for the
    “y” axis.

### Background drawing

``` r
archeoViz(background.map = NULL)
```

  - **background.map**: data frame or matrix. Coordinates to draw lines
    on the background of the 3D and Map plots. See for example the
    [Anyskop Blowout
    instance](https://analytics.huma-num.fr/archeoviz/anyskop).

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
  - **default.group**: character. At the launch of the app, preset of
    the variable used to group data (one of “by.layer” or
    “by.variable”).
  - **location.mode**: character. At the launch of the app, preset of
    the location methods (any combination of “exact”, “fuzzy”,
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
  - **hulls.class.values**: character. At the launch of the app, names
    of the points subsets for which to compute convex hulls.
  - **plot3d.surfaces**: TRUE or FALSE. At the launch of the app,
    whether to compute and show regression in the 3D plot.
  - **plot3d.refits**: TRUE or FALSE. At the launch of the app, whether
    to show refits on the 3D section plot.
  - **point.size**: integer. At the launch of the app, size of the
    points in the plots.
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
    show plots (without requiring the user to click on the “Refresh”
    button).

### Control Export Formats

  - **html.export** : TRUE or FALSE. Whether or not to allow figures to
    be exported as interactive HTML widgets.
  - **table.export**: TRUE or FALSE. Allow or disallow data transfer to
    [third-party
    applications](#exports-from-and-to-third-party-applications) in the
    “Statistics” tab.

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
`map.z.val`, `sectionX.x.val`, `point.size`, `sectionX.y.val`,
`sectionY.x.val`, `sectionY.y.val`, `lang`, `set.theme`,
`camera.center`, `camera.eye`, `html.export`, `table.export`.)

The parameters must be written using the URL syntax
(?param1=value\&param2=value2) and have the same type of values than
when used in the R interface. For example, the following URL launches an
`archeoViz` instance using the
[Bilzingsleben](https://zenodo.org/record/8003880) dataset:

<https://analytics.huma-num.fr/archeoviz/en/?objects.df=https://zenodo.org/record/8003880/files/bilzingsleben.csv>

This URL does the same, but also includes the refitting table (parameter
`&refits.df=`) and set the activate the display of the refitting
relationships in the 3D and map plots:

<https://analytics.huma-num.fr/archeoviz/en/?map.refits=TRUE&plot3d.refits=TRUE&objects.df=https://zenodo.org/record/8003880/files/bilzingsleben.csv&refits.df=https://zenodo.org/record/8003880/files/bilzingsleben-antlers-refits.csv>

The following URL launches the Bilzingsleben dataset, pre-setting the
app to:

1.  groups the points by variable (parameter `default.group`, with walue
    `by.variable` instead of `by.layer`)
2.  selects only the “Antlers” (parameter `class.values`)
3.  redefines the size of the square grid (parameter `square.size`, 500
    instead of the 100 default value)
4.  enable the immediate display of the plots (parameter `run.plots`)
5.  modifies the title of the page (parameter `title`)
6.  modifies the content of the home page with basic HTML contents
    (parameter `home.txt`)

[https://analytics.huma-num.fr/archeoviz/en/?default.group=by.variable\&class.values=Antler\&square.size=500\&run.plots=TRUE\&title=Antlers%20at%20Bilzingsleben\&home.text=Many%20<b>antlers</b>\&objects.df=https://zenodo.org/record/8003880/files/bilzingsleben.csv](https://analytics.huma-num.fr/archeoviz/en/?default.group=by.variable&class.values=Antler&square.size=500&run.plots=TRUE&title=Anters%20at%20Bilzingsleben&home.text=Many%20%3Cb%3Eantlers%3C/b%3E&objects.df=https://zenodo.org/record/8003880/files/bilzingsleben.csv)

Note that the parameters `add.x.square.labels`, `add.y.square.labels`,
`location.mode`, and `class.values`, which accept simple or multiple
values in the R interface (e.g., c(“value1”, “value2”)) only accept one
value when set as URL parameters (this is a restriction due to the URL
syntax).

# Acknowledgments

The `archeoViz` application and package is developed and maintained by
Sébastien Plutniak. Arthur Coulon, Solène Denis, Olivier Marlet, and
Thomas Perrin tested and supported the project in its early stage.
Renata Araujo, Laura Coltofean, Sara Giardino, Julian Laabs, and Nicolas
Delsol translated the application into Portuguese, Romanian, Italian,
German, and Spanish respectively.

# References

## Software

  - Plutniak, Sébastien, Renata Araujo, Laura Coltofean, Nicolas Delsol,
    Sara Giardino, Julian Laabs. 2024. “archeoViz. Visualisation,
    Exploration, and Web Communication of Archaeological Spatial Data”.
    v1.3.5, DOI:
    [10.5281/zenodo.12200494](https://doi.org/10.5281/zenodo.12200494).
  - Plutniak, Sébastien, Anaïs Vignoles. 2023. “[The archeoViz Portal:
    Dissemination of Spatial Archaeological
    Datasets](https://hal.science/hal-04156271)”, web portal,
    <https://analytics.huma-num.fr/archeoviz/home>.

## Papers

  - Plutniak, Sébastien. 2023. “archeoViz: an R package for the
    Visualisation, Exploration, and Web Communication of Archaeological
    Spatial Data”. *Journal of Open Source Software*, 92(8), 5811, DOI:
    [10.21105/joss.05811](https://doi.org/10.21105/joss.05811).
  - Plutniak, Sébastien. 2023. “[Visualiser et explorer la distribution
    spatiale du mobilier archéologique : l’application archeoViz et son
    portail
    web](https://www.prehistoire.org/offres/doc_inline_src/515/0-BSPF_2023_1_2e_partie_Correspondance_PLUTNIAK.pdf)”.
    *Bulletin de la Société préhistorique française*, 120(1), p. 70-74.

## Presentations

  - Plutniak, Sébastien. 2023. “[Fostering the Publication of Spatial
    Archaeological Data: a Decentralized Approach. The archeoViz Web
    Application and its Portal](https://hal.science/hal-04146410)”,
    slides of a presentation at the University of Florida, Gainesville.
  - Plutniak, Sébastien, Anaïs Vignoles. 2023. “[L’application web /
    package archeoViz et son portail web. Une solution décentralisée
    d’éditorialisation de données archéologiques
    spatialisées](https://hal.science/hal-04070444), slides of a
    presentation at the SITRADA workshop, Paris.

## Websites

  - The *archeoViz. Data visualization in archaeology. Re-use,
    visualization, dissemination of spatial data* blog:
    <https://archeoviz.hypotheses.org>
