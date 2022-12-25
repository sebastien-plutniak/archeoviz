
.load_interface_terms <- function(lang){
  # welcome.fr ----
  welcome.fr <- "<h1>Bienvenue dans <i>archeoViz</i> !</h1>
                <p><i>archeoViz</i> est une application d\\u00e9di\\u00e9e \\u00e0 l'arch\\u00e9ologie.
                Elle permet de <b>visualiser</b>, d'<b>explorer</b> interactivement, et  
                d'exposer et <b>communiquer</b> rapidement  sur le web des donn\\u00e9es 
                arch\\u00e9ologiques de terrain.
                </p>
                <p>
                Elle propose des <b>visualisations</b> en 3D et 2D,
                g\\u00e9n\\u00e8re des <b>coupes</b> et des <b>cartes</b> des restes arch\\u00e9ologiques,
                permet de r\\u00e9aliser des <b>statistiques spatiales</b> simples
                (enveloppes convexes, surfaces de r\\u00e9gression, estimation de densit\\u00e9 par noyau en 2D), 
                et de visualiser une <b>chronologie</b> interactive des fouilles d'un site.
                </p>
                <p>
                Distribu\\u00e9e sous la forme d'un package R, 
                <i>archeoViz</i> peut \\u00eatre utilis\\u00e9e localement ou d\\u00e9ploy\\u00e9e sur un serveur,
                soit en laissant la possibilit\\u00e9 de charger des donn\\u00e9es via l'interface ou en 
                ex\\u00e9cutant l'application avec un jeu de donn\\u00e9e sp\\u00e9cifique.
                L'interface est disponible en anglais et en fran\\u00e7ais.
                </p>
                Le code source est libre et publi\\u00e9 sur le 
                <a href=https://github.com/sebastien-plutniak/archeoviz>d\\u00e9p\\u00f4t github</a>."
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
  
  # Input objects fr ----
  
  input.objects.fr <- 
    "<p>
    Un tableau au format csv est requis. Chaque ligne d\\u00e9crit un objet, comportant les champs obligatoires suivants :
    <ul>
    <li> <b>id</b> : <i>valeur alphanum\\u00e9rique</i>, identifiant unique de l'objet </li>
    <li> <b>square_x</b> : <i>valeur alphanum\\u00e9rique</i>, identifiant du carr\\u00e9 de l'objet en axe X</li>
    <li> <b>square_y</b> : <i>valeur alphanum\\u00e9rique</i>, identifiant du carr\\u00e9 de l'objet en axe Y</li>
    <li> <b>xmin</b> : <i>valeur num\\u00e9rique</i>, coordonn\\u00e9e en centim\\u00e8tre de l'objet en axe X</li>
    <li> <b>ymin</b> : <i>valeur num\\u00e9rique</i>, coordonn\\u00e9e en centim\\u00e8tre de l'objet en axe Y</li>
    <li> <b>zmin</b> : <i>valeur num\\u00e9rique</i>, coordonn\\u00e9e en centim\\u00e8tre de l'objet en axe Z (profondeur)</li>
    <li> <b>layer</b> : <i>valeur alphanum\\u00e9rique</i>, identifiant de la couche de l'objet</li>
    <li> <b>object_type</b> : <i>valeur alphanum\\u00e9rique</i>, cat\\u00e9gorie de l'objet</li>
    </ul>
    De plus, des champs optionnels sont possibles, dont:
    <ul>
      <li> <b>year</b> : <i>valeur num\\u00e9rique</i>, ann\\u00e9e de fouille de l'object</li>
      <li> <b>xmax</b> : <i>valeur num\\u00e9rique</i>, lorsque la localisation de l'objet en X est comprise dans un intervalle de coordonn\\u00e9es</li>
      <li> <b>ymax</b> : <i>valeur num\\u00e9rique</i>, lorsque la localisation de l'objet en Y est comprise dans un intervalle de coordonn\\u00e9es</li>
      <li> <b>zmax</b> : <i>valeur num\\u00e9rique</i>, lorsque la localisation de l'objet en Z est comprise dans un intervalle de coordonn\\u00e9es</li>
      <li> <b>object<i>_edit</i></b> : nombre non limit\\u00e9 de variables additionnelles  d\\u00e9crivant l'objet (les noms de colonnes doivent commencer par \\u201cobject_\\u201d et avoir des suffixes diff\\u00e9rents</li>
    </ul>
    </p>"
  
  # Input objects en ----
  input.objects.en <- 
    "<p>
    A data table is required (csv format). A row describes a single object with the following mandatory fields:
    <ul>
    <li> <b>id</b>: <i>alphanumerical value</i>, unique identifier of the object </li>
    <li> <b>square_x</b>: <i>alphanumerical value</i>, identifier of the square on the X axis</li>
    <li> <b>square_y</b>: <i>alphanumerical value</i>, identifier of the square on the Y axis</li>
    <li> <b>xmin</b>: <i>numerical value</i>, coordinate in centimeter of the object on the X axis</li>
    <li> <b>ymin</b>: <i>numerical value</i>, coordinate in centimeter of the object on the Y axis</li>
    <li> <b>zmin</b>: <i>numerical value</i>, coordinate in centimeter of the object on the Z axis (depth)</li>
    <li> <b>layer</b>: <i>alphanumerical value</i>, identifier of the object's layer</li>
    <li> <b>object_type</b>: <i>alphanumerical value</i>, category of the object</li>
    </ul>
    In addition, optional fields are possible, including:
    <ul>
      <li> <b>year</b> : <i>numerical value</i>, year when the object was excavated</li>
      <li> <b>xmax</b>: <i>numerical value</i>, when the X location of the object is included in a range of X coordinates</li>
      <li> <b>ymax</b>: <i>numerical value</i>, when the Y location of the object is included in a range of Y coordinates</li>
      <li> <b>zmax</b>: <i>numerical value</i>, when the Z location of the object is included in a range of Z coordinates</li>
      <li> <b>object<i>_edit</i></b>: unlimited number of additional variable describing the object (field names must start with `object_` and have different suffixes)</li>
    </ul>
    </p>"  
  
  
  # Input refits ----
  input.refits.fr <- 
    "<p>
    Un tableau \\u00e0 deux colonnes peut \\u00eatre charg\\u00e9 pour les remontages entre objets (format csv).
    Chaque ligne doit contenir les identifiants uniques des deux objets li\\u00e9s \\u00e0 une relation de remontage (en correspondance avec les valeurs de la colonne `id` du tableau des objets).
  </p>"
  
  input.refits.en <- 
    "<p>
    A data table with two columns can be uploaded for refitting data (csv format).
  Each row must contain the unique identifiers of two refitting objects (corresponding to the values of the `id` column in the objects table).
  </p>"
  
  # Input timeline ----
  
  input.timeline.fr <- 
    "<p>
    Optionnellement, un tableau (csv) peut \\u00eatre charg\\u00e9  \\u00e0 propos du d\\u00e9roul\\u00e9 de la fouille.
    Chaque ligne est relative \\u00e0 un carr\\u00e9 de fouille et comporte les informations suivantes: 
    <ul>
    <li> <b>year</b> : <i>valeur num\\u00e9rique</i>, ann\\u00e9e de fouille</li>
    <li> <b>square_x</b> : <i>valeur alphanum\\u00e9rique</i>, identifiant du carr\\u00e9 en axe X</li>
    <li> <b>square_y</b> : <i>valeur alphanum\\u00e9rique</i>, identifiant du carr\\u00e9 en axe Y</li>
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
  guidelines.en <- "
<h1 id=archeoviz>archeoViz</h1>
<p><code>archeoViz</code> is a packaged R Shiny application for the visualisation, exploration, and web communication of archaeological excavation data. It includes interactive 3D and 2D visualisations, can generate cross sections and map of the remains, can run basic spatial statistics methods (convex hull, regression surfaces, 2D kernel density estimation), and display an interactive timeline of an excavation. <code>archeoViz</code> can be used locally or deployed on a server, either by allowing the user to load data through the interface or by running the app with a specific data set. The interface is available in English and in French.</p>
<ul>
<li><a href=#installation><strong>Installation</strong></a>
<ul>
<li><a href=#local-use>Local use</a></li>
<li><a href=#deployed-use>Deployed use</a></li>
<li><a href=#demonstration>Demonstration</a></li>
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
<li><a href=#spatial-statistics>Spatial statistics</a></li>
</ul></li>
<li><a href=#references><strong>References</strong></a></li>
</ul>
<h1 id=installation>Installation</h1>
<p><code>archeoViz</code> can be used in two ways:</p>
<ul>
<li>locally, on the user\\u2019s machine</li>
<li>remotely, after deploying the app on a distant server</li>
</ul>
<h2 id=local-use>Local use</h2>
<p>The package can be installed from GitHub with:</p>
<div class=sourceCode id=cb1><pre class=sourceCode r><code class=sourceCode r><a class=sourceLine id=cb1-1 data-line-number=1><span class=co># install.packages(&quot;devtools&quot;)</span></a>
<a class=sourceLine id=cb1-2 data-line-number=2>devtools<span class=op>::</span><span class=kw>install_github</span>(<span class=st>&quot;sebastien-plutniak/archeoviz&quot;</span>)</a></code></pre></div>
<p>Then, load the package and launch the app with:</p>
<div class=sourceCode id=cb2><pre class=sourceCode r><code class=sourceCode r><a class=sourceLine id=cb2-1 data-line-number=1><span class=kw>library</span>(archeoViz)</a>
<a class=sourceLine id=cb2-2 data-line-number=2><span class=kw>archeoViz</span>()</a></code></pre></div>
<h2 id=deployed-use>Deployed use</h2>
<p>To deploy <code>archeoViz</code> on your Shiny server, first download and unzip the package:</p>
<div class=sourceCode id=cb3><pre class=sourceCode r><code class=sourceCode r><a class=sourceLine id=cb3-1 data-line-number=1><span class=co># set the working directory on your shiny server:</span></a>
<a class=sourceLine id=cb3-2 data-line-number=2><span class=kw>setwd</span>(<span class=dt>dir =</span> <span class=st>&quot;/some/path/&quot;</span>)</a>
<a class=sourceLine id=cb3-3 data-line-number=3><span class=co># download the package:</span></a>
<a class=sourceLine id=cb3-4 data-line-number=4><span class=kw>download.file</span>(</a>
<a class=sourceLine id=cb3-5 data-line-number=5>  <span class=dt>url =</span> <span class=st>&quot;https://github.com/sebastien-plutniak/archeoviz/archive/master.zip&quot;</span>,</a>
<a class=sourceLine id=cb3-6 data-line-number=6>  <span class=dt>destfile =</span> <span class=st>&quot;archeoviz.zip&quot;</span>)</a>
<a class=sourceLine id=cb3-7 data-line-number=7><span class=co># unzip it:</span></a>
<a class=sourceLine id=cb3-8 data-line-number=8><span class=kw>unzip</span>(<span class=dt>zipfile =</span> <span class=st>&quot;archeoviz.zip&quot;</span>)</a></code></pre></div>
<p>Then, go to <code>https://&lt;your-shiny-server&gt;/archeoviz-main</code>.</p>
<p>To set the app with your data and preferences, edit the app.R file, located at the root of the directory:</p>
<div class=sourceCode id=cb4><pre class=sourceCode r><code class=sourceCode r><a class=sourceLine id=cb4-1 data-line-number=1><span class=kw>archeoViz</span>(<span class=dt>objects.df =</span> <span class=ot>NULL</span>,   <span class=co># data.frame with data about the objects</span></a>
<a class=sourceLine id=cb4-2 data-line-number=2>          <span class=dt>refits.df =</span> <span class=ot>NULL</span>,    <span class=co># optional data.frame for refitting data</span></a>
<a class=sourceLine id=cb4-3 data-line-number=3>          <span class=dt>timeline.df =</span> <span class=ot>NULL</span>,  <span class=co># optional data.frame for the excavation timeline</span></a>
<a class=sourceLine id=cb4-4 data-line-number=4>          <span class=dt>title =</span> <span class=ot>NULL</span>,        <span class=co># title of the site / data set</span></a>
<a class=sourceLine id=cb4-5 data-line-number=5>          <span class=dt>home.text =</span> <span class=ot>NULL</span>,    <span class=co># html content to display on the home page</span></a>
<a class=sourceLine id=cb4-6 data-line-number=6>          <span class=dt>lang =</span> <span class=st>&quot;en&quot;</span>          <span class=co># interface language (English or French)</span></a>
<a class=sourceLine id=cb4-7 data-line-number=7>          <span class=dt>set.theme =</span> <span class=st>&quot;cosmo&quot;</span>) <span class=co># graphic theme for the Shiny interface</span></a></code></pre></div>
<p>The possible values for the <code>set.theme</code> parameter are illustrated on <a href=https://rstudio.github.io/shinythemes/>this page</a>. The language of the application can be set with the <code>lang</code> parameter, either with an \\u201cen\\u201d/\\u201cEnglish\\u201d or \\u201cfr\\u201d/\\u201cFrench\\u201d value.</p>
<h2 id=demonstration>Demonstration</h2>
<p>Demonstration instances of the application are deployed on the <em>Huma Num</em> Shiny server:</p>
<ul>
<li><a href=https://analytics.huma-num.fr/Sebastien.Plutniak/archeoviz>archeoViz in English</a>.</li>
<li><a href=https://analytics.huma-num.fr/Sebastien.Plutniak/archeoviz-fr>archeoViz in French</a>.</li>
</ul>
<p>For a real case use, see the example of the prehistoric <a href=https://analytics.huma-num.fr/Sebastien.Plutniak/poeymau/>Poeyma\\u00fc cave</a> in the Pyrenees (note that this application is a modified version of <code>archeoViz</code>).</p>
<h1 id=community-guidelines>Community guidelines</h1>
<h2 id=reporting-bugs>Reporting bugs</h2>
<p>If you encounter a bug, please fill an <a href=https://github.com/sebastien-plutniak/archeoviz/issues>issue</a> with all the details needed to reproduce it.</p>
<h2 id=suggesting-changes>Suggesting changes</h2>
<p>Suggestions of changes to <code>archeoViz</code> are welcome. These requests may concern additional functions, changes to documentation, additional examples, new features, etc. They can be made by filling an <a href=https://github.com/sebastien-plutniak/archeoviz/issues>issue</a> and, even better, using pull requests and the <a href=https://docs.github.com/articles/about-pull-requests>GitHub Fork and Pull model</a>.</p>
<h1 id=use>Use</h1>
<p>Having archaeological remains from a given site, <code>archeoViz</code> is designed to lower the technical barriers to fulfil three objectives:</p>
<ul>
<li>basic spatial exploration and generation of simple graphical reports;</li>
<li>fast pre-publication of archaeological data, intended for the scientific community;</li>
<li>fast deployment of a display and communication tool intended for a broader audience.</li>
</ul>
<p>N.B.: consequently, <code>archeoViz</code> is not intended to replace more sophisticated analysis tools (e.g., GIS, statistical packages, etc.)</p>
<h2 id=input-data>Input data</h2>
<p>There are three ways to input data in <code>archeoViz</code>:</p>
<ol>
<li>uploading tables in the \\u201cInput data\\u201d tab,</li>
<li>using randomly generated data from the \\u201cInput data\\u201d tab;</li>
<li>set the <code>archeoViz</code> main function\\u2019s parameters before running the application.</li>
</ol>
<h3 id=tables-upload>Tables upload</h3>
<p>Tables for three types of data can be uploaded from the \\u201cInput data\\u201d tab:</p>
<ul>
<li>an \\u201cobjects\\u201d table (mandatory), with data about the objects;</li>
<li>a \\u201crefits\\u201d table (optional), with data about the refitting objects;</li>
<li>a \\u201ctimeline\\u201d table (optional), with data about when each square of the site was excavated.</li>
</ul>
<p>The tables must be .csv files with the first row used containing the columns\\u2019 labels (the separator can be set). More details about the required formats and columns are provided in the \\u201cInput data\\u201d tab.</p>
<h3 id=random-data>Random data</h3>
<p>For demonstration purposes using randomly generated data is made possible. To activate this feature, set the slider in \\u201cInput data\\u201d to a value higher than 0 (setting the value back to 0 deactivates the feature). An \\u201cobjects\\u201d data set, a \\u201crefits\\u201d data set, and a \\u201ctimeline\\u201d data set are generated, making it possible to test all the <code>archeoViz</code> functionalities.</p>
<h3 id=function-parameters>Function parameters</h3>
<p><code>archeoViz</code>\\u2019s launching function (<code>archeoViz()</code>) can be run without parameter</p>
<div class=sourceCode id=cb5><pre class=sourceCode r><code class=sourceCode r><a class=sourceLine id=cb5-1 data-line-number=1><span class=kw>archeoViz</span>()</a></code></pre></div>
<p>or by using the <code>objects.df</code>, <code>refits.df</code>, or <code>timeline.df</code> parameters to input data.frames about the archaeological objects, refitting relationships between these objects, and the chronology of the excavation, respectively.</p>
<div class=sourceCode id=cb6><pre class=sourceCode r><code class=sourceCode r><a class=sourceLine id=cb6-1 data-line-number=1><span class=kw>archeoViz</span>(<span class=dt>objects.df =</span> <span class=ot>NULL</span>,  <span class=co># data.frame with data about the objects</span></a>
<a class=sourceLine id=cb6-2 data-line-number=2>          <span class=dt>refits.df =</span> <span class=ot>NULL</span>,   <span class=co># data.frame for refitting objects</span></a>
<a class=sourceLine id=cb6-3 data-line-number=3>          <span class=dt>timeline.df =</span> <span class=ot>NULL</span>) <span class=co># optional data.frame for the excavation timeline</span></a></code></pre></div>
<h2 id=dataset-sub-setting>Dataset sub-setting</h2>
<p>Once data are loaded, a sub-selection of the data set can be done in the left side menu. Several parameters are possible: the type of location recording and the category of the objects.</p>
<h3 id=location-mode>Location mode</h3>
<p>The location of archaeological objects can be recorded in different ways, depending on the precision of the data: as points (xyz coordinates), on lines, plans, or within a volume (ranges of x, y, and z values). In <code>archeoViz</code>, a distinction is made between exact locations (points) and the other types of fuzzy location methods (lines, plans, volumes). The radio buttons allow selecting these options.</p>
<h3 id=objects-category>Objects category</h3>
<p>Sub-sets can be defined by object categories, using the \\u201cvariable\\u201d and \\u201cvalues\\u201d fields. Once one of the \\u201cobject_type\\u201d (or other possible \\u201cobject_\\u201d variables) is selected, its values appear below and can be selected using the tick boxes. The selection must be validated by clicking on the \\u201cValidate\\u201d button. This selection determines the data that will be displayed in the plots and tables.</p>
<h3 id=object-selection>Object selection</h3>
<p>In the \\u201c3D plot\\u201d tab, clicking on a point displays information about that point in the table below the plot.</p>
<h2 id=interactive-visualisation>Interactive visualisation</h2>
<p>The plots in the \\u201c3D plot\\u201d, \\u201cMap\\u201d, \\u201cSection X\\u201d, and \\u201cSection Y\\u201d tabs are generated using the <a href=https://CRAN.R-project.org/package=plotly><code>plotly</code></a> library. All the plots are dynamic and include a menu bar above the plot with several options (generating an image file, zooming, moving the view, etc). See details on the <a href=http://plotly.github.io/getting-to-know-the-plotly-modebar/>plotly website</a>.</p>
<p>Clicking on a legend\\u2019s item modifies the display:</p>
<ul>
<li>a simple click on an item activates/deactivates its display;</li>
<li>a double click on an item displays this item only (another double click cancels it)</li>
</ul>
<p>This feature makes it possible to choose which layers are shown.</p>
<h2 id=graphical-outputs>Graphical outputs</h2>
<p>Several graphical outputs can be generated in <code>archeoViz</code>.</p>
<ul>
<li>All the plots generated with <code>plotly</code> include an export function in .svg format.</li>
<li>the excavation map (in the \\u201cExcavation timeline\\u201d tab) can be downloaded in .svg format with the button below the plot.</li>
</ul>
<h2 id=spatial-statistics>Spatial statistics</h2>
<p><code>archeoViz</code> includes some spatial analysis functionalities, intended for basic and exploratory use.</p>
<h3 id=regression-surfaces>Regression surfaces</h3>
<p>In the \\u201c3D plot\\u201d tab, clicking on \\u201cCompute surfaces\\u201d and \\u201cValidate\\u201d displays the regression surface associated with each layer (with at least 100 points). The surfaces are computed using the generalized additive model implemented in the <a href=https://CRAN.R-project.org/package=mgcv><code>mgcv</code></a> package.</p>
<h3 id=convex-hulls>Convex hulls</h3>
<p>In the \\u201c3D plot\\u201d tab, clicking on \\u201cCompute hulls\\u201d and \\u201cValidate\\u201d displays the convex hull associated with each layer (with at least 10 points). The convex hulls are computed using the <a href=https://CRAN.R-project.org/package=cxhull><code>cxhull</code></a> package.</p>
<h3 id=2d-density-kernel>2D density kernel</h3>
<p>In the \\u201cMap\\u201d tab, ticking the \\u201cCompute density\\u201d box and clicking on \\u201cValidate\\u201d generates a map with contour lines showing the points\\u2019 density. The 2D kernel density is computed with the <code>kde2d</code> function of the <a href=https://CRAN.R-project.org/package=MASS><code>MASS</code></a> package (through <a href=https://CRAN.R-project.org/package=ggplot2><code>ggplot2</code></a>).</p>
<h1 id=references>References</h1>
<ul>
<li>Plutniak, S\\u00e9bastien. 2022. \\u201carcheoViz. Visualisation, Exploration, and Web Communication of Archaeological Excavation Data\\u201d. v0.1, DOI: <a href=https://doi.org/10.5281/zenodo.7460193>10.5281/zenodo.7460193</a>.</li>
</ul>
  "
  
  
  # guidelines.fr ----
  guidelines.fr <- "
<h1 class=title toc-ignore>archeoViz</h1>
<p><code>archeoViz</code> est une application d\\u00e9di\\u00e9e \\u00e0 l\\u2019arch\\u00e9ologie. Elle permet de <em>visualiser</em>, d\\u2019<em>explorer</em> interactivement, et d\\u2019exposer et <em>communiquer</em> rapidement sur le web des donn\\u00e9es arch\\u00e9ologiques de terrain. Elle propose des <em>visualisations</em> en 3D et 2D, g\\u00e9n\\u00e8re des <em>coupes</em> et des <em>cartes</em> des restes arch\\u00e9ologiques, permet de r\\u00e9aliser des <em>statistiques spatiales</em> simples (enveloppes convexes, surfaces de r\\u00e9gression, estimation de densit\\u00e9 par noyau en 2D), et de visualiser une <em>chronologie</em> interactive des fouilles d\\u2019un site. <code>archeoViz</code> peut \\u00eatre utilis\\u00e9e localement ou d\\u00e9ploy\\u00e9e sur un serveur, soit en laissant la possibilit\\u00e9 de charger des donn\\u00e9es via l\\u2019interface ou en ex\\u00e9cutant l\\u2019application avec un jeu de donn\\u00e9e sp\\u00e9cifique. L\\u2019interface est disponible en anglais et en fran\\u00e7ais.</p>
<ul>
<li><a href=#installation><strong>Installation</strong></a>
<ul>
<li><a href=#locale>Locale</a></li>
<li><a href=#d\\u00e9ploy\\u00e9e>D\\u00e9ploy\\u00e9e</a></li>
<li><a href=#d\\u00e9monstration>D\\u00e9monstration</a></li>
</ul></li>
<li><a href=#recommandations-communautaires><strong>Recommandations communautaires</strong></a>
<ul>
<li><a href=#signaler-un-bug>Signaler un bug</a></li>
<li><a href=#soumettre-une-modification>Soumettre une modification</a></li>
</ul></li>
<li><a href=#utilisation><strong>Utilisation</strong></a>
<ul>
<li><a href=#donn\\u00e9es>Donn\\u00e9es</a></li>
<li><a href=#sous-s\\u00e9lection-de-donn\\u00e9es>Sous-s\\u00e9lection de donn\\u00e9es</a></li>
<li><a href=#visualisations-interactives>Visualisations interactives</a></li>
<li><a href=#sorties-graphiques>Sorties graphiques</a></li>
<li><a href=#statistiques-spatiales>Statistiques spatiales</a><br />
</li>
</ul></li>
<li><a href=#r\\u00e9f\\u00e9rences><strong>R\\u00e9f\\u00e9rences</strong></a></li>
</ul>
<div id=installation class=section level1>
<h1>Installation</h1>
<p><code>archeoViz</code> peut \\u00eatre employ\\u00e9e de deux mani\\u00e8res:</p>
<ul>
<li>localement, sur la machine de l\\u2019utilisateur</li>
<li>\\u00e0 distance, apr\\u00e8s d\\u00e9ploiement sur un serveur distant</li>
</ul>
<div id=locale class=section level2>
<h2>Locale</h2>
<p>Le package peut \\u00eatre install\\u00e9 depuis GitHub avec:</p>
<pre class=r><code># install.packages(&quot;devtools&quot;)
devtools::install_github(&quot;sebastien-plutniak/archeoviz&quot;)</code></pre>
<p>Puis, chargez le package et lancez l\\u2019application avec:</p>
<pre class=r><code>library(archeoViz)
archeoViz()</code></pre>
</div>
<div id=d\\u00e9ploy\\u00e9e class=section level2>
<h2>D\\u00e9ploy\\u00e9e</h2>
<p>Pour d\\u00e9ployer <code>archeoViz</code> sur votre Shiny server, t\\u00e9l\\u00e9chargez premi\\u00e8rement le package:</p>
<pre class=r><code># d\\u00e9terminez le r\\u00e9pertoire de travail dans votre shiny server:
setwd(dir = &quot;/some/path/&quot;)
# t\\u00e9l\\u00e9chargez le package:
download.file(url = &quot;https://github.com/sebastien-plutniak/archeoviz/archive/master.zip&quot;,
              destfile = &quot;archeoviz.zip&quot;)
# d\\u00e9compression:
unzip(zipfile = &quot;archeoviz.zip&quot;)</code></pre>
<p>Puis, rendez-vous \\u00e0 <code>https://&lt;your-shiny-server&gt;/archeoviz-main</code>.</p>
<p>Pour param\\u00e9trer l\\u2019application avec vos donn\\u00e9es et pr\\u00e9f\\u00e9rences, \\u00e9ditez le fichier app.R situ\\u00e9 \\u00e0 la racine du r\\u00e9pertoire de l\\u2019application:</p>
<pre class=r><code>archeoViz(objects.df = NULL,   # data.frame pour les objets
          refits.df = NULL,    # data.frame optionnel pour les remontages
          timeline.df = NULL,  # data.frame optionnel pour la chronologie des fouilles
          title = NULL,        # titre du site / du jeu de donn\\u00e9es
          home.text = NULL,    # contenu html \\u00e0 afficher sur la page d'accueil
          lang = &quot;fr&quot;          # langue de l'interface (&quot;English&quot; ou &quot;French&quot;)
          set.theme = &quot;cosmo&quot;) # th\\u00e8me graphique de l'interface Shiny</code></pre>
<p>Les valeurs possibles pour le param\\u00e8tre <code>set.theme</code> sont illustr\\u00e9es sur <a href=https://rstudio.github.io/shinythemes/>cette page</a>. La langue de l\\u2019application peut \\u00eatre d\\u00e9finie avec le param\\u00e8tre <code>lang</code>, qui accepte les valeurs \\u201cen\\u201d/\\u201cEnglish\\u201d ou \\u201cfr\\u201d/\\u201cFrench\\u201d.</p>
</div>
<div id=d\\u00e9monstration class=section level2>
<h2>D\\u00e9monstration</h2>
<p>Des instances de d\\u00e9monstration de l\\u2019application sont d\\u00e9ploy\\u00e9es sur le Shiny server d\\u2019<em>Huma Num</em>:</p>
<ul>
<li><a href=https://analytics.huma-num.fr/Sebastien.Plutniak/archeoviz-fr><code>archeoViz</code> en Fran\\u00e7ais</a>.</li>
<li><a href=https://analytics.huma-num.fr/Sebastien.Plutniak/archeoviz><code>archeoViz</code> en Anglais</a>.</li>
</ul>
<p>Pour un cas d\\u2019emploi r\\u00e9el, voir l\\u2019exemple de la grotte pr\\u00e9historique du <a href=https://analytics.huma-num.fr/Sebastien.Plutniak/poeymau/>Poeyma\\u00fc</a> dans les Pyr\\u00e9n\\u00e9es (N.B. il s\\u2019agit dans ce cas d\\u2019une version modifi\\u00e9e de l\\u2019application <code>archeoViz</code>).</p>
</div>
</div>
<div id=recommandations-communautaires class=section level1>
<h1>Recommandations communautaires</h1>
<div id=signaler-un-bug class=section level2>
<h2>Signaler un bug</h2>
<p>Si vous rencontrez un bug, ouvrez une <a href=https://github.com/sebastien-plutniak/archeoviz/issues>issue</a> en indiquant tous les d\\u00e9tails n\\u00e9cessaires pour le reproduire.</p>
</div>
<div id=sugg\\u00e9rer-un-changement class=section level2>
<h2>Sugg\\u00e9rer un changement</h2>
<p>Les suggestions de modifications sont bienvenues. Les demandes peuvent concerner des fonctions additionnelles, des modifications dans la documentation, des exemples additionnels, de nouvelles fonctionnalit\\u00e9s, etc. Elles peuvent \\u00eatre faite en ouvrant une <a href=https://github.com/sebastien-plutniak/archeoviz/issues>issue</a> ou, mieux encore, en employant une <em>pull requests</em> et le mod\\u00e8le GitHub <a href=https://docs.github.com/articles/about-pull-requests>Fork and Pull</a>.</p>
</div>
</div>
<div id=utilisation class=section level1>
<h1>Utilisation</h1>
<p>Consid\\u00e9rant les restes arch\\u00e9ologiques d\\u2019un site donn\\u00e9, <code>archeoViz</code> est con\\u00e7u pour r\\u00e9duire les freins techniques \\u00e0 la r\\u00e9alisation de trois objectifs:</p>
<ul>
<li>l\\u2019exploration spatiale basique et la production de documents graphiques analytiques;</li>
<li>la pr\\u00e9-publication rapide de donn\\u00e9es arch\\u00e9ologiques, \\u00e0 destination de la communaut\\u00e9 scientifique;</li>
<li>le d\\u00e9ploiement ais\\u00e9 d\\u2019un outil d\\u2019exposition et de communication, \\u00e0 destination d\\u2019un plus large public.</li>
</ul>
<p>N.B.: par cons\\u00e9quent, <code>archeoViz</code> n\\u2019est pas destin\\u00e9 \\u00e0 se substituer \\u00e0 des outils d\\u2019analyse plus sophistiqu\\u00e9s (e.g., SIG, packages statistiques, etc.)</p>
<div id=donn\\u00e9es class=section level2>
<h2>Donn\\u00e9es</h2>
<p>Il existe trois mani\\u00e8res d\\u2019introduire des donn\\u00e9es dans <code>archeoViz</code>:</p>
<ol style=list-style-type: decimal>
<li>en chargeant des tableaux \\u00e0 partir de l\\u2019onglet \\u201cDonn\\u00e9es\\u201d;</li>
<li>en employant le g\\u00e9n\\u00e9rateur de donn\\u00e9es al\\u00e9atoire dans l\\u2019onglet \\u201cDonn\\u00e9es\\u201d;</li>
<li>en param\\u00e9trant la fonction <code>archeoViz</code> avant de lancer l\\u2019application.</li>
</ol>
<div id=par-chargement-de-tableaux class=section level3>
<h3>Par chargement de tableaux</h3>
<p>Des tableaux pour trois types de donn\\u00e9es peuvent \\u00eatre charg\\u00e9s \\u00e0 partir de l\\u2019onglet \\u201cDonn\\u00e9es\\u201d:</p>
<ul>
<li>un tableau \\u201cobjects\\u201d (requis), \\u00e0 propos des objets;</li>
<li>un tableau \\u201crefits\\u201d (optionnel), \\u00e0 propos des relations de remontage;</li>
<li>un tableau \\u201ctimeline\\u201d (optionnel), \\u00e0 propos des carr\\u00e9s du site et des ann\\u00e9es o\\u00f9 ils ont \\u00e9t\\u00e9 fouill\\u00e9s.</li>
</ul>
<p>Les tableaux doivent \\u00eatre au format .csv et la premi\\u00e8re ligne doit contenir les noms des variables (le symbole s\\u00e9parateur du csv peut \\u00eatre d\\u00e9fini dans l\\u2019interface). Plus de d\\u00e9tails \\u00e0 propos des formats et des colonnes sont donn\\u00e9s dans l\\u2019onglet \\u201cDonn\\u00e9es\\u201d.</p>
</div>
<div id=par-g\\u00e9n\\u00e9ration-de-donn\\u00e9es-al\\u00e9atoires class=section level3>
<h3>Par g\\u00e9n\\u00e9ration de donn\\u00e9es al\\u00e9atoires</h3>
<p>\\u00c0 des fins de d\\u00e9monstration, il est possible d\\u2019employer des donn\\u00e9es al\\u00e9atoirement g\\u00e9n\\u00e9r\\u00e9es. D\\u00e9placer le curseur sur une valeur sup\\u00e9rieure \\u00e0 0, dans l\\u2019onglet \\u201cDonn\\u00e9es\\u201d, active cette fonctionnalit\\u00e9 (replacer le curseur sur 0 la d\\u00e9sactive). Des donn\\u00e9es d\\u2019objets, de remontage, et de chronologie de la fouille sont alors g\\u00e9n\\u00e9r\\u00e9s, permettant de tester toutes les fonctionnalit\\u00e9s d\\u2019<code>archeoViz</code>.</p>
</div>
<div id=par-param\\u00e9trage-de-la-fonction class=section level3>
<h3>Par param\\u00e9trage de la fonction</h3>
<p>La fonction de lancement d\\u2019<code>archeoViz()</code> peut \\u00eatre ex\\u00e9cut\\u00e9e sans d\\u00e9finir de param\\u00e8tres:</p>
<pre class=r><code>archeoViz()</code></pre>
<p>ou en employant les param\\u00e8tres <code>objects.df</code>, <code>refits.df</code>, <code>timeline.df</code> afin de charger des donn\\u00e9es relatives, respectivement, aux objets, aux remontages, et \\u00e0 la chronologie.</p>
<pre class=r><code>archeoViz(objects.df = NULL,  # data.frame pour les objets
          refits.df = NULL,   # data.frame optionnel pour les remontages
          timeline.df = NULL) # data.frame optionnel pour la chronologie</code></pre>
</div>
</div>
<div id=sous-s\\u00e9lection-de-donn\\u00e9es class=section level2>
<h2>Sous-s\\u00e9lection de donn\\u00e9es</h2>
<p>Apr\\u00e8s que les donn\\u00e9es soient charg\\u00e9es, des sous-s\\u00e9lection peuvent \\u00eatre r\\u00e9alis\\u00e9es en employant les options du menu gauche de l\\u2019interface. Plusieurs param\\u00e8tres sont possibles: le mode de localisation et les cat\\u00e9gories des objets.</p>
<div id=par-mode-de-localisation class=section level3>
<h3>Par mode de localisation</h3>
<p>La localisation des objets arch\\u00e9ologiques peut avoir \\u00e9t\\u00e9 enregistr\\u00e9e de diff\\u00e9rentes mani\\u00e8res, plus ou moins pr\\u00e9cises: comme des points (coordonn\\u00e9es xyz), sur des lignes, des plans, ou au sein de volumes (intervalles de valeurs x, y et/ou z). Dans <code>archeoViz</code>, une distinction est faite entre les localisations exactes (les points) et les autres types de localisations vagues (lignes, plans, volumes). Les boutons permettent de s\\u00e9lectionner le sous-ensemble de donn\\u00e9es correspondant \\u00e0 l\\u2019un, l\\u2019autre, ou les deux modes de localisation.</p>
</div>
<div id=par-cat\\u00e9gorie-dobjet class=section level3>
<h3>Par cat\\u00e9gorie d\\u2019objet</h3>
<p>Des sous-ensembles de donn\\u00e9es peuvent \\u00eatre d\\u00e9finis \\u00e0 partir des cat\\u00e9gories des objets, en employant les champs \\u201cVariable\\u201d et \\u201cvaleurs\\u201d. Apr\\u00e8s que l\\u2019une des variables ait \\u00e9t\\u00e9 s\\u00e9lectionn\\u00e9e (\\u201cobject_type\\u201d ou une autre \\u201cobject_\\u201d variable possible), ses valeurs apparaissent en dessous et peuvent \\u00eatre s\\u00e9lectionn\\u00e9es en cochant les items. La s\\u00e9lection doit \\u00eatre valid\\u00e9e en cliquant sur le bouton \\u201cValider\\u201d. Cette s\\u00e9lection d\\u00e9termine les donn\\u00e9es qui seront pr\\u00e9sent\\u00e9es dans les graphiques et tableaux.</p>
</div>
<div id=par-objet class=section level3>
<h3>Par objet</h3>
<p>Dans l\\u2019onglet \\u201cVue 3D\\u201d, cliquer sur un point active l\\u2019affichage d\\u2019information \\u00e0 son sujet dans le tableau pr\\u00e9sente sous la visualisation.</p>
</div>
</div>
<div id=visualisations-interactives class=section level2>
<h2>Visualisations interactives</h2>
<p>Les visualisations dans les onglets \\u201cVue 3D\\u201d, \\u201cCarte\\u201d, \\u201cSection X\\u201d et \\u201cSection Y\\u201d sont g\\u00e9n\\u00e9r\\u00e9es \\u00e0 l\\u2019aide de la librairie <a href=https://CRAN.R-project.org/package=plotly/><code>plotly</code></a>. Toutes ces visualisations sont dynamiques et sont surmont\\u00e9es d\\u2019une barre de menu comportant plusieurs options (g\\u00e9n\\u00e9rer un fichier image, zoomer, d\\u00e9placer le point de vue, etc.). Davantage de d\\u00e9tails sont disponibles sur le <a href=http://plotly.github.io/getting-to-know-the-plotly-modebar/>site de plotly</a>.</p>
<p>Cliquer sur un item de la l\\u00e9gende modifie l\\u2019affichage:</p>
<ul>
<li>un simple click sur un item active/d\\u00e9sactive son affichage;</li>
<li>un double click sur un item limite l\\u2019affichage \\u00e0 cet item seul (un autre double click annule cette s\\u00e9lection)</li>
</ul>
<p>Cette fonctionnalit\\u00e9 permet de d\\u00e9finir les couches devant \\u00eatre affich\\u00e9es.</p>
</div>
<div id=sorties-graphiques class=section level2>
<h2>Sorties graphiques</h2>
<p>Plusieurs sorties graphiques peuvent \\u00eatre g\\u00e9n\\u00e9r\\u00e9es dans <code>archeoViz</code>.</p>
<ul>
<li>Toutes les visualisations g\\u00e9n\\u00e9r\\u00e9es avec <code>plotly</code> comportent une fonction d\\u2019exportation en format .svg.</li>
<li>le plan des fouilles (dans l\\u2019onglet \\u201cChronologie\\u201d) peut \\u00eatre t\\u00e9l\\u00e9charg\\u00e9 au format .svg en cliquant sur le bouton en dessous.</li>
</ul>
</div>
<div id=statistiques-spatiales class=section level2>
<h2>Statistiques spatiales</h2>
<p><code>archeoViz</code> comporte quelques fonctionnalit\\u00e9s d\\u2019analyse spatiale, destin\\u00e9es \\u00e0 usage simple et exploratoire.</p>
<div id=surfaces-de-r\\u00e9gression class=section level3>
<h3>Surfaces de r\\u00e9gression</h3>
<p>Dans l\\u2019onglet \\u201cVue 3D\\u201d, cliquer sur \\u201cCalculer les surfaces\\u201d puis \\u201cValider\\u201d affiche les surfaces de r\\u00e9gression associ\\u00e9es \\u00e0 chaque sous-ensemble de points (couche), comportant au moins 100 points. Les surfaces sont calcul\\u00e9es gr\\u00e2ce au mod\\u00e8le additif g\\u00e9n\\u00e9ralis\\u00e9 impl\\u00e9ment\\u00e9 dans le package <a href=https://CRAN.R-project.org/package=mgcv><code>mgcv</code></a>.</p>
</div>
<div id=enveloppes-convexes class=section level3>
<h3>Enveloppes convexes</h3>
<p>Cliquer sur \\u201cCalculer les enveloppes\\u201d puis \\u201cValider\\u201d, dans l\\u2019onglet \\u201cVue 3D\\u201d, affiche les enveloppes convexes associ\\u00e9es \\u00e0 chaque sous-ensemble de points (couches), comportant au moins 10 points. Les enveloppes sont calcul\\u00e9es en employant le package <a href=https://CRAN.R-project.org/package=cxhull><code>cxhull</code></a>.</p>
</div>
<div id=estimation-2d-de-densit\\u00e9-par-noyau class=section level3>
<h3>Estimation 2D de densit\\u00e9 par noyau</h3>
<p>Dans l\\u2019onglet \\u201cPlan\\u201d, cocher la case \\u201cCalculer la densit\\u00e9\\u201d et cliquer sur \\u201cValider\\u201d g\\u00e9n\\u00e8re un plan comportant des lignes de contour repr\\u00e9sentant la densit\\u00e9 des points. L\\u2019estimation bidimensionnelle de densit\\u00e9 par noyau est calcul\\u00e9e avec la fonction <code>kde2d</code> du package <a href=https://CRAN.R-project.org/package=MASS><code>MASS</code></a> (\\u00e0 travers le package <a href=https://CRAN.R-project.org/package=ggplot2><code>ggplot2</code></a>).</p>
</div>
</div>
</div>
<div id=r\\u00e9f\\u00e9rences class=section level1>
<h1>R\\u00e9f\\u00e9rences</h1>
<ul>
<li>Plutniak, S\\u00e9bastien. 2022. \\u201carcheoViz. Visualisation, Exploration, and Web Communication of Archaeological Excavation Data\\u201d. v0.1, DOI: <a href=https://doi.org/10.5281/zenodo.7460193>10.5281/zenodo.7460193</a>.</li>
</ul>
</div>
  "
  
  
  # LIST FR ----
  fr <- list(
    welcome = welcome.fr,
    tab.home = "Accueil",
    tab.input = "Donn\\u00e9es",
    tab.plot3d ="Vue 3D",
    tab.map = "Plan",
    tab.tables = "Tableaux",
    tab.timeline = "Chronologie",
    tab.guidelines = "Aide",
    location = "Mode de localisation",
    values = "Valeurs",
    validate = "Valider",
    view = "Afficher",
    header.3d.options = "Options vue 3D",
    header.objects.table = "Tableau des objets",
    header.refits.table = "Tableau des remontages",
    header.timeline.table = "Tableau de chronologie des fouilles",
    choose.csv = "S\\u00e9lectionnez un fichier csv",
    input.objects = input.objects.fr,
    input.refits = input.refits.fr,
    input.timeline = input.timeline.fr,
    guidelines = guidelines.fr,
    separator = "S\\u00e9parateur",
    decimal = "D\\u00e9cimales",
    use.demo = "Simuler des donn\\u00e9es pour n objets",
    surfaces = "Calculer les surfaces",
    hulls = "Calculer les enveloppes",
    refits = "Montrer les remontages",
    point.size = "Taille des points",
    ratio = "Ratio vertical",
    density = "Calculer la densit\\u00e9",
    density.no = "Aucune",
    density.all.layers = "Toutes les couches",
    density.by.layer = "Par couche",
    tab.variable.loc = "Nombre d'objets par variable et mode de localisation",
    tab.layer.loc = "Nombre d'objets par couche et mode de localisation",
    exact = "Exacte",
    fuzzy = "Vague",
    depth = "Profondeur",
    exact.fuzzy = "Exacte ou vague",
    click.on.point = "Cliquez sur un point pour afficher ses informations.",
    notif.objects.ok = "Fichier des objets ok!",
    notif.objects.not.ok = "Erreur. Certains champs requis sont absents, v\\u00e9rifiez le fichier s.v.p.",
    notif.no.data = "Pas de donn\\u00e9es dans ces intervalles.",
    notif.tick.value = "Cochez au moins une valeur (dans le menu lat\\u00e9ral gauche).",
    notif.timeline.ok = "Donn\\u00e9es chronologie ok !"
    
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
    location = "Location method",
    values = "Values",
    validate = "Validate",
    view = "View",
    header.3d.options = "3D plot options",
    header.objects.table = "Objects table",
    header.refits.table = "Refits table",
    header.timeline.table = "Excavation timeline table",
    choose.csv = "Choose a csv file",
    input.objects = input.objects.en,
    input.refits = input.refits.en,
    input.timeline = input.timeline.en,
    guidelines = guidelines.en,
    separator = "Separator",
    decimal = "Decimal",
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
    depth = "Depth",
    exact.fuzzy = "Exact or fuzzy",
    click.on.point = "Click on a point to get more information.",
    notif.objects.ok = "Objects file ok!",
    notif.objects.not.ok = "Error. Some of the mandatory fields are absent. Please check the file.",
    notif.no.data = "No data in these ranges.",
    notif.tick.value = "Tick at least one value (in the left side menu)",
    notif.timeline.ok = "Timeline data ok!"
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

