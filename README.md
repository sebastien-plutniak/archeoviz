---
output: github_document
editor_options: 
chunk_output_type: console
---




# archeoViz 

`archeoViz` is a packaged R Shiny application for the visualisation, exploration, and web communication of  archaeological excavation data. It includes interactive 3D and 2D visualisations, generation of cross sections and map of the remains, basic spatial analysis methods (convex hull, regression surfaces, 2D kernel density estimation), and excavation timeline visualisation. ArcheoViz can be used locally or deployed on a server, either with interactive input of data or with a static data set.

[![Project Status: Active – The project has reached a stable, usable state and is being actively developed.](https://www.repostatus.org/badges/latest/active.svg)](https://www.repostatus.org/#active)
[![Lifecycle: maturing](https://img.shields.io/badge/lifecycle-maturing-blue.svg)](https://www.tidyverse.org/lifecycle/#maturing)
[![license](https://img.shields.io/badge/License-GPL%20v3-blue.svg)](https://www.r-project.org/Licenses/GPL-3)



- [**Installation**](#installation)
  - [Local use](#local-use)
  - [Deployed use](#deployed-use)
- [**Community guidelines**](#community-guidelines)
  - [Reporting bugs](#reporting-bugs)
  - [Suggesting changes](#suggesting-changes)
- [**Use**](#use)
  - [Input data](#input-data)
  - [Data set sub-setting](#dataset-sub-setting)
  - [Interactive visualisation](#interactive-visualisation)
  - [Graphical outputs](#graphical-outputs)
  - [Spatial statistics](#spatial-statistics)  
- [**References**](#references)
 
 
# Installation

`archeoViz` can be used in two ways:

* locally, on the user's machine
* remotely, after deploying the app on a distant server

## Local use

The package can be installed from GitHub with:

```r
# install.packages("devtools")
devtools::install_github("sebastien-plutniak/archeoviz")
```

Then, load the package and launch the app with:

```r
library(archeoViz)
archeoViz()
```

## Deployed use

To deploy `archeoViz` on your Shiny server, first download and unzip the package:


```r
# set the working directory on your shiny server:
setwd(dir = "/some/path/")
# download the package:
download.file(url = "https://github.com/sebastien-plutniak/archeoviz/archive/master.zip",
              destfile = "archeoviz.zip")
# unzip it
unzip(zipfile = "archeoviz.zip")
```

Then, go to https://<your-shiny-server>/archeoviz.

To set the app with your data and preferences, edit the app.R file, located at the root of the directory:


```r
archeoViz(objects.df = NULL,   # data.frame with data about the objects
          refits.df = NULL,    # optional data.frame for refitting data
          timeline.df = NULL,  # optional data.frame for the excavation timeline
          title = NULL,        # title of the site / data set
          home.text = NULL,    # html content to display on the home page
          set.theme = "cosmo") # graphic theme for the Shiny interface
```

The possible values for the `set.theme` parameter are illustrated on [this page](https://rstudio.github.io/shinythemes).
For an example, see `archeoViz` deployed on the [*Huma Num* Shiny server](https://analytics.huma-num.fr/Sebastien.Plutniak/archeoviz).


# Community guidelines

## Reporting bugs
If you encounter a bug, please fill an [issue](https://github.com/sebastien-plutniak/archeoviz/issues) with all the details needed to reproduce it.

## Suggesting changes
Suggestions of changes to `archeoViz` are welcome.
These requests may concern additional functions, changes to documentation, additional examples, new features, etc.
They can be made by filling an [issue](https://github.com/sebastien-plutniak/archeoviz/issues) and, even better, using pull requests and the [GitHub Fork and Pull model](https://help.github.com/articles/about-pull-requests).


# Use

Having archaeological remains from a given site, `archeoViz` is designed to lower the technical barriers to fulfil three objectives:

* basic spatial exploration and generation of simple graphical reports;
* fast pre-publication of archaeological data, intended for the scientific community;
* fast deployment of a display and communication tool intended for a broader audience.

N.B.: consequently, `archeoViz` is not intended to replace more sophisticated analysis tools (e.g., GIS, statistical packages, etc.)

## Input data

There are three ways to input data in `archeoViz`:

1. uploading tables in the “Input data” tab,
2. using randomly generated data from the “Input data” tab;
3. set the `archeoviz` main function's parameters before running the application. 

### Tables upload

Tables for three types of data can be uploaded from the “Input data” tab:

* an “objects” table (mandatory), with data about the objects;
* a “refitting” table (optional), with data about the refitting objects;
* a “timeline” table (optional), with data about when each square of the site was excavated.

The tables must be .csv files with the first row used containing the columns' labels (the separator can be set).
More details about the required formats and columns are provided in the “Input data” tab.

### Random data

For demonstration purposes using randomly generated data is made possible. To activate this feature, set the slider in “Input data” to a value higher than 0 (setting the value back to 0 deactivates the feature). Both an “objects” data set and a “timeline” data set are generated, making it possible to test all the `archeoViz` functionalities.

### Function parameters

`archeoViz` launch function (`archeoViz()`) can be run without parameter


```r
archeoViz()
```

or by setting it to input either the  “objects” data only or the “objects” and “timeline” data.


```r
archeoViz(objects.df = NULL,  # data.frame with data about the objects
          timeline.df = NULL) # optional data frame for the excavation timeline
```


## Dataset sub-setting

Once data are loaded, a sub-selection of the data set can be done in the left side menu. Several parameters are possible: the type of location recording and the category of the objects.

### Location mode

The location of archaeological objects can be recorded in different ways, depending on the precision of the data: as points (xyz coordinates), on lines, plans, or within a volume (ranges of x, y, and z values). 
In `archeoViz`, a distinction is made between exact locations (points) and the other types of fuzzy location methods (lines, plans, volumes). The radio buttons allow selecting these options.

### Objects category

Sub-sets can be defined by object categories, using the “variable” and “values” fields.
Once one of the “object_type” (or other possible “object_” variables) is selected, its values appear below and can be selected using the tick boxes.
The selection must be validated by clicking on the “Validate” button.
This selection determines the data that will be displayed in the plots and tables.

### Layer selection

Layer selection is made using the legend in the `plotly` plots (see below).

### Object selection

In the “3D plot” tab, clicking on a point displays information about that point in the table below the plot.

## Interactive visualisation

The plots in the “3D plot”, “Map”, “Section X”, and “Section Y” tabs are generated using the [`plotly`](https://CRAN.R-project.org/package=plotly) library. All the plots are dynamic and include a menu bar above the plot with several options (generating an image file, zooming, moving the view, etc). See details on the
[plotly website](https://plotly.com/chart-studio-help/getting-to-know-the-plotly-modebar).

Clicking on a legend's item modifies the display:

* a simple click on an item activates/deactivates its display;
* a double click on an item  displays this item only (another double click cancels it)

This feature makes it possible to choose which layers are shown.

## Graphical outputs

Several graphical outputs can be generated in `archeoViz`.

* All the plots generated with `plotly` include an export function in .png format.
* the excavation map (in the “Excavation timeline” tab) can be downloaded in .svg format with the button below the plot.

## Spatial statistics

`archeoViz` includes some spatial analysis functionalities, intended for basic and exploratory use.

### Regression surfaces

In the “3D plot” tab, clicking on “Compute surfaces” and “Draw” displays the regression surface associated with each layer (with at least 100 points). The surfaces are computed using the generalized additive model implemented in the [`mgcv`](https://CRAN.R-project.org/package=mgcv) package.

### Convex hulls

In the “3D plot” tab, clicking on “Compute hulls” and “Draw” displays the convex hull associated with each layer (with at least 10 points). The convex hulls are computed using the  [`cxhull`](https://CRAN.R-project.org/package=cxhull) package.

### 2D density kernel

In the “plan” tab, ticking the “Compute density” box and clicking on “Draw” generates a map with contour lines showing the points' density.
The 2D kernel density is computed with the `kde2d` function of the [`MASS`](https://CRAN.R-project.org/package=MASS) package (through [`ggplot2`](https://CRAN.R-project.org/package=ggplot2)).


# References

* Plutniak, Sébastien. 2022. “archeoViz. A shiny application for the spatial visualisation, exploration, and web communication of field archaeological data”. v0.1, DOI: TODO.
