
.load_interface_terms <- function(lang){
  # welcome.fr ----
  welcome.fr <- "<h1>Bienvenue dans <i>archeoViz</i> !</h1>
                <p><i>archeoViz</i> est une application dédiée à l'archéologie.
                Elle permet de <b>visualiser</b>, d'<b>explorer</b> interactivement, et  
                d'exposer et <b>communiquer</b> rapidement  sur le web des données 
                archéologiques de terrain.
                </p>
                <p>
                Elle propose des <b>visualisations</b> en 3D et 2D,
                génère des <b>coupes</b> et des <b>cartes</b> des restes archéologiques,
                permet de réaliser des <b>statistiques spatiales</b> simples
                (enveloppes convexes, surfaces de régression, estimation de densité par noyau en 2D), 
                et de visualiser une <b>chronologie</b> interactive des fouilles d'un site.
                </p>
                <p>
                Distribuée sous la forme d'un package R, 
                <i>archeoViz</i> peut être utilisée localement ou déployée sur un serveur,
                soit en laissant la possibilité de charger des données via l'interface ou en 
                exécutant l'application avec un jeu de donnée spécifique.
                L'interface est disponible en anglais et en français.
                </p>
                Le code source est libre et publié sur le 
                <a href=https://github.com/sebastien-plutniak/archeoviz>dépôt github</a>."
  # welcome.en ----
  welcome.en <- "
                <h1>Welcome to <i>archeoViz</i>!</h1>
                <p><i>archeoViz</i> is an application designed for archaeology.
                It makes possible to <b>visualise</b>, interactively <b>explore</b>, and quickly
                deploy and <b>communicate</b> archaeological excavation data on the web.
                </p>
                <p>
                It offers interactive 3D and 2D <b>visualisations</b>,
                can generate <b>cross sections</b> and <b>map</b> of the remains, 
                can run basic <b>spatial statistics</b> methods 
                (convex hull, regression surfaces, 2D kernel density estimation), 
                and display an interactive <b>timeline</b> of the excavation. 
                </p>
                <p>
                Being wrapped as an R package, 
                <i>archeoViz</i> can be used locally or deployed on a server, 
                either by allowing the user to load data through the interface
                or by running the app with a specific data set.
                The interface is available in English and in French.
                </p>
                The code source is openly published on the 
                dedicated <a href=https://github.com/sebastien-plutniak/archeoviz>github repository</a>."
  
  # Input objects ----
  
  input.objects.fr <- 
    "<p>
    Un tableau au format csv est requis. Chaque ligne décrit un objet, comportant les champs obligatoires suivants :
    <ul>
    <li> <b>id</b> : <i>valeur alphanumérique</i>, identifiant unique de l'object </li>
    <li> <b>square_x</b> : <i>valeur alphanumérique</i>, identifiant du carré de l'objet en axe X</li>
    <li> <b>square_y</b> : <i>valeur alphanumérique</i>, identifiant du carré de l'objet en axe Y</li>
    <li> <b>xmin</b> : <i>valeur numérique</i>, coordonnée de l'objet en axe X</li>
    <li> <b>ymin</b> : <i>valeur numérique</i>, coordonnée de l'objet en axe Y</li>
    <li> <b>zmin</b> : <i>valeur numérique</i>, coordonnée de l'objet en axe Z (profondeur)</li>
    <li> <b>layer</b> : <i>valeur alphanumérique</i>, identifiant de la couche de l'objet</li>
    <li> <b>object_type</b> : <i>valeur alphanumérique</i>, catégorie de l'object</li>
    </ul>
    De plus, des champs optionnels sont possibles, dont:
    <ul>
      <li> <b>xmax</b> : <i>valeur numérique</i>, lorsque la localisation de l'objet en X est comprise dans un intervalle de coordonnées</li>
      <li> <b>ymax</b> : <i>valeur numérique</i>, lorsque la localisation de l'objet en Y est comprise dans un intervalle de coordonnées</li>
      <li> <b>zmax</b> : <i>valeur numérique</i>, lorsque la localisation de l'objet en Z est comprise dans un intervalle de coordonnées</li>
      <li> <b>object<i>_edit</i></b> : nombre non limité de variables additionnelles  décrivant l'objet (les noms de colonnes doivent commencer par `object_` et avoir des suffixes différents</li>
    </ul>
    </p>"
  
  input.objects.en <- 
    "<p>
    A data table is required (csv format). A row describes a single object with the following mandatory fields:
    <ul>
    <li> <b>id</b>: <i>alphanumerical value</i>, unique identifier of the object </li>
    <li> <b>square_x</b>: <i>alphanumerical value</i>, identifier of the square on the X axis</li>
    <li> <b>square_y</b>: <i>alphanumerical value</i>, identifier of the square on the Y axis</li>
    <li> <b>xmin</b>: <i>numerical value</i>, coordinate of the object on the X axis</li>
    <li> <b>ymin</b>: <i>numerical value</i>, coordinate of the object on the Y axis</li>
    <li> <b>zmin</b>: <i>numerical value</i>, coordinate of the object on the Z axis (depth)</li>
    <li> <b>layer</b>: <i>alphanumerical value</i>, identifier of the object's layer</li>
    <li> <b>object_type</b>: <i>alphanumerical value</i>, category of the object</li>
    </ul>
    In addition, optional fields are possible, including:
    <ul>
      <li> <b>xmax</b>: <i>numerical value</i>, when the X location of the object is included in a range of x coordinates</li>
      <li> <b>ymax</b>: <i>numerical value</i>, when the Y location of the object is included in a range of Y coordinates</li>
      <li> <b>zmax</b>: <i>numerical value</i>, when the Z location of the object is included in a range of Z coordinates</li>
      <li> <b>object<i>_edit</i></b>: unlimited number of additional variable describing the object (field names must start with `object_` and have different suffixes)</li>
    </ul>
    </p>"  
  
  
  # Input refits ----
  input.refits.fr <- 
  "<p>
    Un tableau à deux colonnes peut être chargé pour les remontages entre objets (format csv).
    Chaque ligne doit contenir les identifiants uniques des deux objets liés à une relation de remontage (en correspondance avec les valeurs de la colonne `id` du tableau des objets).
  </p>"
  
  input.refits.en <- 
  "<p>
    A data table with two columns can be uploaded for refitting data (csv format).
  Each row must contain the unique identifiers of two refitting objects (corresponding to the values of the `id` column in the objects table).
  </p>"
  
  # Input timeline ----
  
  input.timeline.fr <- 
    "<p>
    Optionnellement, un tableau (csv) peut être chargé  à propos du déroulé de la fouille.
    Chaque ligne est relative à un carré de fouille et comporte les informations suivantes: 
    <ul>
    <li> <b>year</b> : <i>valeur numérique</i>, année de fouille</li>
    <li> <b>square_x</b> : <i>valeur alphanumérique</i>, identifiant du carré en axe X</li>
    <li> <b>square_y</b> : <i>valeur alphanumérique</i>, identifiant du carré en axe Y</li>
    </ul>
    </p>"
  
  input.timeline.en <- 
    "<p>
    A table (csv format) can be uploaded about excavation history. A row describes a square of the site with the following fields:
    <ul>
    <li> <b>year</b>: <i>numerical value</i>, the year of excavation </li>
    <li> <b>square_x</b>: <i>alphanumerical value</i>, identifier of the excavated square on the X axis</li>
    <li> <b>square_y</b>: <i>alphanumerical value</i>, identifier of the excavated square on the Y axis</li>
    </ul>
    </p>"

  # guidelines.en ----
  guidelines.en <- 
  "<div id=header>
  <h1 class=title toc-ignore>archeoViz</h1>
  </div>
  <p><code>archeoViz</code> is a packaged R Shiny application for the visualisation, exploration, and web communication of archaeological excavation data. It includes interactive 3D and 2D visualisations, can generate cross sections and map of the remains, can run basic spatial analysis methods (convex hull, regression surfaces, 2D kernel density estimation), and display excavation timeline. <code>archeoViz</code> can be used locally or deployed on a server, either with interactive input of data or with a static data set.</p>
  <ul>
  <li><a href=#installation><strong>Installation</strong></a>
  <ul>
  <li><a href=#local-use>Local use</a></li>
  <li><a href=#deployed-use>Deployed use</a></li>
  </ul></li>
  <li><a href=#community-guidelines><strong>Community guidelines</strong></a>
  <ul>
  <li><a href=#reporting-bugs>Reporting bugs</a></li>
  <li><a href=#suggesting-changes>Suggesting changes</a></li>
  </ul></li>
  <li><a href=#use><strong>Use</strong></a>
  <ul>
  <li><a href=#input-data>Input data</a></li>
  <li><a href=#dataset-sub-setting>Data set sub-setting</a></li>
  <li><a href=#interactive-visualisation>Interactive visualisation</a></li>
  <li><a href=#graphical-outputs>Graphical outputs</a></li>
  <li><a href=#spatial-statistics>Spatial statistics</a><br />
  </li>
  </ul></li>
  <li><a href=#references><strong>References</strong></a></li>
  </ul>
  <div id=installation class=section level1>
  <h1>Installation</h1>
  <p><code>archeoViz</code> can be used in two ways:</p>
  <ul>
  <li>locally, on the user's machine</li>
  <li>remotely, after deploying the app on a distant server</li>
  </ul>
  <div id=local-use class=section level2>
  <h2>Local use</h2>
  <p>The package can be installed from GitHub with:</p>
  <pre class=r><code># install.packages(&quot;devtools&quot;)
  devtools::install_github(&quot;sebastien-plutniak/archeoviz&quot;)</code></pre>
  <p>Then, load the package and launch the app with:</p>
  <pre class=r><code>library(archeoViz)
  archeoViz()</code></pre>
  </div>
  <div id=deployed-use class=section level2>
  <h2>Deployed use</h2>
  <p>To deploy <code>archeoViz</code> on your Shiny server, first download and unzip the package:</p>
  <pre class=r><code># set the working directory on your shiny server:
  setwd(dir = &quot;/some/path/&quot;)
  # download the package:
  download.file(url = &quot;https://github.com/sebastien-plutniak/archeoviz/archive/master.zip&quot;,
                destfile = &quot;archeoviz.zip&quot;)
  # unzip it
  unzip(zipfile = &quot;archeoviz.zip&quot;)</code></pre>
  <p>Then, go to <a href=https:// class=uri>https://</a><your-shiny-server>/archeoviz.</p>
  <p>To set the app with your data and preferences, edit the app.R file, located at the root of the directory:</p>
  <pre class=r><code>archeoViz(objects.df = NULL,   # data.frame with data about the objects
            refits.df = NULL,    # optional data.frame for refitting data
            timeline.df = NULL,  # optional data.frame for the excavation timeline
            title = NULL,        # title of the site / data set
            home.text = NULL,    # html content to display on the home page
            set.theme = &quot;cosmo&quot;) # graphic theme for the Shiny interface</code></pre>
  <p>The possible values for the <code>set.theme</code> parameter are illustrated on <a href=https://rstudio.github.io/shinythemes>this page</a>. For an example, see <code>archeoViz</code> deployed on the <a href=https://analytics.huma-num.fr/Sebastien.Plutniak/archeoviz><em>Huma Num</em> Shiny server</a>.</p>
  </div>
  </div>
  <div id=community-guidelines class=section level1>
  <h1>Community guidelines</h1>
  <div id=reporting-bugs class=section level2>
  <h2>Reporting bugs</h2>
  <p>If you encounter a bug, please fill an <a href=https://github.com/sebastien-plutniak/archeoviz/issues>issue</a> with all the details needed to reproduce it.</p>
  </div>
  <div id=suggesting-changes class=section level2>
  <h2>Suggesting changes</h2>
  <p>Suggestions of changes to <code>archeoViz</code> are welcome. These requests may concern additional functions, changes to documentation, additional examples, new features, etc. They can be made by filling an <a href=https://github.com/sebastien-plutniak/archeoviz/issues>issue</a> and, even better, using pull requests and the <a href=https://help.github.com/articles/about-pull-requests>GitHub Fork and Pull model</a>.</p>
  </div>
  </div>
  <div id=use class=section level1>
  <h1>Use</h1>
  <p>Having archaeological remains from a given site, <code>archeoViz</code> is designed to lower the technical barriers to fulfil three objectives:</p>
  <ul>
  <li>basic spatial exploration and generation of simple graphical reports;</li>
  <li>fast pre-publication of archaeological data, intended for the scientific community;</li>
  <li>fast deployment of a display and communication tool intended for a broader audience.</li>
  </ul>
  <p>N.B.: consequently, <code>archeoViz</code> is not intended to replace more sophisticated analysis tools (e.g., GIS, statistical packages, etc.)</p>
  <div id=input-data class=section level2>
  <h2>Input data</h2>
  <p>There are three ways to input data in <code>archeoViz</code>:</p>
  <ol style=list-style-type: decimal>
  <li>uploading tables in the `Input data` tab,</li>
  <li>using randomly generated data from the `Input data` tab;</li>
  <li>set the <code>archeoviz</code> main function's parameters before running the application.</li>
  </ol>
  <div id=tables-upload class=section level3>
  <h3>Tables upload</h3>
  <p>Tables for three types of data can be uploaded from the `Input data` tab:</p>
  <ul>
  <li>an `objects` table (mandatory), with data about the objects;</li>
  <li>a `refits` table (optional), with data about the refitting objects;</li>
  <li>a `timeline` table (optional), with data about when each square of the site was excavated.</li>
  </ul>
  <p>The tables must be .csv files with the first row used containing the columns' labels (the separator can be set). More details about the required formats and columns are provided in the `Input data` tab.</p>
  </div>
  <div id=random-data class=section level3>
  <h3>Random data</h3>
  <p>For demonstration purposes using randomly generated data is made possible. To activate this feature, set the slider in `Input data` to a value higher than 0 (setting the value back to 0 deactivates the feature). Both an `objects` data set and a `timeline` data set are generated, making it possible to test all the <code>archeoViz</code> functionalities.</p>
  </div>
  <div id=function-parameters class=section level3>
  <h3>Function parameters</h3>
  <p><code>archeoViz</code> launch function (<code>archeoViz()</code>) can be run without parameter</p>
  <pre class=r><code>archeoViz()</code></pre>
  <p>or by setting it to input either the `objects` data only or the `objects` and `timeline` data.</p>
  <pre class=r><code>archeoViz(objects.df = NULL,  # data.frame with data about the objects
            timeline.df = NULL) # optional data frame for the excavation timeline</code></pre>
  </div>
  </div>
  <div id=dataset-sub-setting class=section level2>
  <h2>Dataset sub-setting</h2>
  <p>Once data are loaded, a sub-selection of the data set can be done in the left side menu. Several parameters are possible: the type of location recording and the category of the objects.</p>
  <div id=location-mode class=section level3>
  <h3>Location mode</h3>
  <p>The location of archaeological objects can be recorded in different ways, depending on the precision of the data: as points (xyz coordinates), on lines, plans, or within a volume (ranges of x, y, and z values). In <code>archeoViz</code>, a distinction is made between exact locations (points) and the other types of fuzzy location methods (lines, plans, volumes). The radio buttons allow selecting these options.</p>
  </div>
  <div id=objects-category class=section level3>
  <h3>Objects category</h3>
  <p>Sub-sets can be defined by object categories, using the `variable` and `values` fields. Once one of the `object_type` (or other possible `object_` variables) is selected, its values appear below and can be selected using the tick boxes. The selection must be validated by clicking on the `Validate` button. This selection determines the data that will be displayed in the plots and tables.</p>
  </div>
  <div id=layer-selection class=section level3>
  <h3>Layer selection</h3>
  <p>Layer selection is made using the legend in the <code>plotly</code> plots (see below).</p>
  </div>
  <div id=object-selection class=section level3>
  <h3>Object selection</h3>
  <p>In the `3D plot` tab, clicking on a point displays information about that point in the table below the plot.</p>
  </div>
  </div>
  <div id=interactive-visualisation class=section level2>
  <h2>Interactive visualisation</h2>
  <p>The plots in the `3D plot`, `Map`, `Section X`, and `Section Y` tabs are generated using the <a href=https://CRAN.R-project.org/package=plotly><code>plotly</code></a> library. All the plots are dynamic and include a menu bar above the plot with several options (generating an image file, zooming, moving the view, etc). See details on the <a href=https://plotly.com/chart-studio-help/getting-to-know-the-plotly-modebar>plotly website</a>.</p>
  <p>Clicking on a legend's item modifies the display:</p>
  <ul>
  <li>a simple click on an item activates/deactivates its display;</li>
  <li>a double click on an item displays this item only (another double click cancels it)</li>
  </ul>
  <p>This feature makes it possible to choose which layers are shown.</p>
  </div>
  <div id=graphical-outputs class=section level2>
  <h2>Graphical outputs</h2>
  <p>Several graphical outputs can be generated in <code>archeoViz</code>.</p>
  <ul>
  <li>All the plots generated with <code>plotly</code> include an export function in .png format.</li>
  <li>the excavation map (in the `Excavation timeline` tab) can be downloaded in .svg format with the button below the plot.</li>
  </ul>
  </div>
  <div id=spatial-statistics class=section level2>
  <h2>Spatial statistics</h2>
  <p><code>archeoViz</code> includes some spatial analysis functionalities, intended for basic and exploratory use.</p>
  <div id=regression-surfaces class=section level3>
  <h3>Regression surfaces</h3>
  <p>In the `3D plot` tab, clicking on `Compute surfaces` and `Draw` displays the regression surface associated with each layer (with at least 100 points). The surfaces are computed using the generalized additive model implemented in the <a href=https://CRAN.R-project.org/package=mgcv><code>mgcv</code></a> package.</p>
  </div>
  <div id=convex-hulls class=section level3>
  <h3>Convex hulls</h3>
  <p>In the `3D plot` tab, clicking on `Compute hulls` and `Draw` displays the convex hull associated with each layer (with at least 10 points). The convex hulls are computed using the <a href=https://CRAN.R-project.org/package=cxhull><code>cxhull</code></a> package.</p>
  </div>
  <div id=d-density-kernel class=section level3>
  <h3>2D density kernel</h3>
  <p>In the `plan` tab, ticking the `Compute density` box and clicking on `Draw` generates a map with contour lines showing the points' density. The 2D kernel density is computed with the <code>kde2d</code> function of the <a href=https://CRAN.R-project.org/package=MASS><code>MASS</code></a> package (through <a href=https://CRAN.R-project.org/package=ggplot2><code>ggplot2</code></a>).</p>
  </div>
  </div>
  </div>
  <div id=references class=section level1>
  <h1>References</h1>
  <ul>
  <li>Plutniak, Sébastien. 2022. `archeoViz. A shiny application for the spatial visualisation, exploration, and web communication of field archaeological data`. v0.1, DOI: TODO.</li>
  </ul>
  </div></div>"
    
  
  # guidelines.fr ----
  guidelines.fr <- 
  "<div id=header>
  <h1 class=title toc-ignore>archeoViz</h1>
  </div>
  <p><code>archeoViz</code> is a packaged R Shiny application for the visualisation, exploration, and web communication of archaeological excavation data. It includes interactive 3D and 2D visualisations, can generate cross sections and map of the remains, can run basic spatial analysis methods (convex hull, regression surfaces, 2D kernel density estimation), and display excavation timeline. <code>archeoViz</code> can be used locally or deployed on a server, either with interactive input of data or with a static data set.</p>
  <ul>
  <li><a href=#installation><strong>Installation</strong></a>
  <ul>
  <li><a href=#local-use>Local use</a></li>
  <li><a href=#deployed-use>Deployed use</a></li>
  </ul></li>
  <li><a href=#community-guidelines><strong>Community guidelines</strong></a>
  <ul>
  <li><a href=#reporting-bugs>Reporting bugs</a></li>
  <li><a href=#suggesting-changes>Suggesting changes</a></li>
  </ul></li>
  <li><a href=#use><strong>Use</strong></a>
  <ul>
  <li><a href=#input-data>Input data</a></li>
  <li><a href=#dataset-sub-setting>Data set sub-setting</a></li>
  <li><a href=#interactive-visualisation>Interactive visualisation</a></li>
  <li><a href=#graphical-outputs>Graphical outputs</a></li>
  <li><a href=#spatial-statistics>Spatial statistics</a><br />
  </li>
  </ul></li>
  <li><a href=#references><strong>References</strong></a></li>
  </ul>
  <div id=installation class=section level1>
  <h1>Installation</h1>
  <p><code>archeoViz</code> can be used in two ways:</p>
  <ul>
  <li>locally, on the user's machine</li>
  <li>remotely, after deploying the app on a distant server</li>
  </ul>
  <div id=local-use class=section level2>
  <h2>Local use</h2>
  <p>The package can be installed from GitHub with:</p>
  <pre class=r><code># install.packages(&quot;devtools&quot;)
  devtools::install_github(&quot;sebastien-plutniak/archeoviz&quot;)</code></pre>
  <p>Then, load the package and launch the app with:</p>
  <pre class=r><code>library(archeoViz)
  archeoViz()</code></pre>
  </div>
  <div id=deployed-use class=section level2>
  <h2>Deployed use</h2>
  <p>To deploy <code>archeoViz</code> on your Shiny server, first download and unzip the package:</p>
  <pre class=r><code># set the working directory on your shiny server:
  setwd(dir = &quot;/some/path/&quot;)
  # download the package:
  download.file(url = &quot;https://github.com/sebastien-plutniak/archeoviz/archive/master.zip&quot;,
                destfile = &quot;archeoviz.zip&quot;)
  # unzip it
  unzip(zipfile = &quot;archeoviz.zip&quot;)</code></pre>
  <p>Then, go to <a href=https:// class=uri>https://</a><your-shiny-server>/archeoviz.</p>
  <p>To set the app with your data and preferences, edit the app.R file, located at the root of the directory:</p>
  <pre class=r><code>archeoViz(objects.df = NULL,   # data.frame with data about the objects
            refits.df = NULL,    # optional data.frame for refitting data
            timeline.df = NULL,  # optional data.frame for the excavation timeline
            title = NULL,        # title of the site / data set
            home.text = NULL,    # html content to display on the home page
            set.theme = &quot;cosmo&quot;) # graphic theme for the Shiny interface</code></pre>
  <p>The possible values for the <code>set.theme</code> parameter are illustrated on <a href=https://rstudio.github.io/shinythemes>this page</a>. For an example, see <code>archeoViz</code> deployed on the <a href=https://analytics.huma-num.fr/Sebastien.Plutniak/archeoviz><em>Huma Num</em> Shiny server</a>.</p>
  </div>
  </div>
  <div id=community-guidelines class=section level1>
  <h1>Community guidelines</h1>
  <div id=reporting-bugs class=section level2>
  <h2>Reporting bugs</h2>
  <p>If you encounter a bug, please fill an <a href=https://github.com/sebastien-plutniak/archeoviz/issues>issue</a> with all the details needed to reproduce it.</p>
  </div>
  <div id=suggesting-changes class=section level2>
  <h2>Suggesting changes</h2>
  <p>Suggestions of changes to <code>archeoViz</code> are welcome. These requests may concern additional functions, changes to documentation, additional examples, new features, etc. They can be made by filling an <a href=https://github.com/sebastien-plutniak/archeoviz/issues>issue</a> and, even better, using pull requests and the <a href=https://help.github.com/articles/about-pull-requests>GitHub Fork and Pull model</a>.</p>
  </div>
  </div>
  <div id=use class=section level1>
  <h1>Use</h1>
  <p>Having archaeological remains from a given site, <code>archeoViz</code> is designed to lower the technical barriers to fulfil three objectives:</p>
  <ul>
  <li>basic spatial exploration and generation of simple graphical reports;</li>
  <li>fast pre-publication of archaeological data, intended for the scientific community;</li>
  <li>fast deployment of a display and communication tool intended for a broader audience.</li>
  </ul>
  <p>N.B.: consequently, <code>archeoViz</code> is not intended to replace more sophisticated analysis tools (e.g., GIS, statistical packages, etc.)</p>
  <div id=input-data class=section level2>
  <h2>Input data</h2>
  <p>There are three ways to input data in <code>archeoViz</code>:</p>
  <ol style=list-style-type: decimal>
  <li>uploading tables in the `Input data` tab,</li>
  <li>using randomly generated data from the `Input data` tab;</li>
  <li>set the <code>archeoviz</code> main function's parameters before running the application.</li>
  </ol>
  <div id=tables-upload class=section level3>
  <h3>Tables upload</h3>
  <p>Tables for three types of data can be uploaded from the `Input data` tab:</p>
  <ul>
  <li>an `objects` table (mandatory), with data about the objects;</li>
  <li>a `refits` table (optional), with data about the refitting objects;</li>
  <li>a `timeline` table (optional), with data about when each square of the site was excavated.</li>
  </ul>
  <p>The tables must be .csv files with the first row used containing the columns' labels (the separator can be set). More details about the required formats and columns are provided in the `Input data` tab.</p>
  </div>
  <div id=random-data class=section level3>
  <h3>Random data</h3>
  <p>For demonstration purposes using randomly generated data is made possible. To activate this feature, set the slider in `Input data` to a value higher than 0 (setting the value back to 0 deactivates the feature). Both an `objects` data set and a `timeline` data set are generated, making it possible to test all the <code>archeoViz</code> functionalities.</p>
  </div>
  <div id=function-parameters class=section level3>
  <h3>Function parameters</h3>
  <p><code>archeoViz</code> launch function (<code>archeoViz()</code>) can be run without parameter</p>
  <pre class=r><code>archeoViz()</code></pre>
  <p>or by setting it to input either the `objects` data only or the `objects` and `timeline` data.</p>
  <pre class=r><code>archeoViz(objects.df = NULL,  # data.frame with data about the objects
            timeline.df = NULL) # optional data frame for the excavation timeline</code></pre>
  </div>
  </div>
  <div id=dataset-sub-setting class=section level2>
  <h2>Dataset sub-setting</h2>
  <p>Once data are loaded, a sub-selection of the data set can be done in the left side menu. Several parameters are possible: the type of location recording and the category of the objects.</p>
  <div id=location-mode class=section level3>
  <h3>Location mode</h3>
  <p>The location of archaeological objects can be recorded in different ways, depending on the precision of the data: as points (xyz coordinates), on lines, plans, or within a volume (ranges of x, y, and z values). In <code>archeoViz</code>, a distinction is made between exact locations (points) and the other types of fuzzy location methods (lines, plans, volumes). The radio buttons allow selecting these options.</p>
  </div>
  <div id=objects-category class=section level3>
  <h3>Objects category</h3>
  <p>Sub-sets can be defined by object categories, using the `variable` and `values` fields. Once one of the `object_type` (or other possible `object_` variables) is selected, its values appear below and can be selected using the tick boxes. The selection must be validated by clicking on the `Validate` button. This selection determines the data that will be displayed in the plots and tables.</p>
  </div>
  <div id=layer-selection class=section level3>
  <h3>Layer selection</h3>
  <p>Layer selection is made using the legend in the <code>plotly</code> plots (see below).</p>
  </div>
  <div id=object-selection class=section level3>
  <h3>Object selection</h3>
  <p>In the `3D plot` tab, clicking on a point displays information about that point in the table below the plot.</p>
  </div>
  </div>
  <div id=interactive-visualisation class=section level2>
  <h2>Interactive visualisation</h2>
  <p>The plots in the `3D plot`, `Map`, `Section X`, and `Section Y` tabs are generated using the <a href=https://CRAN.R-project.org/package=plotly><code>plotly</code></a> library. All the plots are dynamic and include a menu bar above the plot with several options (generating an image file, zooming, moving the view, etc). See details on the <a href=https://plotly.com/chart-studio-help/getting-to-know-the-plotly-modebar>plotly website</a>.</p>
  <p>Clicking on a legend's item modifies the display:</p>
  <ul>
  <li>a simple click on an item activates/deactivates its display;</li>
  <li>a double click on an item displays this item only (another double click cancels it)</li>
  </ul>
  <p>This feature makes it possible to choose which layers are shown.</p>
  </div>
  <div id=graphical-outputs class=section level2>
  <h2>Graphical outputs</h2>
  <p>Several graphical outputs can be generated in <code>archeoViz</code>.</p>
  <ul>
  <li>All the plots generated with <code>plotly</code> include an export function in .png format.</li>
  <li>the excavation map (in the `Excavation timeline` tab) can be downloaded in .svg format with the button below the plot.</li>
  </ul>
  </div>
  <div id=spatial-statistics class=section level2>
  <h2>Spatial statistics</h2>
  <p><code>archeoViz</code> includes some spatial analysis functionalities, intended for basic and exploratory use.</p>
  <div id=regression-surfaces class=section level3>
  <h3>Regression surfaces</h3>
  <p>In the `3D plot` tab, clicking on `Compute surfaces` and `Draw` displays the regression surface associated with each layer (with at least 100 points). The surfaces are computed using the generalized additive model implemented in the <a href=https://CRAN.R-project.org/package=mgcv><code>mgcv</code></a> package.</p>
  </div>
  <div id=convex-hulls class=section level3>
  <h3>Convex hulls</h3>
  <p>In the `3D plot` tab, clicking on `Compute hulls` and `Draw` displays the convex hull associated with each layer (with at least 10 points). The convex hulls are computed using the <a href=https://CRAN.R-project.org/package=cxhull><code>cxhull</code></a> package.</p>
  </div>
  <div id=d-density-kernel class=section level3>
  <h3>2D density kernel</h3>
  <p>In the `plan` tab, ticking the `Compute density` box and clicking on `Draw` generates a map with contour lines showing the points' density. The 2D kernel density is computed with the <code>kde2d</code> function of the <a href=https://CRAN.R-project.org/package=MASS><code>MASS</code></a> package (through <a href=https://CRAN.R-project.org/package=ggplot2><code>ggplot2</code></a>).</p>
  </div>
  </div>
  </div>
  <div id=references class=section level1>
  <h1>References</h1>
  <ul>
  <li>Plutniak, Sébastien. 2022. `archeoViz. A shiny application for the spatial visualisation, exploration, and web communication of field archaeological data`. v0.1, DOI: TODO.</li>
  </ul>
  </div></div>"
  
  # LIST FR ----
  fr <- list(
             welcome = welcome.fr,
             tab.home = "Accueil",
             tab.input = "Données",
             tab.plot3d ="Vue 3D",
             tab.map = "Plan",
             tab.tables = "Tableaux",
             tab.timeline = "Chronologie",
             tab.guidelines = "Aide",
             location = "Mode de localisation :",
             values = "Valeurs :",
             header.objects.table = "Tableau des objets",
             header.refits.table = "Tableau des remontages",
             header.timeline.table = "Tableau de la chronologie",
             choose.csv = "Sélectionnez un fichier csv",
             input.objects = input.objects.fr,
             input.refits = input.refits.fr,
             input.timeline = input.timeline.fr,
             guidelines = guidelines.fr,
             separator = "Séparateur",
             use.demo = "Employer des données simulées avec n objets:",
             surfaces = "Calculer les surfaces",
             hulls = "Calculer les enveloppes",
             refits = "Montrer les remontages",
             point.size = "Taille des points",
             ratio = "Ratio vertical",
             density = "Calculer la densité",
             density.no = "Aucune",
             density.all.layers = "Toutes les couches",
             density.by.layer = "Par couche",
             tab.variable.loc = "Nombre d'objets par variable et mode de localisation",
             tab.layer.loc = "Nombre d'objets par couches et mode de localisation",
             exact = "Exacte",
             fuzzy = "Vague",
             exact.fuzzy = "Exacte & vague",
             click.on.point = "Cliquez sur un point pour afficher ses information.",
             notif.objects.ok = "Fichier des objets ok!",
             notif.objects.not.ok = "Erreur. Certains champs requis sont absents, vérifiez le fichier s.v.p."
             )
 
  # LIST EN ----
   en <- list(
     welcome = welcome.en,
     tab.home = "Home",
     tab.input = "Input data",
     tab.plot3d ="3D plot",
     tab.map = "Map",
     tab.tables = "Tables",
     tab.timeline = "Timeline",
     tab.guidelines = "Guidelines",
     location = "Location method:",
     values = "Values:",
     header.objects.table = "Objects table",
     header.refits.table = "Refits table",
     header.timeline.table = "Timeline table",
     choose.csv = "Choose a csv file",
     input.objects = input.objects.en,
     input.refits = input.refits.en,
     input.timeline = input.timeline.en,
     guidelines = guidelines.en,
     separator = "Separator",
     use.demo = "Use demonstration data with n objects:",
     surfaces = "Compute surfaces",
     hulls = "Compute hulls",
     refits = "Show refits",
     point.size = "Point size",
     ratio = "Vertical ratio",
     density = "Compute density",
     density.no = "No",
     density.all.layers = "All layers",
     density.by.layer = "By layer",
     tab.variable.loc = "Remains by variable and location method",
     tab.layer.loc = "Remains by layer and location method",
     exact = "Exact",
     fuzzy = "Fuzzy",
     exact.fuzzy = "Exact & Fuzzy",
     click.on.point = "Click on a point to get more information.",
     notif.objects.ok = "Objects file ok!",
     notif.objects.not.ok = "Error. Some of the mandatory fields are absent. Please check the file."
   )
  # switch
  if(length(grep("en", lang, ignore.case = T)) == 1){
    ui.terms <- en
  }
   if(length(grep("fr", lang, ignore.case = T)) == 1){
    ui.terms <- fr
  }
  
  ui.terms
}


