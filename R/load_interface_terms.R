
.load_interface_terms <- function(lang){
  # welcome ----
  # : fr ----
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
                soit en chargeant des données via l'interface, soit en 
                lançant l'application avec un jeu de donnée spécifique.
                L'interface est disponible en anglais et en français.
                </p>
                Le code source est libre et publié sur le 
                <a href=https://github.com/sebastien-plutniak/archeoviz target=_blank>dépôt github</a>."
  # : en ----
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
                The source code is openly published on the 
                dedicated <a href=https://github.com/sebastien-plutniak/archeoviz target=_blank>github repository</a>."
  # : pt ----
  
  
  welcome.pt <- "<h1>Bem-vindo ao <i>archeoViz</i>!</h1>
                <p><i>archeoViz</i> é um aplicativo dedicado à arqueologia. Ele permite <b>visualizar</b>, <b>explorar</b> interativamente, e   
                expor e <b>comunicar</b> rapidamente na web dados de campo arqueológicos.
                </p>
                <p>
                Ele oferece <b>visualizações</b> 3D e 2D, gera <b>perfis estratigráficos</b> e <b>mapas<b/> de vestígios arqueológicos, possibilita a realização de estatísticas espaciais simples (envoltórias convexas, superfícies de regressão, estimativa de densidade de kernel 2D) e a visualização de uma cronologia interativa da escavação de um sítio.
                </p>
                <p>
                Distribuído como um pacote R, 
                o <i>archeoViz</i> ppode ser usado localmente ou implantado em um servidor, seja carregando dados por meio da interface, seja iniciando o aplicativo com um conjunto de dados específico. A interface está disponível em inglês, em francês, e em português.
                </p>
                O código-fonte é livre e publicado no 
                <a href=https://github.com/sebastien-plutniak/archeoviz target=_blank>repositório github</a>."
  
  # Input objects  fr ----
  # :  fr ----
  input.objects.fr <- 
    "<p>
    Un tableau au format csv est requis. Chaque ligne décrit un objet, comportant les champs obligatoires suivants :
    <ul>
      <li> <b>id</b> : <i>valeur alphanumérique</i>, identifiant unique de l'objet </li>
      <li> <b>xmin</b> : <i>valeur numérique</i>, coordonnée de l'objet en axe X</li>
      <li> <b>ymin</b> : <i>valeur numérique</i>, coordonnée de l'objet en axe Y</li>
      <li> <b>zmin</b> : <i>valeur numérique</i>, coordonnée de l'objet en axe Z (profondeur)</li>
      <li> <b>layer</b> : <i>valeur alphanumérique</i>, identifiant de la couche de l'objet</li>
      <li> <b>object_type</b> : <i>valeur alphanumérique</i>, catégorie de l'objet</li>
    </ul>
    De plus, des champs optionnels sont possibles, dont:
    <ul>
      <li> <b>square_x</b> : <i>valeur alphanumérique</i>, identifiant du carré de l'objet en axe X</li>
      <li> <b>square_y</b> : <i>valeur alphanumérique</i>, identifiant du carré de l'objet en axe Y</li>
      <li> <b>year</b> : <i>valeur numérique</i>, année de fouille de l'objet</li>
      <li> <b>xmax</b> : <i>valeur numérique</i>, lorsque la localisation de l'objet en X est comprise dans un intervalle de coordonnées</li>
      <li> <b>ymax</b> : <i>valeur numérique</i>, lorsque la localisation de l'objet en Y est comprise dans un intervalle de coordonnées</li>
      <li> <b>zmax</b> : <i>valeur numérique</i>, lorsque la localisation de l'objet en Z est comprise dans un intervalle de coordonnées</li>
      <li> <b>object<i>_edit</i></b> : nombre non limité de variables additionnelles  décrivant l'objet (les noms de colonnes doivent commencer par `object_` et avoir des suffixes différents</li>
    </ul>
    </p>"
  
  # :  en ----
  input.objects.en <- 
    "<p>
    A data table is required (csv format). A row describes a single object with the following mandatory fields:
    <ul>
      <li> <b>id</b>: <i>alphanumerical value</i>, unique identifier of the object </li>
      <li> <b>xmin</b>: <i>numerical value</i>, coordinate of the object on the X axis</li>
      <li> <b>ymin</b>: <i>numerical value</i>, coordinate of the object on the Y axis</li>
      <li> <b>zmin</b>: <i>numerical value</i>, coordinate of the object on the Z axis (depth)</li>
      <li> <b>layer</b>: <i>alphanumerical value</i>, identifier of the object's layer</li>
      <li> <b>object_type</b>: <i>alphanumerical value</i>, category of the object</li>
    </ul>
    In addition, optional fields are possible, including:
    <ul>
      <li> <b>square_x</b>: <i>alphanumerical value</i>, identifier of the square on the X axis</li>
      <li> <b>square_y</b>: <i>alphanumerical value</i>, identifier of the square on the Y axis</li>
      <li> <b>year</b> : <i>numerical value</i>, year when the object was excavated</li>
      <li> <b>xmax</b>: <i>numerical value</i>, when the X location of the object is included in a range of X coordinates</li>
      <li> <b>ymax</b>: <i>numerical value</i>, when the Y location of the object is included in a range of Y coordinates</li>
      <li> <b>zmax</b>: <i>numerical value</i>, when the Z location of the object is included in a range of Z coordinates</li>
      <li> <b>object<i>_edit</i></b>: unlimited number of additional variable describing the object (field names must start with `object_` and have different suffixes)</li>
    </ul>
    </p>"  
  
  # :  pt ----
  input.objects.pt <- 
    "<p>
    É necessária uma tabela no formato csv. Cada linha descreve um objeto, incluindo os seguintes campos obrigatórios:
    <ul>
      <li> <b>id</b> : <i>valor alfanumérico</i>, identificador único do objeto </li>
      <li> <b>xmin</b> : <i>valor numérico</i>, coordenada do objeto no eixo X</li>
      <li> <b>ymin</b> : <i>valor numérico</i>, coordenada do objeto no eixo Y</li>
      <li> <b>zmin</b> : <i>valor numérico</i>, coordenada do objeto no eixo Z (profundidade)</li>
      <li> <b>layer</b> : <i>valor alfanumérico</i>, identificador da camada do objeto</li>
      <li> <b>object_type</b> : <i>valor alfanumérico</i>, categoria do objeto</li>
    </ul>
    Ademais, campos opcionais são possíveis, incluindo:
    <ul>
      <li> <b>square_x</b> : <i>valor alfanumérico</i>, identificador da quadra do objeto no eixo X</li>
      <li> <b>square_y</b> : <i>valor alfanumérico</i>, identificador da quadra do objeto no eixo Y</li>
      <li> <b>year</b> : <i>valor numérico</i>, ano de escavação do objeto</li>
      <li> <b>xmax</b> : <i>valor numérico</i>, quando a localização do objeto em X está compreendida em um intervalo de coordenadas</li>
      <li> <b>ymax</b> : <i>valor numérico</i>, quando a localização do objeto em Y está compreendida em um intervalo de coordenadas</li>
      <li> <b>zmax</b> : <i>valor numérico</i>, quando a localização do objeto em Z está compreendida em um intervalo de coordenadas</li>
      <li> <b>object<i>_edit</i></b>: número ilimitado de variáveis adicionais que descrevem o objeto (os nomes das colunas devem começar com `objeto_` e ter sufixos diferentes)</li>
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
  
  input.refits.pt <- 
    "<p>
    Uma tabela de duas colunas pode ser carregada para as remontagens entre objetos (formato csv). Cada linha deve conter os identificadores únicos dos dois objetos vinculados a uma relação de remontagem (em correspondência com os valores da coluna `id` da tabela de objetos).
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
  
  input.timeline.pt <- 
    "<p>
      Opcionalmente, pode ser carregada uma tabela (csv) referente ao desenvolvimento da escavação. Cada linha refere-se a uma quadra de escavação e contém as seguintes informações:
    <ul>
    <li> <b>year</b>: <i>valor numérico</i>, ano de escavação </li>
    <li> <b>square_x</b>: <i>valor alfanumérico</i>, identificador da quadra no eixo X</li>
    <li> <b>square_y</b>: <i>valor alfanumérico</i>, identificador da quadra no eixo Y</li>
    </ul>
    </p>"
  
  
  # guidelines ----
  # : en ----
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
<li><a href=#data-input>Data input</a>
<ul>
<li><a href=#tables-upload>Tables upload</a></li>
<li><a href=#random-data>Random data</a></li>
<li><a href=#function-parameters>Function parameters</a></li>
</ul></li>
<li><a href=#dataset-sub-setting>Data set sub-setting</a>
<ul>
<li><a href=#location-mode>Location mode</a></li>
<li><a href=#objects-category>Objects category</a></li>
<li><a href=#data-subgroups>Data subgroups</a></li>
<li><a href=#objects-selection>Objects selection</a></li>
</ul></li>
<li><a href=#interactive-visualisation>Interactive visualisation</a></li>
<li><a href=#graphical-outputs>Graphical outputs</a></li>
<li><a href=#spatial-statistics>Spatial statistics</a>
<ul>
<li><a href=#regression-surfaces>Regression surfaces</a></li>
<li><a href=#convex-hulls>Convex hulls</a></li>
<li><a href=#2d-kernel-density>2D kernel density</a></li>
</ul></li>
</ul></li>
<li><a href=#references><strong>References</strong></a></li>
</ul>
<h1 id=installation>Installation</h1>
<p><code>archeoViz</code> can be used in two ways:</p>
<ul>
<li>locally, on the user’s machine</li>
<li>remotely, after deploying the app on a distant server</li>
</ul>
<h2 id=local-use>Local use</h2>
<p>The package can be installed from CRAN with:</p>
<div class=sourceCode id=cb1><pre class=sourceCode r><code class=sourceCode r><a class=sourceLine id=cb1-1 data-line-number=1><span class=kw>install.packages</span>(<span class=st>&quot;archeoViz&quot;</span>)</a></code></pre></div>
<p>The development version is available on GitHub and can be installed with:</p>
<div class=sourceCode id=cb2><pre class=sourceCode r><code class=sourceCode r><a class=sourceLine id=cb2-1 data-line-number=1><span class=co># install.packages(&quot;devtools&quot;)</span></a>
<a class=sourceLine id=cb2-2 data-line-number=2>devtools<span class=op>::</span><span class=kw>install_github</span>(<span class=st>&quot;sebastien-plutniak/archeoviz&quot;</span>)</a></code></pre></div>
<p>Then, load the package and launch the app with:</p>
<div class=sourceCode id=cb3><pre class=sourceCode r><code class=sourceCode r><a class=sourceLine id=cb3-1 data-line-number=1><span class=kw>library</span>(archeoViz)</a>
<a class=sourceLine id=cb3-2 data-line-number=2><span class=kw>archeoViz</span>()</a></code></pre></div>
<h2 id=deployed-use>Deployed use</h2>
<p>To deploy <code>archeoViz</code> on your Shiny server, first download and unzip the package:</p>
<div class=sourceCode id=cb4><pre class=sourceCode r><code class=sourceCode r><a class=sourceLine id=cb4-1 data-line-number=1><span class=co># set the working directory on your shiny server:</span></a>
<a class=sourceLine id=cb4-2 data-line-number=2><span class=kw>setwd</span>(<span class=dt>dir =</span> <span class=st>&quot;/some/path/&quot;</span>)</a>
<a class=sourceLine id=cb4-3 data-line-number=3><span class=co># download the package:</span></a>
<a class=sourceLine id=cb4-4 data-line-number=4><span class=kw>download.file</span>(</a>
<a class=sourceLine id=cb4-5 data-line-number=5>  <span class=dt>url =</span> <span class=st>&quot;https://github.com/sebastien-plutniak/archeoviz/archive/master.zip&quot;</span>,</a>
<a class=sourceLine id=cb4-6 data-line-number=6>  <span class=dt>destfile =</span> <span class=st>&quot;archeoviz.zip&quot;</span>)</a>
<a class=sourceLine id=cb4-7 data-line-number=7><span class=co># unzip it:</span></a>
<a class=sourceLine id=cb4-8 data-line-number=8><span class=kw>unzip</span>(<span class=dt>zipfile =</span> <span class=st>&quot;archeoviz.zip&quot;</span>)</a></code></pre></div>
<p>Then, go to <code>https://&lt;your-shiny-server&gt;/archeoviz-main</code>.</p>
<p>To set the app with your data and preferences, edit the app.R file, located at the root of the directory:</p>
<div class=sourceCode id=cb5><pre class=sourceCode r><code class=sourceCode r><a class=sourceLine id=cb5-1 data-line-number=1><span class=kw>archeoViz</span>(<span class=dt>objects.df =</span> <span class=ot>NULL</span>,   <span class=co># data.frame with data about the objects</span></a>
<a class=sourceLine id=cb5-2 data-line-number=2>          <span class=dt>refits.df =</span> <span class=ot>NULL</span>,    <span class=co># optional data.frame for refitting data</span></a>
<a class=sourceLine id=cb5-3 data-line-number=3>          <span class=dt>timeline.df =</span> <span class=ot>NULL</span>,  <span class=co># optional data.frame for the excavation timeline</span></a>
<a class=sourceLine id=cb5-4 data-line-number=4>          <span class=dt>default.group =</span><span class=ot>NULL</span>, <span class=co># Whether to group data 'by.layer' or 'by.variable'</span></a>
<a class=sourceLine id=cb5-5 data-line-number=5>          <span class=dt>title =</span> <span class=ot>NULL</span>,        <span class=co># title of the site / data set</span></a>
<a class=sourceLine id=cb5-6 data-line-number=6>          <span class=dt>home.text =</span> <span class=ot>NULL</span>,    <span class=co># html content to display on the home page</span></a>
<a class=sourceLine id=cb5-7 data-line-number=7>          <span class=dt>lang =</span> <span class=st>&quot;en&quot;</span>          <span class=co># interface language (English or French)</span></a>
<a class=sourceLine id=cb5-8 data-line-number=8>          <span class=dt>set.theme =</span> <span class=st>&quot;cosmo&quot;</span>) <span class=co># graphic theme for the Shiny interface</span></a></code></pre></div>
<p>The possible values for the <code>set.theme</code> parameter are illustrated on <a href=https://rstudio.github.io/shinythemes/>this page</a>. The language of the application can be set with the <code>lang</code> parameter, either with an “en”/“English” or “fr”/“French” value.</p>
<h2 id=demonstration>Demonstration</h2>
<p>Demonstration instances of the application are deployed on the <em>Huma Num</em> Shiny server:</p>
<ul>
<li><a href=https://analytics.huma-num.fr/archeoviz/en>archeoViz in English</a>.</li>
<li><a href=https://analytics.huma-num.fr/archeoviz/fr>archeoViz in French</a>.</li>
</ul>
<p>For a real case use, see the example of the prehistoric <a href=https://analytics.huma-num.fr/Sebastien.Plutniak/poeymau/>Poeymaü cave</a> in the Pyrenees (note that this application is a modified version of <code>archeoViz</code>).</p>
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
<h2 id=data-input>Data input</h2>
<p>There are three ways to input data in <code>archeoViz</code>:</p>
<ol>
<li>uploading tables in the “Input data” tab,</li>
<li>using randomly generated data from the “Input data” tab;</li>
<li>set the <code>archeoViz</code> main function’s parameters before running the application.</li>
</ol>
<h3 id=tables-upload>Tables upload</h3>
<p>Tables for three types of data can be uploaded from the “Input data” tab:</p>
<ul>
<li>an “objects” table (mandatory), with data about the objects;</li>
<li>a “refits” table (optional), with data about the refitting objects;</li>
<li>a “timeline” table (optional), with data about when each square of the site was excavated.</li>
</ul>
<p>The tables must be .csv files with the first row used containing the columns’ labels (the separator can be set). More details about the required formats and columns are provided in the “Input data” tab.</p>
<h3 id=random-data>Random data</h3>
<p>For demonstration purposes using randomly generated data is made possible. To activate this feature, set the slider in “Input data” to a value higher than 0 (setting the value back to 0 deactivates the feature). An “objects” data set, a “refits” data set, and a “timeline” data set are generated, making it possible to test all the <code>archeoViz</code> functionalities.</p>
<h3 id=function-parameters>Function parameters</h3>
<p><code>archeoViz</code>’s launching function (<code>archeoViz()</code>) can be run without parameter</p>
<div class=sourceCode id=cb6><pre class=sourceCode r><code class=sourceCode r><a class=sourceLine id=cb6-1 data-line-number=1><span class=kw>archeoViz</span>()</a></code></pre></div>
<p>or by using the <code>objects.df</code>, <code>refits.df</code>, or <code>timeline.df</code> parameters to input data.frames about the archaeological objects, refitting relationships between these objects, and the chronology of the excavation, respectively.</p>
<div class=sourceCode id=cb7><pre class=sourceCode r><code class=sourceCode r><a class=sourceLine id=cb7-1 data-line-number=1><span class=kw>archeoViz</span>(<span class=dt>objects.df =</span> <span class=ot>NULL</span>,  <span class=co># data.frame with data about the objects</span></a>
<a class=sourceLine id=cb7-2 data-line-number=2>          <span class=dt>refits.df =</span> <span class=ot>NULL</span>,   <span class=co># data.frame for refitting objects</span></a>
<a class=sourceLine id=cb7-3 data-line-number=3>          <span class=dt>timeline.df =</span> <span class=ot>NULL</span>) <span class=co># optional data.frame for the excavation timeline</span></a></code></pre></div>
<h2 id=dataset-sub-setting>Dataset sub-setting</h2>
<p>Once data are loaded, a sub-selection of the data set can be done in the left side menu. Several parameters are possible: the type of location recording, the category of the objects, and the way to group the data.</p>
<h3 id=location-mode>Location mode</h3>
<p>The location of archaeological objects can be recorded in different ways, depending on the precision of the data: as points (xyz coordinates), on lines, plans, or within a volume (ranges of x, y, and z values). In <code>archeoViz</code>, a distinction is made between exact locations (points) and the other types of fuzzy location methods (lines, plans, volumes). The radio buttons allow selecting these options.</p>
<h3 id=objects-category>Objects category</h3>
<p>Sub-sets can be defined by object categories, using the “variable” and “values” fields. Once one of the “object_type” (or other possible “object_” variables) is selected, its values appear below and can be selected using the tick boxes. The selection must be validated by clicking on the “Validate” button. This selection determines the data that will be displayed in the plots and tables.</p>
<h3 id=data-subgroups>Data subgroups</h3>
<p>The data can be grouped in two ways: either by layer or by the selected “object_” variable. This option determines the colours of the points in the 3D and 2D plots and the subsets when computing surfaces and convex hulls.</p>
<h3 id=objects-selection>Objects selection</h3>
<p>In the “3D plot” tab, clicking on a point displays information about that point in the table below the plot.</p>
<h2 id=interactive-visualisation>Interactive visualisation</h2>
<p>The plots in the “3D plot”, “Map”, “Section X”, and “Section Y” tabs are generated using the <a href=https://CRAN.R-project.org/package=plotly><code>plotly</code></a> library. All the plots are dynamic and include a menu bar above the plot with several options (generating an image file, zooming, moving the view, etc). See details on the <a href=http://plotly.github.io/getting-to-know-the-plotly-modebar/>plotly website</a>.</p>
<p>Clicking on a legend’s item modifies the display:</p>
<ul>
<li>a simple click on an item activates/deactivates its display;</li>
<li>a double click on an item displays this item only (another double click cancels it).</li>
</ul>
<p>This feature makes it possible to choose which layers are shown. In addition, the size of the points can be set and whether the refitting relationships must be represented or not.</p>
<h2 id=graphical-outputs>Graphical outputs</h2>
<p>Several graphical outputs can be generated in <code>archeoViz</code>.</p>
<ul>
<li>All the plots generated with <code>plotly</code> include an export function in .svg format.</li>
<li>the excavation map (in the “Excavation timeline” tab) can be downloaded in .svg format with the button below the plot.</li>
</ul>
<h2 id=spatial-statistics>Spatial statistics</h2>
<p><code>archeoViz</code> includes some spatial analysis functionalities, intended for basic and exploratory use.</p>
<h3 id=regression-surfaces>Regression surfaces</h3>
<p>In the “3D plot” tab, clicking on “Compute surfaces” and “Validate” displays the regression surface associated with each layer (with at least 100 points). The surfaces are computed using the generalized additive model implemented in the <a href=https://CRAN.R-project.org/package=mgcv><code>mgcv</code></a> package.</p>
<h3 id=convex-hulls>Convex hulls</h3>
<p>In the “3D plot” tab, clicking on “Compute hulls” and “Validate” displays the convex hull associated with each layer (with at least 20 points). The convex hulls are computed using the <a href=https://CRAN.R-project.org/package=cxhull><code>cxhull</code></a> package.</p>
<h3 id=2d-kernel-density>2D kernel density</h3>
<p>In the “Map” tab, ticking the “Compute density” box and clicking on “Validate” generates a map with contour lines showing the points’ density. Density can be computed for all the points together or by layer (with at least 30 points). The 2D kernel density is computed with the <code>kde2d</code> function of the <a href=https://CRAN.R-project.org/package=MASS><code>MASS</code></a> package (through <a href=https://CRAN.R-project.org/package=ggplot2><code>ggplot2</code></a>).</p>
<h1 id=references>References</h1>
<ul>
<li>Plutniak, Sébastien. 2023. “archeoViz. Visualisation, Exploration, and Web Communication of Archaeological Excavation Data”. v0.2.1, DOI: <a href=https://doi.org/10.5281/zenodo.7512526>10.5281/zenodo.7512526</a>.</li>
</ul>
"
  
  
  #  : fr ----
  guidelines.fr <- "
<h1 id=archeoviz>archeoViz</h1>
<p><code>archeoViz</code> est une application dédiée à l’archéologie. Elle permet de <em>visualiser</em>, d’<em>explorer</em> interactivement, et d’exposer et <em>communiquer</em> rapidement sur le web des données archéologiques de terrain. Elle propose des <em>visualisations</em> en 3D et 2D, génère des <em>coupes</em> et des <em>cartes</em> des restes archéologiques, permet de réaliser des <em>statistiques spatiales</em> simples (enveloppes convexes, surfaces de régression, estimation de densité par noyau en 2D), et de visualiser une <em>chronologie</em> interactive des fouilles d’un site. <code>archeoViz</code> peut être utilisée localement ou déployée sur un serveur, soit en chargeant des données via l’interface, soit en lançant l’application avec un jeu de donnée spécifique. L’interface est disponible en anglais et en français.</p>
<ul>
<li><a href=#installation><strong>Installation</strong></a>
<ul>
<li><a href=#locale>Locale</a></li>
<li><a href=#déployée>Déployée</a></li>
<li><a href=#démonstration>Démonstration</a></li>
</ul></li>
<li><a href=#recommandations-communautaires><strong>Recommandations communautaires</strong></a>
<ul>
<li><a href=#signaler-un-bug>Signaler un bug</a></li>
<li><a href=#soumettre-une-modification>Soumettre une modification</a></li>
</ul></li>
<li><a href=#utilisation><strong>Utilisation</strong></a>
<ul>
<li><a href=#données>Données</a>
<ul>
<li><a href=#par-chargement-de-tableaux>Par chargement de tableaux</a></li>
<li><a href=#par-génération-de-données-aléatoires>Par génération de données aléatoires</a></li>
<li><a href=#par-paramétrage-de-la-fonction>Par paramétrage de la fonction</a></li>
</ul></li>
<li><a href=#sous-sélection-de-données>Sous-sélection de données</a>
<ul>
<li><a href=#par-mode-de-localisation>Par mode de localisation</a></li>
<li><a href=#par-catégorie-dobjet>Par catégorie d’objet</a></li>
<li><a href=#sous-groupes-de-données>Sous-groupes de données</a></li>
<li><a href=#par-objet>Par objet</a></li>
</ul></li>
<li><a href=#visualisations-interactives>Visualisations interactives</a></li>
<li><a href=#sorties-graphiques>Sorties graphiques</a></li>
<li><a href=#statistiques-spatiales>Statistiques spatiales</a>
<ul>
<li><a href=#surfaces-de-régression>Surfaces de régression</a></li>
<li><a href=#enveloppes-convexes>Enveloppes convexes</a></li>
<li><a href=#estimation-2d-de-densité-par-noyau>Estimation 2D de densité par noyau</a></li>
</ul></li>
</ul></li>
<li><a href=#références><strong>Références</strong></a></li>
</ul>
<h1 id=installation>Installation</h1>
<p><code>archeoViz</code> peut être employée de deux manières:</p>
<ul>
<li>localement, sur la machine de l’utilisateur</li>
<li>à distance, après déploiement sur un serveur distant</li>
</ul>
<h2 id=locale>Locale</h2>
<p>Le package peut être installé depuis le CRAN:</p>
<div class=sourceCode id=cb1><pre class=sourceCode r><code class=sourceCode r><a class=sourceLine id=cb1-1 data-line-number=1><span class=kw>install.packages</span>(<span class=st>&quot;archeoViz&quot;</span>)</a></code></pre></div>
<p>La version de développement peut être télécharée depuis GitHub:</p>
<div class=sourceCode id=cb2><pre class=sourceCode r><code class=sourceCode r><a class=sourceLine id=cb2-1 data-line-number=1><span class=co># install.packages(&quot;devtools&quot;)</span></a>
<a class=sourceLine id=cb2-2 data-line-number=2>devtools<span class=op>::</span><span class=kw>install_github</span>(<span class=st>&quot;sebastien-plutniak/archeoviz&quot;</span>)</a></code></pre></div>
<p>Après quoi, chargez le package et lancez l’application avec:</p>
<div class=sourceCode id=cb3><pre class=sourceCode r><code class=sourceCode r><a class=sourceLine id=cb3-1 data-line-number=1><span class=kw>library</span>(archeoViz)</a>
<a class=sourceLine id=cb3-2 data-line-number=2><span class=kw>archeoViz</span>()</a></code></pre></div>
<h2 id=déployée>Déployée</h2>
<p>Pour déployer <code>archeoViz</code> sur votre Shiny server, téléchargez premièrement le package:</p>
<div class=sourceCode id=cb4><pre class=sourceCode r><code class=sourceCode r><a class=sourceLine id=cb4-1 data-line-number=1><span class=co># déterminez le répertoire de travail dans votre shiny server:</span></a>
<a class=sourceLine id=cb4-2 data-line-number=2><span class=kw>setwd</span>(<span class=dt>dir =</span> <span class=st>&quot;/some/path/&quot;</span>)</a>
<a class=sourceLine id=cb4-3 data-line-number=3><span class=co># téléchargez le package:</span></a>
<a class=sourceLine id=cb4-4 data-line-number=4><span class=kw>download.file</span>(<span class=dt>url =</span> <span class=st>&quot;https://github.com/sebastien-plutniak/archeoviz/archive/master.zip&quot;</span>,</a>
<a class=sourceLine id=cb4-5 data-line-number=5>              <span class=dt>destfile =</span> <span class=st>&quot;archeoviz.zip&quot;</span>)</a>
<a class=sourceLine id=cb4-6 data-line-number=6><span class=co># décompression:</span></a>
<a class=sourceLine id=cb4-7 data-line-number=7><span class=kw>unzip</span>(<span class=dt>zipfile =</span> <span class=st>&quot;archeoviz.zip&quot;</span>)</a></code></pre></div>
<p>Puis, rendez-vous à <code>https://&lt;your-shiny-server&gt;/archeoviz-main</code>.</p>
<p>Pour paramétrer l’application avec vos données et préférences, éditez le fichier app.R situé à la racine du répertoire de l’application:</p>
<div class=sourceCode id=cb5><pre class=sourceCode r><code class=sourceCode r><a class=sourceLine id=cb5-1 data-line-number=1><span class=kw>archeoViz</span>(<span class=dt>objects.df =</span> <span class=ot>NULL</span>,   <span class=co># data.frame pour les objets</span></a>
<a class=sourceLine id=cb5-2 data-line-number=2>          <span class=dt>refits.df =</span> <span class=ot>NULL</span>,    <span class=co># data.frame optionnel pour les remontages</span></a>
<a class=sourceLine id=cb5-3 data-line-number=3>          <span class=dt>timeline.df =</span> <span class=ot>NULL</span>,  <span class=co># data.frame optionnel pour la chronologie des fouilles</span></a>
<a class=sourceLine id=cb5-4 data-line-number=4>          <span class=dt>default.group =</span><span class=ot>NULL</span>, <span class=co># méthode de groupement des données,</span></a>
<a class=sourceLine id=cb5-5 data-line-number=5>                               <span class=co># par couche (&quot;by.layer&quot;) ou &quot;by.variable&quot;</span></a>
<a class=sourceLine id=cb5-6 data-line-number=6>          <span class=dt>title =</span> <span class=ot>NULL</span>,        <span class=co># titre du site / du jeu de données</span></a>
<a class=sourceLine id=cb5-7 data-line-number=7>          <span class=dt>home.text =</span> <span class=ot>NULL</span>,    <span class=co># contenu html à afficher sur la page d'accueil</span></a>
<a class=sourceLine id=cb5-8 data-line-number=8>          <span class=dt>lang =</span> <span class=st>&quot;fr&quot;</span>          <span class=co># langue de l'interface (&quot;English&quot; ou &quot;French&quot;)</span></a>
<a class=sourceLine id=cb5-9 data-line-number=9>          <span class=dt>set.theme =</span> <span class=st>&quot;cosmo&quot;</span>) <span class=co># thème graphique de l'interface Shiny</span></a></code></pre></div>
<p>Les valeurs possibles pour le paramètre <code>set.theme</code> sont illustrées sur <a href=https://rstudio.github.io/shinythemes/>cette page</a>. La langue de l’application peut être définie avec le paramètre <code>lang</code>, qui accepte les valeurs “en”/“English” ou “fr”/“French”.</p>
<h2 id=démonstration>Démonstration</h2>
<p>Des instances de démonstration de l’application sont déployées sur le Shiny server d’<em>Huma Num</em>:</p>
<ul>
<li><a href=https://analytics.huma-num.fr/archeoviz/fr><code>archeoViz</code> en Français</a>.</li>
<li><a href=https://analytics.huma-num.fr/archeoviz/en><code>archeoViz</code> en Anglais</a>.</li>
</ul>
<p>Pour un cas d’emploi réel, voir l’exemple de la grotte préhistorique du <a href=https://analytics.huma-num.fr/Sebastien.Plutniak/poeymau/>Poeymaü</a> dans les Pyrénées (N.B. il s’agit dans ce cas d’une version modifiée de l’application <code>archeoViz</code>).</p>
<h1 id=recommandations-communautaires>Recommandations communautaires</h1>
<h2 id=signaler-un-bug>Signaler un bug</h2>
<p>Si vous rencontrez un bug, ouvrez une <a href=https://github.com/sebastien-plutniak/archeoviz/issues>issue</a> en indiquant tous les détails nécessaires pour le reproduire.</p>
<h2 id=suggérer-un-changement>Suggérer un changement</h2>
<p>Les suggestions de modifications sont bienvenues. Les demandes peuvent concerner des fonctions additionnelles, des modifications dans la documentation, des exemples additionnels, de nouvelles fonctionnalités, etc. Elles peuvent être faite en ouvrant une <a href=https://github.com/sebastien-plutniak/archeoviz/issues>issue</a> ou, mieux encore, en employant une <em>pull requests</em> et le modèle GitHub <a href=https://docs.github.com/articles/about-pull-requests>Fork and Pull</a>.</p>
<h1 id=utilisation>Utilisation</h1>
<p>Considérant les restes archéologiques d’un site donné, <code>archeoViz</code> est conçu pour réduire les freins techniques à la réalisation de trois objectifs:</p>
<ul>
<li>l’exploration spatiale basique et la production de documents graphiques analytiques;</li>
<li>la pré-publication rapide de données archéologiques, à destination de la communauté scientifique;</li>
<li>le déploiement aisé d’un outil d’exposition et de communication, à destination d’un plus large public.</li>
</ul>
<p>N.B.: par conséquent, <code>archeoViz</code> n’t pas destiné à se substituer à des outils d’analyse plus sophistiqués (e.g., SIG, packages statistiques, etc.)</p>
<h2 id=données>Données</h2>
<p>Il existe trois manières d’introduire des données dans <code>archeoViz</code>:</p>
<ol>
<li>en chargeant des tableaux à partir de l’onglet “Données”,</li>
<li>en employant le générateur de données aléatoire dans l’onglet “Données”;</li>
<li>en paramétrant la fonction <code>archeoViz</code> avant de lancer l’application.</li>
</ol>
<h3 id=par-chargement-de-tableaux>Par chargement de tableaux</h3>
<p>Des tableaux pour trois types de données peuvent être chargés à partir de l’onglet “Données”:</p>
<ul>
<li>un tableau “objects” (requis), à propos des objets;</li>
<li>un tableau “refits” (optionnel), à propos des relations de remontage;</li>
<li>un tableau “timeline” (optionnel), à propos des carrés du site et des années où ils ont été fouillés.</li>
</ul>
<p>Les tableaux doivent être au format .csv et la première ligne doit contenir les noms des variables (le symbole séparateur du csv peut être défini dans l’interface). Plus de détails à propos des formats et des colonnes sont donnés dans l’onglet “Données”.</p>
<h3 id=par-génération-de-données-aléatoires>Par génération de données aléatoires</h3>
<p>À des fins de démonstration, il est possible d’employer des données aléatoirement générées. Déplacer le curseur sur une valeur supérieure à 0, dans l’onglet “Données”, active cette fonctionnalité (replacer le curseur sur 0 la désactive). Des données d’objets, de remontage, et de chronologie de la fouille sont alors générés, permettant de tester toutes les fonctionnalités d’<code>archeoViz</code>.</p>
<h3 id=par-paramétrage-de-la-fonction>Par paramétrage de la fonction</h3>
<p>La fonction de lancement d’<code>archeoViz()</code> peut être exécutée sans définir de paramètres:</p>
<div class=sourceCode id=cb6><pre class=sourceCode r><code class=sourceCode r><a class=sourceLine id=cb6-1 data-line-number=1><span class=kw>archeoViz</span>()</a></code></pre></div>
<p>ou en employant les paramètres <code>objects.df</code>, <code>refits.df</code>, <code>timeline.df</code> afin de charger des données relatives, respectivement, aux objets, aux remontages, et à la chronologie.</p>
<div class=sourceCode id=cb7><pre class=sourceCode r><code class=sourceCode r><a class=sourceLine id=cb7-1 data-line-number=1><span class=kw>archeoViz</span>(<span class=dt>objects.df =</span> <span class=ot>NULL</span>,  <span class=co># data.frame pour les objets</span></a>
<a class=sourceLine id=cb7-2 data-line-number=2>          <span class=dt>refits.df =</span> <span class=ot>NULL</span>,   <span class=co># data.frame optionnel pour les remontages</span></a>
<a class=sourceLine id=cb7-3 data-line-number=3>          <span class=dt>timeline.df =</span> <span class=ot>NULL</span>) <span class=co># data.frame optionnel pour la chronologie</span></a></code></pre></div>
<h2 id=sous-sélection-de-données>Sous-sélection de données</h2>
<p>Après que les données soient chargées, des sous-sélection peuvent être réalisées en employant les options du menu gauche de l’interface. Plusieurs paramètres sont possibles: le mode de localisation, les catégories des objets, et la définition de sous-groupes de données.</p>
<h3 id=par-mode-de-localisation>Par mode de localisation</h3>
<p>La localisation des objets archéologiques peut avoir été enregistrée de différentes manières, plus ou moins précises: comme des points (coordonnées xyz), sur des lignes, des plans, ou au sein de volumes (intervalles de valeurs x, y et/ou z). Dans <code>archeoViz</code>, une distinction est faite entre les localisations exactes (les points) et les autres types de localisations vagues (lignes, plans, volumes). Les boutons permettent de sélectionner le sous-ensemble de données correspondant à l’un, l’autre, ou les deux modes de localisation.</p>
<h3 id=par-catégorie-dobjet>Par catégorie d’objet</h3>
<p>Des sous-ensembles de données peuvent être définis à partir des catégories des objets, en employant les champs “Variable” et “Valeurs”. Après que l’une des variables ait été sélectionnée (“object_type” ou une autre “object_” variable possible), ses valeurs apparaissent en dessous et peuvent être sélectionnées en cochant les items. La sélection doit être validée en cliquant sur le bouton “Valider”. Cette sélection détermine les données qui seront présentées dans les graphiques et tableaux.</p>
<h3 id=sous-groupes-de-données>Sous-groupes de données</h3>
<p>Il est, de plus, possible de préciser si les couleurs doivent être définies en fonction des couches ou en fonction de la variable objet sélectionnée.</p>
<p>Des sous-groupes de données peuvent être définies de deux manières: soit par couche ou en fonction de la variable “object_” sélectionnée. Cette option détermine l’application des couleurs dans les graphiques 3D et 2D et les sous-groupes de données auxquels sont appliqués les calculs de surface de régression et d’enveloppes convexes.</p>
<h3 id=par-objet>Par objet</h3>
<p>Enfin, dans l’onglet “Vue 3D”, cliquer sur un point active l’affichage d’information à son sujet dans le tableau présent sous la visualisation.</p>
<h2 id=visualisations-interactives>Visualisations interactives</h2>
<p>Les visualisations dans les onglets “Vue 3D”, “Carte”, “Section X” et “Section Y” sont générées à l’aide de la librairie <a href=https://CRAN.R-project.org/package=plotly/><code>plotly</code></a>. Toutes ces visualisations sont dynamiques et sont surmontées d’une barre de menu comportant plusieurs options (générer un fichier image, zoomer, déplacer le point de vue, etc.). Davantage de détails sont disponibles sur le <a href=http://plotly.github.io/getting-to-know-the-plotly-modebar/>site de plotly</a>.</p>
<p>Cliquer sur un item de la légende modifie l’affichage:</p>
<ul>
<li>un simple click sur un item active/désactive son affichage;</li>
<li>un double click sur un item limite l’affichage à cet item seul (un autre double click annule cette sélection).</li>
</ul>
<p>Cette fonctionnalité permet de définir les couches devant être affichées. De plus, la taille des points peut être ajustée, ainsi que l’affichage ou non des relations de remontage.</p>
<h2 id=sorties-graphiques>Sorties graphiques</h2>
<p>Plusieurs sorties graphiques peuvent être générées dans <code>archeoViz</code>.</p>
<ul>
<li>Toutes les visualisations générées avec <code>plotly</code> comportent une fonction d’exportation en format .svg.</li>
<li>le plan des fouilles (dans l’onglet “Chronologie”) peut être téléchargé au format .svg en cliquant sur le bouton en dessous.</li>
</ul>
<h2 id=statistiques-spatiales>Statistiques spatiales</h2>
<p><code>archeoViz</code> comporte quelques fonctionnalités d’analyse spatiale, destinées à usage simple et exploratoire.</p>
<h3 id=surfaces-de-régression>Surfaces de régression</h3>
<p>Dans l’onglet “Vue 3D”, cliquer sur “Calculer les surfaces” puis “Valider” affiche les surfaces de régression associées à chaque sous-ensemble de points (couche), comportant au moins 100 points. Les surfaces sont calculées grâce au modèle additif généralisé implémenté dans le package <a href=https://CRAN.R-project.org/package=mgcv><code>mgcv</code></a>.</p>
<h3 id=enveloppes-convexes>Enveloppes convexes</h3>
<p>Cliquer sur “Calculer les enveloppes” puis “Valider”, dans l’onglet “Vue 3D”, affiche les enveloppes convexes associées à chaque sous-ensemble de points (couches), comportant au moins 20 points. Les enveloppes sont calculées en employant le package <a href=https://CRAN.R-project.org/package=cxhull><code>cxhull</code></a>.</p>
<h3 id=estimation-2d-de-densité-par-noyau>Estimation 2D de densité par noyau</h3>
<p>Dans l’onglet “Plan”, cocher la case “Calculer la densité” et cliquer sur “Valider” génère un plan comportant des lignes de contour représentant la densité des points. La densité peut être calculée pour l’ensemble des points ou par couche (comportant au moins 30 points). L’estimation bidimensionnelle de densité par noyau est calculée avec la fonction <code>kde2d</code> du package <a href=https://CRAN.R-project.org/package=MASS><code>MASS</code></a> (à travers le package <a href=https://CRAN.R-project.org/package=ggplot2><code>ggplot2</code></a>).</p>
<h1 id=références>Références</h1>
<ul>
<li>Plutniak, Sébastien. 2023. “archeoViz. Visualisation, Exploration, and Web Communication of Archaeological Excavation Data”. v0.2.1, DOI: <a href=https://doi.org/10.5281/zenodo.7512526>10.5281/zenodo.7512526</a>.</li>
</ul>
"
  
  
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
    all = "TOUTES",
    location = "Mode de localisation",
    values = "Valeurs",
    validate = "1) Valider la sélection",
    refresh = "2) Rafraîchir",
    header.3d.options = "Options vue 3D",
    header.objects.table = "Chargement du tableau des objets",
    header.simul.data = "Générer des données de démonstration simulées",
    header.refits.table = "Chargement du tableau des remontages",
    header.timeline.table = "Chargement du tableau de chronologie des fouilles",
    choose.csv = "Sélectionnez un fichier csv",
    input.objects = input.objects.fr,
    input.refits = input.refits.fr,
    input.timeline = input.timeline.fr,
    guidelines = guidelines.fr,
    separator = "Séparateur",
    decimal = "Décimales",
    use.demo = "Simuler n objets",
    surfaces = "Calculer les surfaces",
    hulls = "Calculer les enveloppes",
    refits = "Montrer les remontages",
    point.size = "Taille des points",
    ratio = "Ratio vertical",
    density = "Calculer la densité",
    density.no = "Aucune",
    density.all.layers = "Toutes les couches",
    overall = "D'ensemble",
    by.layer = "Par couche",
    by.variable = "Par variable",
    tab.variable.loc = "Nombre d'objets par variable et mode de localisation",
    tab.layer.loc = "Nombre d'objets par couche et mode de localisation",
    exact = "Exacte",
    fuzzy = "Vague",
    depth = "Profondeur",
    group = "Grouper les données",
    through = "avec",
    exact.fuzzy = "Exacte ou vague",
    click.on.point = "Cliquez sur un point pour afficher ses information.",
    notif.objects.ok = "Fichier des objets ok!",
    notif.objects.not.ok = "Erreur. Certains champs requis sont absents, vérifiez le fichier.",
    notif.no.data = "Pas de données dans ces intervalles.",
    notif.tick.value = "Cochez au moins une valeur (dans le menu latéral gauche).",
    notif.error.coords.type = "Des valeurs xmin, ymin, ou zmin ne sont pas numériques.",
    notif.error.identifier = "Les identifiants uniques des objets ne sont pas uniques.",
    notif.warn.obj.removed = "Les objets aux coordonnées incomplètes ont été supprimés."
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
    all = "ALL",
    location = "Location method",
    values = "Values",
    validate = "(1) Validate selection",
    refresh = "(2) Refresh",
    header.3d.options = "3D plot options",
    header.objects.table = "Load objects table",
    header.simul.data = "Use simulated data for demonstration",
    header.refits.table = "Load refits table",
    header.timeline.table = "Load excavation timeline table",
    choose.csv = "Choose a csv file",
    input.objects = input.objects.en,
    input.refits = input.refits.en,
    input.timeline = input.timeline.en,
    guidelines = guidelines.en,
    separator = "Separator",
    decimal = "Decimal",
    use.demo = "Generate n objects:",
    surfaces = "Compute surfaces",
    hulls = "Compute hulls",
    refits = "Show refits",
    point.size = "Point size",
    ratio = "Vertical ratio",
    density = "Compute density",
    density.no = "No",
    overall = "Overall",
    by.layer = "By layer",
    by.variable = "By variable",
    tab.variable.loc = "Remains by variable and location method",
    tab.layer.loc = "Remains by layer and location method",
    exact = "Exact",
    fuzzy = "Fuzzy",
    depth = "Depth",
    group = "Group data",
    through = "with",
    exact.fuzzy = "Exact or fuzzy",
    click.on.point = "Click on a point to get more information.",
    notif.objects.ok = "Objects file ok!",
    notif.objects.not.ok = "Error. Some of the mandatory fields are absent. Please check the file.",
    notif.no.data = "No data in these ranges.",
    notif.tick.value = "Tick at least one value (in the left side menu)",
    notif.error.coords.type = "xmin, ymin, or zmin value(s) are not numerical.",
    notif.error.identifier = "Some of the objects' unique identifier are duplicated.",
    notif.warn.obj.removed = "Objects with incomplete coordinates have been removed."
  )
  
  
  # LIST PT ----
  pt <- list(  
    welcome = "Bem-vindo",
    tab.home = "Início",
    tab.input = "Dados",
    tab.plot3d ="Visualização 3D",
    tab.map = "Mapa",
    tab.tables = "Tabelas",
    tab.timeline = "Cronologia",
    tab.guidelines = "Ajuda",
    all = "TUDO",
    location = "Modo de localização",
    values = "Valores",
    validate = "Validar a seleção",
    refresh = "Atualizar",
    header.3d.options = "Opções de visualização 3D",
    header.objects.table = "Carregar tabela de objetos",
    header.simul.data = "Gerar dados de demonstração simulados ",
    header.refits.table = "Carregar tabela de remontagens",
    header.timeline.table = "Carregar tabela de cronologia de escavações",
    choose.csv = "Selecione um arquivo csv",
    input.objects = input.objects.pt,
    input.refits = input.refits.pt,
    input.timeline = input.timeline.pt,
    guidelines = guidelines.en,
    separator = "Separador",
    decimal = "Decimais",
    use.demo = "Simular n objetos",
    surfaces = "Calcular superfícies",
    hulls = "Calcular envoltórias",
    refits = "Mostrar remontagens",
    point.size = "Tamanho dos pontos",
    ratio = "Ratio vertical",
    density = "Calcular densidade",
    density.no = "Nenhuma",
    density.all.layers = "Todas as camadas",
    overall = "Geral",
    by.layer = "Por camada",
    by.variable = "Por variável",
    tab.variable.loc = "Número de objetos por variável e modo de localização",
    tab.layer.loc = "Número de objetos por camada e modo de localização",
    exact = "Exato",
    fuzzy = "Vago",
    depth = "Profundidade",
    group = "Agrupar dados",
    through = "com",
    exact.fuzzy = "Exato ou vago",
    click.on.point = "Clique sobre um ponto para obter mais informações",
    notif.objects.ok = "Arquivo de objetos ok!",
    notif.objects.not.ok = "Erro. Certos campos exigidos estão ausentes. Por favor, verifique o arquivo.",
    notif.no.data = "Sem dados nesses intervalos.",
    notif.tick.value = "Marque pelo menos um valor (no menu lateral esquerdo).",
    notif.error.coords.type = "Os valores xmin, ymin, ou zmin não são numéricos.",
    notif.error.identifier = "Alguns dos identificadores únicos dos objetos estão duplicados.",
    notif.warn.obj.removed = "Objetos com coordenadas incompletas foram removidos."
  )
  
  
  # switch
  if(length(grep("en", lang, ignore.case = T)) == 1){
    ui.terms <- en
  }
  if(length(grep("fr", lang, ignore.case = T)) == 1){
    ui.terms <- fr
  }
  if(length(grep("pt", lang, ignore.case = T)) == 1){
    ui.terms <- pt
  }
  
  
  ui.terms
}


