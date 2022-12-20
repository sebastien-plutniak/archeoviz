
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
    <li> <b>id</b> : <i>valeur alphanumérique</i>, identifiant unique de l'objet </li>
    <li> <b>square_x</b> : <i>valeur alphanumérique</i>, identifiant du carré de l'objet en axe X</li>
    <li> <b>square_y</b> : <i>valeur alphanumérique</i>, identifiant du carré de l'objet en axe Y</li>
    <li> <b>xmin</b> : <i>valeur numérique</i>, coordonnée de l'objet en axe X</li>
    <li> <b>ymin</b> : <i>valeur numérique</i>, coordonnée de l'objet en axe Y</li>
    <li> <b>zmin</b> : <i>valeur numérique</i>, coordonnée de l'objet en axe Z (profondeur)</li>
    <li> <b>layer</b> : <i>valeur alphanumérique</i>, identifiant de la couche de l'objet</li>
    <li> <b>object_type</b> : <i>valeur alphanumérique</i>, catégorie de l'objet</li>
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
      <li> <b>xmax</b>: <i>numerical value</i>, when the X location of the object is included in a range of X coordinates</li>
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
  guidelines.en <- "
  <h1 id=archeoviz>archeoViz</h1>
<p><code>archeoViz</code> is a packaged R Shiny application for the visualisation, exploration, and web communication of archaeological excavation data. It includes interactive 3D and 2D visualisations, can generate cross sections and map of the remains, can run basic spatial statistics methods (convex hull, regression surfaces, 2D kernel density estimation), and display an interactive timeline of an excavation. <code>archeoViz</code> can be used locally or deployed on a server, either by allowing the user to load data through the interface or by running the app with a specific data set. The interface is available in English and in French.</p>
<p><a href=https://www.repostatus.org/#active><img src=data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHhtbG5zOnhsaW5rPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5L3hsaW5rIiB3aWR0aD0iMTE2IiBoZWlnaHQ9IjIwIiByb2xlPSJpbWciIGFyaWEtbGFiZWw9InJlcG8gc3RhdHVzOiBBY3RpdmUiPjx0aXRsZT5yZXBvIHN0YXR1czogQWN0aXZlPC90aXRsZT48bGluZWFyR3JhZGllbnQgaWQ9InMiIHgyPSIwIiB5Mj0iMTAwJSI+PHN0b3Agb2Zmc2V0PSIwIiBzdG9wLWNvbG9yPSIjYmJiIiBzdG9wLW9wYWNpdHk9Ii4xIi8+PHN0b3Agb2Zmc2V0PSIxIiBzdG9wLW9wYWNpdHk9Ii4xIi8+PC9saW5lYXJHcmFkaWVudD48Y2xpcFBhdGggaWQ9InIiPjxyZWN0IHdpZHRoPSIxMTYiIGhlaWdodD0iMjAiIHJ4PSIzIiBmaWxsPSIjZmZmIi8+PC9jbGlwUGF0aD48ZyBjbGlwLXBhdGg9InVybCgjcikiPjxyZWN0IHdpZHRoPSI3MyIgaGVpZ2h0PSIyMCIgZmlsbD0iIzU1NSIvPjxyZWN0IHg9IjczIiB3aWR0aD0iNDMiIGhlaWdodD0iMjAiIGZpbGw9IiM0YzEiLz48cmVjdCB3aWR0aD0iMTE2IiBoZWlnaHQ9IjIwIiBmaWxsPSJ1cmwoI3MpIi8+PC9nPjxnIGZpbGw9IiNmZmYiIHRleHQtYW5jaG9yPSJtaWRkbGUiIGZvbnQtZmFtaWx5PSJWZXJkYW5hLEdlbmV2YSxEZWphVnUgU2FucyxzYW5zLXNlcmlmIiB0ZXh0LXJlbmRlcmluZz0iZ2VvbWV0cmljUHJlY2lzaW9uIiBmb250LXNpemU9IjExMCI+PHRleHQgYXJpYS1oaWRkZW49InRydWUiIHg9IjM3NSIgeT0iMTUwIiBmaWxsPSIjMDEwMTAxIiBmaWxsLW9wYWNpdHk9Ii4zIiB0cmFuc2Zvcm09InNjYWxlKC4xKSIgdGV4dExlbmd0aD0iNjMwIj5yZXBvIHN0YXR1czwvdGV4dD48dGV4dCB4PSIzNzUiIHk9IjE0MCIgdHJhbnNmb3JtPSJzY2FsZSguMSkiIGZpbGw9IiNmZmYiIHRleHRMZW5ndGg9IjYzMCI+cmVwbyBzdGF0dXM8L3RleHQ+PHRleHQgYXJpYS1oaWRkZW49InRydWUiIHg9IjkzNSIgeT0iMTUwIiBmaWxsPSIjMDEwMTAxIiBmaWxsLW9wYWNpdHk9Ii4zIiB0cmFuc2Zvcm09InNjYWxlKC4xKSIgdGV4dExlbmd0aD0iMzMwIj5BY3RpdmU8L3RleHQ+PHRleHQgeD0iOTM1IiB5PSIxNDAiIHRyYW5zZm9ybT0ic2NhbGUoLjEpIiBmaWxsPSIjZmZmIiB0ZXh0TGVuZ3RoPSIzMzAiPkFjdGl2ZTwvdGV4dD48L2c+PC9zdmc+ alt=Project Status: Active – The project has reached a stable, usable state and is being actively developed. /></a> <a href=https://www.tidyverse.org/lifecycle/#maturing><img src=data:image/svg+xml;charset=utf-8;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHhtbG5zOnhsaW5rPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5L3hsaW5rIiB3aWR0aD0iMTE2IiBoZWlnaHQ9IjIwIiByb2xlPSJpbWciIGFyaWEtbGFiZWw9ImxpZmVjeWNsZTogbWF0dXJpbmciPjx0aXRsZT5saWZlY3ljbGU6IG1hdHVyaW5nPC90aXRsZT48bGluZWFyR3JhZGllbnQgaWQ9InMiIHgyPSIwIiB5Mj0iMTAwJSI+PHN0b3Agb2Zmc2V0PSIwIiBzdG9wLWNvbG9yPSIjYmJiIiBzdG9wLW9wYWNpdHk9Ii4xIi8+PHN0b3Agb2Zmc2V0PSIxIiBzdG9wLW9wYWNpdHk9Ii4xIi8+PC9saW5lYXJHcmFkaWVudD48Y2xpcFBhdGggaWQ9InIiPjxyZWN0IHdpZHRoPSIxMTYiIGhlaWdodD0iMjAiIHJ4PSIzIiBmaWxsPSIjZmZmIi8+PC9jbGlwUGF0aD48ZyBjbGlwLXBhdGg9InVybCgjcikiPjxyZWN0IHdpZHRoPSI1NSIgaGVpZ2h0PSIyMCIgZmlsbD0iIzU1NSIvPjxyZWN0IHg9IjU1IiB3aWR0aD0iNjEiIGhlaWdodD0iMjAiIGZpbGw9IiMwMDdlYzYiLz48cmVjdCB3aWR0aD0iMTE2IiBoZWlnaHQ9IjIwIiBmaWxsPSJ1cmwoI3MpIi8+PC9nPjxnIGZpbGw9IiNmZmYiIHRleHQtYW5jaG9yPSJtaWRkbGUiIGZvbnQtZmFtaWx5PSJWZXJkYW5hLEdlbmV2YSxEZWphVnUgU2FucyxzYW5zLXNlcmlmIiB0ZXh0LXJlbmRlcmluZz0iZ2VvbWV0cmljUHJlY2lzaW9uIiBmb250LXNpemU9IjExMCI+PHRleHQgYXJpYS1oaWRkZW49InRydWUiIHg9IjI4NSIgeT0iMTUwIiBmaWxsPSIjMDEwMTAxIiBmaWxsLW9wYWNpdHk9Ii4zIiB0cmFuc2Zvcm09InNjYWxlKC4xKSIgdGV4dExlbmd0aD0iNDUwIj5saWZlY3ljbGU8L3RleHQ+PHRleHQgeD0iMjg1IiB5PSIxNDAiIHRyYW5zZm9ybT0ic2NhbGUoLjEpIiBmaWxsPSIjZmZmIiB0ZXh0TGVuZ3RoPSI0NTAiPmxpZmVjeWNsZTwvdGV4dD48dGV4dCBhcmlhLWhpZGRlbj0idHJ1ZSIgeD0iODQ1IiB5PSIxNTAiIGZpbGw9IiMwMTAxMDEiIGZpbGwtb3BhY2l0eT0iLjMiIHRyYW5zZm9ybT0ic2NhbGUoLjEpIiB0ZXh0TGVuZ3RoPSI1MTAiPm1hdHVyaW5nPC90ZXh0Pjx0ZXh0IHg9Ijg0NSIgeT0iMTQwIiB0cmFuc2Zvcm09InNjYWxlKC4xKSIgZmlsbD0iI2ZmZiIgdGV4dExlbmd0aD0iNTEwIj5tYXR1cmluZzwvdGV4dD48L2c+PC9zdmc+ alt=Lifecycle: maturing /></a> <a href=https://www.r-project.org/Licenses/GPL-3><img src=data:image/svg+xml;charset=utf-8;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHhtbG5zOnhsaW5rPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5L3hsaW5rIiB3aWR0aD0iMTAwIiBoZWlnaHQ9IjIwIiByb2xlPSJpbWciIGFyaWEtbGFiZWw9IkxpY2Vuc2U6IEdQTCB2MyI+PHRpdGxlPkxpY2Vuc2U6IEdQTCB2MzwvdGl0bGU+PGxpbmVhckdyYWRpZW50IGlkPSJzIiB4Mj0iMCIgeTI9IjEwMCUiPjxzdG9wIG9mZnNldD0iMCIgc3RvcC1jb2xvcj0iI2JiYiIgc3RvcC1vcGFjaXR5PSIuMSIvPjxzdG9wIG9mZnNldD0iMSIgc3RvcC1vcGFjaXR5PSIuMSIvPjwvbGluZWFyR3JhZGllbnQ+PGNsaXBQYXRoIGlkPSJyIj48cmVjdCB3aWR0aD0iMTAwIiBoZWlnaHQ9IjIwIiByeD0iMyIgZmlsbD0iI2ZmZiIvPjwvY2xpcFBhdGg+PGcgY2xpcC1wYXRoPSJ1cmwoI3IpIj48cmVjdCB3aWR0aD0iNTEiIGhlaWdodD0iMjAiIGZpbGw9IiM1NTUiLz48cmVjdCB4PSI1MSIgd2lkdGg9IjQ5IiBoZWlnaHQ9IjIwIiBmaWxsPSIjMDA3ZWM2Ii8+PHJlY3Qgd2lkdGg9IjEwMCIgaGVpZ2h0PSIyMCIgZmlsbD0idXJsKCNzKSIvPjwvZz48ZyBmaWxsPSIjZmZmIiB0ZXh0LWFuY2hvcj0ibWlkZGxlIiBmb250LWZhbWlseT0iVmVyZGFuYSxHZW5ldmEsRGVqYVZ1IFNhbnMsc2Fucy1zZXJpZiIgdGV4dC1yZW5kZXJpbmc9Imdlb21ldHJpY1ByZWNpc2lvbiIgZm9udC1zaXplPSIxMTAiPjx0ZXh0IGFyaWEtaGlkZGVuPSJ0cnVlIiB4PSIyNjUiIHk9IjE1MCIgZmlsbD0iIzAxMDEwMSIgZmlsbC1vcGFjaXR5PSIuMyIgdHJhbnNmb3JtPSJzY2FsZSguMSkiIHRleHRMZW5ndGg9IjQxMCI+TGljZW5zZTwvdGV4dD48dGV4dCB4PSIyNjUiIHk9IjE0MCIgdHJhbnNmb3JtPSJzY2FsZSguMSkiIGZpbGw9IiNmZmYiIHRleHRMZW5ndGg9IjQxMCI+TGljZW5zZTwvdGV4dD48dGV4dCBhcmlhLWhpZGRlbj0idHJ1ZSIgeD0iNzQ1IiB5PSIxNTAiIGZpbGw9IiMwMTAxMDEiIGZpbGwtb3BhY2l0eT0iLjMiIHRyYW5zZm9ybT0ic2NhbGUoLjEpIiB0ZXh0TGVuZ3RoPSIzOTAiPkdQTCB2MzwvdGV4dD48dGV4dCB4PSI3NDUiIHk9IjE0MCIgdHJhbnNmb3JtPSJzY2FsZSguMSkiIGZpbGw9IiNmZmYiIHRleHRMZW5ndGg9IjM5MCI+R1BMIHYzPC90ZXh0PjwvZz48L3N2Zz4= alt=license /></a></p>
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
<li>locally, on the user’s machine</li>
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
<p>The possible values for the <code>set.theme</code> parameter are illustrated on <a href=https://rstudio.github.io/shinythemes>this page</a>. The language of the application can be set with the <code>lang</code> parameter, either with an “en”/“English” or “fr”/“French” value.</p>
<h2 id=demonstration>Demonstration</h2>
<p>Demonstration instances of the application are deployed on the <em>Huma Num</em> Shiny server:</p>
<ul>
<li><a href=https://analytics.huma-num.fr/Sebastien.Plutniak/archeoviz>archeoViz in English</a>.</li>
<li><a href=https://analytics.huma-num.fr/Sebastien.Plutniak/archeoviz-fr>archeoViz in French</a>.</li>
</ul>
<p>For a real case use, see the example of the prehistoric <a href=https://analytics.huma-num.fr/Sebastien.Plutniak/poeymau/>Poeymaü cave</a> in the Pyrenees (note that this application is a modified version of <code>archeoViz</code>).</p>
<h1 id=community-guidelines>Community guidelines</h1>
<h2 id=reporting-bugs>Reporting bugs</h2>
<p>If you encounter a bug, please fill an <a href=https://github.com/sebastien-plutniak/archeoviz/issues>issue</a> with all the details needed to reproduce it.</p>
<h2 id=suggesting-changes>Suggesting changes</h2>
<p>Suggestions of changes to <code>archeoViz</code> are welcome. These requests may concern additional functions, changes to documentation, additional examples, new features, etc. They can be made by filling an <a href=https://github.com/sebastien-plutniak/archeoviz/issues>issue</a> and, even better, using pull requests and the <a href=https://help.github.com/articles/about-pull-requests>GitHub Fork and Pull model</a>.</p>
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
<p>Sub-sets can be defined by object categories, using the “variable” and “values” fields. Once one of the “object_type” (or other possible “object_” variables) is selected, its values appear below and can be selected using the tick boxes. The selection must be validated by clicking on the “Validate” button. This selection determines the data that will be displayed in the plots and tables.</p>
<h3 id=object-selection>Object selection</h3>
<p>In the “3D plot” tab, clicking on a point displays information about that point in the table below the plot.</p>
<h2 id=interactive-visualisation>Interactive visualisation</h2>
<p>The plots in the “3D plot”, “Map”, “Section X”, and “Section Y” tabs are generated using the <a href=https://CRAN.R-project.org/package=plotly><code>plotly</code></a> library. All the plots are dynamic and include a menu bar above the plot with several options (generating an image file, zooming, moving the view, etc). See details on the <a href=https://plotly.com/chart-studio-help/getting-to-know-the-plotly-modebar>plotly website</a>.</p>
<p>Clicking on a legend’s item modifies the display:</p>
<ul>
<li>a simple click on an item activates/deactivates its display;</li>
<li>a double click on an item displays this item only (another double click cancels it)</li>
</ul>
<p>This feature makes it possible to choose which layers are shown.</p>
<h2 id=graphical-outputs>Graphical outputs</h2>
<p>Several graphical outputs can be generated in <code>archeoViz</code>.</p>
<ul>
<li>All the plots generated with <code>plotly</code> include an export function in .png format.</li>
<li>the excavation map (in the “Excavation timeline” tab) can be downloaded in .svg format with the button below the plot.</li>
</ul>
<h2 id=spatial-statistics>Spatial statistics</h2>
<p><code>archeoViz</code> includes some spatial analysis functionalities, intended for basic and exploratory use.</p>
<h3 id=regression-surfaces>Regression surfaces</h3>
<p>In the “3D plot” tab, clicking on “Compute surfaces” and “Validate” displays the regression surface associated with each layer (with at least 100 points). The surfaces are computed using the generalized additive model implemented in the <a href=https://CRAN.R-project.org/package=mgcv><code>mgcv</code></a> package.</p>
<h3 id=convex-hulls>Convex hulls</h3>
<p>In the “3D plot” tab, clicking on “Compute hulls” and “Validate” displays the convex hull associated with each layer (with at least 10 points). The convex hulls are computed using the <a href=https://CRAN.R-project.org/package=cxhull><code>cxhull</code></a> package.</p>
<h3 id=2d-density-kernel>2D density kernel</h3>
<p>In the “Map” tab, ticking the “Compute density” box and clicking on “Validate” generates a map with contour lines showing the points’ density. The 2D kernel density is computed with the <code>kde2d</code> function of the <a href=https://CRAN.R-project.org/package=MASS><code>MASS</code></a> package (through <a href=https://CRAN.R-project.org/package=ggplot2><code>ggplot2</code></a>).</p>
<h1 id=references>References</h1>
<ul>
<li>Plutniak, Sébastien. 2022. “archeoViz. Visualisation, Exploration, and Web Communication of Archaeological Excavation Data”. v0.1, DOI: TODO.</li>
</ul>
  "
  
  
  # guidelines.fr ----
  guidelines.fr <- "
