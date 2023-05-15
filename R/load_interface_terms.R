
.load_interface_terms <- function(lang){
  # welcome ----
  # : fr ----
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
                soit en chargeant des donn\\u00e9es via l'interface, soit en 
                lan\\u00e7ant l'application avec un jeu de donn\\u00e9e sp\\u00e9cifique.
                L'interface est disponible en anglais, fran\\u00e7ais, italien et portugais.
                </p>
                Le package, sous licence libre, est publi\\u00e9 sur le <a href=https://cran.r-project.org/package=archeoViz target=_blank>CRAN</a>. Son code source est aussi disponible sur <a href=https://github.com/sebastien-plutniak/archeoviz target=_blank>github</a>."
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
                The interface is available in English, French, Italian and Portuguese.
                </p>
                The package is published under a free license on the <a href=https://cran.r-project.org/package=archeoViz target=_blank>CRAN</a>. Its source code is also available on  <a href=https://github.com/sebastien-plutniak/archeoviz target=_blank>github</a>."
  # : pt ----
  welcome.pt <- "<h1>Bem-vindo ao <i>archeoViz</i>!</h1>
                <p><i>archeoViz</i> \\u00e9 um aplicativo dedicado \\u00e0 arqueologia. Ele permite <b>visualizar</b>, <b>explorar</b> interativamente, e   
                expor e <b>comunicar</b> rapidamente na web dados de campo arqueol\\u00f3gicos.
                </p>
                <p>
                Ele oferece <b>visualiza\\u00e7\\u00f5es</b> 3D e 2D, gera <b>perfis estratigr\\u00e1ficos</b> e <b>mapas</b> de vest\\u00edgios arqueol\\u00f3gicos, possibilita a realiza\\u00e7\\u00e3o de estat\\u00edsticas espaciais simples (envolt\\u00f3rias convexas, superf\\u00edcies de regress\\u00e3o, estimativa de densidade de kernel 2D) e a visualiza\\u00e7\\u00e3o de uma cronologia interativa da escava\\u00e7\\u00e3o de um s\\u00edtio.
                </p>
                <p>
                Distribu\\u00eddo como um pacote R, 
                o <i>archeoViz</i> pode ser usado localmente ou implantado em um servidor, seja carregando dados por meio da interface, seja iniciando o aplicativo com um conjunto de dados espec\\u00edfico. A interface est\\u00e1 dispon\\u00edvel em ingl\\u00eas, franc\\u00eas, italiano, e portugu\\u00eas.
                </p>
                O pacote, sob licen\\u00e7a livre, \\u00e9 publicado na <a href=https://cran.r-project.org/package=archeoViz target=_blank>CRAN</a>. O seu c\\u00f3digo-fonte est\\u00e1 tamb\\u00e9m dispon\\u00edvel no <a href=https://github.com/sebastien-plutniak/archeoviz target=_blank>github</a>."
  
  # : it ----
  welcome.it <- "<h1>Benvenuti in <i>archeoViz</i>!</h1>
                 <p><i>archeoViz</i> \\u00e8 un\\u2019applicazione dedicata all\\u2019archeologia. Permette di <b>visualizzare</b>, <b>esplorare</b> in modo interattivo e rapido, esporre e <b>comunicare</b> sul web i dati archeologici acquisiti sul campo.
                </p>
                <p>
                Offre <b>visualizzazioni</b> in 3D e 2D, genera <b>sezioni</b> e <b>carte</b> dei resti archeologici, consente di realizzare statistiche spaziali semplici (inviluppi convessi, superfici di regressione, stima kernel di densit\\u00e0 2D) e di visualizzare una cronologia interattiva degli scavi di un sito.
                </p>
                <p>
                Distribuito come pacchetto R, <i>archeoViz</i> pu\\u00f2 essere utilizzato localmente o distribuito su un server, caricando i dati tramite l\\u2019interfaccia o lanciando l\\u2019applicazione con un insieme di dati specifico. L\\u2019interfaccia \\u00e8 disponibile in inglese, francese, italiano e portoghese.
                </p>
                Il pacchetto \\u00e8 open source e pubblicato su il <a href=https://cran.r-project.org/package=archeoViz target=_blank>CRAN</a> Il suo codice sorgente \\u00e8 disponibile anche su  <a href=https://github.com/sebastien-plutniak/archeoviz target=_blank>github</a>."
  
  # Input objects ----
  # :  fr ----
  input.objects.fr <- 
    "<p>
    Un tableau au format csv est requis. Chaque ligne d\\u00e9crit un objet, comportant les champs obligatoires suivants :
    <ul>
      <li> <b>id</b> : <i>valeur alphanum\\u00e9rique</i>, identifiant unique de l'objet </li>
      <li> <b>xmin</b> : <i>valeur num\\u00e9rique</i>, coordonn\\u00e9e de l'objet en axe X (en cm)</li>
      <li> <b>ymin</b> : <i>valeur num\\u00e9rique</i>, coordonn\\u00e9e de l'objet en axe Y (en cm)</li>
      <li> <b>zmin</b> : <i>valeur num\\u00e9rique</i>, coordonn\\u00e9e de l'objet en axe Z (valeur positive de profondeur en cm)</li>
      <li> <b>layer</b> : <i>valeur alphanum\\u00e9rique</i>, identifiant de la couche de l'objet</li>
      <li> <b>object_type</b> : <i>valeur alphanum\\u00e9rique</i>, cat\\u00e9gorie de l'objet</li>
    </ul>
    De plus, des champs optionnels sont possibles, dont:
    <ul>
      <li> <b>square_x</b> : <i>valeur alphanum\\u00e9rique</i>, identifiant du carr\\u00e9 de l'objet en axe X</li>
      <li> <b>square_y</b> : <i>valeur alphanum\\u00e9rique</i>, identifiant du carr\\u00e9 de l'objet en axe Y</li>
      <li> <b>year</b> : <i>valeur num\\u00e9rique</i>, ann\\u00e9e de fouille de l'objet</li>
      <li> <b>xmax</b> : <i>valeur num\\u00e9rique</i>, lorsque la localisation de l'objet en X est comprise dans un intervalle de coordonn\\u00e9es</li>
      <li> <b>ymax</b> : <i>valeur num\\u00e9rique</i>, lorsque la localisation de l'objet en Y est comprise dans un intervalle de coordonn\\u00e9es</li>
      <li> <b>zmax</b> : <i>valeur num\\u00e9rique</i>, lorsque la localisation de l'objet en Z est comprise dans un intervalle de coordonn\\u00e9es</li>
      <li> <b>object<i>_edit</i></b> : nombre non limit\\u00e9 de variables additionnelles  d\\u00e9crivant l'objet (les noms de colonnes doivent commencer par `object_` et avoir des suffixes diff\\u00e9rents</li>
    </ul>
    </p>"
  
  # :  en ----
  input.objects.en <- 
    "<p>
    A data table is required (csv format). A row describes a single object with the following mandatory fields:
    <ul>
      <li> <b>id</b>: <i>alphanumerical value</i>, unique identifier of the object </li>
      <li> <b>xmin</b>: <i>numerical value</i>, coordinate of the object on the X axis (in cm)</li>
      <li> <b>ymin</b>: <i>numerical value</i>, coordinate of the object on the Y axis (in cm)</li>
      <li> <b>zmin</b>: <i>numerical value</i>, coordinate of the object on the Z axis (positive depth value in cm)</li>
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
    \\u00c9 necess\\u00e1ria uma tabela no formato csv. Cada linha descreve um objeto, incluindo os seguintes campos obrigat\\u00f3rios:
    <ul>
      <li> <b>id</b> : <i>valor alfanum\\u00e9rico</i>, identificador \\u00fanico do objeto </li>
      <li> <b>xmin</b> : <i>valor num\\u00e9rico</i>, coordenada do objeto no eixo X (em cm)</li>
      <li> <b>ymin</b> : <i>valor num\\u00e9rico</i>, coordenada do objeto no eixo Y (em cm)</li>
      <li> <b>zmin</b> : <i>valor num\\u00e9rico</i>, coordenada do objeto no eixo Z (valor de profundidade positiva em cm)</li>
      <li> <b>layer</b> : <i>valor alfanum\\u00e9rico</i>, identificador da camada do objeto</li>
      <li> <b>object_type</b> : <i>valor alfanum\\u00e9rico</i>, categoria do objeto</li>
    </ul>
    Ademais, campos opcionais s\\u00e3o poss\\u00edveis, incluindo:
    <ul>
      <li> <b>square_x</b> : <i>valor alfanum\\u00e9rico</i>, identificador da quadra do objeto no eixo X</li>
      <li> <b>square_y</b> : <i>valor alfanum\\u00e9rico</i>, identificador da quadra do objeto no eixo Y</li>
      <li> <b>year</b> : <i>valor num\\u00e9rico</i>, ano de escava\\u00e7\\u00e3o do objeto</li>
      <li> <b>xmax</b> : <i>valor num\\u00e9rico</i>, quando a localiza\\u00e7\\u00e3o do objeto em X est\\u00e1 compreendida em um intervalo de coordenadas</li>
      <li> <b>ymax</b> : <i>valor num\\u00e9rico</i>, quando a localiza\\u00e7\\u00e3o do objeto em Y est\\u00e1 compreendida em um intervalo de coordenadas</li>
      <li> <b>zmax</b> : <i>valor num\\u00e9rico</i>, quando a localiza\\u00e7\\u00e3o do objeto em Z est\\u00e1 compreendida em um intervalo de coordenadas</li>
      <li> <b>object<i>_edit</i></b>: n\\u00famero ilimitado de vari\\u00e1veis adicionais que descrevem o objeto (os nomes das colunas devem come\\u00e7ar com `objeto_` e ter sufixos diferentes)</li>
    </ul>
    </p>"
  
  # :  it ----
  input.objects.it <- 
    "<p>
    \\u00c8 richiesta una tabella in formato csv. Ogni riga descrive un oggetto, con i seguenti campi obbligatori:
    <ul>
      <li> <b>id</b> : <i>valore alfanumerico</i>, identificativo univoco dell\\u2019oggetto </li>
      <li> <b>xmin</b> : <i>valore numerico</i>, coordinata dell\\u2019oggetto sull\\u2019asse X (in cm)</li>
      <li> <b>ymin</b> : <i>valore numerico</i>, coordinata dell\\u2019oggetto sull\\u2019asse Y (in cm)</li>
      <li> <b>zmin</b> : <i>valore numerico</i>, coordinata dell\\u2019oggetto sull\\u2019asse Z (valore positivo di profondit\\u00e0 in cm)</li>
      <li> <b>layer</b> : <i>valore numerico</i>, identificativo del livello dell\\u2019oggetto</li>
      <li> <b>object_type</b> : <i>valore alfanumerico</i>, categoria dell\\u2019oggetto</li>
    </ul>
    Si possono inserire inoltre dei campi opzionali, tra cui:
    <ul>
      <li> <b>square_x</b> : <i>valore alfanumerico</i>, identificativo del quadrato dell\\u2019oggetto nell\\u2019asse X</li>
      <li> <b>square_y</b> : <i>valore alfanumerico</i>, identificatore del quadrato dell\\u2019oggetto nell\\u2019asse Y</li>
      <li> <b>year</b> : <i>valore numerico</i>, anno di scavo dell\\u2019oggetto</li>
      <li> <b>xmax</b> : <i>valore numerico</i>, se la posizione dell\\u2019oggetto in X \\u00e8 compresa in un intervallo di coordinate</li>
      <li> <b>ymax</b> : <i>valore numerico</i>, se la posizione dell\\u2019oggetto in Y \\u00e8 compresa in un intervallo di coordinate</li>
      <li> <b>zmax</b> : <i>valore numerico</i>, se la posizione dell\\u2019oggetto in Z \\u00e8 compresa in un intervallo di coordinate</li>
      <li> <b>object<i>_edit</i></b>: numero non limitato di variabili aggiuntive che descrivono l\\u2019oggetto (i nomi delle colonne devono iniziare con `object_` e avere suffissi diversi)</li>
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
  
  input.refits.pt <- 
    "<p>
    Uma tabela de duas colunas pode ser carregada para as remontagens entre objetos (formato csv). Cada linha deve conter os identificadores \\u00fanicos dos dois objetos vinculados a uma rela\\u00e7\\u00e3o de remontagem (em correspond\\u00eancia com os valores da coluna `id` da tabela de objetos).
    </p>"
  
  input.refits.it <- 
    "<p>
    \\u00c8 possibile caricare una tabella a due colonne per i riassemblaggi tra gli oggetti (formato csv). Ogni riga deve contenere gli identificativi univoci dei due oggetti riassemblati (in corrispondenza dei valori della colonna `id` della tabella degli oggetti).
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
  
  input.timeline.pt <- 
    "<p>
      Opcionalmente, pode ser carregada uma tabela (csv) referente ao desenvolvimento da escava\\u00e7\\u00e3o. Cada linha refere-se a uma quadra de escava\\u00e7\\u00e3o e cont\\u00e9m as seguintes informa\\u00e7\\u00f5es:
    <ul>
    <li> <b>year</b>: <i>valor num\\u00e9rico</i>, ano de escava\\u00e7\\u00e3o </li>
    <li> <b>square_x</b>: <i>valor alfanum\\u00e9rico</i>, identificador da quadra no eixo X</li>
    <li> <b>square_y</b>: <i>valor alfanum\\u00e9rico</i>, identificador da quadra no eixo Y</li>
    </ul>
    </p>"
  
  input.timeline.it <- 
    "<p>
      Il caricamento di una tabella (csv) riguardante lo sviluppo dello scavo \\u00e8 facoltativo. Ogni riga si riferisce a un quadrato di scavo e contiene le seguenti informazioni:
    <ul>
    <li> <b>year</b>: <i>valore numerico</i>, anno di scavo </li>
    <li> <b>square_x</b>: <i>valore alfanumerico</i>, identificatore del quadrato sull\\u2019asse X</li>
    <li> <b>square_y</b>: <i>valore alfanumerico</i>, identificatore del quadrato sull\\u2019asse Y</li>
    </ul>
    </p>"
  
  # reproducibility ----
  reproducibility.fr <- "<h1>Reproductibilit\\u00e9</h1>
                         <p>Pour reproduire vos r\\u00e9glages actuels, ex\\u00e9cutez <i>archeoViz</i> avec la commande R suivante (ajustez les param\\u00e8tres \\u201cobjects.df\\u201d et \\u201crefits.df\\u201d selon vos donn\\u00e9es) :</p>"
  
  reproducibility.en <- "<h1>Reproducibility</h1>
                         <p>To reproduce your current settings, run <i>archeoViz</i> with the following R command (adjust the \\u201cobjects.df\\u201d and \\u201crefits.df\\u201d parameters to your needs): </p>"
  
  reproducibility.pt <- "<h1>Reprodutibilidade</h1>
                         <p>Para reproduzir as suas defini\\u00e7\\u00f5es actuais, execute o <i>archeoViz</i> com o seguinte comando R (ajuste os par\\u00e2metros \\u201cobjects.df\\u201d e \\u201crefits.df\\u201d aos seus dados):</p>"
  
  reproducibility.it <- "<h1>Riproducibilit\\u00e0</h1>
                         <p>Per riprodurre le impostazioni attuali, eseguire archeoViz con il seguente comando R (regolare i parametri \\u201cobjects.df\\u201d e \\u201crefits.df\\u201d in base ai propri dati):</p>"
  
  # guidelines ----
  # : en ----
  guidelines.en <- "
<h1 id=archeoviz>archeoViz</h1>
<p><code>archeoViz</code> is a packaged R Shiny application for the <em>visualisation</em>, <em>exploration</em>, and web <em>communication</em> of archaeological excavation data. It includes interactive 3D and 2D <em>visualisations</em>, can generate <em>cross sections</em> and <em>map</em> of the remains, can run basic <em>spatial statistics</em> methods (convex hull, regression surfaces, 2D kernel density estimation), and display an interactive <em>timeline</em> of an excavation. <code>archeoViz</code> can be used locally or deployed on a server, either by allowing the user to load data through the interface or by running the app with a specific data set. The app interface is available in English, French, Italian, and Portuguese.</p>
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
<li><a href=#loading-files-through-the-input-data-tab>Loading files through the Input data tab</a></li>
<li><a href=#random-data>Random data</a></li>
<li><a href=#through-function-parameters>Through function parameters</a></li>
</ul></li>
<li><a href=#data-sub-setting>Data sub-setting</a>
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
<li><a href=#reproducibility><strong>Reproducibility</strong></a></li>
<li><a href=#advanced-parameters><strong>Advanced parameters</strong></a>
<ul>
<li><a href=#square-grid>Square grid</a></li>
<li><a href=#parameters-presetting>Parameters presetting</a></li>
<li><a href=#reactive-plot-display>Reactive plot display</a></li>
</ul></li>
<li><a href=#acknowledgment><strong>Acknowledgment</strong></a></li>
<li><a href=#references><strong>References</strong></a></li>
</ul>
<h1 id=installation>Installation</h1>
<p><code>archeoViz</code> can be used in two ways:</p>
<ul>
<li>locally, on the user\\u2019s machine</li>
<li>remotely, after deploying the app on a distant server</li>
</ul>
<h2 id=local-use>Local use</h2>
<p>The package can be installed from CRAN with:</p>
<div class=sourceCode id=cb1><pre class=sourceCode r><code class=sourceCode r><a class=sourceLine id=cb1-1 data-line-number=1><span class=kw>install.packages</span>(<span class=st>&quot;archeoViz&quot;</span>)</a></code></pre></div>
<p>The development version is available on <em>GitHub</em> and can be installed with:</p>
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
<a class=sourceLine id=cb5-4 data-line-number=4>          <span class=dt>title =</span> <span class=ot>NULL</span>,        <span class=co># title of the site / data set</span></a>
<a class=sourceLine id=cb5-5 data-line-number=5>          <span class=dt>home.text =</span> <span class=ot>NULL</span>,    <span class=co># html content to display on the home page</span></a>
<a class=sourceLine id=cb5-6 data-line-number=6>          <span class=dt>lang =</span> <span class=st>&quot;en&quot;</span>          <span class=co># interface language (&quot;en&quot;: English, &quot;fr&quot;: French, &quot;it&quot;: Italian, &quot;pt&quot;: Portuguese)</span></a>
<a class=sourceLine id=cb5-7 data-line-number=7>          <span class=dt>set.theme =</span> <span class=st>&quot;cosmo&quot;</span>) <span class=co># graphic theme for the Shiny interface</span></a></code></pre></div>
<p>The possible values for the <code>set.theme</code> parameter are illustrated on <a href=https://rstudio.github.io/shinythemes/>this page</a>. The language of the application can be set with the <code>lang</code> parameter.</p>
<h2 id=demonstration>Demonstration</h2>
<p>Demonstration instances of the application are deployed on the <em>Huma Num</em> Shiny server:</p>
<ul>
<li><a href=https://analytics.huma-num.fr/archeoviz/en><code>archeoViz</code> in English</a>.</li>
<li><a href=https://analytics.huma-num.fr/archeoviz/fr><code>archeoViz</code> in French</a>.</li>
<li><a href=https://analytics.huma-num.fr/archeoviz/it><code>archeoViz</code> in Italian</a>.</li>
<li><a href=https://analytics.huma-num.fr/archeoviz/pt><code>archeoViz</code> in Portuguese</a>.</li>
</ul>
<p>Real use cases are presented on the <a href=https://analytics.huma-num.fr/archeoviz/home><em>archeoViz Portal</em></a>.</p>
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
<li>uploading tables in the \\u201cInput data\\u201d tab,</li>
<li>using randomly generated data from the \\u201cInput data\\u201d tab;</li>
<li>set the <code>archeoViz</code> main function\\u2019s parameters before running the application.</li>
</ol>
<h3 id=loading-files-through-the-input-data-tab>Loading files through the Input data tab</h3>
<p>Tables for three types of data can be uploaded from the \\u201cInput data\\u201d tab:</p>
<ul>
<li>an \\u201cobjects\\u201d table (mandatory), with data about the objects;</li>
<li>a \\u201crefits\\u201d table (optional), with data about the refitting objects;</li>
<li>a \\u201ctimeline\\u201d table (optional), with data about when each square of the site was excavated.</li>
</ul>
<p>The tables must be .csv files with the first row used containing the columns\\u2019 labels (the separator can be set). Contents in html are allowed. This makes possible, in particular, to add links to external resources (e.g., the permanent identifier of the object\\u2019s in other databases, or of the concepts used to describe the object, etc.).</p>
<h4 id=objects-table>Objects table</h4>
<p>A row describes a single object with the following mandatory fields:</p>
<ul>
<li><strong>id</strong>: <em>alphanumerical value</em>, unique identifier of the object</li>
<li><strong>xmin</strong>: <em>numerical value</em>, coordinate of the object on the X axis (in cm)</li>
<li><strong>ymin</strong>: <em>numerical value</em>, coordinate of the object on the Y axis (in cm)</li>
<li><strong>zmin</strong>: <em>numerical value</em>, coordinate of the object on the Z axis (positive depth value in cm)</li>
<li><strong>layer</strong>: <em>alphanumerical value</em>, identifier of the object\\u2019s layer</li>
<li><strong>object_type</strong>: <em>alphanumerical value</em>, category of the object</li>
</ul>
<p>In addition, optional fields are possible, including:</p>
<ul>
<li><strong>square_x</strong>: <em>alphanumerical value</em>, identifier of the square on the X axis</li>
<li><strong>square_y</strong>: <em>alphanumerical value</em>, identifier of the square on the Y axis</li>
<li><strong>year</strong> : <em>numerical value</em>, year when the object was excavated</li>
<li><strong>xmax</strong>: <em>numerical value</em>, when the X location of the object is included in a range of X coordinates</li>
<li><strong>ymax</strong>: <em>numerical value</em>, when the Y location of the object is included in a range of Y coordinates</li>
<li><strong>zmax</strong>: <em>numerical value</em>, when the Z location of the object is included in a range of Z coordinates</li>
<li><strong>object_edit</strong>: unlimited number of additional variable describing the object (field names must start with <code>object_</code> and have different suffixes)</li>
</ul>
<p>The labels of the squares of the grid:</p>
<ul>
<li>are ordered alpha-numerically;</li>
<li>are not displayed, in order to avoid erroneous displays, if the number of labels does not correspond exactly to the total number of 100 cm squares that can be defined in the range of minimum and maximum coordinates contained in the xmin and ymin variables;</li>
<li>can be completed with the <code>add.x.square.labels</code> and <code>add.y.square.labels</code> parameters of the <code>archeoViz()</code> function in order to add the missing labels (on the X and Y axes of the grid, respectively).</li>
</ul>
<h3 id=random-data>Random data</h3>
<p>For demonstration purposes using randomly generated data is made possible. To activate this feature, set the slider in \\u201cInput data\\u201d to a value higher than 0 (setting the value back to 0 deactivates the feature). An \\u201cobjects\\u201d data set, a \\u201crefits\\u201d data set, and a \\u201ctimeline\\u201d data set are generated, making it possible to test all the <code>archeoViz</code> functionalities.</p>
<h3 id=through-function-parameters>Through function parameters</h3>
<p><code>archeoViz</code>\\u2019s launching function (<code>archeoViz()</code>) can be run without parameter</p>
<div class=sourceCode id=cb6><pre class=sourceCode r><code class=sourceCode r><a class=sourceLine id=cb6-1 data-line-number=1><span class=kw>archeoViz</span>()</a></code></pre></div>
<p>or by using the <code>objects.df</code>, <code>refits.df</code>, or <code>timeline.df</code> parameters to input data.frames about the archaeological objects, refitting relationships between these objects, and the chronology of the excavation, respectively.</p>
<div class=sourceCode id=cb7><pre class=sourceCode r><code class=sourceCode r><a class=sourceLine id=cb7-1 data-line-number=1><span class=kw>archeoViz</span>(<span class=dt>objects.df =</span> <span class=ot>NULL</span>,  <span class=co># data.frame with data about the objects</span></a>
<a class=sourceLine id=cb7-2 data-line-number=2>          <span class=dt>refits.df =</span> <span class=ot>NULL</span>,   <span class=co># data.frame for refitting objects</span></a>
<a class=sourceLine id=cb7-3 data-line-number=3>          <span class=dt>timeline.df =</span> <span class=ot>NULL</span>) <span class=co># optional data.frame for the excavation timeline</span></a></code></pre></div>
<h2 id=data-sub-setting>Data sub-setting</h2>
<p>Once data are loaded, a sub-selection of the data set can be done in the left side menu. Several parameters are possible: the type of location recording, the category of the objects, and the way to group the data.</p>
<h3 id=location-mode>Location mode</h3>
<p>The location of archaeological objects can be recorded in different ways, depending on the precision of the data: as points (xyz coordinates), on lines, plans, or within a volume (ranges of x, y, and z values). In <code>archeoViz</code>, a distinction is made between exact locations (points) and the other types of fuzzy location methods (lines, plans, volumes). The radio buttons allow selecting these options.</p>
<h3 id=objects-category>Objects category</h3>
<p>Sub-sets can be defined by object categories, using the \\u201cvariable\\u201d and \\u201cvalues\\u201d fields. Once one of the \\u201cobject_type\\u201d (or other possible \\u201cobject_\\u201d variables) is selected, its values appear below and can be selected using the tick boxes. The selection must be validated by clicking on the \\u201cValidate\\u201d button. This selection determines the data that will be displayed in the plots and tables.</p>
<h3 id=data-subgroups>Data subgroups</h3>
<p>The data can be grouped in two ways: either by layer or by the selected \\u201cobject_\\u201d variable. This option determines the colours of the points in the 3D and 2D plots and the subsets when computing surfaces and convex hulls.</p>
<h3 id=objects-selection>Objects selection</h3>
<p>In the \\u201c3D plot\\u201d, \\u201cMap\\u201d, \\u201cSection X\\u201d, and \\u201cSection Y\\u201d tabs, clicking on a point displays information about that point in the table below the plot.</p>
<h2 id=interactive-visualisation>Interactive visualisation</h2>
<p>The plots in the \\u201c3D plot\\u201d, \\u201cMap\\u201d, \\u201cSection X\\u201d, and \\u201cSection Y\\u201d tabs are generated using the <a href=https://CRAN.R-project.org/package=plotly><code>plotly</code></a> library. All the plots are dynamic and include a menu bar above the plot with several options (generating an image file, zooming, moving the view, etc). See details on the <a href=http://plotly.github.io/getting-to-know-the-plotly-modebar/><code>plotly</code> website</a>.</p>
<p>Clicking on a legend\\u2019s item modifies the display:</p>
<ul>
<li>a simple click on an item activates/deactivates its display;</li>
<li>a double click on an item displays this item only (another double click cancels it).</li>
</ul>
<p>This feature makes it possible to choose which layers are shown. In addition, the size of the points can be set and whether the refitting relationships must be represented or not.</p>
<h2 id=graphical-outputs>Graphical outputs</h2>
<p>Several graphical outputs can be generated in <code>archeoViz</code>.</p>
<ul>
<li>The plots in The plots in the \\u201c3D plot\\u201d, \\u201cMap\\u201d, \\u201cSection X\\u201d, and \\u201cSection Y\\u201d can be exported:
<ul>
<li>in .svg format (by cliking on the \\u201ccamera\\u201d icon in the menu bar above the plot),</li>
<li>in an interactive html format, by clicking on the \\u201cExport\\u201d button.</li>
</ul></li>
<li>The plan of the excavation chronology can be exported in .svg format by clicking on the \\u201cDownload\\u201d button.</li>
</ul>
<h2 id=reffiting>Reffiting</h2>
<p>Refitting are usually recorded by archaologists in two ways:</p>
<ol>
<li>by sets of refitting objects: using a two columns table, where a row corresponds to an <strong>object</strong>. The first column stores the object\\u2019 unique id and the second column stores the id of the set of refitting objects this object belongs to.</li>
<li>by refitting relationships: using a two columns table, where a row corresponds to a <strong>relationship</strong>. The first column stores the first object\\u2019s unique id and the second column stores the second object\\u2019s unique id.</li>
</ol>
<p>Although the second data structure is more accurate, the first is more commonly used.</p>
<p><code>archeoViz</code> processes the two data structures in different ways:</p>
<ul>
<li>sets of refitting objects must be described using a specific column in the <code>objects.df</code> table (e.g. <code>object_refits</code>) and are represented by the color of points in the plots (as for any other variable);</li>
<li>refitting relationships must be described using the <code>refits.df</code> table and are visualised as segments connecting the refitting objects in the plots.</li>
</ul>
<h2 id=spatial-statistics>Spatial statistics</h2>
<p><code>archeoViz</code> includes some spatial analysis functionalities, intended for basic and exploratory use.</p>
<h3 id=regression-surfaces>Regression surfaces</h3>
<p>In the \\u201c3D plot\\u201d tab, clicking on \\u201cCompute surfaces\\u201d and \\u201cValidate\\u201d displays the regression surface associated with each layer (with at least 100 points). The surfaces are computed using the generalized additive model implemented in the <a href=https://CRAN.R-project.org/package=mgcv><code>mgcv</code></a> package.</p>
<h3 id=convex-hulls>Convex hulls</h3>
<p>In the \\u201c3D plot\\u201d tab, clicking on \\u201cCompute hulls\\u201d and \\u201cValidate\\u201d displays the convex hull associated with each layer (with at least 20 points). The convex hulls are computed using the <a href=https://CRAN.R-project.org/package=cxhull><code>cxhull</code></a> package.</p>
<h3 id=2d-kernel-density>2D kernel density</h3>
<p>In the \\u201cMap\\u201d tab, ticking the \\u201cCompute density\\u201d box and clicking on \\u201cValidate\\u201d generates a map with contour lines showing the points\\u2019 density. Density can be computed for all the points together or by layer (with at least 30 points). The 2D kernel density is computed with the <code>kde2d</code> function of the <a href=https://CRAN.R-project.org/package=MASS><code>MASS</code></a> package (through <a href=https://CRAN.R-project.org/package=ggplot2><code>ggplot2</code></a>).</p>
<h2 id=reproducibility>Reproducibility</h2>
<p><code>archeoViz</code> is, by definition, an interactive application. However, several features guarantee the reproducibility and communicability of the result of interactions with the application.</p>
<ul>
<li>The 3D visualisation can be exported in an interactive html standalone format, considering the data selection made by the user.</li>
<li>In the \\u201cReproducibility\\u201d tab, an R command is dynamically generated, considering the current application settings made by the user.</li>
</ul>
<h2 id=advanced-parameters>Advanced parameters</h2>
<p>The <code>archeoViz()</code> function can be set with multiple optional parameters, related to:</p>
<ul>
<li>the input data (already detailed <a href=#through-function-parameters>above</a>),</li>
<li>the contents of the home page (already detailed <a href=#deployed-use>above</a>),</li>
<li>the <a href=#square-grid>square grid</a>,</li>
<li>the <a href=#parameters-presetting>presetting</a> of the parameters that can be set through the application\\u2019s interface,</li>
<li>the <a href=#reactive-plot-display>reactive behavior</a> of the application regarding the generation of plots.</li>
</ul>
<!-- end list -->

<div class=sourceCode id=cb8><pre class=sourceCode r><code class=sourceCode r><a class=sourceLine id=cb8-1 data-line-number=1><span class=kw>archeoViz</span>(<span class=dt>objects.df=</span><span class=ot>NULL</span>, <span class=dt>refits.df=</span><span class=ot>NULL</span>, <span class=dt>timeline.df=</span><span class=ot>NULL</span>,</a>
<a class=sourceLine id=cb8-2 data-line-number=2>          <span class=dt>title=</span><span class=ot>NULL</span>, <span class=dt>home.text=</span><span class=ot>NULL</span>, <span class=dt>lang=</span><span class=st>&quot;en&quot;</span>, <span class=dt>set.theme=</span><span class=st>&quot;cosmo&quot;</span>,</a>
<a class=sourceLine id=cb8-3 data-line-number=3>          <span class=dt>square.size =</span> <span class=dv>100</span>, <span class=dt>reverse.axis.values =</span> <span class=ot>NULL</span>, <span class=dt>reverse.square.names =</span> <span class=ot>NULL</span>,</a>
<a class=sourceLine id=cb8-4 data-line-number=4>          <span class=dt>add.x.square.labels =</span> <span class=ot>NULL</span>, <span class=dt>add.y.square.labels =</span> <span class=ot>NULL</span>,</a>
<a class=sourceLine id=cb8-5 data-line-number=5>          <span class=dt>class.variable =</span> <span class=ot>NULL</span>, <span class=dt>class.values =</span> <span class=ot>NULL</span>,</a>
<a class=sourceLine id=cb8-6 data-line-number=6>          <span class=dt>default.group =</span> <span class=st>&quot;by.layer&quot;</span>, <span class=dt>location.mode =</span> <span class=ot>NULL</span>,</a>
<a class=sourceLine id=cb8-7 data-line-number=7>          <span class=dt>map.z.val =</span> <span class=ot>NULL</span>, <span class=dt>map.density =</span> <span class=st>&quot;no&quot;</span>, <span class=dt>map.refits =</span> <span class=ot>NULL</span>,</a>
<a class=sourceLine id=cb8-8 data-line-number=8>          <span class=dt>plot3d.hulls =</span> <span class=ot>NULL</span>, <span class=dt>plot3d.surfaces =</span> <span class=ot>NULL</span>, <span class=dt>plot3d.refits =</span> <span class=ot>NULL</span>,</a>
<a class=sourceLine id=cb8-9 data-line-number=9>          <span class=dt>sectionX.x.val =</span> <span class=ot>NULL</span>, <span class=dt>sectionX.y.val =</span> <span class=ot>NULL</span>, <span class=dt>sectionX.refits =</span> <span class=ot>NULL</span>, </a>
<a class=sourceLine id=cb8-10 data-line-number=10>          <span class=dt>sectionY.x.val =</span> <span class=ot>NULL</span>, <span class=dt>sectionY.y.val =</span> <span class=ot>NULL</span>, <span class=dt>sectionY.refits =</span> <span class=ot>NULL</span>,</a>
<a class=sourceLine id=cb8-11 data-line-number=11>          <span class=dt>camera.center =</span> <span class=ot>NULL</span>, <span class=dt>camera.eye =</span> <span class=ot>NULL</span>, <span class=dt>run.plots =</span> <span class=ot>FALSE</span></a>
<a class=sourceLine id=cb8-12 data-line-number=12>          )</a></code></pre></div>
<h3 id=square-grid>Square grid</h3>
<div class=sourceCode id=cb9><pre class=sourceCode r><code class=sourceCode r><a class=sourceLine id=cb9-1 data-line-number=1><span class=kw>archeoViz</span>(<span class=dt>square.size =</span> <span class=dv>100</span>,</a>
<a class=sourceLine id=cb9-2 data-line-number=2>          <span class=dt>reverse.axis.values =</span> <span class=ot>NULL</span>, <span class=dt>reverse.square.names =</span> <span class=ot>NULL</span>,</a>
<a class=sourceLine id=cb9-3 data-line-number=3>          <span class=dt>add.x.square.labels =</span> <span class=ot>NULL</span>, <span class=dt>add.y.square.labels =</span> <span class=ot>NULL</span></a>
<a class=sourceLine id=cb9-4 data-line-number=4>          )</a></code></pre></div>
<ul>
<li><strong>square.size</strong>: numerical. Size (width and height) in centimeter of the squares in the grid system. Default value is 100 cm.</li>
<li><strong>reverse.axis.values</strong>: character. Name of the axis or axes to be reversed (any combination of \\u201cx\\u201d, \\u201cy\\u201d, \\u201cz\\u201d).</li>
<li><strong>reverse.square.names</strong>: character. Name of the axis or axes for which to reverse the order of the square labels (any combination of \\u201cx\\u201d, \\u201cy\\u201d, \\u201cz\\u201d).</li>
<li><strong>add.x.square.labels</strong>: character. Additional square labels for the \\u201cx\\u201d axis.</li>
<li><strong>add.y.square.labels</strong>: character. Additional square labels for the \\u201cy\\u201d axis.</li>
</ul>
<h3 id=parameters-presetting>Parameters presetting</h3>
<div class=sourceCode id=cb10><pre class=sourceCode r><code class=sourceCode r><a class=sourceLine id=cb10-1 data-line-number=1><span class=kw>archeoViz</span>(<span class=dt>class.variable =</span> <span class=ot>NULL</span>, <span class=dt>class.values =</span> <span class=ot>NULL</span>,</a>
<a class=sourceLine id=cb10-2 data-line-number=2>          <span class=dt>default.group =</span> <span class=st>&quot;by.layer&quot;</span>, <span class=dt>location.mode =</span> <span class=ot>NULL</span>,</a>
<a class=sourceLine id=cb10-3 data-line-number=3>          <span class=dt>map.z.val =</span> <span class=ot>NULL</span>, <span class=dt>map.density =</span> <span class=st>&quot;no&quot;</span>, <span class=dt>map.refits =</span> <span class=ot>NULL</span>,</a>
<a class=sourceLine id=cb10-4 data-line-number=4>          <span class=dt>plot3d.hulls =</span> <span class=ot>NULL</span>, <span class=dt>plot3d.surfaces =</span> <span class=ot>NULL</span>, <span class=dt>plot3d.refits =</span> <span class=ot>NULL</span>,</a>
<a class=sourceLine id=cb10-5 data-line-number=5>          <span class=dt>sectionX.x.val =</span> <span class=ot>NULL</span>, <span class=dt>sectionX.y.val =</span> <span class=ot>NULL</span>, <span class=dt>sectionX.refits =</span> <span class=ot>NULL</span>, </a>
<a class=sourceLine id=cb10-6 data-line-number=6>          <span class=dt>sectionY.x.val =</span> <span class=ot>NULL</span>, <span class=dt>sectionY.y.val =</span> <span class=ot>NULL</span>, <span class=dt>sectionY.refits =</span> <span class=ot>NULL</span>,</a>
<a class=sourceLine id=cb10-7 data-line-number=7>          <span class=dt>camera.center =</span> <span class=ot>NULL</span>, <span class=dt>camera.eye =</span> <span class=ot>NULL</span></a>
<a class=sourceLine id=cb10-8 data-line-number=8>          )</a></code></pre></div>
<ul>
<li><strong>class.variable</strong>: character. At the launch of the app, name of the variable to preselect.</li>
<li><strong>class.values</strong>: character vector. At the launch of the app, names of the values to preselect.</li>
<li><strong>default.group</strong>: character. At the launch of the app, preselection of the variable used to group data (one of \\u201cby.layer\\u201d or \\u201cby.variable\\u201d).</li>
<li><strong>location.mode</strong>: character. At the launch of the app, preselection of the location method (one of \\u201cexact\\u201d, \\u201cfuzzy\\u201d, \\u201cexact.fuzzy\\u201d).</li>
<li><strong>map.z.val</strong>: numerical. Minimal and maximal Z coordinates values to display in the map plot.</li>
<li><strong>map.density</strong>: character. At the launch of the app, whether to compute and show density contours in the map plot (one of \\u201cno\\u201d, \\u201coverall\\u201d, \\u201cby.variable\\u201d).</li>
<li><strong>map.refits</strong>: TRUE or FALSE. Whether to show refits in the map plot.</li>
<li><strong>plot3d.hulls</strong>: TRUE or FALSE. At the launch of the app, whether to compute and show convex hulls in the 3D plot.</li>
<li><strong>plot3d.surfaces</strong>: TRUE or FALSE. At the launch of the app, whether to compute and show regression in the 3D plot.</li>
<li><strong>plot3d.refits</strong>: TRUE or FALSE. At the launch of the app, whether to show refits on the 3D section plot.</li>
<li><strong>sectionX.x.val</strong>: numerical. At the launch of the app, minimal and maximal X coordinates values to display in the X section plot.</li>
<li><strong>sectionX.y.val</strong>: numerical. At the launch of the app, minimal and maximal Y coordinates values to display in the X section plot.</li>
<li><strong>sectionX.refits</strong>: TRUE or FALSE. At the launch of the app, whether to show refits in the X section plot.</li>
<li><strong>sectionY.x.val</strong>: numerical. At the launch of the app, minimal and maximal X coordinates values to display in the Y section plot.</li>
<li><strong>sectionY.y.val</strong>: numerical. At the launch of the app, minimal and maximal Y coordinates values to display in the Y section plot.</li>
<li><strong>sectionY.refits</strong>: TRUE or FALSE. At the launch of the app, whether to show refits in the Y section plot.</li>
<li><strong>camera.center</strong>: numerical. In 3D plot, coordinates of the point to which the camera looks at (default values: x=0, y=0, z=0).</li>
<li><strong>camera.eye</strong>: numerical. In 3D plot, coordinates of the camera\\u2019s position (default values: x=1.25, y=1.25, z=1.25).</li>
</ul>
<h3 id=reactive-plot-display>Reactive plot display</h3>
<div class=sourceCode id=cb11><pre class=sourceCode r><code class=sourceCode r><a class=sourceLine id=cb11-1 data-line-number=1><span class=kw>archeoViz</span>(<span class=dt>run.plots =</span> <span class=ot>FALSE</span>)</a></code></pre></div>
<ul>
<li><strong>run.plots</strong>: TRUE or FALSE. Whether to immediately compute and show plots (without requiring the user to click on the buttons in the interface).</li>
</ul>
<h1 id=acknowledgment>Acknowledgment</h1>
<p>The <code>archeoViz</code> application and package is developed and maintained by S\\u00e9bastien Plutniak. Arthur Coulon, Sol\\u00e8ne Denis, Olivier Marlet, and Thomas Perrin tested and supported the project in its early stage. Renata Araujo and Sara Giardino translated the application into Portuguese and Italian, respectively.</p>
<h1 id=references>References</h1>
<ul>
<li>Plutniak, S\\u00e9bastien, Renata Araujo, Sara Giardino. 2023. \\u201carcheoViz. Visualisation, Exploration, and Web Communication of Archaeological Excavation Data\\u201d. v1.0.0, DOI: <a href=https://doi.org/10.5281/zenodo.7682227>10.5281/zenodo.7682227</a>.</li>
<li>Plutniak, S\\u00e9bastien. 2023. \\u201c<a href=https://www.prehistoire.org/offres/doc_inline_src/515/0-BSPF_2023_1_2e_partie_Correspondance_PLUTNIAK.pdf>Visualiser et explorer la distribution spatiale du mobilier arch\\u00e9ologique: l\\u2019application archeoViz et son portail web</a>\\u201d. <em>Bulletin de la Soci\\u00e9t\\u00e9 pr\\u00e9historique fran\\u00e7aise</em>, 120(1), p. 70-74.</li>
</ul>
"
  
  
#  : fr ----
guidelines.fr <- "
<h1 id=archeoviz>archeoViz</h1>
<p><code>archeoViz</code> est une application d\\u00e9di\\u00e9e \\u00e0 l\\u2019arch\\u00e9ologie. Elle permet de <em>visualiser</em>, d\\u2019<em>explorer</em> interactivement, et d\\u2019exposer et <em>communiquer</em> rapidement sur le web des donn\\u00e9es arch\\u00e9ologiques de terrain. Elle propose des <em>visualisations</em> en 3D et 2D, g\\u00e9n\\u00e8re des <em>coupes</em> et des <em>cartes</em> des restes arch\\u00e9ologiques, permet de r\\u00e9aliser des <em>statistiques spatiales</em> simples (enveloppes convexes, surfaces de r\\u00e9gression, estimation de densit\\u00e9 par noyau en 2D), et de visualiser une <em>chronologie</em> interactive des fouilles d\\u2019un site. <code>archeoViz</code> peut \\u00eatre utilis\\u00e9e localement ou d\\u00e9ploy\\u00e9e sur un serveur, soit en chargeant des donn\\u00e9es via l\\u2019interface, soit en lan\\u00e7ant l\\u2019application avec un jeu de donn\\u00e9e sp\\u00e9cifique. L\\u2019interface est disponible en anglais, fran\\u00e7ais, italien, et portugais.</p>
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
<li><a href=#donn\\u00e9es>Donn\\u00e9es</a>
<ul>
<li><a href=#par-chargement-de-tableaux>Par chargement de tableaux</a></li>
<li><a href=#par-g\\u00e9n\\u00e9ration-de-donn\\u00e9es-al\\u00e9atoires>Par g\\u00e9n\\u00e9ration de donn\\u00e9es al\\u00e9atoires</a></li>
<li><a href=#par-param\\u00e9trage-de-la-fonction>Par param\\u00e9trage de la fonction</a></li>
</ul></li>
<li><a href=#sous-s\\u00e9lection-de-donn\\u00e9es>Sous-s\\u00e9lection de donn\\u00e9es</a>
<ul>
<li><a href=#par-mode-de-localisation>Par mode de localisation</a></li>
<li><a href=#par-cat\\u00e9gorie-dobjet>Par cat\\u00e9gorie d\\u2019objet</a></li>
<li><a href=#sous-groupes-de-donn\\u00e9es>Sous-groupes de donn\\u00e9es</a></li>
<li><a href=#par-objet>Par objet</a></li>
</ul></li>
<li><a href=#remontages>Remontages</a></li>
<li><a href=#visualisations-interactives>Visualisations interactives</a></li>
<li><a href=#sorties-graphiques>Sorties graphiques</a></li>
<li><a href=#statistiques-spatiales>Statistiques spatiales</a>
<ul>
<li><a href=#surfaces-de-r\\u00e9gression>Surfaces de r\\u00e9gression</a></li>
<li><a href=#enveloppes-convexes>Enveloppes convexes</a></li>
<li><a href=#estimation-2d-de-densit\\u00e9-par-noyau>Estimation 2D de densit\\u00e9 par noyau</a></li>
</ul></li>
</ul></li>
<li><a href=#reproductibilit\\u00e9><strong>Reproductibilit\\u00e9</strong></a></li>
<li><a href=#param\\u00e8tres-avanc\\u00e9s><strong>Param\\u00e8tres avanc\\u00e9s</strong></a>
<ul>
<li><a href=#carroyage>Carroyage</a></li>
<li><a href=#pr\\u00e9-s\\u00e9lection-des-param\\u00e8tres>Pr\\u00e9-s\\u00e9lection des param\\u00e8tres</a></li>
<li><a href=#affichage-r\\u00e9actif-des-visualisations>Affichage r\\u00e9actif des visualisations</a></li>
</ul></li>
<li><a href=#remerciements><strong>Remerciements</strong></a></li>
<li><a href=#r\\u00e9f\\u00e9rences><strong>R\\u00e9f\\u00e9rences</strong></a></li>
</ul>
<h1 id=installation>Installation</h1>
<p><code>archeoViz</code> peut \\u00eatre employ\\u00e9e de deux mani\\u00e8res:</p>
<ul>
<li>localement, sur la machine de l\\u2019utilisateur</li>
<li>\\u00e0 distance, apr\\u00e8s d\\u00e9ploiement sur un serveur distant</li>
</ul>
<h2 id=locale>Locale</h2>
<p>Le package peut \\u00eatre install\\u00e9 depuis le CRAN:</p>
<div class=sourceCode id=cb1><pre class=sourceCode r><code class=sourceCode r><a class=sourceLine id=cb1-1 data-line-number=1><span class=kw>install.packages</span>(<span class=st>&quot;archeoViz&quot;</span>)</a></code></pre></div>
<p>La version de d\\u00e9veloppement peut \\u00eatre t\\u00e9l\\u00e9char\\u00e9e depuis GitHub:</p>
<div class=sourceCode id=cb2><pre class=sourceCode r><code class=sourceCode r><a class=sourceLine id=cb2-1 data-line-number=1><span class=co># install.packages(&quot;devtools&quot;)</span></a>
<a class=sourceLine id=cb2-2 data-line-number=2>devtools<span class=op>::</span><span class=kw>install_github</span>(<span class=st>&quot;sebastien-plutniak/archeoviz&quot;</span>)</a></code></pre></div>
<p>Apr\\u00e8s quoi, chargez le package et lancez l\\u2019application avec:</p>
<div class=sourceCode id=cb3><pre class=sourceCode r><code class=sourceCode r><a class=sourceLine id=cb3-1 data-line-number=1><span class=kw>library</span>(archeoViz)</a>
<a class=sourceLine id=cb3-2 data-line-number=2><span class=kw>archeoViz</span>()</a></code></pre></div>
<h2 id=d\\u00e9ploy\\u00e9e>D\\u00e9ploy\\u00e9e</h2>
<p>Pour d\\u00e9ployer <code>archeoViz</code> sur votre Shiny server, t\\u00e9l\\u00e9chargez premi\\u00e8rement le package:</p>
<div class=sourceCode id=cb4><pre class=sourceCode r><code class=sourceCode r><a class=sourceLine id=cb4-1 data-line-number=1><span class=co># d\\u00e9terminez le r\\u00e9pertoire de travail dans votre shiny server:</span></a>
<a class=sourceLine id=cb4-2 data-line-number=2><span class=kw>setwd</span>(<span class=dt>dir =</span> <span class=st>&quot;/some/path/&quot;</span>)</a>
<a class=sourceLine id=cb4-3 data-line-number=3><span class=co># t\\u00e9l\\u00e9chargez le package:</span></a>
<a class=sourceLine id=cb4-4 data-line-number=4><span class=kw>download.file</span>(<span class=dt>url =</span> <span class=st>&quot;https://github.com/sebastien-plutniak/archeoviz/archive/master.zip&quot;</span>,</a>
<a class=sourceLine id=cb4-5 data-line-number=5>              <span class=dt>destfile =</span> <span class=st>&quot;archeoviz.zip&quot;</span>)</a>
<a class=sourceLine id=cb4-6 data-line-number=6><span class=co># d\\u00e9compression:</span></a>
<a class=sourceLine id=cb4-7 data-line-number=7><span class=kw>unzip</span>(<span class=dt>zipfile =</span> <span class=st>&quot;archeoviz.zip&quot;</span>)</a></code></pre></div>
<p>Puis, rendez-vous \\u00e0 <code>https://&lt;your-shiny-server&gt;/archeoviz-main</code>.</p>
<p>Pour param\\u00e9trer l\\u2019application avec vos donn\\u00e9es et pr\\u00e9f\\u00e9rences, \\u00e9ditez le fichier app.R situ\\u00e9 \\u00e0 la racine du r\\u00e9pertoire de l\\u2019application:</p>
<div class=sourceCode id=cb5><pre class=sourceCode r><code class=sourceCode r><a class=sourceLine id=cb5-1 data-line-number=1><span class=kw>archeoViz</span>(<span class=dt>objects.df =</span> <span class=ot>NULL</span>,   <span class=co># data.frame pour les objets</span></a>
<a class=sourceLine id=cb5-2 data-line-number=2>          <span class=dt>refits.df =</span> <span class=ot>NULL</span>,    <span class=co># data.frame optionnel pour les remontages</span></a>
<a class=sourceLine id=cb5-3 data-line-number=3>          <span class=dt>timeline.df =</span> <span class=ot>NULL</span>,  <span class=co># data.frame optionnel pour la chronologie des fouilles</span></a>
<a class=sourceLine id=cb5-4 data-line-number=4>          <span class=dt>default.group =</span><span class=ot>NULL</span>, <span class=co># m\\u00e9thode de groupement des donn\\u00e9es,</span></a>
<a class=sourceLine id=cb5-5 data-line-number=5>                               <span class=co># par couche (&quot;by.layer&quot;) ou &quot;by.variable&quot;</span></a>
<a class=sourceLine id=cb5-6 data-line-number=6>          <span class=dt>title =</span> <span class=ot>NULL</span>,        <span class=co># titre du site / du jeu de donn\\u00e9es</span></a>
<a class=sourceLine id=cb5-7 data-line-number=7>          <span class=dt>home.text =</span> <span class=ot>NULL</span>,    <span class=co># contenu html \\u00e0 afficher sur la page d'accueil</span></a>
<a class=sourceLine id=cb5-8 data-line-number=8>          <span class=dt>lang =</span> <span class=st>&quot;fr&quot;</span>          <span class=co># langue de l'interface (&quot;en&quot;: Anglais, &quot;fr&quot;: Fran\\u00e7ais, &quot;it&quot;: Italien &quot;pt&quot;: Portugais)</span></a>
<a class=sourceLine id=cb5-9 data-line-number=9>          <span class=dt>set.theme =</span> <span class=st>&quot;cosmo&quot;</span>) <span class=co># th\\u00e8me graphique de l'interface Shiny</span></a></code></pre></div>
<p>Les valeurs possibles pour le param\\u00e8tre <code>set.theme</code> sont illustr\\u00e9es sur <a href=https://rstudio.github.io/shinythemes/>cette page</a>. La langue de l\\u2019application peut \\u00eatre d\\u00e9finie avec le param\\u00e8tre <code>lang</code>.</p>
<h2 id=d\\u00e9monstration>D\\u00e9monstration</h2>
<p>Des instances de d\\u00e9monstration de l\\u2019application sont d\\u00e9ploy\\u00e9es sur le Shiny server d\\u2019<em>Huma Num</em>:</p>
<ul>
<li><a href=https://analytics.huma-num.fr/archeoviz/fr><code>archeoViz</code> en fran\\u00e7ais</a>.</li>
<li><a href=https://analytics.huma-num.fr/archeoviz/en><code>archeoViz</code> en anglais</a>.</li>
<li><a href=https://analytics.huma-num.fr/archeoviz/it><code>archeoViz</code> en italien</a>.</li>
<li><a href=https://analytics.huma-num.fr/archeoviz/pt><code>archeoViz</code> en portugais</a>.</li>
</ul>
<p>Des cas d\\u2019applications \\u00e0 divers sites arch\\u00e9ologiques sont rassembl\\u00e9s sur le <a href=https://analytics.huma-num.fr/archeoviz/home><em>Portail archeoViz</em></a>.</p>
<h1 id=recommandations-communautaires>Recommandations communautaires</h1>
<h2 id=signaler-un-bug>Signaler un bug</h2>
<p>Si vous rencontrez un bug, ouvrez une <a href=https://github.com/sebastien-plutniak/archeoviz/issues><em>issue</em></a> en indiquant tous les d\\u00e9tails n\\u00e9cessaires pour le reproduire.</p>
<h2 id=sugg\\u00e9rer-un-changement>Sugg\\u00e9rer un changement</h2>
<p>Les suggestions de modifications sont bienvenues. Les demandes peuvent concerner des fonctions additionnelles, des modifications dans la documentation, des exemples additionnels, de nouvelles fonctionnalit\\u00e9s, etc. Elles peuvent \\u00eatre faite en ouvrant une <a href=https://github.com/sebastien-plutniak/archeoviz/issues>issue</a> ou, mieux encore, en employant une <em>pull requests</em> et le mod\\u00e8le GitHub <a href=https://docs.github.com/articles/about-pull-requests>Fork and Pull</a>.</p>
<h1 id=utilisation>Utilisation</h1>
<p>Consid\\u00e9rant les restes arch\\u00e9ologiques d\\u2019un site donn\\u00e9, <code>archeoViz</code> est con\\u00e7u pour r\\u00e9duire les freins techniques \\u00e0 la r\\u00e9alisation de trois objectifs:</p>
<ul>
<li>l\\u2019exploration spatiale basique et la production de documents graphiques analytiques;</li>
<li>la pr\\u00e9-publication rapide de donn\\u00e9es arch\\u00e9ologiques, \\u00e0 destination de la communaut\\u00e9 scientifique;</li>
<li>le d\\u00e9ploiement ais\\u00e9 d\\u2019un outil d\\u2019exposition et de communication, \\u00e0 destination d\\u2019un plus large public.</li>
</ul>
<p>N.B.: par cons\\u00e9quent, <code>archeoViz</code> n\\u2019est pas destin\\u00e9 \\u00e0 se substituer \\u00e0 des outils d\\u2019analyse plus sophistiqu\\u00e9s (e.g., SIG, packages statistiques, etc.)</p>
<h2 id=donn\\u00e9es>Donn\\u00e9es</h2>
<p>Il existe trois mani\\u00e8res d\\u2019introduire des donn\\u00e9es dans <code>archeoViz</code>:</p>
<ol>
<li>en chargeant des tableaux \\u00e0 partir de l\\u2019onglet \\u201cDonn\\u00e9es\\u201d,</li>
<li>en employant le g\\u00e9n\\u00e9rateur de donn\\u00e9es al\\u00e9atoire dans l\\u2019onglet \\u201cDonn\\u00e9es\\u201d;</li>
<li>en param\\u00e9trant la fonction <code>archeoViz</code> avant de lancer l\\u2019application.</li>
</ol>
<h3 id=par-chargement-de-tableaux>Par chargement de tableaux</h3>
<p>Des tableaux pour trois types de donn\\u00e9es peuvent \\u00eatre charg\\u00e9s \\u00e0 partir de l\\u2019onglet \\u201cDonn\\u00e9es\\u201d:</p>
<ul>
<li>un tableau \\u201cobjects\\u201d (requis), \\u00e0 propos des objets;</li>
<li>un tableau \\u201crefits\\u201d (optionnel), \\u00e0 propos des relations de remontage;</li>
<li>un tableau \\u201ctimeline\\u201d (optionnel), \\u00e0 propos des carr\\u00e9s du site et des ann\\u00e9es o\\u00f9 ils ont \\u00e9t\\u00e9 fouill\\u00e9s.</li>
</ul>
<p>Les tableaux doivent \\u00eatre au format .csv et la premi\\u00e8re ligne doit contenir les noms des variables (le symbole s\\u00e9parateur du csv peut \\u00eatre d\\u00e9fini dans l\\u2019interface). Les contenus au format html sont autoris\\u00e9s. Cela permet notamment d\\u2019introduire r\\u00e9f\\u00e9rences vers des ressources compl\\u00e9mentaires du jeu de donn\\u00e9es (par .ex l\\u2019identifiant unique de l\\u2019objets dans une autre base de donn\\u00e9es, ou ceux des concepts d\\u2019ontologies employ\\u00e9s pour d\\u00e9crire l\\u2019objet, etc.).</p>
<h4 id=tableau-objets>Tableau objets</h4>
<p>Chaque ligne d\\u00e9crit un objet et doit comporter les variables obligatoires suivantes :</p>
<ul>
<li><strong>id</strong> : <em>valeur alphanum\\u00e9rique</em>, identifiant unique de l\\u2019objet</li>
<li><strong>xmin</strong> : <em>valeur num\\u00e9rique</em>, coordonn\\u00e9e de l\\u2019objet en axe X (en cm)</li>
<li><strong>ymin</strong> : <em>valeur num\\u00e9rique</em>, coordonn\\u00e9e de l\\u2019objet en axe Y (en cm)</li>
<li><strong>zmin</strong> : <em>valeur num\\u00e9rique</em>, coordonn\\u00e9e de l\\u2019objet en axe Z (valeur positive de profondeur en cm)</li>
<li><strong>layer</strong> : <em>valeur alphanum\\u00e9rique</em>, identifiant de la couche de l\\u2019objet</li>
<li><strong>object_type</strong> : <em>valeur alphanum\\u00e9rique</em>, cat\\u00e9gorie de l\\u2019objet</li>
</ul>
<p>De plus, des variables optionnelles sont possibles:</p>
<ul>
<li><strong>square_x</strong> : <em>valeur alphanum\\u00e9rique</em>, identifiant du carr\\u00e9 de l\\u2019objet en axe X</li>
<li><strong>square_y</strong> : <em>valeur alphanum\\u00e9rique</em>, identifiant du carr\\u00e9 de l\\u2019objet en axe Y</li>
<li><strong>year</strong> : <em>valeur num\\u00e9rique</em>, ann\\u00e9e de fouille de l\\u2019objet</li>
<li><strong>xmax</strong> : <em>valeur num\\u00e9rique</em>, lorsque la localisation de l\\u2019objet en X est comprise dans un intervalle de coordonn\\u00e9es</li>
<li><strong>ymax</strong> : <em>valeur num\\u00e9rique</em>, lorsque la localisation de l\\u2019objet en Y est comprise dans un intervalle de coordonn\\u00e9es</li>
<li><strong>zmax</strong> : <em>valeur num\\u00e9rique</em>, lorsque la localisation de l\\u2019objet en Z est comprise dans un intervalle de coordonn\\u00e9es</li>
<li><strong>object_edit</strong> : nombre non limit\\u00e9 de variables additionnelles d\\u00e9crivant l\\u2019objet (les noms de colonnes doivent commencer par <em>object_</em> et avoir des suffixes diff\\u00e9rents</li>
</ul>
<p>Les labels des carr\\u00e9s du carroyage :</p>
<ul>
<li>sont ordonn\\u00e9s alpha-num\\u00e9riquement ;</li>
<li>ne sont pas affich\\u00e9s, afin d\\u2019\\u00e9viter des affichages erron\\u00e9s, si le nombbre de labels ne correspond pas exactement au nombre total de carr\\u00e9s de 100 cm pouvant \\u00eatre d\\u00e9finis dans l\\u2019intervalle des coordonn\\u00e9es minimales et maximales contenues dans les variables xmin et ymin ;</li>
<li>peuvent \\u00eatre compl\\u00e9t\\u00e9s avec les param\\u00e8tres <code>add.x.square.labels</code> et <code>add.y.square.labels</code> de la fonction <code>archeoViz()</code> afin d\\u2019ajouter les labels manquants (respectivement, sur les axes X et Y du carroyage).</li>
</ul>
<h3 id=par-g\\u00e9n\\u00e9ration-de-donn\\u00e9es-al\\u00e9atoires>Par g\\u00e9n\\u00e9ration de donn\\u00e9es al\\u00e9atoires</h3>
<p>\\u00c0 des fins de d\\u00e9monstration, il est possible d\\u2019employer des donn\\u00e9es al\\u00e9atoirement g\\u00e9n\\u00e9r\\u00e9es. D\\u00e9placer le curseur sur une valeur sup\\u00e9rieure \\u00e0 0, dans l\\u2019onglet \\u201cDonn\\u00e9es\\u201d, active cette fonctionnalit\\u00e9 (replacer le curseur sur 0 la d\\u00e9sactive). Des donn\\u00e9es d\\u2019objets, de remontage, et de chronologie de la fouille sont alors g\\u00e9n\\u00e9r\\u00e9s, permettant de tester toutes les fonctionnalit\\u00e9s d\\u2019<code>archeoViz</code>.</p>
<h3 id=par-param\\u00e9trage-de-la-fonction>Par param\\u00e9trage de la fonction</h3>
<p>La fonction de lancement d\\u2019<code>archeoViz()</code> peut \\u00eatre ex\\u00e9cut\\u00e9e sans d\\u00e9finir de param\\u00e8tres:</p>
<div class=sourceCode id=cb6><pre class=sourceCode r><code class=sourceCode r><a class=sourceLine id=cb6-1 data-line-number=1><span class=kw>archeoViz</span>()</a></code></pre></div>
<p>ou en employant les param\\u00e8tres <code>objects.df</code>, <code>refits.df</code>, <code>timeline.df</code> afin de charger des donn\\u00e9es relatives, respectivement, aux objets, aux remontages, et \\u00e0 la chronologie.</p>
<div class=sourceCode id=cb7><pre class=sourceCode r><code class=sourceCode r><a class=sourceLine id=cb7-1 data-line-number=1><span class=kw>archeoViz</span>(<span class=dt>objects.df =</span> <span class=ot>NULL</span>,  <span class=co># data.frame pour les objets</span></a>
<a class=sourceLine id=cb7-2 data-line-number=2>          <span class=dt>refits.df =</span> <span class=ot>NULL</span>,   <span class=co># data.frame optionnel pour les remontages</span></a>
<a class=sourceLine id=cb7-3 data-line-number=3>          <span class=dt>timeline.df =</span> <span class=ot>NULL</span>) <span class=co># data.frame optionnel pour la chronologie</span></a></code></pre></div>
<h2 id=sous-s\\u00e9lection-de-donn\\u00e9es>Sous-s\\u00e9lection de donn\\u00e9es</h2>
<p>Apr\\u00e8s que les donn\\u00e9es soient charg\\u00e9es, des sous-s\\u00e9lection peuvent \\u00eatre r\\u00e9alis\\u00e9es en employant les options du menu gauche de l\\u2019interface. Plusieurs param\\u00e8tres sont possibles: le mode de localisation, les cat\\u00e9gories des objets, et la d\\u00e9finition de sous-groupes de donn\\u00e9es.</p>
<h3 id=par-mode-de-localisation>Par mode de localisation</h3>
<p>La localisation des objets arch\\u00e9ologiques peut avoir \\u00e9t\\u00e9 enregistr\\u00e9e de diff\\u00e9rentes mani\\u00e8res, plus ou moins pr\\u00e9cises: comme des points (coordonn\\u00e9es xyz), sur des lignes, des plans, ou au sein de volumes (intervalles de valeurs x, y et/ou z). Dans <code>archeoViz</code>, une distinction est faite entre les localisations exactes (les points) et les autres types de localisations vagues (lignes, plans, volumes). Les boutons permettent de s\\u00e9lectionner le sous-ensemble de donn\\u00e9es correspondant \\u00e0 l\\u2019un, l\\u2019autre, ou les deux modes de localisation.</p>
<h3 id=par-cat\\u00e9gorie-dobjet>Par cat\\u00e9gorie d\\u2019objet</h3>
<p>Des sous-ensembles de donn\\u00e9es peuvent \\u00eatre d\\u00e9finis \\u00e0 partir des cat\\u00e9gories des objets, en employant les champs \\u201cVariable\\u201d et \\u201cValeurs\\u201d. Apr\\u00e8s que l\\u2019une des variables ait \\u00e9t\\u00e9 s\\u00e9lectionn\\u00e9e (\\u201cobject_type\\u201d ou une autre \\u201cobject_\\u201d variable possible), ses valeurs apparaissent en dessous et peuvent \\u00eatre s\\u00e9lectionn\\u00e9es en cochant les items. La s\\u00e9lection doit \\u00eatre valid\\u00e9e en cliquant sur le bouton \\u201cValider\\u201d. Cette s\\u00e9lection d\\u00e9termine les donn\\u00e9es qui seront pr\\u00e9sent\\u00e9es dans les graphiques et tableaux.</p>
<h3 id=sous-groupes-de-donn\\u00e9es>Sous-groupes de donn\\u00e9es</h3>
<p>Il est, de plus, possible de pr\\u00e9ciser si les couleurs doivent \\u00eatre d\\u00e9finies en fonction des couches ou en fonction de la variable objet s\\u00e9lectionn\\u00e9e.</p>
<p>Des sous-groupes de donn\\u00e9es peuvent \\u00eatre d\\u00e9finies de deux mani\\u00e8res: soit par couche ou en fonction de la variable \\u201cobject_\\u201d s\\u00e9lectionn\\u00e9e. Cette option d\\u00e9termine l\\u2019application des couleurs dans les graphiques 3D et 2D et les sous-groupes de donn\\u00e9es auxquels sont appliqu\\u00e9s les calculs de surface de r\\u00e9gression et d\\u2019enveloppes convexes.</p>
<h3 id=par-objet>Par objet</h3>
<p>Dans les onglets \\u201cVue 3D\\u201d, \\u201cCarte\\u201d, \\u201cSection X\\u201d et  \\u201cSection Y\\u201d, cliquer sur un point active l'affichage d'informations \\u00e0 son sujet dans le tableau pr\\u00e9sent sous la visualisation.</p>
<h2 id=remontages>Remontages</h2>
<p>Les remontages sont g\\u00e9n\\u00e9ralement enregistr\\u00e9s de deux mani\\u00e8res par les arch\\u00e9ologues:</p>
<ol>
<li>par ensemble d\\u2019objets remontant entre eux: en employant alors un tableau \\u00e0 deux colonnes o\\u00f9 une ligne correspond \\u00e0 un <strong>objet</strong>. La premi\\u00e8re colonne contient l\\u2019identifiant unique de l\\u2019objet et la deuxi\\u00e8me colonne contient l\\u2019identifiant unique de l\\u2019ensemble d\\u2019objets remontant entre eux auquel l\\u2019objet consid\\u00e9r\\u00e9 appartient.</li>
<li>par relation de remontage: en employant alors un tableau \\u00e0 deux colonnes o\\u00f9 une ligne correspond \\u00e0 une <strong>relation de remontage</strong>. La premi\\u00e8re colonne contient l\\u2019identifiant unique du premier objet et la deuxi\\u00e8me colonne contient l\\u2019identifiant unique du deuxi\\u00e8me objet.</li>
</ol>
<p>Bien que la seconde structure de donn\\u00e9e soit plus pr\\u00e9cise, c\\u2019est la premi\\u00e8re qui est le plus fr\\u00e9quemment employ\\u00e9e.</p>
<p>Ces deux structures de donn\\u00e9es sont trait\\u00e9es diff\\u00e9rement dans <code>archeoViz</code>:</p>
<ul>
<li>les ensembles d\\u2019objets remontant entre eux doivent \\u00eatre d\\u00e9crits dans une colonne sp\\u00e9cifique dans le tableau <code>objects.df</code> table (nomm\\u00e9e par ex. <code>object_refits</code>) et sont repr\\u00e9sent\\u00e9s par la couleur des points dans les visualisations (comme pour tout autre variable);</li>
<li>les relations de remontage doivent \\u00eatre d\\u00e9crits dans un tableau <code>refits.df</code> et sont visualis\\u00e9s par des segments reliant les objets li\\u00e9s par des relations de remontage.</li>
</ul>
<h2 id=visualisations-interactives>Visualisations interactives</h2>
<p>Les visualisations dans les onglets \\u201cVue 3D\\u201d, \\u201cCarte\\u201d, \\u201cSection X\\u201d et \\u201cSection Y\\u201d sont g\\u00e9n\\u00e9r\\u00e9es \\u00e0 l\\u2019aide de la librairie <a href=https://CRAN.R-project.org/package=plotly/><code>plotly</code></a>. Toutes ces visualisations sont dynamiques et sont surmont\\u00e9es d\\u2019une barre de menu comportant plusieurs options (g\\u00e9n\\u00e9rer un fichier image, zoomer, d\\u00e9placer le point de vue, etc.). Davantage de d\\u00e9tails sont disponibles sur le <a href=http://plotly.github.io/getting-to-know-the-plotly-modebar/>site de <code>plotly</code></a>.</p>
<p>Cliquer sur un item de la l\\u00e9gende modifie l\\u2019affichage:</p>
<ul>
<li>un simple clic sur un item active/d\\u00e9sactive son affichage;</li>
<li>un double clic sur un item limite l\\u2019affichage \\u00e0 cet item seul (un autre double clic annule cette s\\u00e9lection).</li>
</ul>
<p>Cette fonctionnalit\\u00e9 permet de d\\u00e9finir les couches devant \\u00eatre affich\\u00e9es. De plus, la taille des points peut \\u00eatre ajust\\u00e9e, ainsi que l\\u2019affichage ou non des relations de remontage.</p>
<h2 id=sorties-graphiques>Sorties graphiques</h2>
<p>Plusieurs sorties graphiques peuvent \\u00eatre g\\u00e9n\\u00e9r\\u00e9es dans <code>archeoViz</code>.</p>
<ul>
<li>Les visualisations en 3D, en plan et en sections peuvent \\u00eatre export\\u00e9es :
<ul>
<li>au format .svg, en cliquant sur l\\u2019ic\\u00f4ne \\u201cappareil photo\\u201d de la barre de menu s\\u2019affichant au dessus des visualisations ;</li>
<li>en format html interactif, en cliquant sur le bouton \\u201cExporter\\u201d dans la colonne droite de l\\u2019interface.</li>
</ul></li>
<li>Le plan de la chronologie des fouilles peut \\u00eatre t\\u00e9l\\u00e9charg\\u00e9 au format .svg en cliquant sur le bouton \\u201cT\\u00e9l\\u00e9charger\\u201d.</li>
</ul>
<h2 id=statistiques-spatiales>Statistiques spatiales</h2>
<p><code>archeoViz</code> comporte quelques fonctionnalit\\u00e9s d\\u2019analyse spatiale, destin\\u00e9es \\u00e0 usage simple et exploratoire.</p>
<h3 id=surfaces-de-r\\u00e9gression>Surfaces de r\\u00e9gression</h3>
<p>Dans l\\u2019onglet \\u201cVue 3D\\u201d, cliquer sur \\u201cCalculer les surfaces\\u201d puis \\u201cValider\\u201d affiche les surfaces de r\\u00e9gression associ\\u00e9es \\u00e0 chaque sous-ensemble de points (couche), comportant au moins 100 points. Les surfaces sont calcul\\u00e9es gr\\u00e2ce au mod\\u00e8le additif g\\u00e9n\\u00e9ralis\\u00e9 impl\\u00e9ment\\u00e9 dans le package <a href=https://CRAN.R-project.org/package=mgcv><code>mgcv</code></a>.</p>
<h3 id=enveloppes-convexes>Enveloppes convexes</h3>
<p>Cliquer sur \\u201cCalculer les enveloppes\\u201d puis \\u201cValider\\u201d, dans l\\u2019onglet \\u201cVue 3D\\u201d, affiche les enveloppes convexes associ\\u00e9es \\u00e0 chaque sous-ensemble de points (couches), comportant au moins 20 points. Les enveloppes sont calcul\\u00e9es en employant le package <a href=https://CRAN.R-project.org/package=cxhull><code>cxhull</code></a>.</p>
<h3 id=estimation-2d-de-densit\\u00e9-par-noyau>Estimation 2D de densit\\u00e9 par noyau</h3>
<p>Dans l\\u2019onglet \\u201cPlan\\u201d, cocher la case \\u201cCalculer la densit\\u00e9\\u201d et cliquer sur \\u201cValider\\u201d g\\u00e9n\\u00e8re un plan comportant des lignes de contour repr\\u00e9sentant la densit\\u00e9 des points. La densit\\u00e9 peut \\u00eatre calcul\\u00e9e pour l\\u2019ensemble des points ou par couche (comportant au moins 30 points). L\\u2019estimation bidimensionnelle de densit\\u00e9 par noyau est calcul\\u00e9e avec la fonction <code>kde2d</code> du package <a href=https://CRAN.R-project.org/package=MASS><code>MASS</code></a> (\\u00e0 travers le package <a href=https://CRAN.R-project.org/package=ggplot2><code>ggplot2</code></a>).</p>
<h2 id=reproductibilit\\u00e9>Reproductibilit\\u00e9</h2>
<p><code>archeoViz</code> est, par d\\u00e9finition, une application interactive. Toutefois, plusieurs fonctionnalit\\u00e9s permettent de garantir la reproductibilit\\u00e9 et la communicabilit\\u00e9 \\u00e0 des tiers du r\\u00e9sultat d\\u2019interactions avec l\\u2019application.</p>
<ul>
<li>La visualisation 3D est exportable dans un format interactif html <em>standalone</em>, tenant compte de la s\\u00e9lection de donn\\u00e9es effectu\\u00e9e par l\\u2019utilisateur.</li>
<li>Dans l\\u2019onglet \\u201cReproductibilit\\u00e9\\u201d, une commande R est g\\u00e9n\\u00e9r\\u00e9e dynamiquement, tenant compte du param\\u00e9trage de l\\u2019application courant r\\u00e9alis\\u00e9 par l\\u2019utilisateur.</li>
</ul>
<h2 id=param\\u00e8tres-avanc\\u00e9s>Param\\u00e8tres avanc\\u00e9s</h2>
<p>La fonction <code>archeoViz()</code> admet de nombreux param\\u00e8tres optionnels, relatifs \\u00e0:</p>
<ul>
<li>les donn\\u00e9es \\u00e0 charger (trait\\u00e9 <a href=#par-param\\u00e9trage-de-la-fonction>ci-dessus</a>),</li>
<li>le contenu de la page d\\u2019accueil (trait\\u00e9 <a href=#d\\u00e9ploy\\u00e9e>ci-dessus</a>),</li>
<li>le <a href=#carroyage>carroyage</a>,</li>
<li>le <a href=#pr\\u00e9-s\\u00e9lection-des-param\\u00e8tres>pr\\u00e9-param\\u00e8trage</a> des param\\u00e8tres pouvant \\u00eatre d\\u00e9finis dans l\\u2019interface graphique,</li>
<li>le <a href=#affichage-r\\u00e9actif-des-visualisations>comportement r\\u00e9actif</a> de l\\u2019application \\u00e0 propos du calcul et de l\\u2019affichage des visualisations.</li>
</ul>
<!-- end list -->

<div class=sourceCode id=cb8><pre class=sourceCode r><code class=sourceCode r><a class=sourceLine id=cb8-1 data-line-number=1><span class=kw>archeoViz</span>(<span class=dt>objects.df=</span><span class=ot>NULL</span>, <span class=dt>refits.df=</span><span class=ot>NULL</span>, <span class=dt>timeline.df=</span><span class=ot>NULL</span>,</a>
<a class=sourceLine id=cb8-2 data-line-number=2>          <span class=dt>title=</span><span class=ot>NULL</span>, <span class=dt>home.text=</span><span class=ot>NULL</span>, <span class=dt>lang=</span><span class=st>&quot;en&quot;</span>, <span class=dt>set.theme=</span><span class=st>&quot;cosmo&quot;</span>,</a>
<a class=sourceLine id=cb8-3 data-line-number=3>          <span class=dt>square.size =</span> <span class=dv>100</span>, <span class=dt>reverse.axis.values =</span> <span class=ot>NULL</span>, <span class=dt>reverse.square.names =</span> <span class=ot>NULL</span>,</a>
<a class=sourceLine id=cb8-4 data-line-number=4>          <span class=dt>add.x.square.labels =</span> <span class=ot>NULL</span>, <span class=dt>add.y.square.labels =</span> <span class=ot>NULL</span>,</a>
<a class=sourceLine id=cb8-5 data-line-number=5>          <span class=dt>class.variable =</span> <span class=ot>NULL</span>, <span class=dt>class.values =</span> <span class=ot>NULL</span>,</a>
<a class=sourceLine id=cb8-6 data-line-number=6>          <span class=dt>default.group =</span> <span class=st>&quot;by.layer&quot;</span>, <span class=dt>location.mode =</span> <span class=ot>NULL</span>,</a>
<a class=sourceLine id=cb8-7 data-line-number=7>          <span class=dt>map.z.val =</span> <span class=ot>NULL</span>, <span class=dt>map.density =</span> <span class=st>&quot;no&quot;</span>, <span class=dt>map.refits =</span> <span class=ot>NULL</span>,</a>
<a class=sourceLine id=cb8-8 data-line-number=8>          <span class=dt>plot3d.hulls =</span> <span class=ot>NULL</span>, <span class=dt>plot3d.surfaces =</span> <span class=ot>NULL</span>, <span class=dt>plot3d.refits =</span> <span class=ot>NULL</span>,</a>
<a class=sourceLine id=cb8-9 data-line-number=9>          <span class=dt>sectionX.x.val =</span> <span class=ot>NULL</span>, <span class=dt>sectionX.y.val =</span> <span class=ot>NULL</span>, <span class=dt>sectionX.refits =</span> <span class=ot>NULL</span>, </a>
<a class=sourceLine id=cb8-10 data-line-number=10>          <span class=dt>sectionY.x.val =</span> <span class=ot>NULL</span>, <span class=dt>sectionY.y.val =</span> <span class=ot>NULL</span>, <span class=dt>sectionY.refits =</span> <span class=ot>NULL</span>,</a>
<a class=sourceLine id=cb8-11 data-line-number=11>          <span class=dt>camera.center =</span> <span class=ot>NULL</span>, <span class=dt>camera.eye =</span> <span class=ot>NULL</span>, <span class=dt>run.plots =</span> <span class=ot>FALSE</span></a>
<a class=sourceLine id=cb8-12 data-line-number=12>          )</a></code></pre></div>
<h3 id=carroyage>Carroyage</h3>
<div class=sourceCode id=cb9><pre class=sourceCode r><code class=sourceCode r><a class=sourceLine id=cb9-1 data-line-number=1><span class=kw>archeoViz</span>(<span class=dt>square.size =</span> <span class=dv>100</span>,</a>
<a class=sourceLine id=cb9-2 data-line-number=2>          <span class=dt>reverse.axis.values =</span> <span class=ot>NULL</span>, <span class=dt>reverse.square.names =</span> <span class=ot>NULL</span>,</a>
<a class=sourceLine id=cb9-3 data-line-number=3>          <span class=dt>add.x.square.labels =</span> <span class=ot>NULL</span>, <span class=dt>add.y.square.labels =</span> <span class=ot>NULL</span></a>
<a class=sourceLine id=cb9-4 data-line-number=4>          )</a></code></pre></div>
<ul>
<li><strong>square.size</strong> : num\\u00e9rique. Taille (longueur et largeur) en centim\\u00e8tre des carr\\u00e9s du carroyage. La valeur par d\\u00e9faut est 100 cm.</li>
<li><strong>reverse.axis.values</strong> : caract\\u00e8res. Nom de l\\u2019axe ou des axes \\u00e0 inverser (une combinaison de \\u2018x\\u2019, \\u2018y\\u2019, \\u2018z\\u2019).</li>
<li><strong>reverse.square.names</strong> : caract\\u00e8res. Nom de l\\u2019axe ou des axes pour lesquels inverser l\\u2019ordre des labels de carr\\u00e9s (une combinaison de \\u2018x\\u2019, \\u2018y\\u2019, \\u2018z\\u2019).</li>
<li><strong>add.x.square.labels</strong> : caract\\u00e8res. Labels de carr\\u00e9s additionnels pour l\\u2019axe \\u2018x\\u2019.</li>
<li><strong>add.y.square.labels</strong> : caract\\u00e8res. Labels de carr\\u00e9s additionnels pour l\\u2019axe \\u2018y\\u2019.</li>
</ul>
<h3 id=pr\\u00e9-s\\u00e9lection-des-param\\u00e8tres>Pr\\u00e9-s\\u00e9lection des param\\u00e8tres</h3>
<div class=sourceCode id=cb10><pre class=sourceCode r><code class=sourceCode r><a class=sourceLine id=cb10-1 data-line-number=1><span class=kw>archeoViz</span>(<span class=dt>class.variable =</span> <span class=ot>NULL</span>, <span class=dt>class.values =</span> <span class=ot>NULL</span>,</a>
<a class=sourceLine id=cb10-2 data-line-number=2>          <span class=dt>default.group =</span> <span class=st>&quot;by.layer&quot;</span>, <span class=dt>location.mode =</span> <span class=ot>NULL</span>,</a>
<a class=sourceLine id=cb10-3 data-line-number=3>          <span class=dt>map.z.val =</span> <span class=ot>NULL</span>, <span class=dt>map.density =</span> <span class=st>&quot;no&quot;</span>, <span class=dt>map.refits =</span> <span class=ot>NULL</span>,</a>
<a class=sourceLine id=cb10-4 data-line-number=4>          <span class=dt>plot3d.hulls =</span> <span class=ot>NULL</span>, <span class=dt>plot3d.surfaces =</span> <span class=ot>NULL</span>, <span class=dt>plot3d.refits =</span> <span class=ot>NULL</span>,</a>
<a class=sourceLine id=cb10-5 data-line-number=5>          <span class=dt>sectionX.x.val =</span> <span class=ot>NULL</span>, <span class=dt>sectionX.y.val =</span> <span class=ot>NULL</span>, <span class=dt>sectionX.refits =</span> <span class=ot>NULL</span>, </a>
<a class=sourceLine id=cb10-6 data-line-number=6>          <span class=dt>sectionY.x.val =</span> <span class=ot>NULL</span>, <span class=dt>sectionY.y.val =</span> <span class=ot>NULL</span>, <span class=dt>sectionY.refits =</span> <span class=ot>NULL</span>,</a>
<a class=sourceLine id=cb10-7 data-line-number=7>          <span class=dt>camera.center =</span> <span class=ot>NULL</span>, <span class=dt>camera.eye =</span> <span class=ot>NULL</span></a>
<a class=sourceLine id=cb10-8 data-line-number=8>          )</a></code></pre></div>
<ul>
<li><strong>class.variable</strong> : caract\\u00e8res. Au lancement de l\\u2019application, nom de la variable \\u00e0 pr\\u00e9-s\\u00e9lectionner.</li>
<li><strong>class.values</strong> : caract\\u00e8res. Au lancement de l\\u2019application, nom des valeurs \\u00e0 pr\\u00e9-s\\u00e9lectionner.</li>
<li><strong>default.group</strong> : caract\\u00e8res. Au lancement de l\\u2019application, pr\\u00e9-s\\u00e9lection de la variable \\u00e0 employer pour grouper les donn\\u00e9es (soit \\u201cby.layer\\u201d ou \\u201cby.variable\\u201d).</li>
<li><strong>location.mode</strong> : caract\\u00e8res. Au lancement de l\\u2019application, pr\\u00e9-s\\u00e9lection du ou des modes de localisation \\u00e0 afficher (soit \\u201cexact\\u201d, \\u201cfuzzy\\u201d, ou \\u201cexact.fuzzy\\u201d).</li>
<li><strong>map.z.val</strong> : num\\u00e9rique. Au lancement de l\\u2019application, valeurs minimale et maximale des coordonn\\u00e9es Z \\u00e0 pr\\u00e9s\\u00e9lectionner dans la visualisation en plan.</li>
<li><strong>map.density</strong> : caract\\u00e8res. Au lancement de l\\u2019application, calculer et afficher ou non les courbes de densit\\u00e9 dans la visualisation en plan (soit \\u201cno\\u201d, \\u201coverall\\u201d, ou \\u201cby.variable\\u201d).</li>
<li><strong>map.refits</strong> : TRUE ou FALSE. Afficher ou non les remontages dans la visualisation en plan.</li>
<li><strong>plot3d.hulls</strong> : TRUE ou FALSE. Au lancement de l\\u2019application, calculer et afficher ou non les enveloppes convexes dans la visualisation 3D.</li>
<li><strong>plot3d.surfaces</strong> : TRUE ou FALSE. Au lancement de l\\u2019application, calculer et afficher ou non les surfaces de r\\u00e9gression dans la visualisation 3D.</li>
<li><strong>plot3d.refits</strong> : TRUE ou FALSE. Au lancement de l\\u2019application, afficher ou non les remontages dans la visualisation 3D.</li>
<li><strong>sectionX.x.val</strong> : num\\u00e9rique. Au lancement de l\\u2019application, valeurs minimale et maximale des coordonn\\u00e9es X \\u00e0 pr\\u00e9s\\u00e9lectionner dans la visualisation en section X.</li>
<li><strong>sectionX.y.val</strong> : num\\u00e9rique. Au lancement de l\\u2019application, valeurs minimale et maximale des coordonn\\u00e9es Y \\u00e0 pr\\u00e9s\\u00e9lectionner dans la visualisation en section X.</li>
<li><strong>sectionX.refits</strong> : TRUE ou FALSE. Au lancement de l\\u2019application, afficher ou non les remontages dans la visualisation en section X.</li>
<li><strong>sectionY.x.val</strong> : num\\u00e9rique. Au lancement de l\\u2019application, valeurs minimale et maximale des coordonn\\u00e9es X \\u00e0 pr\\u00e9s\\u00e9lectionner dans la visualisation en section Y.</li>
<li><strong>sectionY.y.val</strong> : num\\u00e9rique. Au lancement de l\\u2019application, valeurs minimale et maximale des coordonn\\u00e9es Y \\u00e0 pr\\u00e9s\\u00e9lectionner dans la visualisation en section Y.</li>
<li><strong>sectionY.refits</strong> : TRUE ou FALSE. Au lancement de l\\u2019application, afficher ou non les remontages dans la visualisation en section Y.</li>
<li><strong>camera.center</strong> : num\\u00e9rique. Au lancement de l\\u2019application, coordonn\\u00e9es du point vers lequel la cam\\u00e9ra est orient\\u00e9e dans la visualisation 3D (valeurs par d\\u00e9faut: x=0, y=0, z=0).</li>
<li><strong>camera.eye</strong> : num\\u00e9rique. Au lancement de l\\u2019application, coordonn\\u00e9es de la position de la cam\\u00e9ra dans la visualisation 3D (valeurs par d\\u00e9faut: x=1.25, y=1.25, z=1.25).</li>
</ul>
<h3 id=affichage-r\\u00e9actif-des-visualisations>Affichage r\\u00e9actif des visualisations</h3>
<div class=sourceCode id=cb11><pre class=sourceCode r><code class=sourceCode r><a class=sourceLine id=cb11-1 data-line-number=1><span class=kw>archeoViz</span>(<span class=dt>run.plots =</span> <span class=ot>FALSE</span>)</a></code></pre></div>
<ul>
<li><strong>run.plots</strong> : TRUE ou FALSE. Si les visualisations doivent, ou non, \\u00eatre imm\\u00e9diatement calcul\\u00e9es et affich\\u00e9es (sans n\\u00e9cessiter un clic sur les boutons de l\\u2019interface).</li>
</ul>
<h1 id=remerciements>Remerciements</h1>
<p>L\\u2019application et le package <code>archeoViz</code> sont d\\u00e9velopp\\u00e9s et maintenus par S\\u00e9bastien Plutniak. Arthur Coulon, Sol\\u00e8ne Denis, Olivier Marlet, et Thomas Perrin ont test\\u00e9 et soutenu ce projet durant ses premi\\u00e8res \\u00e9tapes. Renata Araujo et Sara Giardino ont traduit l\\u2019application respectivement en portugais et en italien.</p>
<h1 id=r\\u00e9f\\u00e9rences>R\\u00e9f\\u00e9rences</h1>
<ul>
<li>Plutniak, S\\u00e9bastien, Renata Araujo, Sara Giardino. 2023. \\u201carcheoViz. Visualisation, Exploration, and Web Communication of Archaeological Excavation Data\\u201d. v1.0.0, DOI: <a href=https://doi.org/10.5281/zenodo.7682227>10.5281/zenodo.7682227</a>.</li>
<li>Plutniak, S\\u00e9bastien. 2023. \\u201c<a href=https://www.prehistoire.org/offres/doc_inline_src/515/0-BSPF_2023_1_2e_partie_Correspondance_PLUTNIAK.pdf>Visualiser et explorer la distribution spatiale du mobilier arch\\u00e9ologique: l\\u2019application archeoViz et son portail web</a>\\u201d. <strong>Bulletin de la Soci\\u00e9t\\u00e9 pr\\u00e9historique fran\\u00e7aise</strong>, 120(1), p. 70-74.</li>
</ul>
"
  
  
  # LIST ----
  # : fr ----
  fr <- list(
    welcome = welcome.fr,
    reproducibility = reproducibility.fr,
    tab.home = "Accueil",
    tab.input = "Donn\\u00e9es",
    tab.plot3d ="Vue 3D",
    tab.map = "Plan",
    tab.tables = "Tableaux",
    tab.timeline = "Chronologie",
    tab.reproducibility = "Reproductibilit\\u00e9",
    tab.guidelines = "Aide",
    all = "TOUTES",
    download = "T\\u00e9l\\u00e9charger",
    export = "Exporter (html)",
    location = "Mode de localisation",
    values = "Valeurs",
    validate = "1) Valider la s\\u00e9lection",
    refresh = "2) Rafra\\u00eechir",
    header.3d.options = "Options vue 3D",
    header.objects.table = "Chargement du tableau des objets",
    header.simul.data = "G\\u00e9n\\u00e9rer des donn\\u00e9es de d\\u00e9monstration simul\\u00e9es",
    header.refits.table = "Chargement du tableau des remontages",
    header.timeline.table = "Chargement du tableau de chronologie des fouilles",
    choose.csv = "S\\u00e9lectionnez un fichier csv",
    input.objects = input.objects.fr,
    input.refits = input.refits.fr,
    input.timeline = input.timeline.fr,
    guidelines = guidelines.fr,
    separator = "S\\u00e9parateur",
    decimal = "D\\u00e9cimales",
    use.demo = "Simuler n objets",
    surfaces = "Calculer les surfaces",
    hulls = "Calculer les enveloppes",
    refits = "Montrer les remontages",
    point.size = "Taille des points",
    ratio = "Ratio vertical",
    density = "Calculer la densit\\u00e9",
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
    group = "Grouper les donn\\u00e9es",
    through = "avec",
    total = "Total",
    objects = "objets",
    show.uncertainty = "Montrer les incertitudes",
    linear.uncertainty = "incertitude lin\\u00e9aire",
    planar.uncertainty = "incertitude planaire",
    volume.uncertainty = "incertitude volum\\u00e9trique",
    linear = "Lin\\u00e9aire",
    planar = "Planaire",
    volume = "Volum\\u00e9trique",
    click.on.point = "Cliquez sur un point pour afficher ses informations.",
    notif.objects.ok = "Fichier des objets ok!",
    notif.objects.not.ok = "Erreur. Certains champs requis sont absents, v\\u00e9rifiez le fichier.",
    notif.no.data = "Pas de donn\\u00e9es dans ces intervalles.",
    notif.tick.value = "Cochez au moins une valeur (dans le menu lat\\u00e9ral gauche).",
    notif.error.coords.type = "Des valeurs xmin, ymin, ou zmin ne sont pas num\\u00e9riques.",
    notif.error.identifier = "Les identifiants uniques des objets ne sont pas uniques.",
    notif.warn.obj.removed = "Les objets aux coordonn\\u00e9es incompl\\u00e8tes ont \\u00e9t\\u00e9 supprim\\u00e9s.",
    notif.warn.uncertainty = "Nombreuses localisations incertaines. L'affichage risque d'\\u00eatre lent.",
    notif.warn.refits = "Nombreux remontages. L'affichage risque d'\\u00eatre lent."
  )
  
  # : en ----
  en <- list(
    welcome = welcome.en,
    reproducibility = reproducibility.en,
    tab.home = "Home",
    tab.input = "Input data",
    tab.plot3d ="3D plot",
    tab.map = "Map",
    tab.tables = "Tables",
    tab.timeline = "Timeline",
    tab.reproducibility = "Reproducibility",
    tab.guidelines = "Guidelines",
    all = "ALL",
    download = "Download",
    export = "Html export",
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
    total = "Total",
    objects = "objects",
    linear.uncertainty = "linear uncertainty",
    planar.uncertainty = "planar uncertainty",
    volume.uncertainty = "volume uncertainty",
    linear = "Linear",
    planar = "Planar",
    volume = "Volume",
    show.uncertainty = "Show uncertainty",
    click.on.point = "Click on a point to get more information.",
    notif.objects.ok = "Objects file ok!",
    notif.objects.not.ok = "Error. Some of the mandatory fields are absent. Please check the file.",
    notif.no.data = "No data in these ranges.",
    notif.tick.value = "Tick at least one value (in the left side menu)",
    notif.error.coords.type = "xmin, ymin, or zmin value(s) are not numerical.",
    notif.error.identifier = "Some of the objects' unique identifier are duplicated.",
    notif.warn.obj.removed = "Objects with incomplete coordinates have been removed.",
    notif.warn.uncertainty = "Many objects with uncertain location: it might slow down the app.",
    notif.warn.refits = "Many refits: it might slow down the app."
  )
  
  
  # : pt ----
  pt <- list(  
    welcome = welcome.pt,
    reproducibility = reproducibility.pt,
    tab.home = "In\\u00edcio",
    tab.input = "Dados",
    tab.plot3d ="Visualiza\\u00e7\\u00e3o 3D",
    tab.map = "Mapa",
    tab.tables = "Tabelas",
    tab.timeline = "Cronologia",
    tab.reproducibility = "Reprodutibilidade",
    tab.guidelines = "Ajuda",
    all = "TUDO",
    download = "Descarregar",
    export = "Exportar (html)",
    location = "Modo de localiza\\u00e7\\u00e3o",
    values = "Valores",
    validate = "Validar a sele\\u00e7\\u00e3o",
    refresh = "Atualizar",
    header.3d.options = "Op\\u00e7\\u00f5es de visualiza\\u00e7\\u00e3o 3D",
    header.objects.table = "Carregar tabela de objetos",
    header.simul.data = "Gerar dados de demonstra\\u00e7\\u00e3o simulados ",
    header.refits.table = "Carregar tabela de remontagens",
    header.timeline.table = "Carregar tabela de cronologia de escava\\u00e7\\u00f5es",
    choose.csv = "Selecione um arquivo csv",
    input.objects = input.objects.pt,
    input.refits = input.refits.pt,
    input.timeline = input.timeline.pt,
    guidelines = guidelines.en,
    separator = "Separador",
    decimal = "Decimais",
    use.demo = "Simular n objetos",
    surfaces = "Calcular superf\\u00edcies",
    hulls = "Calcular envolt\\u00f3rias",
    refits = "Mostrar remontagens",
    point.size = "Tamanho dos pontos",
    ratio = "Ratio vertical",
    density = "Calcular densidade",
    density.no = "Nenhuma",
    density.all.layers = "Todas as camadas",
    overall = "Geral",
    by.layer = "Por camada",
    by.variable = "Por vari\\u00e1vel",
    tab.variable.loc = "N\\u00famero de objetos por vari\\u00e1vel e modo de localiza\\u00e7\\u00e3o",
    tab.layer.loc = "N\\u00famero de objetos por camada e modo de localiza\\u00e7\\u00e3o",
    exact = "Exato",
    fuzzy = "Vago",
    depth = "Profundidade",
    group = "Agrupar dados",
    through = "com",
    total = "Total",
    objects = "objetos",
    show.uncertainty = "Mostrar incerteza",
    linear.uncertainty = "incerteza linear",
    planar.uncertainty = "incerteza plana",
    volume.uncertainty = "incerteza volum\\u00e9trica",
    linear = "Lineare",
    planar = "Planare",
    volume = "Volumetrica",
    click.on.point = "Clique sobre um ponto para obter mais informa\\u00e7\\u00f5es",
    notif.objects.ok = "Arquivo de objetos ok!",
    notif.objects.not.ok = "Erro. Certos campos exigidos est\\u00e3o ausentes. Por favor, verifique o arquivo.",
    notif.no.data = "Sem dados nesses intervalos.",
    notif.tick.value = "Marque pelo menos um valor (no menu lateral esquerdo).",
    notif.error.coords.type = "Os valores xmin, ymin, ou zmin n\\u00e3o s\\u00e3o num\\u00e9ricos.",
    notif.error.identifier = "Alguns dos identificadores \\u00fanicos dos objetos est\\u00e3o duplicados.",
    notif.warn.obj.removed = "Objetos com coordenadas incompletas foram removidos.",
    notif.warn.uncertainty = "Many objects with uncertain location: it might slow down the app.",
    notif.warn.refits = "Many refits: it might slow down the app."
  )
  
  # : it ----
  it <- list(  
    welcome = welcome.it,
    reproducibility = reproducibility.it,
    tab.home = "Home",
    tab.input = "Dati",
    tab.plot3d = "Vista 3D",
    tab.map = "Mappa",
    tab.tables = "Tabelle",
    tab.timeline = "Cronologia",
    tab.reproducibility = "Riproducibilit\\u00e0",
    tab.guidelines = "Aiuto",
    all = "TUTTE",
    download = "Scaricare",
    export = "Esportare (html)",
    location = "Modalit\\u00e0 di localizzazione",
    values = "Valori",
    validate = "Convalida selezione",
    refresh = "Aggiorna",
    header.3d.options = "Opzioni di visualizzazione 3D",
    header.objects.table = "Caricamento della tabella degli oggetti",
    header.simul.data = "Generare dati dimostrativi simulati",
    header.refits.table = "Caricamento della tabella degli oggetti riassemblati",
    header.timeline.table = "Caricamento della tabella della cronologia degli scavi",
    choose.csv = "Selezionare un file csv",
    input.objects = input.objects.it,
    input.refits = input.refits.it,
    input.timeline = input.timeline.it,
    guidelines = guidelines.en,
    separator = "Separatore",
    decimal = "Decimali",
    use.demo = "Simulare n oggetti",
    surfaces = "Calcolare le superfici",
    hulls = "Calcolare gli inviluppi",
    refits = "Mostra i riassemblaggi",
    point.size = "Dimensione dei punti",
    ratio = "Rapporto verticale",
    density = "Calcolare la densit\\u00e0",
    density.no = "Nessuna",
    density.all.layers = "Tutti gli strati",
    overall = "Complessivo",
    by.layer = "Per strato",
    by.variable = "Per variabile",
    tab.variable.loc = "Numero di oggetti per variabile e modalit\\u00e0 di localizzazione",
    tab.layer.loc = "Numero di oggetti per strato e modalit\\u00e0 di localizzazione",
    exact = "Esatta",
    fuzzy = "Vago",
    depth = "Profondit\\u00e0",
    group = "Raggruppare i dati",
    through = "con",
    total = "Totale",
    objects = "oggetti",
    show.uncertainty = "Mostra l'incertezza",
    linear.uncertainty = "incertezza lineare",
    planar.uncertainty = "incertezza planare",
    volume.uncertainty = "incertezza volumetrica",
    linear = "Lineare",
    planar = "Planare",
    volume = "Volumetrica",
    click.on.point = "Fare clic su un punto per visualizzarne le informazioni",
    notif.objects.ok = "File degli oggetto ok!",
    notif.objects.not.ok = "Errore. Mancano alcuni campi obbligatori, controllare il file",
    notif.no.data = "Nessun dato in questi intervalli",
    notif.tick.value = "Spuntare almeno un valore (nel menu laterale a sinistra)",
    notif.error.coords.type = "I valori xmin, ymin o zmin non sono numerici",
    notif.error.identifier = "Gli identificativi univoci degli oggetti non sono unici",
    notif.warn.obj.removed = "Gli oggetti con coordinate incomplete sono stati rimossi",
    notif.warn.uncertainty = "Many objects with uncertain location: it might slow down the app.",
    notif.warn.refits = "Many refits: it might slow down the app."
  )
  
  # SWITCH ----
  if(length(grep("en", lang, ignore.case = T)) == 1){ ui.terms <- en }
  if(length(grep("fr", lang, ignore.case = T)) == 1){ ui.terms <- fr }
  if(length(grep("it", lang, ignore.case = T)) == 1){ ui.terms <- it }
  if(length(grep("port", lang, ignore.case = T)) == 1 | lang == "pt"){
    ui.terms <- pt
  }
  
  
  ui.terms
}


