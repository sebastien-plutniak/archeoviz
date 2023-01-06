archeoViz
================

`archeoViz` is a packaged R Shiny application for the visualisation,
exploration, and web communication of archaeological excavation data. It
includes interactive 3D and 2D visualisations, can generate cross
sections and map of the remains, can run basic spatial statistics
methods (convex hull, regression surfaces, 2D kernel density
estimation), and display an interactive timeline of an excavation.
`archeoViz` can be used locally or deployed on a server, either by
allowing the user to load data through the interface or by running the
app with a specific data set. The interface is available in English and
in French.

[![Project Status: Active – The project has reached a stable, usable
state and is being actively
developed.](https://www.repostatus.org/badges/latest/active.svg)](https://www.repostatus.org/#active)
[![Lifecycle:
maturing](https://img.shields.io/badge/lifecycle-maturing-blue.svg)](https://www.tidyverse.org/lifecycle/#maturing)
[![R](https://github.com/sebastien-plutniak/archeoviz/actions/workflows/r.yml/badge.svg)](https://github.com/sebastien-plutniak/archeoviz/actions/workflows/r.yml)
[![codecov](https://codecov.io/gh/sebastien-plutniak/archeoviz/branch/main/graph/badge.svg?token=6QKYVKISCT)](https://codecov.io/gh/sebastien-plutniak/archeoviz)
[![license](https://img.shields.io/badge/License-GPL%20v3-blue.svg)](https://www.r-project.org/Licenses/GPL-3)
[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.7460193.svg)](https://doi.org/10.5281/zenodo.7460193)
[![CRAN
Version](http://www.r-pkg.org/badges/version/archeoViz)](https://cran.r-project.org/package=archeoViz)

  - [**Installation**](#installation)
      - [Local use](#local-use)
      - [Deployed use](#deployed-use)
      - [Demonstration](#demonstration)
  - [**Community guidelines**](#community-guidelines)
      - [Reporting bugs](#reporting-bugs)
      - [Suggesting changes](#suggesting-changes)
  - [**Use**](#use)
      - [Data input](#data-input)
          - [Tables upload](#tables-upload)
          - [Random data](#random-data)
          - [Function parameters](#function-parameters)
      - [Data set sub-setting](#dataset-sub-setting)
          - [Location mode](#location-mode)
          - [Objects category](#objects-category)
          - [Objects selection](#objects-selection)
      - [Interactive visualisation](#interactive-visualisation)
      - [Graphical outputs](#graphical-outputs)
      - [Spatial statistics](#spatial-statistics)
          - [Regression surfaces](#regression-surfaces)
          - [Convex hulls](#convex-hulls)
          - [2D kernel density](#2d-kernel-density)
  - [**References**](#references)

# Installation

`archeoViz` can be used in two ways:

  - locally, on the user’s machine
  - remotely, after deploying the app on a distant server

## Local use

The package can be installed from GitHub with:

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
          lang = "en"          # interface language (English or French)
          set.theme = "cosmo") # graphic theme for the Shiny interface
```

The possible values for the `set.theme` parameter are illustrated on
[this page](https://rstudio.github.io/shinythemes/). The language of the
application can be set with the `lang` parameter, either with an
“en”/“English” or “fr”/“French” value.

## Demonstration

Demonstration instances of the application are deployed on the *Huma
Num* Shiny server:

  - [archeoViz in English](https://analytics.huma-num.fr/archeoviz/en).
  - [archeoViz in French](https://analytics.huma-num.fr/archeoviz/fr).

For a real case use, see the example of the prehistoric [Poeymaü
cave](https://analytics.huma-num.fr/Sebastien.Plutniak/poeymau/) in the
Pyrenees (note that this application is a modified version of
`archeoViz`).

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

### Tables upload

Tables for three types of data can be uploaded from the “Input data”
tab:

  - an “objects” table (mandatory), with data about the objects;
  - a “refits” table (optional), with data about the refitting objects;
  - a “timeline” table (optional), with data about when each square of
    the site was excavated.

The tables must be .csv files with the first row used containing the
columns’ labels (the separator can be set). More details about the
required formats and columns are provided in the “Input data” tab.

### Random data

For demonstration purposes using randomly generated data is made
possible. To activate this feature, set the slider in “Input data” to a
value higher than 0 (setting the value back to 0 deactivates the
feature). An “objects” data set, a “refits” data set, and a “timeline”
data set are generated, making it possible to test all the `archeoViz`
functionalities.

### Function parameters

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

## Dataset sub-setting

Once data are loaded, a sub-selection of the data set can be done in the
left side menu. Several parameters are possible: the type of location
recording and the category of the objects.

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
that will be displayed in the plots and tables. In addition, it is
possible to set whether the colours in 3D and 2D plots are determined by
the layers or by the selected “object\_” variable.

### Objects selection

In the “3D plot” tab, clicking on a point displays information about
that point in the table below the plot.

## Interactive visualisation

The plots in the “3D plot”, “Map”, “Section X”, and “Section Y” tabs are
generated using the
[`plotly`](https://CRAN.R-project.org/package=plotly) library. All the
plots are dynamic and include a menu bar above the plot with several
options (generating an image file, zooming, moving the view, etc). See
details on the [plotly
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

  - All the plots generated with `plotly` include an export function in
    .svg format.
  - the excavation map (in the “Excavation timeline” tab) can be
    downloaded in .svg format with the button below the plot.

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

# References

  - Plutniak, Sébastien. 2022. “archeoViz. Visualisation, Exploration,
    and Web Communication of Archaeological Excavation Data”. v0.1, DOI:
    [10.5281/zenodo.7460193](https://doi.org/10.5281/zenodo.7460193).