<h1 class=title toc-ignore>archeoViz</h1>
<p><code>archeoViz</code> est une application dédiée à l'archéologie. Elle permet de <em>visualiser</em>, d'<em>explorer</em> interactivement, et d'exposer et <em>communiquer</em> rapidement sur le web des données archéologiques de terrain. Elle propose des <em>visualisations</em> en 3D et 2D, génère des <em>coupes</em> et des <em>cartes</em> des restes archéologiques, permet de réaliser des <em>statistiques spatiales</em> simples (enveloppes convexes, surfaces de régression, estimation de densité par noyau en 2D), et de visualiser une <em>chronologie</em> interactive des fouilles d'un site. <code>archeoViz</code> peut être utilisée localement ou déployée sur un serveur, soit en laissant la possibilité de charger des données via l'interface ou en exécutant l'application avec un jeu de donnée spécifique. L'interface est disponible en anglais et en français.</p>
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
<li><a href=#données>Données</a></li>
<li><a href=#sous-sélection-de-données>Sous-sélection de données</a></li>
<li><a href=#visualisations-interactives>Visualisations interactives</a></li>
<li><a href=#sorties-graphiques>Sorties graphiques</a></li>
<li><a href=#statistiques-spatiales>Statistiques spatiales</a><br />
</li>
</ul></li>
<li><a href=#références><strong>Références</strong></a></li>
</ul>
<div id=installation class=section level1>
<h1>Installation</h1>
<p><code>archeoViz</code> peut être employée de deux manières:</p>
<ul>
<li>localement, sur la machine de l'utilisateur</li>
<li>à distance, après déploiement sur un serveur distant</li>
</ul>
<div id=locale class=section level2>
<h2>Locale</h2>
<p>Le package peut être installé depuis GitHub avec:</p>
<pre class=r><code># install.packages(&quot;devtools&quot;)
devtools::install_github(&quot;sebastien-plutniak/archeoviz&quot;)</code></pre>
<p>Puis, chargez le package et lancez l'application avec:</p>
<pre class=r><code>library(archeoViz)
archeoViz()</code></pre>
</div>
<div id=déployée class=section level2>
<h2>Déployée</h2>
<p>Pour déployer <code>archeoViz</code> sur votre Shiny server, téléchargez premièrement le package:</p>
<pre class=r><code># déterminez le répertoire de travail dans votre shiny server:
setwd(dir = &quot;/some/path/&quot;)
# téléchargez le package:
download.file(url = &quot;https://github.com/sebastien-plutniak/archeoviz/archive/master.zip&quot;,
              destfile = &quot;archeoviz.zip&quot;)
