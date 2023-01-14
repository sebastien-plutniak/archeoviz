
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
      <li> <b>year</b> : <i>valeur numérique</i>, année de fouille de l'object</li>
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
  
  # guidelines ----
  # : en ----
  guidelines.en <- "
<h1 id=archeoviz>archeoViz</h1>
<p><code>archeoViz</code> is a packaged R Shiny application for the visualisation, exploration, and web communication of archaeological excavation data. It includes interactive 3D and 2D visualisations, can generate cross sections and map of the remains, can run basic spatial statistics methods (convex hull, regression surfaces, 2D kernel density estimation), and display an interactive timeline of an excavation. <code>archeoViz</code> can be used locally or deployed on a server, either by allowing the user to load data through the interface or by running the app with a specific data set. The interface is available in English and in French.</p>
<p><a href=https://www.repostatus.org/#active><img src=data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHhtbG5zOnhsaW5rPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5L3hsaW5rIiB3aWR0aD0iMTE2IiBoZWlnaHQ9IjIwIiByb2xlPSJpbWciIGFyaWEtbGFiZWw9InJlcG8gc3RhdHVzOiBBY3RpdmUiPjx0aXRsZT5yZXBvIHN0YXR1czogQWN0aXZlPC90aXRsZT48bGluZWFyR3JhZGllbnQgaWQ9InMiIHgyPSIwIiB5Mj0iMTAwJSI+PHN0b3Agb2Zmc2V0PSIwIiBzdG9wLWNvbG9yPSIjYmJiIiBzdG9wLW9wYWNpdHk9Ii4xIi8+PHN0b3Agb2Zmc2V0PSIxIiBzdG9wLW9wYWNpdHk9Ii4xIi8+PC9saW5lYXJHcmFkaWVudD48Y2xpcFBhdGggaWQ9InIiPjxyZWN0IHdpZHRoPSIxMTYiIGhlaWdodD0iMjAiIHJ4PSIzIiBmaWxsPSIjZmZmIi8+PC9jbGlwUGF0aD48ZyBjbGlwLXBhdGg9InVybCgjcikiPjxyZWN0IHdpZHRoPSI3MyIgaGVpZ2h0PSIyMCIgZmlsbD0iIzU1NSIvPjxyZWN0IHg9IjczIiB3aWR0aD0iNDMiIGhlaWdodD0iMjAiIGZpbGw9IiM0YzEiLz48cmVjdCB3aWR0aD0iMTE2IiBoZWlnaHQ9IjIwIiBmaWxsPSJ1cmwoI3MpIi8+PC9nPjxnIGZpbGw9IiNmZmYiIHRleHQtYW5jaG9yPSJtaWRkbGUiIGZvbnQtZmFtaWx5PSJWZXJkYW5hLEdlbmV2YSxEZWphVnUgU2FucyxzYW5zLXNlcmlmIiB0ZXh0LXJlbmRlcmluZz0iZ2VvbWV0cmljUHJlY2lzaW9uIiBmb250LXNpemU9IjExMCI+PHRleHQgYXJpYS1oaWRkZW49InRydWUiIHg9IjM3NSIgeT0iMTUwIiBmaWxsPSIjMDEwMTAxIiBmaWxsLW9wYWNpdHk9Ii4zIiB0cmFuc2Zvcm09InNjYWxlKC4xKSIgdGV4dExlbmd0aD0iNjMwIj5yZXBvIHN0YXR1czwvdGV4dD48dGV4dCB4PSIzNzUiIHk9IjE0MCIgdHJhbnNmb3JtPSJzY2FsZSguMSkiIGZpbGw9IiNmZmYiIHRleHRMZW5ndGg9IjYzMCI+cmVwbyBzdGF0dXM8L3RleHQ+PHRleHQgYXJpYS1oaWRkZW49InRydWUiIHg9IjkzNSIgeT0iMTUwIiBmaWxsPSIjMDEwMTAxIiBmaWxsLW9wYWNpdHk9Ii4zIiB0cmFuc2Zvcm09InNjYWxlKC4xKSIgdGV4dExlbmd0aD0iMzMwIj5BY3RpdmU8L3RleHQ+PHRleHQgeD0iOTM1IiB5PSIxNDAiIHRyYW5zZm9ybT0ic2NhbGUoLjEpIiBmaWxsPSIjZmZmIiB0ZXh0TGVuZ3RoPSIzMzAiPkFjdGl2ZTwvdGV4dD48L2c+PC9zdmc+ alt=Project Status: Active – The project has reached a stable, usable state and is being actively developed. /></a> <a href=https://lifecycle.r-lib.org/articles/stages.html#maturing><img src=data:image/svg+xml;charset=utf-8;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHhtbG5zOnhsaW5rPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5L3hsaW5rIiB3aWR0aD0iMTE2IiBoZWlnaHQ9IjIwIiByb2xlPSJpbWciIGFyaWEtbGFiZWw9ImxpZmVjeWNsZTogbWF0dXJpbmciPjx0aXRsZT5saWZlY3ljbGU6IG1hdHVyaW5nPC90aXRsZT48bGluZWFyR3JhZGllbnQgaWQ9InMiIHgyPSIwIiB5Mj0iMTAwJSI+PHN0b3Agb2Zmc2V0PSIwIiBzdG9wLWNvbG9yPSIjYmJiIiBzdG9wLW9wYWNpdHk9Ii4xIi8+PHN0b3Agb2Zmc2V0PSIxIiBzdG9wLW9wYWNpdHk9Ii4xIi8+PC9saW5lYXJHcmFkaWVudD48Y2xpcFBhdGggaWQ9InIiPjxyZWN0IHdpZHRoPSIxMTYiIGhlaWdodD0iMjAiIHJ4PSIzIiBmaWxsPSIjZmZmIi8+PC9jbGlwUGF0aD48ZyBjbGlwLXBhdGg9InVybCgjcikiPjxyZWN0IHdpZHRoPSI1NSIgaGVpZ2h0PSIyMCIgZmlsbD0iIzU1NSIvPjxyZWN0IHg9IjU1IiB3aWR0aD0iNjEiIGhlaWdodD0iMjAiIGZpbGw9IiMwMDdlYzYiLz48cmVjdCB3aWR0aD0iMTE2IiBoZWlnaHQ9IjIwIiBmaWxsPSJ1cmwoI3MpIi8+PC9nPjxnIGZpbGw9IiNmZmYiIHRleHQtYW5jaG9yPSJtaWRkbGUiIGZvbnQtZmFtaWx5PSJWZXJkYW5hLEdlbmV2YSxEZWphVnUgU2FucyxzYW5zLXNlcmlmIiB0ZXh0LXJlbmRlcmluZz0iZ2VvbWV0cmljUHJlY2lzaW9uIiBmb250LXNpemU9IjExMCI+PHRleHQgYXJpYS1oaWRkZW49InRydWUiIHg9IjI4NSIgeT0iMTUwIiBmaWxsPSIjMDEwMTAxIiBmaWxsLW9wYWNpdHk9Ii4zIiB0cmFuc2Zvcm09InNjYWxlKC4xKSIgdGV4dExlbmd0aD0iNDUwIj5saWZlY3ljbGU8L3RleHQ+PHRleHQgeD0iMjg1IiB5PSIxNDAiIHRyYW5zZm9ybT0ic2NhbGUoLjEpIiBmaWxsPSIjZmZmIiB0ZXh0TGVuZ3RoPSI0NTAiPmxpZmVjeWNsZTwvdGV4dD48dGV4dCBhcmlhLWhpZGRlbj0idHJ1ZSIgeD0iODQ1IiB5PSIxNTAiIGZpbGw9IiMwMTAxMDEiIGZpbGwtb3BhY2l0eT0iLjMiIHRyYW5zZm9ybT0ic2NhbGUoLjEpIiB0ZXh0TGVuZ3RoPSI1MTAiPm1hdHVyaW5nPC90ZXh0Pjx0ZXh0IHg9Ijg0NSIgeT0iMTQwIiB0cmFuc2Zvcm09InNjYWxlKC4xKSIgZmlsbD0iI2ZmZiIgdGV4dExlbmd0aD0iNTEwIj5tYXR1cmluZzwvdGV4dD48L2c+PC9zdmc+ alt=Lifecycle: maturing /></a> <a href=https://github.com/sebastien-plutniak/archeoviz/actions/workflows/r.yml><img src=data:image/svg+xml; charset=utf-8;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSI4NSIgaGVpZ2h0PSIyMCI+CiAgPHRpdGxlPlIgLSBwYXNzaW5nPC90aXRsZT4KICA8ZGVmcz4KICAgIDxsaW5lYXJHcmFkaWVudCBpZD0id29ya2Zsb3ctZmlsbCIgeDE9IjUwJSIgeTE9IjAlIiB4Mj0iNTAlIiB5Mj0iMTAwJSI+CiAgICAgIDxzdG9wIHN0b3AtY29sb3I9IiM0NDRENTYiIG9mZnNldD0iMCUiPjwvc3RvcD4KICAgICAgPHN0b3Agc3RvcC1jb2xvcj0iIzI0MjkyRSIgb2Zmc2V0PSIxMDAlIj48L3N0b3A+CiAgICA8L2xpbmVhckdyYWRpZW50PgogICAgPGxpbmVhckdyYWRpZW50IGlkPSJzdGF0ZS1maWxsIiB4MT0iNTAlIiB5MT0iMCUiIHgyPSI1MCUiIHkyPSIxMDAlIj4KICAgICAgPHN0b3Agc3RvcC1jb2xvcj0iIzM0RDA1OCIgb2Zmc2V0PSIwJSI+PC9zdG9wPgogICAgICA8c3RvcCBzdG9wLWNvbG9yPSIjMjhBNzQ1IiBvZmZzZXQ9IjEwMCUiPjwvc3RvcD4KICAgIDwvbGluZWFyR3JhZGllbnQ+CiAgPC9kZWZzPgogIDxnIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCI+CiAgICA8ZyBmb250LWZhbWlseT0iJiMzOTtEZWphVnUgU2FucyYjMzk7LFZlcmRhbmEsR2VuZXZhLHNhbnMtc2VyaWYiIGZvbnQtc2l6ZT0iMTEiPgogICAgICA8cGF0aCBpZD0id29ya2Zsb3ctYmciIGQ9Ik0wLDMgQzAsMS4zNDMxIDEuMzU1MiwwIDMuMDI3MDI3MDMsMCBMMzUsMCBMMzUsMjAgTDMuMDI3MDI3MDMsMjAgQzEuMzU1MiwyMCAwLDE4LjY1NjkgMCwxNyBMMCwzIFoiIGZpbGw9InVybCgjd29ya2Zsb3ctZmlsbCkiIGZpbGwtcnVsZT0ibm9uemVybyI+PC9wYXRoPgogICAgICA8dGV4dCBmaWxsPSIjMDEwMTAxIiBmaWxsLW9wYWNpdHk9Ii4zIj4KICAgICAgICA8dHNwYW4geD0iMjIuMTk4MTk4MiIgeT0iMTUiIGFyaWEtaGlkZGVuPSJ0cnVlIj5SPC90c3Bhbj4KICAgICAgPC90ZXh0PgogICAgICA8dGV4dCBmaWxsPSIjRkZGRkZGIj4KICAgICAgICA8dHNwYW4geD0iMjIuMTk4MTk4MiIgeT0iMTQiPlI8L3RzcGFuPgogICAgICA8L3RleHQ+CiAgICA8L2c+CiAgICA8ZyB0cmFuc2Zvcm09InRyYW5zbGF0ZSgzNSkiIGZvbnQtZmFtaWx5PSImIzM5O0RlamFWdSBTYW5zJiMzOTssVmVyZGFuYSxHZW5ldmEsc2Fucy1zZXJpZiIgZm9udC1zaXplPSIxMSI+CiAgICAgIDxwYXRoIGQ9Ik0wIDBoNDYuOTM5QzQ4LjYyOSAwIDUwIDEuMzQzIDUwIDN2MTRjMCAxLjY1Ny0xLjM3IDMtMy4wNjEgM0gwVjB6IiBpZD0ic3RhdGUtYmciIGZpbGw9InVybCgjc3RhdGUtZmlsbCkiIGZpbGwtcnVsZT0ibm9uemVybyI+PC9wYXRoPgogICAgICA8dGV4dCBmaWxsPSIjMDEwMTAxIiBmaWxsLW9wYWNpdHk9Ii4zIiBhcmlhLWhpZGRlbj0idHJ1ZSI+CiAgICAgICAgPHRzcGFuIHg9IjQiIHk9IjE1Ij5wYXNzaW5nPC90c3Bhbj4KICAgICAgPC90ZXh0PgogICAgICA8dGV4dCBmaWxsPSIjRkZGRkZGIj4KICAgICAgICA8dHNwYW4geD0iNCIgeT0iMTQiPnBhc3Npbmc8L3RzcGFuPgogICAgICA8L3RleHQ+CiAgICA8L2c+CiAgICA8cGF0aCBmaWxsPSIjOTU5REE1IiBkPSJNMTEgM2MtMy44NjggMC03IDMuMTMyLTcgN2E2Ljk5NiA2Ljk5NiAwIDAgMCA0Ljc4NiA2LjY0MWMuMzUuMDYyLjQ4Mi0uMTQ4LjQ4Mi0uMzMyIDAtLjE2Ni0uMDEtLjcxOC0uMDEtMS4zMDQtMS43NTguMzI0LTIuMjEzLS40MjktMi4zNTMtLjgyMi0uMDc5LS4yMDItLjQyLS44MjMtLjcxNy0uOTktLjI0NS0uMTMtLjU5NS0uNDU0LS4wMS0uNDYzLjU1Mi0uMDA5Ljk0Ni41MDggMS4wNzcuNzE4LjYzIDEuMDU4IDEuNjM2Ljc2IDIuMDM5LjU3Ny4wNjEtLjQ1NS4yNDUtLjc2MS40NDYtLjkzNi0xLjU1Ny0uMTc1LTMuMTg1LS43NzktMy4xODUtMy40NTYgMC0uNzYyLjI3MS0xLjM5Mi43MTgtMS44ODItLjA3LS4xNzUtLjMxNS0uODkyLjA3LTEuODU1IDAgMCAuNTg2LS4xODMgMS45MjUuNzE4YTYuNSA2LjUgMCAwIDEgMS43NS0uMjM2IDYuNSA2LjUgMCAwIDEgMS43NS4yMzZjMS4zMzgtLjkxIDEuOTI1LS43MTggMS45MjUtLjcxOC4zODUuOTYzLjE0IDEuNjguMDcgMS44NTUuNDQ2LjQ5LjcxNyAxLjExMi43MTcgMS44ODIgMCAyLjY4Ni0xLjYzNiAzLjI4LTMuMTk0IDMuNDU2LjI1NC4yMTkuNDczLjYzOS40NzMgMS4yOTUgMCAuOTM2LS4wMDkgMS42ODktLjAwOSAxLjkyNSAwIC4xODQuMTMxLjQwMi40ODEuMzMyQTcuMDExIDcuMDExIDAgMCAwIDE4IDEwYzAtMy44NjctMy4xMzMtNy03LTd6Ij48L3BhdGg+CiAgPC9nPgo8L3N2Zz4KCg== alt=R /></a> <a href=https://app.codecov.io/gh/sebastien-plutniak/archeoviz><img src=data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxMTIiIGhlaWdodD0iMjAiPgogICAgPGxpbmVhckdyYWRpZW50IGlkPSJiIiB4Mj0iMCIgeTI9IjEwMCUiPgogICAgICAgIDxzdG9wIG9mZnNldD0iMCIgc3RvcC1jb2xvcj0iI2JiYiIgc3RvcC1vcGFjaXR5PSIuMSIgLz4KICAgICAgICA8c3RvcCBvZmZzZXQ9IjEiIHN0b3Atb3BhY2l0eT0iLjEiIC8+CiAgICA8L2xpbmVhckdyYWRpZW50PgogICAgPG1hc2sgaWQ9ImEiPgogICAgICAgIDxyZWN0IHdpZHRoPSIxMTIiIGhlaWdodD0iMjAiIHJ4PSIzIiBmaWxsPSIjZmZmIiAvPgogICAgPC9tYXNrPgogICAgPGcgbWFzaz0idXJsKCNhKSI+CiAgICAgICAgPHBhdGggZmlsbD0iIzU1NSIgZD0iTTAgMGg3NnYyMEgweiIgLz4KICAgICAgICA8cGF0aCBmaWxsPSIjZTA1ZDQ0IiBkPSJNNzYgMGgzNnYyMEg3NnoiIC8+CiAgICAgICAgPHBhdGggZmlsbD0idXJsKCNiKSIgZD0iTTAgMGgxMTJ2MjBIMHoiIC8+CiAgICA8L2c+CiAgICA8ZyBmaWxsPSIjZmZmIiB0ZXh0LWFuY2hvcj0ibWlkZGxlIiBmb250LWZhbWlseT0iRGVqYVZ1IFNhbnMsVmVyZGFuYSxHZW5ldmEsc2Fucy1zZXJpZiIgZm9udC1zaXplPSIxMSI+CiAgICAgICAgPHRleHQgeD0iNDYiIHk9IjE1IiBmaWxsPSIjMDEwMTAxIiBmaWxsLW9wYWNpdHk9Ii4zIj5jb2RlY292PC90ZXh0PgogICAgICAgIDx0ZXh0IHg9IjQ2IiB5PSIxNCI+Y29kZWNvdjwvdGV4dD4KICAgICAgICA8dGV4dCB4PSI5MyIgeT0iMTUiIGZpbGw9IiMwMTAxMDEiIGZpbGwtb3BhY2l0eT0iLjMiPjUxJTwvdGV4dD4KICAgICAgICA8dGV4dCB4PSI5MyIgeT0iMTQiPjUxJTwvdGV4dD4KICAgIDwvZz4KICAgIDxzdmcgdmlld0JveD0iMTIwIC04IDYwIDYwIj4KICAgICAgICA8cGF0aCBkPSJNMjMuMDEzIDBDMTAuMzMzLjAwOS4wMSAxMC4yMiAwIDIyLjc2MnYuMDU4bDMuOTE0IDIuMjc1LjA1My0uMDM2YTExLjI5MSAxMS4yOTEgMCAwIDEgOC4zNTItMS43NjcgMTAuOTExIDEwLjkxMSAwIDAgMSA1LjUgMi43MjZsLjY3My42MjQuMzgtLjgyOGMuMzY4LS44MDIuNzkzLTEuNTU2IDEuMjY0LTIuMjQuMTktLjI3Ni4zOTgtLjU1NC42MzctLjg1MWwuMzkzLS40OS0uNDg0LS40MDRhMTYuMDggMTYuMDggMCAwIDAtNy40NTMtMy40NjYgMTYuNDgyIDE2LjQ4MiAwIDAgMC03LjcwNS40NDlDNy4zODYgMTAuNjgzIDE0LjU2IDUuMDE2IDIzLjAzIDUuMDFjNC43NzkgMCA5LjI3MiAxLjg0IDEyLjY1MSA1LjE4IDIuNDEgMi4zODIgNC4wNjkgNS4zNSA0LjgwNyA4LjU5MWExNi41MyAxNi41MyAwIDAgMC00Ljc5Mi0uNzIzbC0uMjkyLS4wMDJhMTYuNzA3IDE2LjcwNyAwIDAgMC0xLjkwMi4xNGwtLjA4LjAxMmMtLjI4LjAzNy0uNTI0LjA3NC0uNzQ4LjExNS0uMTEuMDE5LS4yMTguMDQxLS4zMjcuMDYzLS4yNTcuMDUyLS41MS4xMDgtLjc1LjE2OWwtLjI2NS4wNjdhMTYuMzkgMTYuMzkgMCAwIDAtLjkyNi4yNzZsLS4wNTYuMDE4Yy0uNjgyLjIzLTEuMzYuNTExLTIuMDE2LjgzOGwtLjA1Mi4wMjZjLS4yOS4xNDUtLjU4NC4zMDUtLjg5OS40OWwtLjA2OS4wNGExNS41OTYgMTUuNTk2IDAgMCAwLTQuMDYxIDMuNDY2bC0uMTQ1LjE3NWMtLjI5LjM2LS41MjEuNjY2LS43MjMuOTYtLjE3LjI0Ny0uMzQuNTEzLS41NTIuODY0bC0uMTE2LjE5OWMtLjE3LjI5Mi0uMzIuNTctLjQ0OS44MjRsLS4wMy4wNTdhMTYuMTE2IDE2LjExNiAwIDAgMC0uODQzIDIuMDI5bC0uMDM0LjEwMmExNS42NSAxNS42NSAwIDAgMC0uNzg2IDUuMTc0bC4wMDMuMjE0YTIxLjUyMyAyMS41MjMgMCAwIDAgLjA0Ljc1NGMuMDA5LjExOS4wMi4yMzcuMDMyLjM1NS4wMTQuMTQ1LjAzMi4yOS4wNDkuNDMybC4wMS4wOGMuMDEuMDY3LjAxNy4xMzMuMDI2LjE5Ny4wMzQuMjQyLjA3NC40OC4xMTkuNzIuNDYzIDIuNDE5IDEuNjIgNC44MzYgMy4zNDUgNi45OWwuMDc4LjA5OC4wOC0uMDk1Yy42ODgtLjgxIDIuMzk1LTMuMzggMi41MzktNC45MjJsLjAwMy0uMDI5LS4wMTQtLjAyNWExMC43MjcgMTAuNzI3IDAgMCAxLTEuMjI2LTQuOTU2YzAtNS43NiA0LjU0NS0xMC41NDQgMTAuMzQzLTEwLjg5bC4zODEtLjAxNGExMS40MDMgMTEuNDAzIDAgMCAxIDYuNjUxIDEuOTU3bC4wNTQuMDM2IDMuODYyLTIuMjM3LjA1LS4wM3YtLjA1NmMuMDA2LTYuMDgtMi4zODQtMTEuNzkzLTYuNzI5LTE2LjA4OUMzNC45MzIgMi4zNjEgMjkuMTYgMCAyMy4wMTMgMCIgZmlsbD0iI0YwMUY3QSIgZmlsbC1ydWxlPSJldmVub2RkIi8+CiAgICA8L3N2Zz4KPC9zdmc+ alt=codecov /></a> <a href=https://www.r-project.org/Licenses/GPL-3><img src=data:image/svg+xml;charset=utf-8;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHhtbG5zOnhsaW5rPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5L3hsaW5rIiB3aWR0aD0iMTAwIiBoZWlnaHQ9IjIwIiByb2xlPSJpbWciIGFyaWEtbGFiZWw9IkxpY2Vuc2U6IEdQTCB2MyI+PHRpdGxlPkxpY2Vuc2U6IEdQTCB2MzwvdGl0bGU+PGxpbmVhckdyYWRpZW50IGlkPSJzIiB4Mj0iMCIgeTI9IjEwMCUiPjxzdG9wIG9mZnNldD0iMCIgc3RvcC1jb2xvcj0iI2JiYiIgc3RvcC1vcGFjaXR5PSIuMSIvPjxzdG9wIG9mZnNldD0iMSIgc3RvcC1vcGFjaXR5PSIuMSIvPjwvbGluZWFyR3JhZGllbnQ+PGNsaXBQYXRoIGlkPSJyIj48cmVjdCB3aWR0aD0iMTAwIiBoZWlnaHQ9IjIwIiByeD0iMyIgZmlsbD0iI2ZmZiIvPjwvY2xpcFBhdGg+PGcgY2xpcC1wYXRoPSJ1cmwoI3IpIj48cmVjdCB3aWR0aD0iNTEiIGhlaWdodD0iMjAiIGZpbGw9IiM1NTUiLz48cmVjdCB4PSI1MSIgd2lkdGg9IjQ5IiBoZWlnaHQ9IjIwIiBmaWxsPSIjMDA3ZWM2Ii8+PHJlY3Qgd2lkdGg9IjEwMCIgaGVpZ2h0PSIyMCIgZmlsbD0idXJsKCNzKSIvPjwvZz48ZyBmaWxsPSIjZmZmIiB0ZXh0LWFuY2hvcj0ibWlkZGxlIiBmb250LWZhbWlseT0iVmVyZGFuYSxHZW5ldmEsRGVqYVZ1IFNhbnMsc2Fucy1zZXJpZiIgdGV4dC1yZW5kZXJpbmc9Imdlb21ldHJpY1ByZWNpc2lvbiIgZm9udC1zaXplPSIxMTAiPjx0ZXh0IGFyaWEtaGlkZGVuPSJ0cnVlIiB4PSIyNjUiIHk9IjE1MCIgZmlsbD0iIzAxMDEwMSIgZmlsbC1vcGFjaXR5PSIuMyIgdHJhbnNmb3JtPSJzY2FsZSguMSkiIHRleHRMZW5ndGg9IjQxMCI+TGljZW5zZTwvdGV4dD48dGV4dCB4PSIyNjUiIHk9IjE0MCIgdHJhbnNmb3JtPSJzY2FsZSguMSkiIGZpbGw9IiNmZmYiIHRleHRMZW5ndGg9IjQxMCI+TGljZW5zZTwvdGV4dD48dGV4dCBhcmlhLWhpZGRlbj0idHJ1ZSIgeD0iNzQ1IiB5PSIxNTAiIGZpbGw9IiMwMTAxMDEiIGZpbGwtb3BhY2l0eT0iLjMiIHRyYW5zZm9ybT0ic2NhbGUoLjEpIiB0ZXh0TGVuZ3RoPSIzOTAiPkdQTCB2MzwvdGV4dD48dGV4dCB4PSI3NDUiIHk9IjE0MCIgdHJhbnNmb3JtPSJzY2FsZSguMSkiIGZpbGw9IiNmZmYiIHRleHRMZW5ndGg9IjM5MCI+R1BMIHYzPC90ZXh0PjwvZz48L3N2Zz4= alt=license /></a> <a href=https://doi.org/10.5281/zenodo.7460193><img src=data:image/svg+xml; charset=utf-8;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciCiAgICAgd2lkdGg9IjE4NiIgaGVpZ2h0PSIyMCI+CiAgICAgICAgPGxpbmVhckdyYWRpZW50IGlkPSJiIiB4Mj0iMCIgeTI9IjEwMCUiPgogICAgICAgICAgICA8c3RvcCBvZmZzZXQ9IjAiIHN0b3AtY29sb3I9IiNiYmIiIHN0b3Atb3BhY2l0eT0iLjEiLz4KICAgICAgICAgICAgPHN0b3Agb2Zmc2V0PSIxIiBzdG9wLW9wYWNpdHk9Ii4xIi8+CiAgICAgICAgPC9saW5lYXJHcmFkaWVudD4KICAgICAgICA8bWFzayBpZD0iYSIgd2lkdGg9IjE4NiIgaGVpZ2h0PSIyMCI+CiAgICAgICAgICAgIDxyZWN0IHdpZHRoPSIxODYiIGhlaWdodD0iMjAiIHJ4PSIzIgogICAgICAgICAgICBmaWxsPSIjZmZmIi8+CiAgICAgICAgPC9tYXNrPgogICAgICAgIDxnIG1hc2s9InVybCgjYSkiPgogICAgICAgICAgICA8cGF0aCBmaWxsPSIjNTU1IiBkPSJNMCAwaDMxdjIwSDB6IiAvPgogICAgICAgICAgICA8cGF0aCBmaWxsPSIjMDA3ZWM2IgogICAgICAgICAgICBkPSJNMzEgMGgxNTV2MjBIMzF6IgogICAgICAgICAgICAvPgogICAgICAgICAgICA8cGF0aCBmaWxsPSJ1cmwoI2IpIiBkPSJNMCAwaDE4NnYyMEgweiIgLz4KICAgICAgICA8L2c+CiAgICAgICAgPGcgZmlsbD0iI2ZmZiIgdGV4dC1hbmNob3I9Im1pZGRsZSIgZm9udC1mYW1pbHk9IkRlamFWdSBTYW5zLAogICAgICAgIFZlcmRhbmEsR2VuZXZhLHNhbnMtc2VyaWYiIGZvbnQtc2l6ZT0iMTEiPgogICAgICAgICAgICA8dGV4dCB4PSIxNiIgeT0iMTUiIGZpbGw9IiMwMTAxMDEiCiAgICAgICAgICAgIGZpbGwtb3BhY2l0eT0iLjMiPgogICAgICAgICAgICAgICAgRE9JCiAgICAgICAgICAgIDwvdGV4dD4KICAgICAgICAgICAgPHRleHQgeD0iMTYiIHk9IjE0Ij4KICAgICAgICAgICAgICAgIERPSQogICAgICAgICAgICA8L3RleHQ+CiAgICAgICAgICAgIDx0ZXh0IHg9IjEwOCIKICAgICAgICAgICAgeT0iMTUiIGZpbGw9IiMwMTAxMDEiIGZpbGwtb3BhY2l0eT0iLjMiPgogICAgICAgICAgICAgICAgMTAuNTI4MS96ZW5vZG8uNzQ2MDE5MwogICAgICAgICAgICA8L3RleHQ+CiAgICAgICAgICAgIDx0ZXh0IHg9IjEwOCIgeT0iMTQiPgogICAgICAgICAgICAgICAgMTAuNTI4MS96ZW5vZG8uNzQ2MDE5MwogICAgICAgICAgICA8L3RleHQ+CiAgICAgICAgPC9nPgogICAgPC9zdmc+ alt=DOI /></a> <a href=https://cran.r-project.org/package=archeoViz><img src=data:image/svg+xml; charset=utf-8;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxMzEiIGhlaWdodD0iMjAiIGFyaWEtbGFiZWw9IkNSQU4gbm90IHB1Ymxpc2hlZCI+CiAgPGxpbmVhckdyYWRpZW50IGlkPSJiIiB4Mj0iMCIgeTI9IjEwMCUiPgogICAgPHN0b3Agb2Zmc2V0PSIwIiBzdG9wLWNvbG9yPSIjYmJiIiBzdG9wLW9wYWNpdHk9Ii4xIi8+CiAgICA8c3RvcCBvZmZzZXQ9IjEiIHN0b3Atb3BhY2l0eT0iLjEiLz4KICA8L2xpbmVhckdyYWRpZW50PgogIDxtYXNrIGlkPSJhIj4KICAgIDxyZWN0IHdpZHRoPSIxMzEiIGhlaWdodD0iMjAiIHJ4PSIzIiBmaWxsPSIjZmZmIi8+CiAgPC9tYXNrPgogIDxnIG1hc2s9InVybCgjYSkiPgogICAgPHBhdGggZmlsbD0iIzU1NSIgZD0iTTAgMGg0M3YyMEgweiIvPgogICAgPHBhdGggZmlsbD0iI2UwNWQ0NCIgZD0iTTQzIDBoMTE0djIwSDQzeiIvPgogICAgPHBhdGggZmlsbD0idXJsKCNiKSIgZD0iTTAgMGgxMzF2MjBIMHoiLz4KICA8L2c+CiAgPGcgZmlsbD0iI2ZmZiIgdGV4dC1hbmNob3I9Im1pZGRsZSIKICAgICBmb250LWZhbWlseT0iRGVqYVZ1IFNhbnMsVmVyZGFuYSxHZW5ldmEsc2Fucy1zZXJpZiIgZm9udC1zaXplPSIxMSI+CiAgICA8dGV4dCB4PSIyMS41IiB5PSIxNSIgZmlsbD0iIzAxMDEwMSIgZmlsbC1vcGFjaXR5PSIuMyI+CiAgICAgIENSQU4KICAgIDwvdGV4dD4KICAgIDx0ZXh0IHg9IjIxLjUiIHk9IjE0Ij4KICAgICAgQ1JBTgogICAgPC90ZXh0PgogICAgPHRleHQgeD0iODYiIHk9IjE1IiBmaWxsPSIjMDEwMTAxIiBmaWxsLW9wYWNpdHk9Ii4zIj4KICAgICAgbm90IHB1Ymxpc2hlZAogICAgPC90ZXh0PgogICAgPHRleHQgeD0iODYiIHk9IjE0Ij4KICAgICAgbm90IHB1Ymxpc2hlZAogICAgPC90ZXh0PgogIDwvZz4KPC9zdmc+ alt=CRAN Version /></a></p>
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
<div class=sourceCode id=cb5><pre class=sourceCode r><code class=sourceCode r><a class=sourceLine id=cb5-1 data-line-number=1><span class=kw>archeoViz</span>()</a></code></pre></div>
<p>or by using the <code>objects.df</code>, <code>refits.df</code>, or <code>timeline.df</code> parameters to input data.frames about the archaeological objects, refitting relationships between these objects, and the chronology of the excavation, respectively.</p>
<div class=sourceCode id=cb6><pre class=sourceCode r><code class=sourceCode r><a class=sourceLine id=cb6-1 data-line-number=1><span class=kw>archeoViz</span>(<span class=dt>objects.df =</span> <span class=ot>NULL</span>,  <span class=co># data.frame with data about the objects</span></a>
<a class=sourceLine id=cb6-2 data-line-number=2>          <span class=dt>refits.df =</span> <span class=ot>NULL</span>,   <span class=co># data.frame for refitting objects</span></a>
<a class=sourceLine id=cb6-3 data-line-number=3>          <span class=dt>timeline.df =</span> <span class=ot>NULL</span>) <span class=co># optional data.frame for the excavation timeline</span></a></code></pre></div>
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
<p><a href=https://www.repostatus.org/#active><img src=data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHhtbG5zOnhsaW5rPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5L3hsaW5rIiB3aWR0aD0iMTE2IiBoZWlnaHQ9IjIwIiByb2xlPSJpbWciIGFyaWEtbGFiZWw9InJlcG8gc3RhdHVzOiBBY3RpdmUiPjx0aXRsZT5yZXBvIHN0YXR1czogQWN0aXZlPC90aXRsZT48bGluZWFyR3JhZGllbnQgaWQ9InMiIHgyPSIwIiB5Mj0iMTAwJSI+PHN0b3Agb2Zmc2V0PSIwIiBzdG9wLWNvbG9yPSIjYmJiIiBzdG9wLW9wYWNpdHk9Ii4xIi8+PHN0b3Agb2Zmc2V0PSIxIiBzdG9wLW9wYWNpdHk9Ii4xIi8+PC9saW5lYXJHcmFkaWVudD48Y2xpcFBhdGggaWQ9InIiPjxyZWN0IHdpZHRoPSIxMTYiIGhlaWdodD0iMjAiIHJ4PSIzIiBmaWxsPSIjZmZmIi8+PC9jbGlwUGF0aD48ZyBjbGlwLXBhdGg9InVybCgjcikiPjxyZWN0IHdpZHRoPSI3MyIgaGVpZ2h0PSIyMCIgZmlsbD0iIzU1NSIvPjxyZWN0IHg9IjczIiB3aWR0aD0iNDMiIGhlaWdodD0iMjAiIGZpbGw9IiM0YzEiLz48cmVjdCB3aWR0aD0iMTE2IiBoZWlnaHQ9IjIwIiBmaWxsPSJ1cmwoI3MpIi8+PC9nPjxnIGZpbGw9IiNmZmYiIHRleHQtYW5jaG9yPSJtaWRkbGUiIGZvbnQtZmFtaWx5PSJWZXJkYW5hLEdlbmV2YSxEZWphVnUgU2FucyxzYW5zLXNlcmlmIiB0ZXh0LXJlbmRlcmluZz0iZ2VvbWV0cmljUHJlY2lzaW9uIiBmb250LXNpemU9IjExMCI+PHRleHQgYXJpYS1oaWRkZW49InRydWUiIHg9IjM3NSIgeT0iMTUwIiBmaWxsPSIjMDEwMTAxIiBmaWxsLW9wYWNpdHk9Ii4zIiB0cmFuc2Zvcm09InNjYWxlKC4xKSIgdGV4dExlbmd0aD0iNjMwIj5yZXBvIHN0YXR1czwvdGV4dD48dGV4dCB4PSIzNzUiIHk9IjE0MCIgdHJhbnNmb3JtPSJzY2FsZSguMSkiIGZpbGw9IiNmZmYiIHRleHRMZW5ndGg9IjYzMCI+cmVwbyBzdGF0dXM8L3RleHQ+PHRleHQgYXJpYS1oaWRkZW49InRydWUiIHg9IjkzNSIgeT0iMTUwIiBmaWxsPSIjMDEwMTAxIiBmaWxsLW9wYWNpdHk9Ii4zIiB0cmFuc2Zvcm09InNjYWxlKC4xKSIgdGV4dExlbmd0aD0iMzMwIj5BY3RpdmU8L3RleHQ+PHRleHQgeD0iOTM1IiB5PSIxNDAiIHRyYW5zZm9ybT0ic2NhbGUoLjEpIiBmaWxsPSIjZmZmIiB0ZXh0TGVuZ3RoPSIzMzAiPkFjdGl2ZTwvdGV4dD48L2c+PC9zdmc+ alt=Project Status: Active – The project has reached a stable, usable state and is being actively developed. /></a> <a href=https://lifecycle.r-lib.org/articles/stages.html#maturing><img src=data:image/svg+xml;charset=utf-8;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHhtbG5zOnhsaW5rPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5L3hsaW5rIiB3aWR0aD0iMTE2IiBoZWlnaHQ9IjIwIiByb2xlPSJpbWciIGFyaWEtbGFiZWw9ImxpZmVjeWNsZTogbWF0dXJpbmciPjx0aXRsZT5saWZlY3ljbGU6IG1hdHVyaW5nPC90aXRsZT48bGluZWFyR3JhZGllbnQgaWQ9InMiIHgyPSIwIiB5Mj0iMTAwJSI+PHN0b3Agb2Zmc2V0PSIwIiBzdG9wLWNvbG9yPSIjYmJiIiBzdG9wLW9wYWNpdHk9Ii4xIi8+PHN0b3Agb2Zmc2V0PSIxIiBzdG9wLW9wYWNpdHk9Ii4xIi8+PC9saW5lYXJHcmFkaWVudD48Y2xpcFBhdGggaWQ9InIiPjxyZWN0IHdpZHRoPSIxMTYiIGhlaWdodD0iMjAiIHJ4PSIzIiBmaWxsPSIjZmZmIi8+PC9jbGlwUGF0aD48ZyBjbGlwLXBhdGg9InVybCgjcikiPjxyZWN0IHdpZHRoPSI1NSIgaGVpZ2h0PSIyMCIgZmlsbD0iIzU1NSIvPjxyZWN0IHg9IjU1IiB3aWR0aD0iNjEiIGhlaWdodD0iMjAiIGZpbGw9IiMwMDdlYzYiLz48cmVjdCB3aWR0aD0iMTE2IiBoZWlnaHQ9IjIwIiBmaWxsPSJ1cmwoI3MpIi8+PC9nPjxnIGZpbGw9IiNmZmYiIHRleHQtYW5jaG9yPSJtaWRkbGUiIGZvbnQtZmFtaWx5PSJWZXJkYW5hLEdlbmV2YSxEZWphVnUgU2FucyxzYW5zLXNlcmlmIiB0ZXh0LXJlbmRlcmluZz0iZ2VvbWV0cmljUHJlY2lzaW9uIiBmb250LXNpemU9IjExMCI+PHRleHQgYXJpYS1oaWRkZW49InRydWUiIHg9IjI4NSIgeT0iMTUwIiBmaWxsPSIjMDEwMTAxIiBmaWxsLW9wYWNpdHk9Ii4zIiB0cmFuc2Zvcm09InNjYWxlKC4xKSIgdGV4dExlbmd0aD0iNDUwIj5saWZlY3ljbGU8L3RleHQ+PHRleHQgeD0iMjg1IiB5PSIxNDAiIHRyYW5zZm9ybT0ic2NhbGUoLjEpIiBmaWxsPSIjZmZmIiB0ZXh0TGVuZ3RoPSI0NTAiPmxpZmVjeWNsZTwvdGV4dD48dGV4dCBhcmlhLWhpZGRlbj0idHJ1ZSIgeD0iODQ1IiB5PSIxNTAiIGZpbGw9IiMwMTAxMDEiIGZpbGwtb3BhY2l0eT0iLjMiIHRyYW5zZm9ybT0ic2NhbGUoLjEpIiB0ZXh0TGVuZ3RoPSI1MTAiPm1hdHVyaW5nPC90ZXh0Pjx0ZXh0IHg9Ijg0NSIgeT0iMTQwIiB0cmFuc2Zvcm09InNjYWxlKC4xKSIgZmlsbD0iI2ZmZiIgdGV4dExlbmd0aD0iNTEwIj5tYXR1cmluZzwvdGV4dD48L2c+PC9zdmc+ alt=Lifecycle: maturing /></a> <a href=https://github.com/sebastien-plutniak/archeoviz/actions/workflows/r.yml><img src=data:image/svg+xml; charset=utf-8;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSI4NSIgaGVpZ2h0PSIyMCI+CiAgPHRpdGxlPlIgLSBwYXNzaW5nPC90aXRsZT4KICA8ZGVmcz4KICAgIDxsaW5lYXJHcmFkaWVudCBpZD0id29ya2Zsb3ctZmlsbCIgeDE9IjUwJSIgeTE9IjAlIiB4Mj0iNTAlIiB5Mj0iMTAwJSI+CiAgICAgIDxzdG9wIHN0b3AtY29sb3I9IiM0NDRENTYiIG9mZnNldD0iMCUiPjwvc3RvcD4KICAgICAgPHN0b3Agc3RvcC1jb2xvcj0iIzI0MjkyRSIgb2Zmc2V0PSIxMDAlIj48L3N0b3A+CiAgICA8L2xpbmVhckdyYWRpZW50PgogICAgPGxpbmVhckdyYWRpZW50IGlkPSJzdGF0ZS1maWxsIiB4MT0iNTAlIiB5MT0iMCUiIHgyPSI1MCUiIHkyPSIxMDAlIj4KICAgICAgPHN0b3Agc3RvcC1jb2xvcj0iIzM0RDA1OCIgb2Zmc2V0PSIwJSI+PC9zdG9wPgogICAgICA8c3RvcCBzdG9wLWNvbG9yPSIjMjhBNzQ1IiBvZmZzZXQ9IjEwMCUiPjwvc3RvcD4KICAgIDwvbGluZWFyR3JhZGllbnQ+CiAgPC9kZWZzPgogIDxnIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCI+CiAgICA8ZyBmb250LWZhbWlseT0iJiMzOTtEZWphVnUgU2FucyYjMzk7LFZlcmRhbmEsR2VuZXZhLHNhbnMtc2VyaWYiIGZvbnQtc2l6ZT0iMTEiPgogICAgICA8cGF0aCBpZD0id29ya2Zsb3ctYmciIGQ9Ik0wLDMgQzAsMS4zNDMxIDEuMzU1MiwwIDMuMDI3MDI3MDMsMCBMMzUsMCBMMzUsMjAgTDMuMDI3MDI3MDMsMjAgQzEuMzU1MiwyMCAwLDE4LjY1NjkgMCwxNyBMMCwzIFoiIGZpbGw9InVybCgjd29ya2Zsb3ctZmlsbCkiIGZpbGwtcnVsZT0ibm9uemVybyI+PC9wYXRoPgogICAgICA8dGV4dCBmaWxsPSIjMDEwMTAxIiBmaWxsLW9wYWNpdHk9Ii4zIj4KICAgICAgICA8dHNwYW4geD0iMjIuMTk4MTk4MiIgeT0iMTUiIGFyaWEtaGlkZGVuPSJ0cnVlIj5SPC90c3Bhbj4KICAgICAgPC90ZXh0PgogICAgICA8dGV4dCBmaWxsPSIjRkZGRkZGIj4KICAgICAgICA8dHNwYW4geD0iMjIuMTk4MTk4MiIgeT0iMTQiPlI8L3RzcGFuPgogICAgICA8L3RleHQ+CiAgICA8L2c+CiAgICA8ZyB0cmFuc2Zvcm09InRyYW5zbGF0ZSgzNSkiIGZvbnQtZmFtaWx5PSImIzM5O0RlamFWdSBTYW5zJiMzOTssVmVyZGFuYSxHZW5ldmEsc2Fucy1zZXJpZiIgZm9udC1zaXplPSIxMSI+CiAgICAgIDxwYXRoIGQ9Ik0wIDBoNDYuOTM5QzQ4LjYyOSAwIDUwIDEuMzQzIDUwIDN2MTRjMCAxLjY1Ny0xLjM3IDMtMy4wNjEgM0gwVjB6IiBpZD0ic3RhdGUtYmciIGZpbGw9InVybCgjc3RhdGUtZmlsbCkiIGZpbGwtcnVsZT0ibm9uemVybyI+PC9wYXRoPgogICAgICA8dGV4dCBmaWxsPSIjMDEwMTAxIiBmaWxsLW9wYWNpdHk9Ii4zIiBhcmlhLWhpZGRlbj0idHJ1ZSI+CiAgICAgICAgPHRzcGFuIHg9IjQiIHk9IjE1Ij5wYXNzaW5nPC90c3Bhbj4KICAgICAgPC90ZXh0PgogICAgICA8dGV4dCBmaWxsPSIjRkZGRkZGIj4KICAgICAgICA8dHNwYW4geD0iNCIgeT0iMTQiPnBhc3Npbmc8L3RzcGFuPgogICAgICA8L3RleHQ+CiAgICA8L2c+CiAgICA8cGF0aCBmaWxsPSIjOTU5REE1IiBkPSJNMTEgM2MtMy44NjggMC03IDMuMTMyLTcgN2E2Ljk5NiA2Ljk5NiAwIDAgMCA0Ljc4NiA2LjY0MWMuMzUuMDYyLjQ4Mi0uMTQ4LjQ4Mi0uMzMyIDAtLjE2Ni0uMDEtLjcxOC0uMDEtMS4zMDQtMS43NTguMzI0LTIuMjEzLS40MjktMi4zNTMtLjgyMi0uMDc5LS4yMDItLjQyLS44MjMtLjcxNy0uOTktLjI0NS0uMTMtLjU5NS0uNDU0LS4wMS0uNDYzLjU1Mi0uMDA5Ljk0Ni41MDggMS4wNzcuNzE4LjYzIDEuMDU4IDEuNjM2Ljc2IDIuMDM5LjU3Ny4wNjEtLjQ1NS4yNDUtLjc2MS40NDYtLjkzNi0xLjU1Ny0uMTc1LTMuMTg1LS43NzktMy4xODUtMy40NTYgMC0uNzYyLjI3MS0xLjM5Mi43MTgtMS44ODItLjA3LS4xNzUtLjMxNS0uODkyLjA3LTEuODU1IDAgMCAuNTg2LS4xODMgMS45MjUuNzE4YTYuNSA2LjUgMCAwIDEgMS43NS0uMjM2IDYuNSA2LjUgMCAwIDEgMS43NS4yMzZjMS4zMzgtLjkxIDEuOTI1LS43MTggMS45MjUtLjcxOC4zODUuOTYzLjE0IDEuNjguMDcgMS44NTUuNDQ2LjQ5LjcxNyAxLjExMi43MTcgMS44ODIgMCAyLjY4Ni0xLjYzNiAzLjI4LTMuMTk0IDMuNDU2LjI1NC4yMTkuNDczLjYzOS40NzMgMS4yOTUgMCAuOTM2LS4wMDkgMS42ODktLjAwOSAxLjkyNSAwIC4xODQuMTMxLjQwMi40ODEuMzMyQTcuMDExIDcuMDExIDAgMCAwIDE4IDEwYzAtMy44NjctMy4xMzMtNy03LTd6Ij48L3BhdGg+CiAgPC9nPgo8L3N2Zz4KCg== alt=R /></a> <a href=https://app.codecov.io/gh/sebastien-plutniak/archeoviz><img src=data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxMTIiIGhlaWdodD0iMjAiPgogICAgPGxpbmVhckdyYWRpZW50IGlkPSJiIiB4Mj0iMCIgeTI9IjEwMCUiPgogICAgICAgIDxzdG9wIG9mZnNldD0iMCIgc3RvcC1jb2xvcj0iI2JiYiIgc3RvcC1vcGFjaXR5PSIuMSIgLz4KICAgICAgICA8c3RvcCBvZmZzZXQ9IjEiIHN0b3Atb3BhY2l0eT0iLjEiIC8+CiAgICA8L2xpbmVhckdyYWRpZW50PgogICAgPG1hc2sgaWQ9ImEiPgogICAgICAgIDxyZWN0IHdpZHRoPSIxMTIiIGhlaWdodD0iMjAiIHJ4PSIzIiBmaWxsPSIjZmZmIiAvPgogICAgPC9tYXNrPgogICAgPGcgbWFzaz0idXJsKCNhKSI+CiAgICAgICAgPHBhdGggZmlsbD0iIzU1NSIgZD0iTTAgMGg3NnYyMEgweiIgLz4KICAgICAgICA8cGF0aCBmaWxsPSIjZTA1ZDQ0IiBkPSJNNzYgMGgzNnYyMEg3NnoiIC8+CiAgICAgICAgPHBhdGggZmlsbD0idXJsKCNiKSIgZD0iTTAgMGgxMTJ2MjBIMHoiIC8+CiAgICA8L2c+CiAgICA8ZyBmaWxsPSIjZmZmIiB0ZXh0LWFuY2hvcj0ibWlkZGxlIiBmb250LWZhbWlseT0iRGVqYVZ1IFNhbnMsVmVyZGFuYSxHZW5ldmEsc2Fucy1zZXJpZiIgZm9udC1zaXplPSIxMSI+CiAgICAgICAgPHRleHQgeD0iNDYiIHk9IjE1IiBmaWxsPSIjMDEwMTAxIiBmaWxsLW9wYWNpdHk9Ii4zIj5jb2RlY292PC90ZXh0PgogICAgICAgIDx0ZXh0IHg9IjQ2IiB5PSIxNCI+Y29kZWNvdjwvdGV4dD4KICAgICAgICA8dGV4dCB4PSI5MyIgeT0iMTUiIGZpbGw9IiMwMTAxMDEiIGZpbGwtb3BhY2l0eT0iLjMiPjUxJTwvdGV4dD4KICAgICAgICA8dGV4dCB4PSI5MyIgeT0iMTQiPjUxJTwvdGV4dD4KICAgIDwvZz4KICAgIDxzdmcgdmlld0JveD0iMTIwIC04IDYwIDYwIj4KICAgICAgICA8cGF0aCBkPSJNMjMuMDEzIDBDMTAuMzMzLjAwOS4wMSAxMC4yMiAwIDIyLjc2MnYuMDU4bDMuOTE0IDIuMjc1LjA1My0uMDM2YTExLjI5MSAxMS4yOTEgMCAwIDEgOC4zNTItMS43NjcgMTAuOTExIDEwLjkxMSAwIDAgMSA1LjUgMi43MjZsLjY3My42MjQuMzgtLjgyOGMuMzY4LS44MDIuNzkzLTEuNTU2IDEuMjY0LTIuMjQuMTktLjI3Ni4zOTgtLjU1NC42MzctLjg1MWwuMzkzLS40OS0uNDg0LS40MDRhMTYuMDggMTYuMDggMCAwIDAtNy40NTMtMy40NjYgMTYuNDgyIDE2LjQ4MiAwIDAgMC03LjcwNS40NDlDNy4zODYgMTAuNjgzIDE0LjU2IDUuMDE2IDIzLjAzIDUuMDFjNC43NzkgMCA5LjI3MiAxLjg0IDEyLjY1MSA1LjE4IDIuNDEgMi4zODIgNC4wNjkgNS4zNSA0LjgwNyA4LjU5MWExNi41MyAxNi41MyAwIDAgMC00Ljc5Mi0uNzIzbC0uMjkyLS4wMDJhMTYuNzA3IDE2LjcwNyAwIDAgMC0xLjkwMi4xNGwtLjA4LjAxMmMtLjI4LjAzNy0uNTI0LjA3NC0uNzQ4LjExNS0uMTEuMDE5LS4yMTguMDQxLS4zMjcuMDYzLS4yNTcuMDUyLS41MS4xMDgtLjc1LjE2OWwtLjI2NS4wNjdhMTYuMzkgMTYuMzkgMCAwIDAtLjkyNi4yNzZsLS4wNTYuMDE4Yy0uNjgyLjIzLTEuMzYuNTExLTIuMDE2LjgzOGwtLjA1Mi4wMjZjLS4yOS4xNDUtLjU4NC4zMDUtLjg5OS40OWwtLjA2OS4wNGExNS41OTYgMTUuNTk2IDAgMCAwLTQuMDYxIDMuNDY2bC0uMTQ1LjE3NWMtLjI5LjM2LS41MjEuNjY2LS43MjMuOTYtLjE3LjI0Ny0uMzQuNTEzLS41NTIuODY0bC0uMTE2LjE5OWMtLjE3LjI5Mi0uMzIuNTctLjQ0OS44MjRsLS4wMy4wNTdhMTYuMTE2IDE2LjExNiAwIDAgMC0uODQzIDIuMDI5bC0uMDM0LjEwMmExNS42NSAxNS42NSAwIDAgMC0uNzg2IDUuMTc0bC4wMDMuMjE0YTIxLjUyMyAyMS41MjMgMCAwIDAgLjA0Ljc1NGMuMDA5LjExOS4wMi4yMzcuMDMyLjM1NS4wMTQuMTQ1LjAzMi4yOS4wNDkuNDMybC4wMS4wOGMuMDEuMDY3LjAxNy4xMzMuMDI2LjE5Ny4wMzQuMjQyLjA3NC40OC4xMTkuNzIuNDYzIDIuNDE5IDEuNjIgNC44MzYgMy4zNDUgNi45OWwuMDc4LjA5OC4wOC0uMDk1Yy42ODgtLjgxIDIuMzk1LTMuMzggMi41MzktNC45MjJsLjAwMy0uMDI5LS4wMTQtLjAyNWExMC43MjcgMTAuNzI3IDAgMCAxLTEuMjI2LTQuOTU2YzAtNS43NiA0LjU0NS0xMC41NDQgMTAuMzQzLTEwLjg5bC4zODEtLjAxNGExMS40MDMgMTEuNDAzIDAgMCAxIDYuNjUxIDEuOTU3bC4wNTQuMDM2IDMuODYyLTIuMjM3LjA1LS4wM3YtLjA1NmMuMDA2LTYuMDgtMi4zODQtMTEuNzkzLTYuNzI5LTE2LjA4OUMzNC45MzIgMi4zNjEgMjkuMTYgMCAyMy4wMTMgMCIgZmlsbD0iI0YwMUY3QSIgZmlsbC1ydWxlPSJldmVub2RkIi8+CiAgICA8L3N2Zz4KPC9zdmc+ alt=codecov /></a> <a href=https://www.r-project.org/Licenses/GPL-3><img src=data:image/svg+xml;charset=utf-8;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHhtbG5zOnhsaW5rPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5L3hsaW5rIiB3aWR0aD0iMTAwIiBoZWlnaHQ9IjIwIiByb2xlPSJpbWciIGFyaWEtbGFiZWw9IkxpY2Vuc2U6IEdQTCB2MyI+PHRpdGxlPkxpY2Vuc2U6IEdQTCB2MzwvdGl0bGU+PGxpbmVhckdyYWRpZW50IGlkPSJzIiB4Mj0iMCIgeTI9IjEwMCUiPjxzdG9wIG9mZnNldD0iMCIgc3RvcC1jb2xvcj0iI2JiYiIgc3RvcC1vcGFjaXR5PSIuMSIvPjxzdG9wIG9mZnNldD0iMSIgc3RvcC1vcGFjaXR5PSIuMSIvPjwvbGluZWFyR3JhZGllbnQ+PGNsaXBQYXRoIGlkPSJyIj48cmVjdCB3aWR0aD0iMTAwIiBoZWlnaHQ9IjIwIiByeD0iMyIgZmlsbD0iI2ZmZiIvPjwvY2xpcFBhdGg+PGcgY2xpcC1wYXRoPSJ1cmwoI3IpIj48cmVjdCB3aWR0aD0iNTEiIGhlaWdodD0iMjAiIGZpbGw9IiM1NTUiLz48cmVjdCB4PSI1MSIgd2lkdGg9IjQ5IiBoZWlnaHQ9IjIwIiBmaWxsPSIjMDA3ZWM2Ii8+PHJlY3Qgd2lkdGg9IjEwMCIgaGVpZ2h0PSIyMCIgZmlsbD0idXJsKCNzKSIvPjwvZz48ZyBmaWxsPSIjZmZmIiB0ZXh0LWFuY2hvcj0ibWlkZGxlIiBmb250LWZhbWlseT0iVmVyZGFuYSxHZW5ldmEsRGVqYVZ1IFNhbnMsc2Fucy1zZXJpZiIgdGV4dC1yZW5kZXJpbmc9Imdlb21ldHJpY1ByZWNpc2lvbiIgZm9udC1zaXplPSIxMTAiPjx0ZXh0IGFyaWEtaGlkZGVuPSJ0cnVlIiB4PSIyNjUiIHk9IjE1MCIgZmlsbD0iIzAxMDEwMSIgZmlsbC1vcGFjaXR5PSIuMyIgdHJhbnNmb3JtPSJzY2FsZSguMSkiIHRleHRMZW5ndGg9IjQxMCI+TGljZW5zZTwvdGV4dD48dGV4dCB4PSIyNjUiIHk9IjE0MCIgdHJhbnNmb3JtPSJzY2FsZSguMSkiIGZpbGw9IiNmZmYiIHRleHRMZW5ndGg9IjQxMCI+TGljZW5zZTwvdGV4dD48dGV4dCBhcmlhLWhpZGRlbj0idHJ1ZSIgeD0iNzQ1IiB5PSIxNTAiIGZpbGw9IiMwMTAxMDEiIGZpbGwtb3BhY2l0eT0iLjMiIHRyYW5zZm9ybT0ic2NhbGUoLjEpIiB0ZXh0TGVuZ3RoPSIzOTAiPkdQTCB2MzwvdGV4dD48dGV4dCB4PSI3NDUiIHk9IjE0MCIgdHJhbnNmb3JtPSJzY2FsZSguMSkiIGZpbGw9IiNmZmYiIHRleHRMZW5ndGg9IjM5MCI+R1BMIHYzPC90ZXh0PjwvZz48L3N2Zz4= alt=license /></a> <a href=https://doi.org/10.5281/zenodo.7460193><img src=data:image/svg+xml; charset=utf-8;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciCiAgICAgd2lkdGg9IjE4NiIgaGVpZ2h0PSIyMCI+CiAgICAgICAgPGxpbmVhckdyYWRpZW50IGlkPSJiIiB4Mj0iMCIgeTI9IjEwMCUiPgogICAgICAgICAgICA8c3RvcCBvZmZzZXQ9IjAiIHN0b3AtY29sb3I9IiNiYmIiIHN0b3Atb3BhY2l0eT0iLjEiLz4KICAgICAgICAgICAgPHN0b3Agb2Zmc2V0PSIxIiBzdG9wLW9wYWNpdHk9Ii4xIi8+CiAgICAgICAgPC9saW5lYXJHcmFkaWVudD4KICAgICAgICA8bWFzayBpZD0iYSIgd2lkdGg9IjE4NiIgaGVpZ2h0PSIyMCI+CiAgICAgICAgICAgIDxyZWN0IHdpZHRoPSIxODYiIGhlaWdodD0iMjAiIHJ4PSIzIgogICAgICAgICAgICBmaWxsPSIjZmZmIi8+CiAgICAgICAgPC9tYXNrPgogICAgICAgIDxnIG1hc2s9InVybCgjYSkiPgogICAgICAgICAgICA8cGF0aCBmaWxsPSIjNTU1IiBkPSJNMCAwaDMxdjIwSDB6IiAvPgogICAgICAgICAgICA8cGF0aCBmaWxsPSIjMDA3ZWM2IgogICAgICAgICAgICBkPSJNMzEgMGgxNTV2MjBIMzF6IgogICAgICAgICAgICAvPgogICAgICAgICAgICA8cGF0aCBmaWxsPSJ1cmwoI2IpIiBkPSJNMCAwaDE4NnYyMEgweiIgLz4KICAgICAgICA8L2c+CiAgICAgICAgPGcgZmlsbD0iI2ZmZiIgdGV4dC1hbmNob3I9Im1pZGRsZSIgZm9udC1mYW1pbHk9IkRlamFWdSBTYW5zLAogICAgICAgIFZlcmRhbmEsR2VuZXZhLHNhbnMtc2VyaWYiIGZvbnQtc2l6ZT0iMTEiPgogICAgICAgICAgICA8dGV4dCB4PSIxNiIgeT0iMTUiIGZpbGw9IiMwMTAxMDEiCiAgICAgICAgICAgIGZpbGwtb3BhY2l0eT0iLjMiPgogICAgICAgICAgICAgICAgRE9JCiAgICAgICAgICAgIDwvdGV4dD4KICAgICAgICAgICAgPHRleHQgeD0iMTYiIHk9IjE0Ij4KICAgICAgICAgICAgICAgIERPSQogICAgICAgICAgICA8L3RleHQ+CiAgICAgICAgICAgIDx0ZXh0IHg9IjEwOCIKICAgICAgICAgICAgeT0iMTUiIGZpbGw9IiMwMTAxMDEiIGZpbGwtb3BhY2l0eT0iLjMiPgogICAgICAgICAgICAgICAgMTAuNTI4MS96ZW5vZG8uNzQ2MDE5MwogICAgICAgICAgICA8L3RleHQ+CiAgICAgICAgICAgIDx0ZXh0IHg9IjEwOCIgeT0iMTQiPgogICAgICAgICAgICAgICAgMTAuNTI4MS96ZW5vZG8uNzQ2MDE5MwogICAgICAgICAgICA8L3RleHQ+CiAgICAgICAgPC9nPgogICAgPC9zdmc+ alt=DOI /></a> <a href=https://cran.r-project.org/package=archeoViz><img src=data:image/svg+xml; charset=utf-8;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxMzEiIGhlaWdodD0iMjAiIGFyaWEtbGFiZWw9IkNSQU4gbm90IHB1Ymxpc2hlZCI+CiAgPGxpbmVhckdyYWRpZW50IGlkPSJiIiB4Mj0iMCIgeTI9IjEwMCUiPgogICAgPHN0b3Agb2Zmc2V0PSIwIiBzdG9wLWNvbG9yPSIjYmJiIiBzdG9wLW9wYWNpdHk9Ii4xIi8+CiAgICA8c3RvcCBvZmZzZXQ9IjEiIHN0b3Atb3BhY2l0eT0iLjEiLz4KICA8L2xpbmVhckdyYWRpZW50PgogIDxtYXNrIGlkPSJhIj4KICAgIDxyZWN0IHdpZHRoPSIxMzEiIGhlaWdodD0iMjAiIHJ4PSIzIiBmaWxsPSIjZmZmIi8+CiAgPC9tYXNrPgogIDxnIG1hc2s9InVybCgjYSkiPgogICAgPHBhdGggZmlsbD0iIzU1NSIgZD0iTTAgMGg0M3YyMEgweiIvPgogICAgPHBhdGggZmlsbD0iI2UwNWQ0NCIgZD0iTTQzIDBoMTE0djIwSDQzeiIvPgogICAgPHBhdGggZmlsbD0idXJsKCNiKSIgZD0iTTAgMGgxMzF2MjBIMHoiLz4KICA8L2c+CiAgPGcgZmlsbD0iI2ZmZiIgdGV4dC1hbmNob3I9Im1pZGRsZSIKICAgICBmb250LWZhbWlseT0iRGVqYVZ1IFNhbnMsVmVyZGFuYSxHZW5ldmEsc2Fucy1zZXJpZiIgZm9udC1zaXplPSIxMSI+CiAgICA8dGV4dCB4PSIyMS41IiB5PSIxNSIgZmlsbD0iIzAxMDEwMSIgZmlsbC1vcGFjaXR5PSIuMyI+CiAgICAgIENSQU4KICAgIDwvdGV4dD4KICAgIDx0ZXh0IHg9IjIxLjUiIHk9IjE0Ij4KICAgICAgQ1JBTgogICAgPC90ZXh0PgogICAgPHRleHQgeD0iODYiIHk9IjE1IiBmaWxsPSIjMDEwMTAxIiBmaWxsLW9wYWNpdHk9Ii4zIj4KICAgICAgbm90IHB1Ymxpc2hlZAogICAgPC90ZXh0PgogICAgPHRleHQgeD0iODYiIHk9IjE0Ij4KICAgICAgbm90IHB1Ymxpc2hlZAogICAgPC90ZXh0PgogIDwvZz4KPC9zdmc+ alt=CRAN Version /></a></p>
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
<p>Le package peut être installé depuis GitHub avec:</p>
<div class=sourceCode id=cb1><pre class=sourceCode r><code class=sourceCode r><a class=sourceLine id=cb1-1 data-line-number=1><span class=co># install.packages(&quot;devtools&quot;)</span></a>
<a class=sourceLine id=cb1-2 data-line-number=2>devtools<span class=op>::</span><span class=kw>install_github</span>(<span class=st>&quot;sebastien-plutniak/archeoviz&quot;</span>)</a></code></pre></div>
<p>Puis, chargez le package et lancez l’application avec:</p>
<div class=sourceCode id=cb2><pre class=sourceCode r><code class=sourceCode r><a class=sourceLine id=cb2-1 data-line-number=1><span class=kw>library</span>(archeoViz)</a>
<a class=sourceLine id=cb2-2 data-line-number=2><span class=kw>archeoViz</span>()</a></code></pre></div>
<h2 id=déployée>Déployée</h2>
<p>Pour déployer <code>archeoViz</code> sur votre Shiny server, téléchargez premièrement le package:</p>
<div class=sourceCode id=cb3><pre class=sourceCode r><code class=sourceCode r><a class=sourceLine id=cb3-1 data-line-number=1><span class=co># déterminez le répertoire de travail dans votre shiny server:</span></a>
<a class=sourceLine id=cb3-2 data-line-number=2><span class=kw>setwd</span>(<span class=dt>dir =</span> <span class=st>&quot;/some/path/&quot;</span>)</a>
<a class=sourceLine id=cb3-3 data-line-number=3><span class=co># téléchargez le package:</span></a>
<a class=sourceLine id=cb3-4 data-line-number=4><span class=kw>download.file</span>(<span class=dt>url =</span> <span class=st>&quot;https://github.com/sebastien-plutniak/archeoviz/archive/master.zip&quot;</span>,</a>
<a class=sourceLine id=cb3-5 data-line-number=5>              <span class=dt>destfile =</span> <span class=st>&quot;archeoviz.zip&quot;</span>)</a>
<a class=sourceLine id=cb3-6 data-line-number=6><span class=co># décompression:</span></a>
<a class=sourceLine id=cb3-7 data-line-number=7><span class=kw>unzip</span>(<span class=dt>zipfile =</span> <span class=st>&quot;archeoviz.zip&quot;</span>)</a></code></pre></div>
<p>Puis, rendez-vous à <code>https://&lt;your-shiny-server&gt;/archeoviz-main</code>.</p>
<p>Pour paramétrer l’application avec vos données et préférences, éditez le fichier app.R situé à la racine du répertoire de l’application:</p>
<div class=sourceCode id=cb4><pre class=sourceCode r><code class=sourceCode r><a class=sourceLine id=cb4-1 data-line-number=1><span class=kw>archeoViz</span>(<span class=dt>objects.df =</span> <span class=ot>NULL</span>,   <span class=co># data.frame pour les objets</span></a>
<a class=sourceLine id=cb4-2 data-line-number=2>          <span class=dt>refits.df =</span> <span class=ot>NULL</span>,    <span class=co># data.frame optionnel pour les remontages</span></a>
<a class=sourceLine id=cb4-3 data-line-number=3>          <span class=dt>timeline.df =</span> <span class=ot>NULL</span>,  <span class=co># data.frame optionnel pour la chronologie des fouilles</span></a>
<a class=sourceLine id=cb4-4 data-line-number=4>          <span class=dt>title =</span> <span class=ot>NULL</span>,        <span class=co># titre du site / du jeu de données</span></a>
<a class=sourceLine id=cb4-5 data-line-number=5>          <span class=dt>home.text =</span> <span class=ot>NULL</span>,    <span class=co># contenu html à afficher sur la page d'accueil</span></a>
<a class=sourceLine id=cb4-6 data-line-number=6>          <span class=dt>lang =</span> <span class=st>&quot;fr&quot;</span>          <span class=co># langue de l'interface (&quot;English&quot; ou &quot;French&quot;)</span></a>
<a class=sourceLine id=cb4-7 data-line-number=7>          <span class=dt>set.theme =</span> <span class=st>&quot;cosmo&quot;</span>) <span class=co># thème graphique de l'interface Shiny</span></a></code></pre></div>
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
<div class=sourceCode id=cb5><pre class=sourceCode r><code class=sourceCode r><a class=sourceLine id=cb5-1 data-line-number=1><span class=kw>archeoViz</span>()</a></code></pre></div>
<p>ou en employant les paramètres <code>objects.df</code>, <code>refits.df</code>, <code>timeline.df</code> afin de charger des données relatives, respectivement, aux objets, aux remontages, et à la chronologie.</p>
<div class=sourceCode id=cb6><pre class=sourceCode r><code class=sourceCode r><a class=sourceLine id=cb6-1 data-line-number=1><span class=kw>archeoViz</span>(<span class=dt>objects.df =</span> <span class=ot>NULL</span>,  <span class=co># data.frame pour les objets</span></a>
<a class=sourceLine id=cb6-2 data-line-number=2>          <span class=dt>refits.df =</span> <span class=ot>NULL</span>,   <span class=co># data.frame optionnel pour les remontages</span></a>
<a class=sourceLine id=cb6-3 data-line-number=3>          <span class=dt>timeline.df =</span> <span class=ot>NULL</span>) <span class=co># data.frame optionnel pour la chronologie</span></a></code></pre></div>
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
    validate = "Valider la sélection",
    refresh = "Rafraîchir",
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
    validate = "Validate selection",
    refresh = "Refresh",
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
  # switch
  if(length(grep("en", lang, ignore.case = T)) == 1){
    ui.terms <- en
  }
  if(length(grep("fr", lang, ignore.case = T)) == 1){
    ui.terms <- fr
  }
  
  ui.terms
}