# décompression:
unzip(zipfile = &quot;archeoviz.zip&quot;)</code></pre>
<p>Puis, rendez-vous à <code>https://&lt;your-shiny-server&gt;/archeoviz-main</code>.</p>
<p>Pour paramétrer l'application avec vos données et préférences, éditez le fichier app.R situé à la racine du répertoire de l'application:</p>
<pre class=r><code>archeoViz(objects.df = NULL,   # data.frame pour les objets
          refits.df = NULL,    # data.frame optionnel pour les remontages
          timeline.df = NULL,  # data.frame optionnel pour la chronologie des fouilles
          title = NULL,        # titre du site / du jeu de données
          home.text = NULL,    # contenu html à afficher sur la page d'accueil
          lang = &quot;fr&quot;          # langue de l'interface (&quot;English&quot; ou &quot;French&quot;)
          set.theme = &quot;cosmo&quot;) # thème graphique de l'interface Shiny</code></pre>
<p>Les valeurs possibles pour le paramètre <code>set.theme</code> sont illustrées sur <a href=https://rstudio.github.io/shinythemes>cette page</a>. La langue de l'application peut être définie avec le paramètre <code>lang</code>, qui accepte les valeurs “en”/“English” ou “fr”/“French”.</p>
</div>
<div id=démonstration class=section level2>
<h2>Démonstration</h2>
<p>Des instances de démonstration de l'application sont déployées sur le Shiny server d'<em>Huma Num</em>:</p>
<ul>
<li><a href=https://analytics.huma-num.fr/Sebastien.Plutniak/archeoviz-fr><code>archeoViz</code> en Français</a>.</li>
<li><a href=https://analytics.huma-num.fr/Sebastien.Plutniak/archeoviz><code>archeoViz</code> en Anglais</a>.</li>
</ul>
<p>Pour un cas d'emploi réel, voir l'exemple de la grotte préhistorique du <a href=https://analytics.huma-num.fr/Sebastien.Plutniak/poeymau/>Poeymaü</a> dans les Pyrénées (N.B. il s'agit dans ce cas d'une version modifiée de l'application <code>archeoViz</code>).</p>
</div>
</div>
<div id=recommandations-communautaires class=section level1>
<h1>Recommandations communautaires</h1>
<div id=signaler-un-bug class=section level2>
<h2>Signaler un bug</h2>
<p>Si vous rencontrez un bug, ouvrez une <a href=https://github.com/sebastien-plutniak/archeoviz/issues>issue</a> en indiquant tous les détails nécessaires pour le reproduire.</p>
</div>
<div id=suggérer-un-changement class=section level2>
<h2>Suggérer un changement</h2>
<p>Les suggestions de modifications sont bienvenues. Les demandes peuvent concerner des fonctions additionnelles, des modifications dans la documentation, des exemples additionnels, de nouvelles fonctionnalités, etc. Elles peuvent être faite en ouvrant une <a href=https://github.com/sebastien-plutniak/archeoviz/issues>issue</a> ou, mieux encore, en employant une <em>pull requests</em> et le modèle GitHub <a href=https://help.github.com/articles/about-pull-requests>Fork and Pull</a>.</p>
</div>
</div>
<div id=utilisation class=section level1>
<h1>Utilisation</h1>
<p>Considérant les restes archéologiques d'un site donné, <code>archeoViz</code> est conçu pour réduire les freins techniques à la réalisation de trois objectifs:</p>
<ul>
<li>l'exploration spatiale basique et la production de documents graphiques analytiques;</li>
<li>la pré-publication rapide de données archéologiques, à destination de la communauté scientifique;</li>
<li>le déploiement aisé d'un outil d'exposition et de communication, à destination d'un plus large public.</li>
</ul>
<p>N.B.: par conséquent, <code>archeoViz</code> n't pas destiné à se substituer à des outils d'analyse plus sophistiqués (e.g., SIG, packages statistiques, etc.)</p>
<div id=données class=section level2>
<h2>Données</h2>
<p>Il existe trois manières d'introduire des données dans <code>archeoViz</code>:</p>
<ol style=list-style-type: decimal>
<li>en chargeant des tableaux à partir de l'onglet “Données”,</li>
<li>en employant le générateur de données aléatoire dans l'onglet “Données”;</li>
<li>en paramétrant la fonction <code>archeoViz</code> avant de lancer l'application.</li>
</ol>
<div id=par-chargement-de-tableaux class=section level3>
<h3>Par chargement de tableaux</h3>
<p>Des tableaux pour trois types de données peuvent être chargés à partir de l'onglet “Données”:</p>
<ul>
<li>un tableau “objects” (requis), à propos des objets;</li>
<li>un tableau “refits” (optionnel), à propos des relations de remontage;</li>
<li>un tableau “timeline” (optionnel), à propos des carrés du site et des années où ils ont été fouillés.</li>
</ul>
<p>Les tableaux doivent être au format .csv et la première ligne doit contenir les noms des variables (le symbole séparateur du csv peut être défini dans l'interface). Plus de détails à propos des formats et des colonnes sont donnés dans l'onglet “Données”.</p>
</div>
<div id=par-génération-de-données-aléatoires class=section level3>
<h3>Par génération de données aléatoires</h3>
<p>À des fins de démonstration, il est possible d'employer des données aléatoirement générées. Déplacer le curseur sur une valeur supérieure à 0, dans l'onglet “Données”, active cette fonctionnalité (replacer le curseur sur 0 la désactive). Des données d'objets, de remontage, et de chronologie de la fouille sont alors générés, permettant de tester toutes les fonctionnalités d'<code>archeoViz</code>.</p>
</div>
<div id=par-paramétrage-de-la-fonction class=section level3>
<h3>Par paramétrage de la fonction</h3>
<p>La fonction de lancement d'<code>archeoViz()</code> peut être exécutée sans définir de paramètres:</p>
<pre class=r><code>archeoViz()</code></pre>
<p>ou en employant les paramètres <code>objects.df</code>, <code>refits.df</code>, <code>timeline.df</code> afin de charger des données relatives, respectivement, aux objets, aux remontages, et à la chronologie.</p>
<pre class=r><code>archeoViz(objects.df = NULL,  # data.frame pour les objets
          refits.df = NULL,   # data.frame optionnel pour les remontages
          timeline.df = NULL) # data.frame optionnel pour la chronologie</code></pre>
</div>
</div>
<div id=sous-sélection-de-données class=section level2>
<h2>Sous-sélection de données</h2>
<p>Après que les données soient chargées, des sous-sélection peuvent être réalisées en employant les options du menu gauche de l'interface. Plusieurs paramètres sont possibles: le mode de localisation et les catégories des objets.</p>
<div id=par-mode-de-localisation class=section level3>
<h3>Par mode de localisation</h3>
<p>La localisation des objets archéologiques peut avoir été enregistrée de différentes manières, plus ou moins précises: comme des points (coordonnées xyz), sur des lignes, des plans, ou au sein de volumes (intervalles de valeurs x, y et/ou z). Dans <code>archeoViz</code>, une distinction est faite entre les localisations exactes (les points) et les autres types de localisations vagues (lignes, plans, volumes). Les boutons permettent de sélectionner le sous-ensemble de données correspondant à l'un, l'autre, ou les deux modes de localisation.</p>
</div>
<div id=par-catégorie-dobjet class=section level3>
<h3>Par catégorie d'objet</h3>
<p>Des sous-ensembles de données peuvent être définis à partir des catégories des objets, en employant les champs “Variable” et “valeurs”. Après que l'une des variables ait été sélectionnée (“object_type” ou une autre “object_” variable possible), ses valeurs apparaissent en dessous et peuvent être sélectionnées en cochant les items. La sélection doit être validée en cliquant sur le bouton “Valider”. Cette sélection détermine les données qui seront présentées dans les graphiques et tableaux.</p>
</div>
<div id=par-objet class=section level3>
<h3>Par objet</h3>
<p>Dans l'onglet “Vue 3D”, cliquer sur un point active l'affichage d'information à son sujet dans le tableau présente sous la visualisation.</p>
</div>
</div>
<div id=visualisations-interactives class=section level2>
<h2>Visualisations interactives</h2>
<p>Les visualisations dans les onglets “Vue 3D”, “Carte”, “Section X” et “Section Y” sont générées à l'aide de la librairie <a href=https://CRAN.R-project.org/package=plotly><code>plotly</code></a>. Toutes ces visualisations sont dynamiques et sont surmontées d'une barre de menu comportant plusieurs options (générer un fichier image, zoomer, déplacer le point de vue, etc.). Davantage de détails sont disponibles sur le <a href=https://plotly.com/chart-studio-help/getting-to-know-the-plotly-modebar>site de plotly</a>.</p>
<p>Cliquer sur un item de la légende modifie l'affichage:</p>
<ul>
<li>un simple click sur un item active/désactive son affichage;</li>
<li>un double click sur un item limite l'affichage à cet item seul (un autre double click annule cette sélection)</li>
</ul>
<p>Cette fonctionnalité permet de définir les couches devant être affichées.</p>
</div>
<div id=sorties-graphiques class=section level2>
<h2>Sorties graphiques</h2>
<p>Plusieurs sorties graphiques peuvent être générées dans <code>archeoViz</code>.</p>
<ul>
<li>Toutes les visualisations générées avec <code>plotly</code> comportent une fonction d'exportation en format .png.</li>
<li>le plan des fouilles (dans l'onglet “Chronologie”) peut être téléchargé au format .svg en cliquant sur le bouton en dessous.</li>
</ul>
</div>
<div id=statistiques-spatiales class=section level2>
<h2>Statistiques spatiales</h2>
<p><code>archeoViz</code> comporte quelques fonctionnalités d'analyse spatiale, destinées à usage simple et exploratoire.</p>
<div id=surfaces-de-régression class=section level3>
<h3>Surfaces de régression</h3>
<p>Dans l'onglet “Vue 3D”, cliquer sur “Calculer les surfaces” puis “Valider” affiche les surfaces de régression associées à chaque sous-ensemble de points (couche), comportant au point 100 points. Les surfaces sont calculées grâce au modèle additif généralisé implémenté dans le package <a href=https://CRAN.R-project.org/package=mgcv><code>mgcv</code></a>.</p>
</div>
<div id=enveloppes-convexes class=section level3>
<h3>Enveloppes convexes</h3>
<p>Cliquer sur “Calculer les enveloppes” puis “Valider”, dans l'onglet “Vue 3D”, affiche les enveloppes convexes associées à chaque sous-ensemble de points (couches), comportant au moins 10 points. Les enveloppes sont calculées en employant le package <a href=https://CRAN.R-project.org/package=cxhull><code>cxhull</code></a>.</p>
</div>
<div id=estimation-2d-de-densité-par-noyau class=section level3>
<h3>Estimation 2D de densité par noyau</h3>
<p>Dans l'onglet “Plan”, cocher la case “Calculer la densité” et cliquer sur “Valider” génère un plan comportant des lignes de contour représentant la densité des points. L'estimation bidimensionnelle de densité par noyau est calculée avec la fonction <code>kde2d</code> du package <a href=https://CRAN.R-project.org/package=MASS><code>MASS</code></a> (à travers le package <a href=https://CRAN.R-project.org/package=ggplot2><code>ggplot2</code></a>).</p>
</div>
</div>
</div>
<div id=références class=section level1>
<h1>Références</h1>
<ul>
<li>Plutniak, Sébastien. 2022. “archeoViz. Visualisation, Exploration, and Web Communication of Archaeological Excavation Data”. v0.1, DOI: TODO.</li>
</ul>
</div>
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
    location = "Mode de localisation",
    values = "Valeurs",
    validate = "Valider",
    view = "Afficher",
    header.3d.options = "Options vue 3D",
    header.objects.table = "Tableau des objets",
    header.refits.table = "Tableau des remontages",
    header.timeline.table = "Tableau de chronologie des fouilles",
    choose.csv = "Sélectionnez un fichier csv",
    input.objects = input.objects.fr,
    input.refits = input.refits.fr,
    input.timeline = input.timeline.fr,
    guidelines = guidelines.fr,
    separator = "Séparateur",
    decimal = "Décimales",
    use.demo = "Simuler des données pour n objets",
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
    tab.layer.loc = "Nombre d'objets par couche et mode de localisation",
    exact = "Exacte",
    fuzzy = "Vague",
    depth = "Profondeur",
    exact.fuzzy = "Exacte ou vague",
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


