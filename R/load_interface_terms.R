
.load_interface_terms <- function(lang){
  # welcome ----
  # : fr ----
  welcome.fr <- "<h1>Bienvenue dans <i>archeoViz</i> !</h1>
                <p><i>archeoViz</i> est une application d\\\\u00e9di\\\\u00e9e \\\\u00e0 l'arch\\\\u00e9ologie.
                Elle permet de <b>visualiser</b>, d'<b>explorer</b> interactivement, et  
                d'exposer et <b>communiquer</b> rapidement sur le web des donn\\\\u00e9es 
                arch\\\\u00e9ologiques de terrain.
                </p>
                <p>
                Elle propose des <b>visualisations</b> en 3D et 2D,
                g\\\\u00e9n\\\\u00e8re des <b>coupes</b> et des <b>cartes</b> des restes arch\\\\u00e9ologiques,
                permet de r\\\\u00e9aliser des <b>statistiques spatiales</b> simples
                (enveloppes convexes, surfaces de r\\\\u00e9gression, estimation de densit\\\\u00e9 par noyau en 2D), 
                et de visualiser une <b>chronologie</b> interactive des fouilles d'un site.
                </p>
                <p>
                Distribu\\\\u00e9e sous la forme d'un package R, 
                <i>archeoViz</i> peut \\\\u00eatre utilis\\\\u00e9e localement ou d\\\\u00e9ploy\\\\u00e9e sur un serveur,
                soit en chargeant des donn\\\\u00e9es via l'interface, soit en 
                lan\\\\u00e7ant l'application avec un jeu de donn\\\\u00e9e sp\\\\u00e9cifique.
                L'interface est disponible en 
                <a href=https://analytics.huma-num.fr/archeoviz/de target=_blank>allemand</a>, 
                <a href=https://analytics.huma-num.fr/archeoviz/en target=_blank>anglais</a>, fran\\\\u00e7ais, 
                <a href=https://analytics.huma-num.fr/archeoviz/it target=_blank>italien</a>,  
                <a href=https://analytics.huma-num.fr/archeoviz/ro target=_blank>roumain</a> et 
                <a href=https://analytics.huma-num.fr/archeoviz/pt target=_blank>portugais</a>.
                </p>
                Le package, sous licence libre, est publi\\\\u00e9 sur le <a href=https://cran.r-project.org/package=archeoViz target=_blank>CRAN</a>. Son code source est aussi disponible sur <a href=https://github.com/sebastien-plutniak/archeoviz target=_blank>github</a>."
  
  # : en ----
  welcome.en <- "
                <h1>Welcome to <i>archeoViz</i>!</h1>
                <p><i>archeoViz</i> is an application designed for archaeology.
                It makes possible to <b>visualise</b>, interactively <b>explore</b>, and quickly
                deploy and <b>communicate</b> archaeological spatial data on the web.
                </p>
                <p>
                It offers interactive 3D and 2D <b>visualisations</b>,
                can generate <b>cross sections</b> and <b>map</b> of the remains, 
                can run basic <b>spatial statistics</b> methods 
                (convex hull, regression surfaces, 2D kernel density estimation), 
                and display an interactive <b>timeline</b> of the excavation. 
                </p>
                <p>
                Shared as an R package, 
                <i>archeoViz</i> can be used locally or deployed on a server, 
                either by allowing the user to load data through the interface
                or by running the app with a specific data set.
                The interface is available in 
                <a href=https://analytics.huma-num.fr/archeoviz/de target=_blank>German</a>, 
                English, 
                <a href=https://analytics.huma-num.fr/archeoviz/fr target=_blank>French</a>, 
                <a href=https://analytics.huma-num.fr/archeoviz/it target=_blank>Italian</a>,  
                <a href=https://analytics.huma-num.fr/archeoviz/ro target=_blank>Romanian</a>, and 
                <a href=https://analytics.huma-num.fr/archeoviz/pt target=_blank>Portuguese</a>.
                </p>
                The package is published under a free license on the <a href=https://cran.r-project.org/package=archeoViz target=_blank>CRAN</a>. Its source code is also available on  <a href=https://github.com/sebastien-plutniak/archeoviz target=_blank>github</a>."
  
  # : pt ----
  welcome.pt <- "<h1>Bem-vindo ao <i>archeoViz</i>!</h1>
                <p><i>archeoViz</i> \\\\u00e9 um aplicativo dedicado \\\\u00e0 arqueologia. Ele permite <b>visualizar</b>, <b>explorar</b> interativamente, e   
                expor e <b>comunicar</b> rapidamente na web dados de campo arqueol\\\\u00f3gicos.
                </p>
                <p>
                Ele oferece <b>visualiza\\\\u00e7\\\\u00f5es</b> 3D e 2D, gera <b>perfis estratigr\\\\u00e1ficos</b> e <b>mapas</b> de vest\\\\u00edgios arqueol\\\\u00f3gicos, possibilita a realiza\\\\u00e7\\\\u00e3o de estat\\\\u00edsticas espaciais simples (envolt\\\\u00f3rias convexas, superf\\\\u00edcies de regress\\\\u00e3o, estimativa de densidade de kernel 2D) e a visualiza\\\\u00e7\\\\u00e3o de uma cronologia interativa da escava\\\\u00e7\\\\u00e3o de um s\\\\u00edtio.
                </p>
                <p>
                Distribu\\\\u00eddo como um pacote R, 
                o <i>archeoViz</i> pode ser usado localmente ou implantado em um servidor, seja carregando dados por meio da interface, seja iniciando o aplicativo com um conjunto de dados espec\\\\u00edfico. A interface est\\\\u00e1 dispon\\\\u00edvel em 
                <a href=https://analytics.huma-num.fr/archeoviz/de target=_blank>alem\\\\u00e3o</a>
                <a href=https://analytics.huma-num.fr/archeoviz/en target=_blank>ingl\\\\u00eas</a>, 
                <a href=https://analytics.huma-num.fr/archeoviz/fr target=_blank>franc\\\\u00eas</a>, 
                <a href=https://analytics.huma-num.fr/archeoviz/it target=_blank>italiano</a>,
                <a href=https://analytics.huma-num.fr/archeoviz/ro target=_blank>romeno</a>, 
                e portugu\\\\u00eas.
                </p>
                O pacote, sob licen\\\\u00e7a livre, \\\\u00e9 publicado na <a href=https://cran.r-project.org/package=archeoViz target=_blank>CRAN</a>. O seu c\\\\u00f3digo-fonte est\\\\u00e1 tamb\\\\u00e9m dispon\\\\u00edvel no <a href=https://github.com/sebastien-plutniak/archeoviz target=_blank>github</a>."
  
  # : it ----
  welcome.it <- "<h1>Benvenuti in <i>archeoViz</i>!</h1>
                 <p><i>archeoViz</i> \\\\u00e8 un\\\\u2019applicazione dedicata all\\\\u2019archeologia. Permette di <b>visualizzare</b>, <b>esplorare</b> in modo interattivo e rapido, esporre e <b>comunicare</b> sul web i dati archeologici acquisiti sul campo.
                </p>
                <p>
                Offre <b>visualizzazioni</b> in 3D e 2D, genera <b>sezioni</b> e <b>carte</b> dei resti archeologici, consente di realizzare statistiche spaziali semplici (inviluppi convessi, superfici di regressione, stima kernel di densit\\\\u00e0 2D) e di visualizzare una cronologia interattiva degli scavi di un sito.
                </p>
                <p>
                Distribuito come pacchetto R, <i>archeoViz</i> pu\\\\u00f2 essere utilizzato localmente o distribuito su un server, caricando i dati tramite l\\\\u2019interfaccia o lanciando l\\\\u2019applicazione con un insieme di dati specifico. L\\\\u2019interfaccia \\\\u00e8 disponibile in 
                <a href=https://analytics.huma-num.fr/archeoviz/de target=_blank>tedesco</a>, 
                <a href=https://analytics.huma-num.fr/archeoviz/en target=_blank>inglese</a>, 
                <a href=https://analytics.huma-num.fr/archeoviz/fr target=_blank>francese</a>, 
                italiano,  
                <a href=https://analytics.huma-num.fr/archeoviz/ro target=_blank>rumeno</a>, e 
                <a href=https://analytics.huma-num.fr/archeoviz/pt target=_blank>portoghese</a>.
                </p>
                Il pacchetto \\\\u00e8 open source e pubblicato su il <a href=https://cran.r-project.org/package=archeoViz target=_blank>CRAN</a> Il suo codice sorgente \\\\u00e8 disponibile anche su  <a href=https://github.com/sebastien-plutniak/archeoviz target=_blank>github</a>."
   
   # : de ----
   welcome.de <- "<h1>Willkommen bei <i>archeoViz</i>!</h1>
                  <p>
                    <i>archeoViz</i> ist eine f\\\\u00fcr die Arch\\\\u00e4ologie entwickelte Anwendung. 
                    Sie erm\\\\u00f6glicht die <b>Visualisierung</b>, interaktive <b>Erkundung</b> und 
                    schnelle Bereitstellung und <b>Kommunikation</b> von Raumdaten
                    arch\\\\u00e4ologischer Grabungen und Prospektionen im Internet.
                  </p>
                  <p>
                    <i>archeoViz</i> bietet interaktive 3D und 2D <b>Visualisierungen</b> und kann
                    <b>Profile</b>, als auch <b>Karten</b> der Fundverteilungen generieren. Es 
                    bietet zudem die M\\\\u00f6glichkeit grundlegende Methoden der <b>r\\\\u00e4umlichen Statistik</b>
                    ausf\\\\u00fchren (konvexe H\\\\u00fclle, Regressionsoberfl\\\\u00e4chen, 2D-Kernel-Dichte-Sch\\\\u00e4tzung)
                    und stellt eine interaktive Darstellung der Ausgrabung in Zeitschritten zur 
                    Verf\\\\u00fcgung. 
                  </p> 
                  <p>
                    Als R-Paket, kann <i>archeoViz</i> lokal mit eigenen Daten ausgef\\\\u00fchrt werden.
                    Oder Daten k\\\\u00f6nnen Online \\\\u00fcber eine Eingabemaske eingeladen werden. Die 
                    Eingabemaske ist derezit in 
                    Deutsch, 
                    <a href=https://analytics.huma-num.fr/archeoviz/en target=_blank>Englisch</a>, 
                    <a href=https://analytics.huma-num.fr/archeoviz/fr target=_blank>Franz\\\\u00f6sisch</a>, 
                    <a href=https://analytics.huma-num.fr/archeoviz/it target=_blank>Italienisch</a>,  
                    <a href=https://analytics.huma-num.fr/archeoviz/ro target=_blank>Rum\\\\u00e4nisch</a>, und 
                    <a href=https://analytics.huma-num.fr/archeoviz/pt target=_blank>Portugiesisch</a> verf\\\\u00fcgbar.
                  </p>
                  <p>     
                    Das R-Paket wird unter einer GNU GPL-3 Lizenz auf dem Server 
                    <a href=https://cran.r-project.org/package=archeoViz target=_blank>CRAN</a> 
                      ver\\\\u00f6ffentlicht. Sein Quellcode ist auf 
                    <a href=https://github.com/sebastien-plutniak/archeoviz target=_blank>github</a> 
                      verf\\\\u00fcgbar.
                  </p>"
  # : es ----
  welcome.es <- "<h1>Bienvenidos en <i>archeoViz</i> !</h1>
                <p><i>archeoViz</i> es una aplicaci\\\\u00f3n dedicada al arqueolog\\\\u00eda.
                Permite <b>visualizar</b>, <b>explorar</b> de manera interactiva, y 
                presentar y <b>comunicar</b> datos arqueol\\\\u00f3gicos de campo r\\\\u00e1pidamente en la web.
                </p>
                <p>
                Ofrece <b>visualizaciones</b> en 3D y 2D,
                genera <b>perfiles estratigr\\\\u00e1ficos</b> y <b>mapas</b> de los vestigios arqueol\\\\u00f3gicos,
                permite correr <b>estad\\\\u00edsticas espaciales</b> sencillas
                (cascos convexos, superficies de regresi\\\\u00f3n, estimaci\\\\u00f3n de densidad por n\\\\u00facleo en 2D), 
                y visualizar una <b>cronolog\\\\u00eda</b> interactiva de las excavaciones de un sitio.
                </p>
                <p>
                Distribuida como un paquete R, 
                <i>archeoViz</i> se puede usar localmente o implementada en un servidor,
                sea cargando los datos trav\\\\u00e9s de la interfaz, o
                 iniciando la aplicaci\\\\u00f3n con un conjunto de datos espec\\\\u00edfico.
                La interfaz est\\\\u00e1 disponible en 
                <a href=https://analytics.huma-num.fr/archeoviz/de target=_blank>alem\\\\u00e1n</a>, 
                <a href=https://analytics.huma-num.fr/archeoviz/en target=_blank>ingl\\\\u00e9s</a>, 
                franc\\\\u00e9s, 
                <a href=https://analytics.huma-num.fr/archeoviz/it target=_blank>italiano</a>, 
                <a href=https://analytics.huma-num.fr/archeoviz/pt target=_blank>portugu\\\\u00e9s</a>,  
                <a href=https://analytics.huma-num.fr/archeoviz/ro target=_blank>rumano</a>, y 
                <a href=https://analytics.huma-num.fr/archeoviz/es target=_blank>espa\\\\u00f1ol</a>.
                </p>
                El paquete, bajo licencia libre, est\\\\u00e1 publicado en <a href=https://cran.r-project.org/package=archeoViz target=_blank>CRAN</a>. Su c\\\\u00f3digo fuente tambi\\\\u00e9n est\\\\u00e1 disponible en <a href=https://github.com/sebastien-plutniak/archeoviz target=_blank>github</a>."
  
    # : ro ----
  welcome.ro <- "
		<h1>Bun venit \\\\u00een <i>archeoViz</i>!</h1>
                <p><i>archeoViz</i> este o aplica\\\\u021bie conceput\\\\u0103 pentru arheologie.
                Permite <b>vizualizarea</b>, <b>explorarea</b> interactiv\\\\u0103, transferul \\\\u0219i
                <b>communicarea</b> rapide a datelor archaeologice spa\\\\u021biale pe web.
                </p>
                <p>
                Ofer\\\\u0103 <b>vizualiz\\\\u0103ri</b> interactive 3D \\\\u0219i 2D,
                poate genera <b>sec\\\\u021biuni</b> \\\\u0219i <b>h\\\\u0103r\\\\u021bi</b> ale resturilor arheologice, 
		poate rula metode de baz\\\\u0103 de <b>statistic\\\\u0103 spa\\\\u021bial\\\\u0103</b>
                (anvelopa convex\\\\u0103, suprafe\\\\u021be de regresie, estimarea densit\\\\u0103\\\\u0163ii kernel 2D), 
                \\\\u0219i poate afi\\\\u0219a o <b>cronologie</b> interactiv\\\\u0103 a s\\\\u0103p\\\\u0103turilor. 
                </p>
                <p>
                Distribuit ca pachet R, 
                <i>archeoViz</i> poate fi folosit local sau \\\\u00eenc\\\\u0103rcat pe un server, 
		permi\\\\u021b\\\\u00e2nd utilizatorului s\\\\u0103 urce datele prin intermediul interfe\\\\u021bei 
		sau prin rularea aplica\\\\u021biei cu un anumit set de date.
                Interfa\\\\u021ba este disponibil\\\\u0103 \\\\u00een 
                <a href=https://analytics.huma-num.fr/archeoviz/de target=_blank>german\\\\u0103</a>, 
                englez\\\\u0103, 
                <a href=https://analytics.huma-num.fr/archeoviz/fr target=_blank>francez\\\\u0103</a>, 
                <a href=https://analytics.huma-num.fr/archeoviz/it target=_blank>italian\\\\u0103</a>,  
                <a href=https://analytics.huma-num.fr/archeoviz/ro target=_blank>rom\\\\u00e2n\\\\u0103</a>, \\\\u0219i 
                <a href=https://analytics.huma-num.fr/archeoviz/pt target=_blank>portugez\\\\u0103</a>.
                </p>
                Pachetul este publicat sub licen\\\\u021b\\\\u0103 gratuit\\\\u0103 pe <a href=https://cran.r-project.org/package=archeoViz target=_blank>CRAN</a>. Codul surs\\\\u0103 este disponibil \\\\u0219i pe <a href=https://github.com/sebastien-plutniak/archeoviz target=_blank>github</a>."


  
  # Input objects ----
  # :  fr ----
  input.objects.fr <- 
    "<p>
    Un tableau au format csv est requis. Chaque ligne d\\\\u00e9crit un objet, comportant les champs obligatoires suivants :
    <ul>
      <li> <b>id</b> : <i>valeur alphanum\\\\u00e9rique</i>, identifiant unique de l'objet </li>
      <li> <b>xmin</b> : <i>valeur num\\\\u00e9rique</i>, coordonn\\\\u00e9e de l'objet en axe X (en cm)</li>
      <li> <b>ymin</b> : <i>valeur num\\\\u00e9rique</i>, coordonn\\\\u00e9e de l'objet en axe Y (en cm)</li>
      <li> <b>zmin</b> : <i>valeur num\\\\u00e9rique</i>, coordonn\\\\u00e9e de l'objet en axe Z (valeur de profondeur en cm)</li>
      <li> <b>layer</b> : <i>valeur alphanum\\\\u00e9rique</i>, identifiant de la couche de l'objet</li>
      <li> <b>object_type</b> : <i>valeur alphanum\\\\u00e9rique</i>, cat\\\\u00e9gorie de l'objet</li>
    </ul>
    De plus, des champs optionnels sont possibles, dont:
    <ul>
      <li> <b>square_x</b> : <i>valeur alphanum\\\\u00e9rique</i>, identifiant du carr\\\\u00e9 de l'objet en axe X</li>
      <li> <b>square_y</b> : <i>valeur alphanum\\\\u00e9rique</i>, identifiant du carr\\\\u00e9 de l'objet en axe Y</li>
      <li> <b>year</b> : <i>valeur num\\\\u00e9rique</i>, ann\\\\u00e9e de fouille de l'objet</li>
      <li> <b>xmax</b> : <i>valeur num\\\\u00e9rique</i>, lorsque la localisation de l'objet en X est comprise dans un intervalle de coordonn\\\\u00e9es</li>
      <li> <b>ymax</b> : <i>valeur num\\\\u00e9rique</i>, lorsque la localisation de l'objet en Y est comprise dans un intervalle de coordonn\\\\u00e9es</li>
      <li> <b>zmax</b> : <i>valeur num\\\\u00e9rique</i>, lorsque la localisation de l'objet en Z est comprise dans un intervalle de coordonn\\\\u00e9es</li>
      <li> <b>object<i>_edit</i></b> : nombre non limit\\\\u00e9 de variables additionnelles  d\\\\u00e9crivant l'objet (les noms de colonnes doivent commencer par `object_` et avoir des suffixes diff\\\\u00e9rents</li>
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
      <li> <b>zmin</b>: <i>numerical value</i>, coordinate of the object on the Z axis (depth value in cm)</li>
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
    \\\\u00c9 necess\\\\u00e1ria uma tabela no formato csv. Cada linha descreve um objeto, incluindo os seguintes campos obrigat\\\\u00f3rios:
    <ul>
      <li> <b>id</b> : <i>valor alfanum\\\\u00e9rico</i>, identificador \\\\u00fanico do objeto </li>
      <li> <b>xmin</b> : <i>valor num\\\\u00e9rico</i>, coordenada do objeto no eixo X (em cm)</li>
      <li> <b>ymin</b> : <i>valor num\\\\u00e9rico</i>, coordenada do objeto no eixo Y (em cm)</li>
      <li> <b>zmin</b> : <i>valor num\\\\u00e9rico</i>, coordenada do objeto no eixo Z (valor de profundidade em cm)</li>
      <li> <b>layer</b> : <i>valor alfanum\\\\u00e9rico</i>, identificador da camada do objeto</li>
      <li> <b>object_type</b> : <i>valor alfanum\\\\u00e9rico</i>, categoria do objeto</li>
    </ul>
    Ademais, campos opcionais s\\\\u00e3o poss\\\\u00edveis, incluindo:
    <ul>
      <li> <b>square_x</b> : <i>valor alfanum\\\\u00e9rico</i>, identificador da quadra do objeto no eixo X</li>
      <li> <b>square_y</b> : <i>valor alfanum\\\\u00e9rico</i>, identificador da quadra do objeto no eixo Y</li>
      <li> <b>year</b> : <i>valor num\\\\u00e9rico</i>, ano de escava\\\\u00e7\\\\u00e3o do objeto</li>
      <li> <b>xmax</b> : <i>valor num\\\\u00e9rico</i>, quando a localiza\\\\u00e7\\\\u00e3o do objeto em X est\\\\u00e1 compreendida em um intervalo de coordenadas</li>
      <li> <b>ymax</b> : <i>valor num\\\\u00e9rico</i>, quando a localiza\\\\u00e7\\\\u00e3o do objeto em Y est\\\\u00e1 compreendida em um intervalo de coordenadas</li>
      <li> <b>zmax</b> : <i>valor num\\\\u00e9rico</i>, quando a localiza\\\\u00e7\\\\u00e3o do objeto em Z est\\\\u00e1 compreendida em um intervalo de coordenadas</li>
      <li> <b>object<i>_edit</i></b>: n\\\\u00famero ilimitado de vari\\\\u00e1veis adicionais que descrevem o objeto (os nomes das colunas devem come\\\\u00e7ar com `objeto_` e ter sufixos diferentes)</li>
    </ul>
    </p>"
  
  # :  it ----
  input.objects.it <- 
    "<p>
    \\\\u00c8 richiesta una tabella in formato csv. Ogni riga descrive un oggetto, con i seguenti campi obbligatori:
    <ul>
      <li> <b>id</b> : <i>valore alfanumerico</i>, identificativo univoco dell\\\\u2019oggetto </li>
      <li> <b>xmin</b> : <i>valore numerico</i>, coordinata dell\\\\u2019oggetto sull\\\\u2019asse X (in cm)</li>
      <li> <b>ymin</b> : <i>valore numerico</i>, coordinata dell\\\\u2019oggetto sull\\\\u2019asse Y (in cm)</li>
      <li> <b>zmin</b> : <i>valore numerico</i>, coordinata dell\\\\u2019oggetto sull\\\\u2019asse Z (valore di profondit\\\\u00e0 in cm)</li>
      <li> <b>layer</b> : <i>valore numerico</i>, identificativo del livello dell\\\\u2019oggetto</li>
      <li> <b>object_type</b> : <i>valore alfanumerico</i>, categoria dell\\\\u2019oggetto</li>
    </ul>
    Si possono inserire inoltre dei campi opzionali, tra cui:
    <ul>
      <li> <b>square_x</b> : <i>valore alfanumerico</i>, identificativo del quadrato dell\\\\u2019oggetto nell\\\\u2019asse X</li>
      <li> <b>square_y</b> : <i>valore alfanumerico</i>, identificatore del quadrato dell\\\\u2019oggetto nell\\\\u2019asse Y</li>
      <li> <b>year</b> : <i>valore numerico</i>, anno di scavo dell\\\\u2019oggetto</li>
      <li> <b>xmax</b> : <i>valore numerico</i>, se la posizione dell\\\\u2019oggetto in X \\\\u00e8 compresa in un intervallo di coordinate</li>
      <li> <b>ymax</b> : <i>valore numerico</i>, se la posizione dell\\\\u2019oggetto in Y \\\\u00e8 compresa in un intervallo di coordinate</li>
      <li> <b>zmax</b> : <i>valore numerico</i>, se la posizione dell\\\\u2019oggetto in Z \\\\u00e8 compresa in un intervallo di coordinate</li>
      <li> <b>object<i>_edit</i></b>: numero non limitato di variabili aggiuntive che descrivono l\\\\u2019oggetto (i nomi delle colonne devono iniziare con `object_` e avere suffissi diversi)</li>
    </ul>
    </p>"
  
  # :  de ----
    input.objects.de <- 
      "<p>
      Eine Datentablle wird ben\\\\u00f6tigt (csv-Format). Zeilen beschreiben einzelne Objekte mit folgenden Pflichtfeldern:
      <ul>
        <li> <b>id</b>: <i>alphanumerischer Wert</i>, eindeutige Kennung des Objekts </li>
        <li> <b>xmin</b>: <i>numerischer Wert</i>, Koordinate des Objekts auf der X-Achse (in cm)</li>
        <li> <b>ymin</b>: <i>numerischer Wert</i>, Koordinate des Objekts auf der Y-Achse (in cm)</li>
        <li> <b>zmin</b>: <i>numerischer Wert</i>, Koordinate des Objekts auf der Z-Achse (Tiefe in cm)</li>
        <li> <b>layer</b>: <i>alphanumerischer Wert</i>, Kennung der Ebene/Schicht des Objekts</li>
        <li> <b>object_type</b>: <i>alphanumerischer Wert</i>, Kategorie des Objekts</li>
      </ul>
      Dar\\\\u00fcber hinaus sind optionale Felder m\\\\u00f6glich:
      <ul>
        <li> <b>square_x</b>: <i>alphanumerischer Wert</i>, Kennung des Quadranten auf der X-Achse</li>
        <li> <b>square_y</b>: <i>alphanumerischer Wert</i>, Kennung des Quadranten auf der Y-Achse</li>
        <li> <b>year</b> : <i>numerischer Wert</i>, Ausgrabungsjahr</li>
        <li> <b>xmax</b>: <i>numerischer Wert</i>, Zeitangaben, in der die X-Position des Objekts in einem Bereich von X-Koordinaten enthalten ist</li>
        <li> <b>ymax</b>: <i>numerischer Wert</i>, Zeitangaben, in der die Y-Position des Objekts in einem Bereich von Y-Koordinaten enthalten ist</li>
        <li> <b>zmax</b>: <i>numerischer Wert</i>, Zeitangaben, in der die Z-Position des Objekts in einem Bereich von Z-Koordinaten enthalten ist</li>
        <li> <b>object<i>_edit</i></b>: unbegrenzte Anzahl zus\\\\u00e4tzlicher Variablen, die das Objekt beschreiben (Feldnamen m\\\\u00fcssen mit 'object_' beginnen und verschiedene Suffixe besitzen)</li>
      </ul>
      </p>"

# :  es ----
  input.objects.es <- 
    "<p>
    Se necesita una tabla bajo el formato csv. Cada l\\\\u00ednea describe un objeto, incluyendo los siguientes campos obligatorios:
    <ul>
      <li> <b>id</b> : <i>valor alfanum\\\\u00e9rico</i>, identificador \\\\u00fanico del objeto </li>
      <li> <b>xmin</b> : <i>valor num\\\\u00e9rico</i>, coordenada del objeto en el eje X (en cm)</li>
      <li> <b>ymin</b> : <i>valor num\\\\u00e9rico</i>, coordenada del objeto en el eje Y (en cm)</li>
      <li> <b>zmin</b> : <i>valor num\\\\u00e9rico</i>, coordenada del objeto en el eje Z (valor de profundidad en cm)</li>
      <li> <b>layer</b> : <i>valor alfanum\\\\u00e9rico</i>, identificador de capa del objeto</li>
      <li> <b>object_type</b> : <i>valor alfanum\\\\u00e9rico</i>, categor\\\\u00eda del objeto</li>
    </ul>
    Adem\\\\u00e1s, otros campos opcionales son posibles, incluyendo:
    <ul>
      <li> <b>square_x</b> : <i>valor alfanum\\\\u00e9rico</i>, identificador del cuadrado del objeto en el eje X</li>
      <li> <b>square_y</b> : <i>valor alfanum\\\\u00e9rico</i>, identificador del cuadrado del objeto en el eje Y</li>
      <li> <b>year</b> : <i>valor num\\\\u00e9rico</i>, a\\\\u00f1o de excavaci\\\\u00f3n del objeto</li>
      <li> <b>xmax</b> : <i>valor num\\\\u00e9rico</i>, cuando la ubicaci\\\\u00f3n del objeto en X est\\\\u00e1 comprendida en un rango de coordenadas</li>
      <li> <b>ymax</b> : <i>valor num\\\\u00e9rico</i>, cuando la ubicaci\\\\u00f3n del objeto en Y est\\\\u00e1 comprendida en un rango de coordenadas</li>
      <li> <b>zmax</b> : <i>valor num\\\\u00e9rico</i>, cuando la ubicaci\\\\u00f3n del objeto en Z est\\\\u00e1 comprendida en un rango de coordenadas</li>
      <li> <b>object<i>_edit</i></b>: n\\\\u00famero ilimitado de variables adicionales que describen el objeto (los nombres de las columnas debem empezar con `objeto_` y tener sufijos diferentes)</li>
    </ul>
    </p>"

# :  ro ----
  input.objects.ro <- 
    "<p>
	Este necesar un tabel de date (format csv). Un r\\\\u00e2nd descrie un singur obiect cu urm\\\\u0103toarele c\\\\u00e2mpuri obligatorii:  
    <ul>
      <li> <b>id</b>: <i>valoare alfanumeric\\\\u0103</i>, identificator unic al obiectului </li>
      <li> <b>xmin</b>: <i>valoare numeric\\\\u0103</i>, coordonata obiectului pe axa X (\\\\u00een cm)</li>
      <li> <b>ymin</b>: <i>valoare numeric\\\\u0103</i>, coordonata obiectului pe axa Y (\\\\u00een cm)</li>
      <li> <b>zmin</b>: <i>valoare numeric\\\\u0103</i>, coordonata obiectului pe axa Z (valoarea ad\\\\u00e2ncimii \\\\u00een cm)</li>
      <li> <b>layer</b>: <i>valoare alfanumeric\\\\u0103</i>, identificatorul stratului obiectului</li>
      <li> <b>object_type</b>: <i>valoare alfanumeric\\\\u0103</i>, categoria obiectului</li>
    </ul>
    Sunt posibile \\\\u0219i c\\\\u00e2mpuri op\\\\u021bionale, printre care:    
    <ul>
      <li> <b>square_x</b>: <i>valoare alfanumeric\\\\u0103</i>, identificatorul caroului pe axa X</li>
      <li> <b>square_y</b>: <i>valoare alfanumeric\\\\u0103</i>, identificatorul caroului pe axa Y</li>
      <li> <b>year</b> : <i>valoare numeric\\\\u0103</i>, anul \\\\u00een care obiectul a fost excavat</li>
      <li> <b>xmax</b>: <i>valoare numeric\\\\u0103</i>, atunci c\\\\u00e2nd pozi\\\\u021bia pe axa X a obiectului este inclus\\\\u0103 \\\\u00eentr-un interval de coordonate X</li>
      <li> <b>ymax</b>: <i>valoare numeric\\\\u0103</i>, atunci c\\\\u00e2nd pozi\\\\u021bia pe axa Y a obiectului este inclus\\\\u0103 \\\\u00eentr-un interval de coordonate Y</li>
      <li> <b>zmax</b>: <i>valoare numeric\\\\u0103</i>, atunci c\\\\u00e2nd pozi\\\\u021bia pe axa Z a obiectului este inclus\\\\u0103 \\\\u00eentr-un interval de coordonate Z</li>
      <li> <b>object<i>_edit</i></b>: num\\\\u0103r nelimitat de variabile suplimentare care descriu obiectul (numele c\\\\u00e2mpurilor trebuie s\\\\u0103 \\\\u00eenceap\\\\u0103 cu `object_` \\\\u0219i s\\\\u0103 aib\\\\u0103 sufixe diferite)</li>
    </ul>
    </p>"  


  # Input refits ----
  input.refits.fr <- 
    "<p>
    Un tableau \\\\u00e0 deux colonnes peut \\\\u00eatre charg\\\\u00e9 pour les remontages entre objets (format csv).
    Chaque ligne doit contenir les identifiants uniques des deux objets li\\\\u00e9s \\\\u00e0 une relation de remontage (en correspondance avec les valeurs de la colonne `id` du tableau des objets).
  </p>"
  
  input.refits.en <- 
    "<p>
    A data table with two columns can be uploaded for refitting data (csv format).
  Each row must contain the unique identifiers of two refitting objects (corresponding to the values of the `id` column in the objects table).
  </p>"
  
  input.refits.pt <- 
    "<p>
    Uma tabela de duas colunas pode ser carregada para as remontagens entre objetos (formato csv). Cada linha deve conter os identificadores \\\\u00fanicos dos dois objetos vinculados a uma rela\\\\u00e7\\\\u00e3o de remontagem (em correspond\\\\u00eancia com os valores da coluna `id` da tabela de objetos).
    </p>"
  
  input.refits.it <- 
    "<p>
    \\\\u00c8 possibile caricare una tabella a due colonne per i riassemblaggi tra gli oggetti (formato csv). Ogni riga deve contenere gli identificativi univoci dei due oggetti riassemblati (in corrispondenza dei valori della colonna `id` della tabella degli oggetti).
    </p>"

  input.refits.de <- 
    "<p>
    Eine Datentabelle f\\\\u00fcr Passobjekte (refitting) mit zwei Spalten hochgeladen werden (csv-Format).
    Jede Zeile muss die eindeutigen Kennungen von zwei Passobjekten enthalten (entsprechend den Werten der Spalte 'ID' in der Objekttabelle).
    </p>"   

  input.refits.es <- 
    "<p>
    Una tabla de dos columnas puede ser cargada para los remontajes entre objetos (formato csv). Cada l\\\\u00ednea debe contener los identificadores \\\\u00fanicos de los dos objetos vinculados en una relaci\\\\u00f3n de remontaje (corespondiendo con los valores de la columna `id` de la tabla de objetos).
    </p>"
  
    input.refits.ro <- 
    "<p>
  Se poate \\\\u00eenc\\\\u0103rca un tabel de date cu dou\\\\u0103 coloane pentru ajustarea datelor (format csv).
  Fiecare r\\\\u00e2nd trebuie s\\\\u0103 con\\\\u021bin\\\\u0103 identificatorii unici a dou\\\\u0103 obiecte ajustate (care corespund valorilor coloanei `id` din tabelul de obiecte).
  </p>"
  
  
  # Input timeline ----
  input.timeline.fr <- 
    "<p>
    Optionnellement, un tableau (CSV) peut \\\\u00eatre charg\\\\u00e9  \\\\u00e0 propos du d\\\\u00e9roul\\\\u00e9 de la fouille.
    Chaque ligne est relative \\\\u00e0 un carr\\\\u00e9 de fouille et comporte les informations suivantes: 
    <ul>
    <li> <b>year</b> : <i>valeur num\\\\u00e9rique</i>, ann\\\\u00e9e de fouille</li>
    <li> <b>square_x</b> : <i>valeur alphanum\\\\u00e9rique</i>, identifiant du carr\\\\u00e9 en axe X</li>
    <li> <b>square_y</b> : <i>valeur alphanum\\\\u00e9rique</i>, identifiant du carr\\\\u00e9 en axe Y</li>
    </ul>
    </p>"
  
  input.timeline.en <- 
    "<p>
    A table (CSV format) can be uploaded about excavation history. Each row describes a square of the site with the following variables:
    <ul>
    <li> <b>year</b>: <i>numerical value</i>, the year of excavation </li>
    <li> <b>square_x</b>: <i>alphanumerical value</i>, identifier of the excavated square on the X axis</li>
    <li> <b>square_y</b>: <i>alphanumerical value</i>, identifier of the excavated square on the Y axis</li>
    </ul>
    </p>"
  
  input.timeline.pt <- 
    "<p>
      Opcionalmente, pode ser carregada uma tabela (csv) referente ao desenvolvimento da escava\\\\u00e7\\\\u00e3o. Cada linha refere-se a uma quadra de escava\\\\u00e7\\\\u00e3o e cont\\\\u00e9m as seguintes informa\\\\u00e7\\\\u00f5es:
    <ul>
    <li> <b>year</b>: <i>valor num\\\\u00e9rico</i>, ano de escava\\\\u00e7\\\\u00e3o </li>
    <li> <b>square_x</b>: <i>valor alfanum\\\\u00e9rico</i>, identificador da quadra no eixo X</li>
    <li> <b>square_y</b>: <i>valor alfanum\\\\u00e9rico</i>, identificador da quadra no eixo Y</li>
    </ul>
    </p>"
  
  input.timeline.it <- 
    "<p>
      Il caricamento di una tabella (csv) riguardante lo sviluppo dello scavo \\\\u00e8 facoltativo. Ogni riga si riferisce a un quadrato di scavo e contiene le seguenti informazioni:
    <ul>
    <li> <b>year</b>: <i>valore numerico</i>, anno di scavo </li>
    <li> <b>square_x</b>: <i>valore alfanumerico</i>, identificatore del quadrato sull\\\\u2019asse X</li>
    <li> <b>square_y</b>: <i>valore alfanumerico</i>, identificatore del quadrato sull\\\\u2019asse Y</li>
    </ul>
    </p>"

    input.timeline.de <- 
    "<p>
    Es kann eine Tabelle (csv-Format) \\\\u00fcber die Ausgrabungschronologie hochgeladen werden. Jede Zeile beschreibt einen Quadranten der Fundstelle mit den folgenden Variablen:
    <ul>
    <li> <b>year</b>: <i>numerischer Wert</i>, Jahr der Grabung/Ma\\\\u00dfnahme </li>
    <li> <b>square_x</b>: <i>alphanumerischer Wert</i>, Kennung des Quadranten auf der X-Achse</li>
    <li> <b>square_y</b>: <i>alphanumerischer Wert</i>, Kennung des Quadranten auf der Y-Achse</li>
    </ul>
    </p>"  
  
      input.timeline.es <- 
    "<p>
      Opcionalmente, se puede cargar una tabla (csv) con detalles sobre la conducta de la excavaci\\\\u00f3n. Cada l\\\\u00ednea describe un cuadrado de la excavaci\\\\u00f3n y contiene las informaciones siguientes:
    <ul>
    <li> <b>year</b>: <i>valor num\\\\u00e9rico</i>, a\\\\u00f1o de excavaci\\\\u00f3n</li>
    <li> <b>square_x</b>: <i>valor alfanum\\\\u00e9rico</i>, identificador del cuadrado en el eje X</li>
    <li> <b>square_y</b>: <i>valor alfanum\\\\u00e9rico</i>, identificador del cuadrado en el eje Y</li>
    </ul>
    </p>"
  
    input.timeline.ro <- 
    "<p>
    Se poate \\\\u00eenc\\\\u0103rca un tabel (format CSV) despre istoricul s\\\\u0103p\\\\u0103turilor. Fiecare r\\\\u00e2nd descrie un carou al sitului cu urm\\\\u0103toarele variabile:

    <ul>
    <li> <b>year</b>: <i>valoare numeric\\\\u0103</i>, anul s\\\\u0103p\\\\u0103turii </li>
    <li> <b>square_x</b>: <i>valoare alfanumeric\\\\u0103</i>, identificatorul caroului excavat pe axa X</li>
    <li> <b>square_y</b>: <i>valoare alfanumeric\\\\u0103</i>, identificatorul caroului excavat pe axa Y</li>
    </ul>
    </p>"
  
  
  # reproducibility ----
  reproducibility.fr <- "<h1>Reproductibilit\\\\u00e9</h1>
                         <p>Pour reproduire vos r\\\\u00e9glages actuels, ex\\\\u00e9cutez <i>archeoViz</i> avec la commande R suivante (ajustez les param\\\\u00e8tres \\\\u201cobjects.df\\\\u201d et \\\\u201crefits.df\\\\u201d selon vos donn\\\\u00e9es) :</p>"
  
  reproducibility.en <- "<h1>Reproducibility</h1>
                         <p>To reproduce your current settings, run <i>archeoViz</i> with the following R command (adjust the \\\\u201cobjects.df\\\\u201d and \\\\u201crefits.df\\\\u201d parameters to your needs): </p>"
  
  reproducibility.pt <- "<h1>Reprodutibilidade</h1>
                         <p>Para reproduzir as suas defini\\\\u00e7\\\\u00f5es actuais, execute o <i>archeoViz</i> com o seguinte comando R (ajuste os par\\\\u00e2metros \\\\u201cobjects.df\\\\u201d e \\\\u201crefits.df\\\\u201d aos seus dados):</p>"
  
  reproducibility.it <- "<h1>Riproducibilit\\\\u00e0</h1>
                         <p>Per riprodurre le impostazioni attuali, eseguire archeoViz con il seguente comando R (regolare i parametri \\\\u201cobjects.df\\\\u201d e \\\\u201crefits.df\\\\u201d in base ai propri dati):</p>"

  reproducibility.de <- "<h1>Reproduzierbarkeit</h1>
                         <p>Um Ihre aktuellen Einstellungen zu reproduzieren, f\\\\u00fchren Sie <i>archeoViz</i> mit dem folgenden R-Befehl aus (passen Sie die Parameter \\\\u201cobjects.df\\\\u201d und \\\\u201crefits.df\\\\u201d an Ihre Bed\\\\u00fcrfnisse an):  </p>"    

  reproducibility.es <- "<h1>Reprodutibilidad</h1>
                         <p>Para reproducir su configuraci\\\\u00f3n actual, ejecute <i>archeoViz</i> con el siguiente comando R (ajuste los par\\\\u00e1metros \\\\u201cobjects.df\\\\u201d y \\\\u201crefits.df\\\\u201d a sus datos):</p>"
  
  reproducibility.ro <- "<h1>Reproductibilitate</h1>
                         <p>Pentru a reproduce set\\\\u0103rile actuale, ruleaz\\\\u0103 <i>archeoViz</i> cu urm\\\\u0103toarea comand\\\\u0103 R (ajusteaz\\\\u0103 parametrii \\\\u201cobjects.df\\\\u201d \\\\u0219i \\\\u201crefits.df\\\\u201d \\\\u00een func\\\\u021bie de ceea ce ai nevoie): </p>"

  
  
  # guidelines ----
  # : en ----
  guidelines.en <- "
<h1 id=archeoviz>archeoViz</h1>
<p><code>archeoViz</code> is a packaged R Shiny application for the <em>visualisation</em>, <em>exploration</em>, and web <em>communication</em> of archaeological spatial data. It includes interactive 3D and 2D <em>visualisations</em>, can generate <em>cross sections</em> and <em>maps</em> of the remains, and display an interactive <em>timeline</em> of the work made in a site. Simple <em>spatial statistics</em> can be performed (convex hull, regression surfaces, 2D kernel density estimation), as well as <em>exporting data</em> to other online applications for more complex methods. <code>archeoViz</code> can be used locally or deployed on a server, either by allowing the user to load data through the interface or by running the app with a specific data set. The app interface is available in English, French, German, Italian, Portuguese, Romanian, and Spanish. Website: <a href=https://archeoviz.hypotheses.org class=uri>https://archeoviz.hypotheses.org</a>.</p>
<ul>
<li><a href=#installation><strong>Installation</strong></a>
<ul>
<li><a href=#local-use>Local Use</a></li>
<li><a href=#remote-use>Remote Use</a></li>
<li><a href=#demonstration>Demonstration</a></li>
</ul></li>
<li><a href=#community-guidelines><strong>Community Guidelines</strong></a>
<ul>
<li><a href=#reporting-bugs>Reporting Bugs</a></li>
<li><a href=#suggesting-changes>Suggesting Changes</a></li>
<li><a href=#translation>Translation</a></li>
</ul></li>
<li><a href=#use><strong>Use</strong></a>
<ul>
<li><a href=#spatial-information-in-archeoviz>Spatial Information in archeoViz</a>
<ul>
<li><a href=#points-exact-location-plotted-objects>Points, Exact Location: Plotted Objects</a></li>
<li><a href=#points-vague-location-spits-buckets-sieved-objects-and-recording-errors>Points, Vague Location: Spits, Buckets, Sieved Objects, and Recording Errors</a></li>
<li><a href=#lines>Lines</a></li>
<li><a href=#surfaces>Surfaces</a></li>
</ul></li>
<li><a href=#refittings-and-fabric-measurements>Refittings and Fabric Measurements</a>
<ul>
<li><a href=#refittings>Refittings</a></li>
<li><a href=#fabric-measurements>Fabric Measurements</a></li>
</ul></li>
<li><a href=#data-format>Data Format</a>
<ul>
<li><a href=#formatting-data>Formatting Data</a></li>
<li><a href=#objects-table>Objects Table</a></li>
<li><a href=#refitting-table>Refitting Table</a></li>
<li><a href=#timeline-table>Timeline Table</a></li>
</ul></li>
<li><a href=#data-input>Data Input</a>
<ul>
<li><a href=#through-the-application-interface>Through the Application Interface</a></li>
<li><a href=#generating-random-data>Generating Random Data</a></li>
<li><a href=#through-the-r-function-parameters>Through the R Function Parameters</a></li>
<li><a href=#through-url-parameters>Through URL Parameters</a></li>
</ul></li>
<li><a href=#data-sub-setting>Data sub-setting</a>
<ul>
<li><a href=#by-location-mode>By Location Mode</a></li>
<li><a href=#by-objects-category>By Layer or Object Category</a></li>
</ul></li>
<li><a href=#interactive-visualisation>Interactive Visualisation</a>
<ul>
<li><a href=#general-features>General Features</a></li>
<li><a href=#visualising-spatial-uncertainty>Visualising Spatial Uncertainty</a></li>
<li><a href=#graphical-outputs>Graphical Outputs</a></li>
</ul></li>
<li><a href=#spatial-statistics>Spatial Statistics</a>
<ul>
<li><a href=#regression-surfaces>Regression Surfaces</a></li>
<li><a href=#convex-hulls>Convex Hulls</a></li>
<li><a href=#2d-kernel-density>2D Kernel Density</a></li>
</ul></li>
</ul></li>
<li><a href=#reproducibility><strong>Reproducibility</strong></a></li>
<li><a href=#exports-from-and-to-third-party-applications><strong>Exports from and to Third-party Applications</strong></a>
<ul>
<li><a href=#export-from-archeoviz>Export from archeoViz</a></li>
<li><a href=#import-to-archeoviz>Import to archeoViz</a></li>
</ul></li>
<li><a href=#advanced-parameters><strong>Advanced Parameters</strong></a>
<ul>
<li><a href=#square-grid>Square Grid</a></li>
<li><a href=#parameter-presetting>Parameter Presetting</a></li>
<li><a href=#reactive-plot-display>Reactive Plot Display</a></li>
<li><a href=#control-export-formats>Control Export Formats</a></li>
<li><a href=#url-parameters>URL parameters</a></li>
</ul></li>
<li><a href=#acknowledgments><strong>Acknowledgments</strong></a></li>
<li><a href=#references><strong>References</strong></a>
<ul>
<li><a href=#Software>Software</a></li>
<li><a href=#papers>Papers</a></li>
<li><a href=#presentations>Presentations</a></li>
<li><a href=#websites>Websites</a></li>
</ul></li>
</ul>
<h1 id=installation>Installation</h1>
<p><code>archeoViz</code> can be used in two ways:</p>
<ul>
<li>locally, on the user\\\\u2019s machine</li>
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
<h2 id=remote-use>Remote use</h2>
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
<a class=sourceLine id=cb5-5 data-line-number=5>          <span class=dt>home.text =</span> <span class=ot>NULL</span>,    <span class=co># HTML content to display on the home page</span></a>
<a class=sourceLine id=cb5-6 data-line-number=6>          <span class=dt>lang =</span> <span class=st>&quot;en&quot;</span>          <span class=co># interface language (&quot;de&quot;: German, &quot;en&quot;: English, &quot;fr&quot;: French, &quot;it&quot;: Italian, &quot;pt&quot;: Portuguese, &quot;es&quot;: Spanish)</span></a>
<a class=sourceLine id=cb5-7 data-line-number=7>          <span class=dt>set.theme =</span> <span class=st>&quot;cosmo&quot;</span>) <span class=co># graphic theme for the Shiny interface</span></a></code></pre></div>
<p>The possible values for the <code>set.theme</code> parameter are illustrated on <a href=https://rstudio.github.io/shinythemes/>this page</a>. The language of the application can be set with the <code>lang</code> parameter.</p>
<h2 id=demonstration>Demonstration</h2>
<p>Demonstration instances of the application are deployed on the <em>Huma Num</em> Shiny server:</p>
<ul>
<li><a href=https://analytics.huma-num.fr/archeoviz/de><code>archeoViz</code> in German</a>.</li>
<li><a href=https://analytics.huma-num.fr/archeoviz/en><code>archeoViz</code> in English</a>.</li>
<li><a href=https://analytics.huma-num.fr/archeoviz/fr><code>archeoViz</code> in French</a>.</li>
<li><a href=https://analytics.huma-num.fr/archeoviz/es><code>archeoViz</code> in Spanish</a>.</li>
<li><a href=https://analytics.huma-num.fr/archeoviz/it><code>archeoViz</code> in Italian</a>.</li>
<li><a href=https://analytics.huma-num.fr/archeoviz/pt><code>archeoViz</code> in Portuguese</a>.</li>
<li><a href=https://analytics.huma-num.fr/archeoviz/ro><code>archeoViz</code> in Ruman</a>.</li>
</ul>
<p>Real use cases are presented on the <a href=https://analytics.huma-num.fr/archeoviz/home><em>archeoViz Portal</em></a>.</p>
<h1 id=community-guidelines>Community guidelines</h1>
<h2 id=reporting-bugs>Reporting bugs</h2>
<p>If you encounter a bug, please fill an <a href=https://github.com/sebastien-plutniak/archeoviz/issues>issue</a> with all the details needed to reproduce it.</p>
<h2 id=suggesting-changes>Suggesting changes</h2>
<p>Suggestions of changes to <code>archeoViz</code> are welcome. These requests may concern additional functions, changes to documentation, additional examples, new features, etc. They can be made by filling an <a href=https://github.com/sebastien-plutniak/archeoviz/issues>issue</a> and, even better, using pull requests and the <a href=https://docs.github.com/articles/about-pull-requests>GitHub Fork and Pull model</a>.</p>
<h2 id=translation>Translation</h2>
<p>In the development of <code>archeoViz</code>, particular attention is paid to multilingualism. The application interface is available in several languages and translations into additional languages are welcome. To do so, please edit this <a href=https://github.com/sebastien-plutniak/archeoviz/blob/main/R/load_interface_terms_utf8.R>file</a> and submit a pull request.</p>
<h1 id=use>Use</h1>
<p>Having archaeological remains from a given site, <code>archeoViz</code> is designed to lower the technical barriers to fulfill three objectives:</p>
<ul>
<li>basic spatial exploration and generation of simple graphical reports;</li>
<li>fast pre-publication of archaeological data, intended for the scientific community;</li>
<li>fast deployment of a visualisation and communication tool intended for a broader audience.</li>
</ul>
<p>In addition, <code>archeoViz</code> is a suitable pedagogical resource for teaching spatial analysis in archaeology, data structuring, open science, and reproducible workflow.</p>
<p>N.B.: consequently, <code>archeoViz</code> is not intended to replace more sophisticated analysis tools (e.g., GIS, statistical packages, etc.)</p>
<h2 id=spatial-information-in-archeoviz>Spatial Information in archeoViz</h2>
<p>Archaeologists record the location of archaeological objects at different scales and granularity. Accordingly, they use different geometrical concepts to represent location.</p>
<h3 id=points-exact-location-plotted-objects>Points, Exact Location: Plotted Objects</h3>
<p>Using grid coordinates or electronic \\\\u201ctotal station\\\\u201d enables recording the individual location of objects on the field. In that case, the location are represented as points in <code>archeoViz</code> (triplets of x, y and z coordinates).</p>
<h3 id=points-vague-location-spits-buckets-sieved-objects-and-recording-errors>Points, Vague Location: Spits, Buckets, Sieved Objects, and Recording Errors</h3>
<p>However, it is also common that x, y, z, coordinates by object are not available, for different reasons due to:</p>
<ul>
<li>recording errors, loss of information, resulting in the need to replace one of several coordinates values by ranges (e.g., a X value is missing for an object and is replaced by the minimal and maximal X values of the square where this object was found);</li>
<li>choice of method (e.g., excavation made and recorded using spits of arbitrary depth, sieved objects, etc.).</li>
</ul>
<p>In all these cases, we have to deal with vague location, when objects cannot be located as points but are somewhere between ranges of coordinates. Vague location can concern one, two, or the three spatial dimensions (the x, y, z coordinates, respectively).</p>
<p>Note that this feature can also be used to deal with the imprecision of topographical instruments.</p>
<h3 id=lines>Lines</h3>
<p>Lines are useful geometries for representing relationships. In archaeology, these can be <a href=#reffitings>refitting</a> relationships between object fragments, orientation (<a href=#fabric-measurements>fabric measurements</a>, etc. Lines are generated from data loaded as refitting data, either from the \\\\u201cData\\\\u201d tab, or with the <code>refits.df</code> parameter of the <code>archeoViz()</code> function.</p>
<h3 id=surfaces>Surfaces</h3>
<p>Surfaces are useful geometries for representing ground levels, trenches, pits, etc. In <code>archeoViz</code>, this can be achieved by defining a subset of points summarising the desired surface, then displaying the <a href=#convex-hulls>convex hull</a> of this subset.</p>
<h2 id=refittings-and-fabric-measurements>Refittings and Fabric Measurements</h2>
<h3 id=refittings>Refittings</h3>
<p>Refittings are usually recorded by archaeologists in two ways:</p>
<ol>
<li>by sets of refitting objects: using a two columns table, where a row corresponds to an <strong>object</strong>. The first column stores the object\\\\u2019s unique id and the second column stores the id of the set of refitting objects this object belongs to.</li>
<li>by refitting relationships: using a two columns table, where a row corresponds to a <strong>relationship</strong>. The first column stores the first object\\\\u2019s unique id and the second column stores the second object\\\\u2019s unique id.</li>
</ol>
<p>Although the second data structure is more accurate, the first is more commonly used.</p>
<p><code>archeoViz</code> processes and represents the two data structures in two ways:</p>
<ul>
<li>sets of refitting objects must be described using a specific column in the <code>objects.df</code> table (e.g. <code>object_refits</code>) and are represented by the color of points in the plots (like any other variable);</li>
<li>refitting relationships must be described using the <code>refits.df</code> table and are visualised as segments connecting the refitting objects in the plots.</li>
</ul>
<h3 id=fabric-measurements>Fabric Measurements</h3>
<p>So far, <code>archeoViz</code> does not handle fabric measurements properly. However, the process used to represent refittings can also adapted and used to represent fabric measurements. This requires to distort the data structure as follows:</p>
<ul>
<li>assuming that fabric measurements were recorded with two measurements on each object (and not with dip and plunge measurements),</li>
<li>different unique <code>id</code> values must be given to the two points, and</li>
<li>the two measures are processed as if they were two refitting objects.</li>
</ul>
<p>See an example of this method <a href=https://analytics.huma-num.fr/archeoviz/shuidonggou2>here</a>.</p>
<h2 id=data-format>Data Format</h2>
<p>Three types of data can be loaded in <code>archeoViz</code>:</p>
<ul>
<li>an \\\\u201cobjects\\\\u201d table (mandatory), with data about the objects;</li>
<li>a \\\\u201crefits\\\\u201d table (optional), with data about the refitting objects;</li>
<li>a \\\\u201ctimeline\\\\u201d table (optional), with data about when each square of the site was excavated or surveyed.</li>
</ul>
<h3 id=formatting-data>Formatting Data</h3>
<p>The tables must be CSV files with the first row containing the column labels. Contents in HTML are allowed. This makes it possible, in particular, to add links to external resources (e.g., to objects permanent identifier in other databases, or to concepts identifiers in standard ontologies / thesauri, etc.).</p>
<p>Formatting your data can be done:</p>
<ul>
<li>either using a spreadsheet editor on your machine to generate CSV files;</li>
<li>or, for the <code>objects table,</code> using the <a href=https://aurelienroyer.shinyapps.io/Seahors/><em>SEAHORS</em></a> application to load your data, define the variables (in the \\\\u201cLoad data\\\\u201d tab), and export it to the <code>archeoViz</code> format (in the \\\\u201cTable\\\\u201d / \\\\u201carcheoViz exports\\\\u201d tab). It is also possible to directly send the data to an online <code>archeoViz</code> instance.</li>
</ul>
<h3 id=objects-table>Objects Table</h3>
<p>A row describes a single object with the following mandatory fields:</p>
<ul>
<li><strong>id</strong>: <em>alphanumerical value</em>, unique identifier of the object</li>
<li><strong>xmin</strong>: <em>numerical value</em>, coordinate of the object on the X axis (in cm)</li>
<li><strong>ymin</strong>: <em>numerical value</em>, coordinate of the object on the Y axis (in cm)</li>
<li><strong>zmin</strong>: <em>numerical value</em>, coordinate of the object on the Z axis (positive depth value in cm)</li>
<li><strong>layer</strong>: <em>alphanumerical value</em>, identifier of the object\\\\u2019s layer</li>
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
<li><strong>object_edit</strong>: unlimited number of additional variables describing the object (field names must start with <code>object_</code> and have different suffixes)</li>
</ul>
<p>The labels of the squares of the grid:</p>
<ul>
<li>are ordered alpha-numerically;</li>
<li>are not displayed to avoid erroneous displays, if the number of labels does not correspond exactly to the total number of 100 cm squares that can be defined in the range of minimum and maximum coordinates contained in the xmin and ymin variables;</li>
<li>can be completed with the <code>add.x.square.labels</code> and <code>add.y.square.labels</code> parameters of the <code>archeoViz()</code> function in order to add the missing labels (on the X and Y axes of the grid, respectively).</li>
</ul>
<h3 id=refitting-table>Refitting Table</h3>
<p>A data table with two columns can be uploaded for refitting data (CSV format). Each row must contain the unique identifiers of two refitting objects (corresponding to the values of the <code>id</code> column in the objects table).</p>
<h3 id=timeline-table>Timeline Table</h3>
<p>A table (CSV format) can be uploaded about excavation history. Row gives the year when each grid square of the site was excavated or surveyed. This table must include the following variables:</p>
<ul>
<li><strong>year</strong>: numerical value, the year of excavation</li>
<li><strong>square_x</strong>: alphanumerical value, identifier of the excavated square on the X axis</li>
<li><strong>square_y</strong>: alphanumerical value, identifier of the excavated square on the Y axis</li>
</ul>
<h2 id=data-input>Data Input</h2>
<p>There are four ways to input data in <code>archeoViz</code>:</p>
<ol>
<li>uploading data tables through the \\\\u201cInput data\\\\u201d tab,</li>
<li>generating random data in the \\\\u201cInput data\\\\u201d tab;</li>
<li>loading data tables through the <code>archeoViz</code> function\\\\u2019s parameters, in the R interface;</li>
<li>uploading data tables through URL parameters, when using an online instance of <code>archeoViz</code>.</li>
</ol>
<h3 id=through-the-application-interface>Through the Application Interface</h3>
<p>The three types of tables can be loaded in the \\\\u201cInput data\\\\u201d tab. The CSV separator (one of: comma, semicolon, tabulation) and the character used for decimal points (period or comma).</p>
<h3 id=generating-random-data>Generating Random Data</h3>
<p>Using randomly generated data is made possible for demonstration purposes. To activate this feature, set the slider in \\\\u201cInput data\\\\u201d to a value higher than 0 (setting the value back to 0 deactivates the feature). An \\\\u201cobjects\\\\u201d data set, a \\\\u201crefits\\\\u201d data set, and a \\\\u201ctimeline\\\\u201d data set are generated, making it possible to test all the <code>archeoViz</code> functionalities.</p>
<h3 id=through-the-r-function-parameters>Through the R function parameters</h3>
<p><code>archeoViz</code>\\\\u2019s launching function (<code>archeoViz()</code>) can be run without parameter</p>
<div class=sourceCode id=cb6><pre class=sourceCode r><code class=sourceCode r><a class=sourceLine id=cb6-1 data-line-number=1><span class=kw>archeoViz</span>()</a></code></pre></div>
<p>or by using the <code>objects.df</code>, <code>refits.df</code>, or <code>timeline.df</code> parameters to input data.frames about the archaeological objects, refitting relationships between these objects, and the chronology of the excavation, respectively.</p>
<div class=sourceCode id=cb7><pre class=sourceCode r><code class=sourceCode r><a class=sourceLine id=cb7-1 data-line-number=1><span class=kw>archeoViz</span>(<span class=dt>objects.df =</span> <span class=ot>NULL</span>,  <span class=co># data.frame with data about the objects</span></a>
<a class=sourceLine id=cb7-2 data-line-number=2>          <span class=dt>refits.df =</span> <span class=ot>NULL</span>,   <span class=co># data.frame for refitting objects</span></a>
<a class=sourceLine id=cb7-3 data-line-number=3>          <span class=dt>timeline.df =</span> <span class=ot>NULL</span>) <span class=co># optional data.frame for the excavation timeline</span></a></code></pre></div>
<h3 id=through-url-parameters>Through URL parameters</h3>
<p>The URL of an online instance of <code>archeoViz</code> can include the parameters:</p>
<ul>
<li><code>objects.df=</code></li>
<li><code>refits.df=</code></li>
<li><code>timeline.df=</code></li>
</ul>
<p>whose values must be the URL of a CSV file observing the <code>archeoViz</code> format described above. For example: <a href=https://analytics.huma-num.fr/archeoviz/en/?objects.df=https://zenodo.org/record/8003880/files/bilzingsleben.csv class=uri>https://analytics.huma-num.fr/archeoviz/en/?objects.df=https://zenodo.org/record/8003880/files/bilzingsleben.csv</a></p>
<h2 id=data-sub-setting>Data Sub-setting</h2>
<p>Once data are loaded, a sub-selection of the data can be done in the left side menu. Grouping can be done by crossing the following parameters: the mode of location, the layers, and the category of object.</p>
<h3 id=by-location-mode>By Location Mode</h3>
<p>If all the objects have exact location or vague location, then no option is proposed. However, if the dataset includes both exact and vague location, then it is possible to select only one or both of these options.</p>
<h3 id=by-layer-or-object-category>By Layer or Object Category</h3>
<p>The data can be grouped in two ways: either based on their layer or on the selected \\\\u201cobject_\\\\u201d variable. This option determines the colours of the points in the 3D and 2D plots and how to group points when computing convex hulls and 3D regression surfaces. Sub-sets can be defined by object categories, using the \\\\u201cvariable\\\\u201d and \\\\u201cvalues\\\\u201d fields. Once one of the \\\\u201cobject_type\\\\u201d (or other possible \\\\u201cobject_\\\\u201d variables) is selected, its values appear below and can be selected using the tick boxes. The selection must be validated by clicking on the \\\\u201cValidate\\\\u201d button. This selection determines the data to be displayed in the plots and tables.</p>
<h2 id=interactive-visualisation>Interactive visualisation</h2>
<h3 id=general-features>General features</h3>
<p>The plots in the \\\\u201c3D plot\\\\u201d, \\\\u201cMap\\\\u201d, \\\\u201cSection X\\\\u201d, and \\\\u201cSection Y\\\\u201d tabs are generated using the <a href=https://CRAN.R-project.org/package=plotly><code>plotly</code></a> library. All the plots are dynamic and include a menu bar above the plot with several options (generating an image file, zooming, moving the view, etc). See details on the <a href=http://plotly.github.io/getting-to-know-the-plotly-modebar/><code>plotly</code> website</a>.</p>
<p>Clicking on a legend\\\\u2019s item modifies the display:</p>
<ul>
<li>a simple click on an item activates/deactivates its display;</li>
<li>a double click on an item displays this item only (another double click cancels it).</li>
</ul>
<p>This feature makes it possible to choose which layers are shown. In addition, the size of the points can be set and whether the refitting relationships must be represented or not.</p>
<p>Finally, clicking on a point displays information about that point in the table below the plot.</p>
<h3 id=visualising-spatial-uncertainty>Visualising Spatial Uncertainty</h3>
<p>In <code>archeoViz</code>, a distinction is made between exact location (given as x, y, z coordinates) and vague locations (given as ranges of coordinates). Both types of locations can be displayed. The uncertainty of vague locations can be visualised by representing objects not as points but as lines, planes, and volumes (if ranges of coordinates are given for one, two, or three spatial dimensions, respectively). Note that this feature is resource intensive and using it with too much data can significantly slow down the application.</p>
<h3 id=graphical-outputs>Graphical outputs</h3>
<p>Several graphical outputs can be generated in <code>archeoViz</code>.</p>
<ul>
<li>The plots in the \\\\u201c3D plot\\\\u201d, \\\\u201cMap\\\\u201d, \\\\u201cSection X\\\\u201d, and \\\\u201cSection Y\\\\u201d tabs can be exported:
<ul>
<li>in SVG format (by clicking on the \\\\u201ccamera\\\\u201d icon in the menu bar above the plot),</li>
<li>as interactive plots in HTML format, by clicking on the \\\\u201cExport\\\\u201d button.</li>
</ul></li>
<li>The small map in the \\\\u201cSection X\\\\u201d and \\\\u201cSection Y\\\\u201d tabs can be exported in SVG by clicking on the \\\\u201cDownload Map\\\\u201d link.</li>
<li>The plan of the excavation chronology can be exported in SVG format by clicking on the \\\\u201cDownload\\\\u201d button.</li>
</ul>
<h2 id=spatial-statistics>Spatial statistics</h2>
<p><code>archeoViz</code> includes some spatial analysis functionalities, intended for basic and exploratory use.</p>
<h3 id=regression-surfaces>Regression surfaces</h3>
<p>In the \\\\u201c3D plot\\\\u201d tab, clicking on \\\\u201cCompute surfaces\\\\u201d and \\\\u201cValidate\\\\u201d displays the regression surface associated with each layer (with at least 100 points). The surfaces are computed using the generalized additive model implemented in the <a href=https://CRAN.R-project.org/package=mgcv><code>mgcv</code></a> package.</p>
<h3 id=convex-hulls>Convex hulls</h3>
<p>In the \\\\u201c3D plot\\\\u201d tab, convex hulls can be displayed as follows:</p>
<ol>
<li>tick the \\\\u201cConvex hulls\\\\u201d box,</li>
<li>select, from the menu that appears, the subsets of points for which convex hulls are to be calculated,</li>
<li>click on \\\\u201cValidate\\\\u201d.</li>
</ol>
<p>Convex hulls associated with each subsets with at least 20 points are displayed. The convex hulls are computed using the <a href=https://CRAN.R-project.org/package=cxhull><code>cxhull</code></a> package.</p>
<h3 id=2d-kernel-density>2D kernel density</h3>
<p>In the \\\\u201cMap\\\\u201d tab, ticking the \\\\u201cCompute density\\\\u201d box and clicking on \\\\u201cValidate\\\\u201d generates a map with contour lines showing the points\\\\u2019 density. Density can be computed for all the points together or by layer (with at least 30 points). The 2D kernel density is computed with the <code>kde2d</code> function of the <a href=https://CRAN.R-project.org/package=MASS><code>MASS</code></a> package (through <a href=https://CRAN.R-project.org/package=ggplot2><code>ggplot2</code></a>).</p>
<h2 id=reproducibility>Reproducibility</h2>
<p><code>archeoViz</code> is, by definition, an interactive application. However, several features guarantee the reproducibility and communicability of the result of interactions with the application.</p>
<ul>
<li>The 3D visualisation can be exported in an interactive HTML standalone format, considering the data selection made by the user.</li>
<li>In the \\\\u201cReproducibility\\\\u201d tab, an R command is dynamically generated, considering the current application settings made by the user.</li>
<li>In a more advanced use, the URL parameters makes it possible to set an online instance of the application parameters of interest and to communicate it by sending the URL.</li>
</ul>
<h2 id=exports-from-and-to-third-party-applications>Exports from and to Third-party Applications</h2>
<p><code>archeoViz</code> was designed as one of the building blocks of a decentralised digital ecosystem for archaeological data and analysis. In this perspective, features and functions are distributed in multiple interconnected applications, rather than concentrated into few systems. Consequently, data can be exported and imported between <code>archeoViz</code> and other web-based applications. Note that, so far, the export functionalities are only available when using online <code>archeoViz</code> instances.</p>
<h3 id=export-from-archeoviz>Export from archeoViz</h3>
<p>Data can be exported to other online applications from <code>archeoViz</code> \\\\u201cStatistics\\\\u201d tab. Some exports are possible only for specific types of data or if a minimum number of values is satisfied.</p>
<p><a href=https://analytics.huma-num.fr/Sebastien.Plutniak/archeofrag><em>archeofrag</em></a> is an R package and web application to assess and evaluate the distinctions betwen archaeological spatial units (e.g. layers) based on the analysis of refitting relationships between fragments of objects. The web version of the application includes methods to measure the cohesion and admixture of spatial units, and compare it to simulated data. If an instance of <code>archeoViz</code> is launched with <a href=#refittings>refitting data</a>, then this data can be analysed with <code>archeofrag</code>. See an example <a href=https://analytics.huma-num.fr/archeoviz/grotte16>here</a>.</p>
<p>The <a href=https://analytics.huma-num.fr/ModAthom/seriograph/><em>Seriograph</em></a> is a web application (part of the <a href=https://spartaas.gitpages.huma-num.fr/r-package/>SPARTAAS</a> collection) to visualise changes in the quantitative distribution of artefacts types in ordered or unordered series of spatial units. If an online instance of <code>archeoViz</code> is launched with a data set with at least 2 different values for the <code>layers</code> variable and 2 different values for the <code>object_type</code> variable, then this data can be analysed with the <code>Seriograph</code> application. See an example <a href=https://analytics.huma-num.fr/archeoviz/poeymau>here</a>.</p>
<p><a href=https://app.ptm.huma-num.fr/amado/><em>Amado online</em></a> is an on-line application for analyzing contingency tables. It is possible to export a table cross-referencing the values of the selected variable (by default, <code>object_type</code>) and the values of the variable <code>layer</code>. <code>Amado</code> allows you to manually reorder rows and columns, and perform automatic seriations and classifications. See an example <a href=https://analytics.huma-num.fr/archeoviz/tai>here</a>.</p>
<p><a href=https://cran.r-project.org/package=explor><em>explor</em></a> is an R Shiny / R package application for interactively exploring the results of multi-dimensional analyses. <code>explor</code> has been adapted to run a Correspondence analysis on a contingency table intersecting the values of the selected variable (by default, <code>object_type</code>) and the values of the variable <code>layer</code>. See an example <a href=https://analytics.huma-num.fr/archeoviz/tai>here</a>.</p>
<h3 id=import-to-archeoviz>Import to archeoViz</h3>
<p><a href=https://aurelienroyer.shinyapps.io/Seahors/><em>SEAHORS</em></a> is a web application and R package to visualise the spatial distribution of archaeological remains. As mentioned <a href=#formatting-data>above</a>, SEAHORS can be used to import, reshape, and send a data set to an online instance of the <code>archeoViz</code> application.</p>
<h2 id=advanced-parameters>Advanced parameters</h2>
<p>The <code>archeoViz()</code> function can be set with multiple optional parameters, related to:</p>
<ul>
<li>the input data (already detailed <a href=#through-function-parameters>above</a>),</li>
<li>the contents of the home page (already detailed <a href=#deployed-use>above</a>),</li>
<li>the <a href=#square-grid>square grid</a>,</li>
<li>the <a href=#parameters-presetting>presetting</a> of the parameters that can be set through the application\\\\u2019s interface,</li>
<li>the <a href=#reactive-plot-display>reactive behavior</a> of the application regarding the generation of plots,</li>
<li>the <a href=#html-export>HTML export</a>,</li>
<li>the <a href=#url-parameters>URL parameters</a>.</li>
</ul>
<!-- end list -->

<div class=sourceCode id=cb8><pre class=sourceCode r><code class=sourceCode r><a class=sourceLine id=cb8-1 data-line-number=1><span class=kw>archeoViz</span>(<span class=dt>objects.df=</span><span class=ot>NULL</span>, <span class=dt>refits.df=</span><span class=ot>NULL</span>, <span class=dt>timeline.df=</span><span class=ot>NULL</span>,</a>
<a class=sourceLine id=cb8-2 data-line-number=2>          <span class=dt>title=</span><span class=ot>NULL</span>, <span class=dt>home.text=</span><span class=ot>NULL</span>, <span class=dt>lang=</span><span class=st>&quot;en&quot;</span>, <span class=dt>set.theme=</span><span class=st>&quot;cosmo&quot;</span>,</a>
<a class=sourceLine id=cb8-3 data-line-number=3>          <span class=dt>square.size =</span> <span class=dv>100</span>, <span class=dt>reverse.axis.values =</span> <span class=ot>NULL</span>, <span class=dt>reverse.square.names =</span> <span class=ot>NULL</span>,</a>
<a class=sourceLine id=cb8-4 data-line-number=4>          <span class=dt>add.x.square.labels =</span> <span class=ot>NULL</span>, <span class=dt>add.y.square.labels =</span> <span class=ot>NULL</span>,</a>
<a class=sourceLine id=cb8-5 data-line-number=5>          <span class=dt>class.variable =</span> <span class=ot>NULL</span>, <span class=dt>class.values =</span> <span class=ot>NULL</span>,</a>
<a class=sourceLine id=cb8-6 data-line-number=6>          <span class=dt>default.group =</span> <span class=st>&quot;by.layer&quot;</span>, <span class=dt>location.mode =</span> <span class=ot>NULL</span>,</a>
<a class=sourceLine id=cb8-7 data-line-number=7>          <span class=dt>map.z.val =</span> <span class=ot>NULL</span>, <span class=dt>map.density =</span> <span class=st>&quot;no&quot;</span>, <span class=dt>map.refits =</span> <span class=ot>NULL</span>,</a>
<a class=sourceLine id=cb8-8 data-line-number=8>          <span class=dt>plot3d.ratio =</span> <span class=dv>1</span>, <span class=dt>plot3d.hulls =</span> <span class=ot>FALSE</span>, <span class=dt>hulls.class.values =</span> <span class=ot>NULL</span>,</a>
<a class=sourceLine id=cb8-9 data-line-number=9>          <span class=dt>plot3d.surfaces =</span> <span class=ot>NULL</span>, <span class=dt>plot3d.refits =</span> <span class=ot>NULL</span>, <span class=dt>point.size =</span> <span class=dv>2</span>,</a>
<a class=sourceLine id=cb8-10 data-line-number=10>          <span class=dt>sectionX.x.val =</span> <span class=ot>NULL</span>, <span class=dt>sectionX.y.val =</span> <span class=ot>NULL</span>, <span class=dt>sectionX.refits =</span> <span class=ot>NULL</span>, </a>
<a class=sourceLine id=cb8-11 data-line-number=11>          <span class=dt>sectionY.x.val =</span> <span class=ot>NULL</span>, <span class=dt>sectionY.y.val =</span> <span class=ot>NULL</span>, <span class=dt>sectionY.refits =</span> <span class=ot>NULL</span>,</a>
<a class=sourceLine id=cb8-12 data-line-number=12>          <span class=dt>camera.center =</span> <span class=kw>c</span>(<span class=dv>0</span>, <span class=dv>0</span>, <span class=dv>0</span>), <span class=dt>camera.eye =</span> <span class=kw>c</span>(<span class=fl>1.25</span>, <span class=fl>1.25</span>, <span class=fl>1.25</span>),</a>
<a class=sourceLine id=cb8-13 data-line-number=13>          <span class=dt>run.plots =</span> <span class=ot>FALSE</span>, <span class=dt>html.export =</span> <span class=ot>TRUE</span>, <span class=dt>table.export =</span> <span class=ot>TRUE</span></a>
<a class=sourceLine id=cb8-14 data-line-number=14>          )</a></code></pre></div>
<h3 id=square-grid>Square grid</h3>
<div class=sourceCode id=cb9><pre class=sourceCode r><code class=sourceCode r><a class=sourceLine id=cb9-1 data-line-number=1><span class=kw>archeoViz</span>(<span class=dt>square.size =</span> <span class=dv>100</span>,</a>
<a class=sourceLine id=cb9-2 data-line-number=2>          <span class=dt>reverse.axis.values =</span> <span class=ot>NULL</span>, <span class=dt>reverse.square.names =</span> <span class=ot>NULL</span>,</a>
<a class=sourceLine id=cb9-3 data-line-number=3>          <span class=dt>add.x.square.labels =</span> <span class=ot>NULL</span>, <span class=dt>add.y.square.labels =</span> <span class=ot>NULL</span></a>
<a class=sourceLine id=cb9-4 data-line-number=4>          )</a></code></pre></div>
<ul>
<li><strong>square.size</strong>: numerical. Size (width and height) in centimeter of the squares in the grid system. Default value is 100 cm.</li>
<li><strong>reverse.axis.values</strong>: character. Name of the axis or axes to be reversed (any combination of \\\\u201cx\\\\u201d, \\\\u201cy\\\\u201d, \\\\u201cz\\\\u201d).</li>
<li><strong>reverse.square.names</strong>: character. Name of the axis or axes for which to reverse the order of the square labels (any combination of \\\\u201cx\\\\u201d, \\\\u201cy\\\\u201d, \\\\u201cz\\\\u201d).</li>
<li><strong>add.x.square.labels</strong>: character. Additional square labels for the \\\\u201cx\\\\u201d axis.</li>
<li><strong>add.y.square.labels</strong>: character. Additional square labels for the \\\\u201cy\\\\u201d axis.</li>
</ul>
<h3 id=parameter-presetting>Parameter presetting</h3>
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
<li><strong>default.group</strong>: character. At the launch of the app, preset of the variable used to group data (one of \\\\u201cby.layer\\\\u201d or \\\\u201cby.variable\\\\u201d).</li>
<li><strong>location.mode</strong>: character. At the launch of the app, preset of the location methods (any combination of \\\\u201cexact\\\\u201d, \\\\u201cfuzzy\\\\u201d, \\\\u201cshow.uncertainty\\\\u201d).</li>
<li><strong>map.z.val</strong>: numerical. Minimal and maximal Z coordinates values to display in the map plot.</li>
<li><strong>map.density</strong>: character. At the launch of the app, whether to compute and show density contours in the map plot (one of \\\\u201cno\\\\u201d, \\\\u201coverall\\\\u201d, \\\\u201cby.variable\\\\u201d).</li>
<li><strong>map.refits</strong>: TRUE or FALSE. Whether to show refits in the map plot.</li>
<li><strong>plot3d.hulls</strong>: TRUE or FALSE. At the launch of the app, whether to compute and show convex hulls in the 3D plot.</li>
<li><strong>hulls.class.values</strong>: character. At the launch of the app, names of the points subsets for which to compute convex hulls.</li>
<li><strong>plot3d.surfaces</strong>: TRUE or FALSE. At the launch of the app, whether to compute and show regression in the 3D plot.</li>
<li><strong>plot3d.refits</strong>: TRUE or FALSE. At the launch of the app, whether to show refits on the 3D section plot.</li>
<li><strong>point.size</strong>: integer. At the launch of the app, size of the points in the plots.</li>
<li><strong>sectionX.x.val</strong>: numerical. At the launch of the app, minimal and maximal X coordinates values to display in the X section plot.</li>
<li><strong>sectionX.y.val</strong>: numerical. At the launch of the app, minimal and maximal Y coordinates values to display in the X section plot.</li>
<li><strong>sectionX.refits</strong>: TRUE or FALSE. At the launch of the app, whether to show refits in the X section plot.</li>
<li><strong>sectionY.x.val</strong>: numerical. At the launch of the app, minimal and maximal X coordinates values to display in the Y section plot.</li>
<li><strong>sectionY.y.val</strong>: numerical. At the launch of the app, minimal and maximal Y coordinates values to display in the Y section plot.</li>
<li><strong>sectionY.refits</strong>: TRUE or FALSE. At the launch of the app, whether to show refits in the Y section plot.</li>
<li><strong>camera.center</strong>: numerical. In 3D plot, coordinates of the point to which the camera looks at (default values: x=0, y=0, z=0).</li>
<li><strong>camera.eye</strong>: numerical. In 3D plot, coordinates of the camera\\\\u2019s position (default values: x=1.25, y=1.25, z=1.25).</li>
</ul>
<h3 id=reactive-plot-display>Reactive plot display</h3>
<div class=sourceCode id=cb11><pre class=sourceCode r><code class=sourceCode r><a class=sourceLine id=cb11-1 data-line-number=1><span class=kw>archeoViz</span>(<span class=dt>run.plots =</span> <span class=ot>FALSE</span>)</a></code></pre></div>
<ul>
<li><strong>run.plots</strong>: TRUE or FALSE. Whether to immediately compute and show plots (without requiring the user to click on the \\\\u201cRefresh\\\\u201d button).</li>
</ul>
<h3 id=control-export-formats>Control Export Formats</h3>
<ul>
<li><strong>html.export</strong> : TRUE or FALSE. Whether or not to allow figures to be exported as interactive HTML widgets.</li>
<li><strong>table.export</strong>: TRUE or FALSE. Allow or disallow data transfer to <a href=#exports-from-and-to-third-party-applications>third-party applications</a> in the \\\\u201cStatistics\\\\u201d tab.</li>
</ul>
<h3 id=url-parameters>URL parameters</h3>
<p>An instance of <code>archeoViz</code> deployed online on a server can be set with URL parameters. Supported parameters include:</p>
<ul>
<li><code>objects.df</code>, <code>refits.df</code>, <code>timeline.df</code></li>
<li><code>title</code>, <code>home.text</code></li>
<li><code>reverse.axis.values</code>, <code>reverse.square.names</code></li>
<li><code>square.size</code></li>
<li><code>add.x.square.labels</code>, <code>add.y.square.labels</code></li>
<li><code>class.variable</code>, <code>class.values</code></li>
<li><code>default.group</code></li>
<li><code>location.mode</code></li>
<li><code>map.density</code>, <code>map.refits</code></li>
<li><code>plot3d.hulls</code>, <code>plot3d.surfaces</code>, <code>plot3d.refits</code></li>
<li><code>sectionX.refits</code></li>
<li><code>sectionY.refits</code></li>
<li><code>run.plots</code></li>
</ul>
<p>(The following parameters are not supported in the current version: <code>map.z.val</code>, <code>sectionX.x.val</code>, <code>point.size</code>, <code>sectionX.y.val</code>, <code>sectionY.x.val</code>, <code>sectionY.y.val</code>, <code>lang</code>, <code>set.theme</code>, <code>camera.center</code>, <code>camera.eye</code>, <code>html.export</code>, <code>table.export</code>.)</p>
<p>The parameters must be written using the URL syntax (?param1=value&amp;param2=value2) and have the same type of values than when used in the R interface. For example, the following URL launches an <code>archeoViz</code> instance using the <a href=https://zenodo.org/record/8003880>Bilzingsleben</a> dataset:</p>
<p><a href=https://analytics.huma-num.fr/archeoviz/en/?objects.df=https://zenodo.org/record/8003880/files/bilzingsleben.csv class=uri>https://analytics.huma-num.fr/archeoviz/en/?objects.df=https://zenodo.org/record/8003880/files/bilzingsleben.csv</a></p>
<p>This URL does the same, but also includes the refitting table (parameter <code>&amp;refits.df=</code>) and set the activate the display of the refitting relationships in the 3D and map plots:</p>
<p><a href=https://analytics.huma-num.fr/archeoviz/en/?map.refits=TRUE&amp;plot3d.refits=TRUE&amp;objects.df=https://zenodo.org/record/8003880/files/bilzingsleben.csv&amp;refits.df=https://zenodo.org/record/8003880/files/bilzingsleben-antlers-refits.csv class=uri>https://analytics.huma-num.fr/archeoviz/en/?map.refits=TRUE&amp;plot3d.refits=TRUE&amp;objects.df=https://zenodo.org/record/8003880/files/bilzingsleben.csv&amp;refits.df=https://zenodo.org/record/8003880/files/bilzingsleben-antlers-refits.csv</a></p>
<p>The following URL launches the Bilzingsleben dataset, pre-setting the app to:</p>
<ol>
<li>groups the points by variable (parameter <code>default.group</code>, with walue <code>by.variable</code> instead of <code>by.layer</code>)</li>
<li>selects only the \\\\u201cAntlers\\\\u201d (parameter <code>class.values</code>)</li>
<li>redefines the size of the square grid (parameter <code>square.size</code>, 500 cm instead of the 100 cm default value)</li>
<li>enable the immediate display of the plots (parameter <code>run.plots</code>)</li>
<li>modifies the title of the page (parameter <code>title</code>)</li>
<li>modifies the content of the home page with basic html contents (parameter <code>home.txt</code>)</li>
</ol>
<p><a href=https://analytics.huma-num.fr/archeoviz/en/?default.group=by.variable&amp;class.values=Antler&amp;square.size=500&amp;run.plots=TRUE&amp;title=Anters%20at%20Bilzingsleben&amp;home.text=Many%20%3Cb%3Eantlers%3C/b%3E&amp;objects.df=https://zenodo.org/record/8003880/files/bilzingsleben.csv>https://analytics.huma-num.fr/archeoviz/en/?default.group=by.variable&amp;class.values=Antler&amp;square.size=500&amp;run.plots=TRUE&amp;title=Antlers%20at%20Bilzingsleben&amp;home.text=Many%20<b>antlers</b>&amp;objects.df=https://zenodo.org/record/8003880/files/bilzingsleben.csv</a></p>
<p>Note that the parameters <code>add.x.square.labels</code>, <code>add.y.square.labels</code>, <code>location.mode</code>, and <code>class.values</code>, which accept simple or multiple values in the R interface (e.g., c(\\\\u201cvalue1\\\\u201d, \\\\u201cvalue2\\\\u201d)) only accept one value when set as URL parameters (this is a restriction due to the URL syntax).</p>
<h1 id=acknowledgments>Acknowledgments</h1>
<p>The <code>archeoViz</code> application and package is developed and maintained by S\\\\u00e9bastien Plutniak. Arthur Coulon, Sol\\\\u00e8ne Denis, Olivier Marlet, and Thomas Perrin tested and supported the project in its early stage. Renata Araujo, Laura Coltofean, Sara Giardino, Julian Laabs, and Nicolas Delsol translated the application into Portuguese, Romanian, Italian, German, and Spanish respectively.</p>
<h1 id=references>References</h1>
<h2 id=software>Software</h2>
<ul>
<li>Plutniak, S\\\\u00e9bastien, Renata Araujo, Laura Coltofean, Nicolas Delsol, Sara Giardino, Julian Laabs. 2023. \\\\u201carcheoViz. Visualisation, Exploration, and Web Communication of Archaeological Spatial Data\\\\u201d. v1.3.2, DOI: <a href=https://doi.org/10.5281/zenodo.7460193>10.5281/zenodo.7460193</a>.</li>
<li>Plutniak, S\\\\u00e9bastien, Ana\\\\u00efs Vignoles. 2023. \\\\u201c<a href=https://hal.science/hal-04156271>The archeoViz Portal: Dissemination of Spatial Archaeological Datasets</a>\\\\u201d, web portal, <a href=https://analytics.huma-num.fr/archeoviz/home class=uri>https://analytics.huma-num.fr/archeoviz/home</a>.</li>
</ul>
<h2 id=papers>Papers</h2>
<ul>
<li>Plutniak, S\\\\u00e9bastien. Submitted. \\\\u201carcheoViz: an R package for the Visualisation, Exploration, and Web Communication of Archaeological Spatial Data\\\\u201d. <em>Journal of Open Source Software</em>.</li>
<li>Plutniak, S\\\\u00e9bastien. 2023. \\\\u201c<a href=https://www.prehistoire.org/offres/doc_inline_src/515/0-BSPF_2023_1_2e_partie_Correspondance_PLUTNIAK.pdf>Visualiser et explorer la distribution spatiale du mobilier arch\\\\u00e9ologique : l\\\\u2019application archeoViz et son portail web</a>\\\\u201d. <em>Bulletin de la Soci\\\\u00e9t\\\\u00e9 pr\\\\u00e9historique fran\\\\u00e7aise</em>, 120(1), p. 70-74.</li>
</ul>
<h2 id=presentations>Presentations</h2>
<ul>
<li>Plutniak, S\\\\u00e9bastien. 2023. \\\\u201c<a href=https://hal.science/hal-04146410>Fostering the Publication of Spatial Archaeological Data: a Decentralized Approach. The archeoViz Web Application and its Portal</a>\\\\u201d, slides of a presentation at the University of Florida, Gainesville.</li>
<li>Plutniak, S\\\\u00e9bastien, Ana\\\\u00efs Vignoles. 2023. \\\\u201c<a href=https://hal.science/hal-04070444>L\\\\u2019application web / package archeoViz et son portail web. Une solution d\\\\u00e9centralis\\\\u00e9e d\\\\u2019\\\\u00e9ditorialisation de donn\\\\u00e9es arch\\\\u00e9ologiques spatialis\\\\u00e9es</a>, slides of a presentation at the SITRADA workshop, Paris.</li>
</ul>
<h2 id=websites>Websites</h2>
<ul>
<li>The <em>archeoViz. Data visualization in archaeology. Re-use, visualization, dissemination of spatial data</em> blog: <a href=https://archeoviz.hypotheses.org class=uri>https://archeoviz.hypotheses.org</a></li>
</ul>
"
  
  
#  : fr ----
guidelines.fr <- "
<h1 id=archeoviz>archeoViz</h1>
<p><code>archeoViz</code> est une application d\\\\u00e9di\\\\u00e9e \\\\u00e0 l\\\\u2019arch\\\\u00e9ologie. Elle permet de <em>visualiser</em>, d\\\\u2019<em>explorer</em> interactivement, et d\\\\u2019exposer et <em>communiquer</em> rapidement sur le web des donn\\\\u00e9es arch\\\\u00e9ologiques spatialis\\\\u00e9es. Elle propose des <em>visualisations</em> en 3D et 2D, g\\\\u00e9n\\\\u00e8re des <em>coupes</em> et des <em>cartes</em> du mobilier arch\\\\u00e9ologique, permet de visualiser la <em>chronologie</em> des travaux sur un site. Il est possible d\\\\u2019y r\\\\u00e9aliser des <em>statistiques spatiales</em> simples (enveloppes convexes, surfaces de r\\\\u00e9gression, estimation de densit\\\\u00e9 par noyau en 2D) ainsi que d\\\\u2019<em>exporter des donn\\\\u00e9es</em> vers d\\\\u2019autres applications en ligne pour appliquer des m\\\\u00e9thodes plus complexes. <code>archeoViz</code> peut \\\\u00eatre utilis\\\\u00e9e localement ou d\\\\u00e9ploy\\\\u00e9e sur un serveur, soit en chargeant des donn\\\\u00e9es via l\\\\u2019interface, soit en lan\\\\u00e7ant l\\\\u2019application avec un jeu de donn\\\\u00e9e sp\\\\u00e9cifique. L\\\\u2019interface est disponible en allemand, anglais, italien, fran\\\\u00e7ais, portugais et roumain. Page web: <a href=https://archeoviz.hypotheses.org class=uri>https://archeoviz.hypotheses.org</a>.</p>
<ul>
<li><a href=#installation><strong>Installation</strong></a>
<ul>
<li><a href=#locale>Locale</a></li>
<li><a href=#distante>Distante</a></li>
<li><a href=#d\\\\u00e9monstration>D\\\\u00e9monstration</a></li>
</ul></li>
<li><a href=#recommandations-communautaires><strong>Recommandations communautaires</strong></a>
<ul>
<li><a href=#signaler-un-bug>Signaler un bug</a></li>
<li><a href=#soumettre-une-modification>Soumettre une modification</a></li>
<li><a href=#traduire>Traduire</a></li>
</ul></li>
<li><a href=#utilisation><strong>Utilisation</strong></a>
<ul>
<li><a href=#linformation-spatiale-dans-archeoviz>L\\\\u2019information spatiale dans archeoViz</a>
<ul>
<li><a href=#points-localisation-exacte--les-objets-relev\\\\u00e9s>Points, localisation exacte : les objets relev\\\\u00e9s</a></li>
<li><a href=#points-localisation-vague--passes-seaux-tamis-et-erreurs-denregistement>Points, localisation vague : passes, seaux, tamis et erreurs d\\\\u2019enregistement</a></li>
<li><a href=#lignes>Lignes</a></li>
<li><a href=#surfaces>Surfaces</a></li>
</ul></li>
<li><a href=#remontages-et-mesures-de-fabrique>Remontages et mesures de fabrique</a>
<ul>
<li><a href=#remontages>Remontages</a></li>
<li><a href=#mesures-de-fabrique>Mesures de fabrique</a></li>
</ul></li>
<li><a href=#formater-des-donn\\\\u00e9es>Format de donn\\\\u00e9es</a>
<ul>
<li><a href=#formater-des-donn\\\\u00e9es>Formater des donn\\\\u00e9es</a></li>
<li><a href=#tableau-des-objets>Tableau des objets</a></li>
<li><a href=#tableau-des-remontages>Tableau des remontages</a></li>
<li><a href=#tableau-de-la-chronologie>Tableau de la chronologie</a></li>
</ul></li>
<li><a href=#charger-des-donn\\\\u00e9es>Charger des donn\\\\u00e9es</a>
<ul>
<li><a href=#via-linterface-de-lapplication>Via l\\\\u2019interface de l\\\\u2019application</a></li>
<li><a href=#par-g\\\\u00e9n\\\\u00e9ration-de-donn\\\\u00e9es-al\\\\u00e9atoires>Par g\\\\u00e9n\\\\u00e9ration de donn\\\\u00e9es al\\\\u00e9atoires</a></li>
<li><a href=#via-les-param\\\\u00e8tres-de-la-fonction-r>Via les param\\\\u00e8tres de la fonction R</a></li>
<li><a href=#via-les-param\\\\u00e8tres-dune-url>Via les param\\\\u00e8tres d\\\\u2019une URL</a></li>
</ul></li>
<li><a href=#sous-s\\\\u00e9lection-de-donn\\\\u00e9es>Sous-s\\\\u00e9lection de donn\\\\u00e9es</a>
<ul>
<li><a href=#par-mode-de-localisation>Par mode de localisation</a></li>
<li><a href=#par-couche-ou-cat\\\\u00e9gorie-dobjet>Par couche ou cat\\\\u00e9gorie d\\\\u2019objet</a></li>
</ul></li>
<li><a href=#visualisations-interactives>Visualisations interactives</a>
<ul>
<li><a href=#g\\\\u00e9n\\\\u00e9ralit\\\\u00e9s>G\\\\u00e9n\\\\u00e9ralit\\\\u00e9s</a></li>
<li><a href=#sorties-graphiques>Sorties graphiques</a></li>
<li><a href=#visualisation-de-l-incertitude%20spatiale>Visualisation de l\\\\u2019incertitude spatiale</a></li>
</ul></li>
<li><a href=#statistiques-spatiales>Statistiques spatiales</a>
<ul>
<li><a href=#surfaces-de-r\\\\u00e9gression>Surfaces de r\\\\u00e9gression</a></li>
<li><a href=#enveloppes-convexes>Enveloppes convexes</a></li>
<li><a href=#estimation-2d-de-densit\\\\u00e9-par-noyau>Estimation 2D de densit\\\\u00e9 par noyau</a></li>
</ul></li>
</ul></li>
<li><a href=#reproductibilit\\\\u00e9><strong>Reproductibilit\\\\u00e9</strong></a></li>
<li><a href=#exports-depuis-et-vers-des-applications-tierces><strong>Exports depuis et vers des applications tierces</strong></a>
<ul>
<li><a href=#export-depuis-archeoviz>Export depuis archeoViz</a></li>
<li><a href=#import-vers-archeoviz>Import vers archeoViz</a></li>
</ul></li>
<li><a href=#param\\\\u00e8tres-avanc\\\\u00e9s><strong>Param\\\\u00e8tres avanc\\\\u00e9s</strong></a>
<ul>
<li><a href=#carroyage>Carroyage</a></li>
<li><a href=#pr\\\\u00e9-s\\\\u00e9lection-des-param\\\\u00e8tres>Pr\\\\u00e9-s\\\\u00e9lection des param\\\\u00e8tres</a></li>
<li><a href=#affichage-r\\\\u00e9actif-des-visualisations>Affichage r\\\\u00e9actif des visualisations</a></li>
<li><a href=#contr\\\\u00f4le-des-formats-d-export>Contr\\\\u00f4le des formats d\\\\u2019export</a></li>
<li><a href=#param\\\\u00e8tres-url>Param\\\\u00e8tres URL</a></li>
</ul></li>
<li><a href=#remerciements><strong>Remerciements</strong></a></li>
<li><a href=#r\\\\u00e9f\\\\u00e9rences-et-ressources><strong>R\\\\u00e9f\\\\u00e9rences et ressources</strong></a>
<ul>
<li><a href=#logiciels>Logiciels</a></li>
<li><a href=#articles>Articles</a></li>
<li><a href=#pr\\\\u00e9sentations>Pr\\\\u00e9sentations</a></li>
<li><a href=#sites-web>Sites web</a></li>
</ul></li>
</ul>
<h1 id=installation>Installation</h1>
<p><code>archeoViz</code> peut \\\\u00eatre employ\\\\u00e9e de deux mani\\\\u00e8res:</p>
<ul>
<li>localement, sur la machine de l\\\\u2019utilisateur</li>
<li>\\\\u00e0 distance, apr\\\\u00e8s d\\\\u00e9ploiement sur un serveur distant</li>
</ul>
<h2 id=locale>Locale</h2>
<p>Le package peut \\\\u00eatre install\\\\u00e9 depuis le CRAN:</p>
<div class=sourceCode id=cb1><pre class=sourceCode r><code class=sourceCode r><a class=sourceLine id=cb1-1 data-line-number=1><span class=kw>install.packages</span>(<span class=st>&quot;archeoViz&quot;</span>)</a></code></pre></div>
<p>La version de d\\\\u00e9veloppement peut \\\\u00eatre t\\\\u00e9l\\\\u00e9charg\\\\u00e9e depuis <em>GitHub</em>:</p>
<div class=sourceCode id=cb2><pre class=sourceCode r><code class=sourceCode r><a class=sourceLine id=cb2-1 data-line-number=1><span class=co># install.packages(&quot;devtools&quot;)</span></a>
<a class=sourceLine id=cb2-2 data-line-number=2>devtools<span class=op>::</span><span class=kw>install_github</span>(<span class=st>&quot;sebastien-plutniak/archeoviz&quot;</span>)</a></code></pre></div>
<p>Apr\\\\u00e8s quoi, chargez le package et lancez l\\\\u2019application avec:</p>
<div class=sourceCode id=cb3><pre class=sourceCode r><code class=sourceCode r><a class=sourceLine id=cb3-1 data-line-number=1><span class=kw>library</span>(archeoViz)</a>
<a class=sourceLine id=cb3-2 data-line-number=2><span class=kw>archeoViz</span>()</a></code></pre></div>
<h2 id=d\\\\u00e9ploy\\\\u00e9e>D\\\\u00e9ploy\\\\u00e9e</h2>
<p>Pour d\\\\u00e9ployer <code>archeoViz</code> sur votre Shiny server, t\\\\u00e9l\\\\u00e9chargez premi\\\\u00e8rement le package:</p>
<div class=sourceCode id=cb4><pre class=sourceCode r><code class=sourceCode r><a class=sourceLine id=cb4-1 data-line-number=1><span class=co># d\\\\u00e9terminez le r\\\\u00e9pertoire de travail dans votre shiny server:</span></a>
<a class=sourceLine id=cb4-2 data-line-number=2><span class=kw>setwd</span>(<span class=dt>dir =</span> <span class=st>&quot;/some/path/&quot;</span>)</a>
<a class=sourceLine id=cb4-3 data-line-number=3><span class=co># t\\\\u00e9l\\\\u00e9chargez le package:</span></a>
<a class=sourceLine id=cb4-4 data-line-number=4><span class=kw>download.file</span>(<span class=dt>url =</span> <span class=st>&quot;https://github.com/sebastien-plutniak/archeoviz/archive/master.zip&quot;</span>,</a>
<a class=sourceLine id=cb4-5 data-line-number=5>              <span class=dt>destfile =</span> <span class=st>&quot;archeoviz.zip&quot;</span>)</a>
<a class=sourceLine id=cb4-6 data-line-number=6><span class=co># d\\\\u00e9compression:</span></a>
<a class=sourceLine id=cb4-7 data-line-number=7><span class=kw>unzip</span>(<span class=dt>zipfile =</span> <span class=st>&quot;archeoviz.zip&quot;</span>)</a></code></pre></div>
<p>Puis, rendez-vous \\\\u00e0 <code>https://&lt;your-shiny-server&gt;/archeoviz-main</code>.</p>
<p>Pour param\\\\u00e9trer l\\\\u2019application avec vos donn\\\\u00e9es et pr\\\\u00e9f\\\\u00e9rences, \\\\u00e9ditez le fichier <code>app.R</code> situ\\\\u00e9 \\\\u00e0 la racine du r\\\\u00e9pertoire de l\\\\u2019application:</p>
<div class=sourceCode id=cb5><pre class=sourceCode r><code class=sourceCode r><a class=sourceLine id=cb5-1 data-line-number=1><span class=kw>archeoViz</span>(<span class=dt>objects.df =</span> <span class=ot>NULL</span>,   <span class=co># data.frame pour les objets</span></a>
<a class=sourceLine id=cb5-2 data-line-number=2>          <span class=dt>refits.df =</span> <span class=ot>NULL</span>,    <span class=co># data.frame optionnel pour les remontages</span></a>
<a class=sourceLine id=cb5-3 data-line-number=3>          <span class=dt>timeline.df =</span> <span class=ot>NULL</span>,  <span class=co># data.frame optionnel pour la chronologie des fouilles</span></a>
<a class=sourceLine id=cb5-4 data-line-number=4>          <span class=dt>default.group =</span><span class=ot>NULL</span>, <span class=co># m\\\\u00e9thode de groupement des donn\\\\u00e9es,</span></a>
<a class=sourceLine id=cb5-5 data-line-number=5>                               <span class=co># par couche (&quot;by.layer&quot;) ou &quot;by.variable&quot;</span></a>
<a class=sourceLine id=cb5-6 data-line-number=6>          <span class=dt>title =</span> <span class=ot>NULL</span>,        <span class=co># titre du site / du jeu de donn\\\\u00e9es</span></a>
<a class=sourceLine id=cb5-7 data-line-number=7>          <span class=dt>home.text =</span> <span class=ot>NULL</span>,    <span class=co># contenu HTML \\\\u00e0 afficher sur la page d'accueil</span></a>
<a class=sourceLine id=cb5-8 data-line-number=8>          <span class=dt>lang =</span> <span class=st>&quot;fr&quot;</span>          <span class=co># langue de l'interface (&quot;de&quot;: Allemand, &quot;en&quot;: Anglais, &quot;fr&quot;: Fran\\\\u00e7ais, &quot;it&quot;: Italien &quot;pt&quot;: Portugais, &quot;es&quot;: Espagnol)</span></a>
<a class=sourceLine id=cb5-9 data-line-number=9>          <span class=dt>set.theme =</span> <span class=st>&quot;cosmo&quot;</span>) <span class=co># th\\\\u00e8me graphique de l'interface Shiny</span></a></code></pre></div>
<p>Les valeurs possibles pour le param\\\\u00e8tre <code>set.theme</code> sont illustr\\\\u00e9es sur <a href=https://rstudio.github.io/shinythemes/>cette page</a>. La langue de l\\\\u2019application peut \\\\u00eatre d\\\\u00e9finie avec le param\\\\u00e8tre <code>lang</code>.</p>
<h2 id=d\\\\u00e9monstration>D\\\\u00e9monstration</h2>
<p>Des instances de d\\\\u00e9monstration de l\\\\u2019application sont d\\\\u00e9ploy\\\\u00e9es sur le Shiny server d\\\\u2019<em>Huma Num</em>:</p>
<ul>
<li><a href=https://analytics.huma-num.fr/archeoviz/fr><code>archeoViz</code> en fran\\\\u00e7ais</a>.</li>
<li><a href=https://analytics.huma-num.fr/archeoviz/en><code>archeoViz</code> en anglais</a>.</li>
<li><a href=https://analytics.huma-num.fr/archeoviz/de><code>archeoViz</code> en allemand</a>.</li>
<li><a href=https://analytics.huma-num.fr/archeoviz/es><code>archeoViz</code> en espagnol</a>.</li>
<li><a href=https://analytics.huma-num.fr/archeoviz/it><code>archeoViz</code> en italien</a>.</li>
<li><a href=https://analytics.huma-num.fr/archeoviz/pt><code>archeoViz</code> en portugais</a>.</li>
<li><a href=https://analytics.huma-num.fr/archeoviz/ro><code>archeoViz</code> en roumain</a>.</li>
</ul>
<p>Des cas d\\\\u2019applications \\\\u00e0 divers sites arch\\\\u00e9ologiques sont rassembl\\\\u00e9s sur le <a href=https://analytics.huma-num.fr/archeoviz/home><em>Portail archeoViz</em></a>.</p>
<h1 id=recommandations-communautaires>Recommandations communautaires</h1>
<h2 id=signaler-un-bug>Signaler un bug</h2>
<p>Si vous rencontrez un bug, ouvrez une <a href=https://github.com/sebastien-plutniak/archeoviz/issues><em>issue</em></a> en indiquant tous les d\\\\u00e9tails n\\\\u00e9cessaires pour le reproduire.</p>
<h2 id=sugg\\\\u00e9rer-un-changement>Sugg\\\\u00e9rer un changement</h2>
<p>Les suggestions de modifications sont bienvenues. Les demandes peuvent concerner des fonctions additionnelles, des modifications dans la documentation, des exemples additionnels, de nouvelles fonctionnalit\\\\u00e9s, etc. Elles peuvent \\\\u00eatre faites en ouvrant une <a href=https://github.com/sebastien-plutniak/archeoviz/issues>issue</a> ou, mieux encore, en employant une <em>pull requests</em> et le mod\\\\u00e8le GitHub <a href=https://docs.github.com/articles/about-pull-requests>Fork and Pull</a>.</p>
<h2 id=traduire>Traduire</h2>
<p>Un soin particulier est accord\\\\u00e9 au multilinguisme. L\\\\u2019interface de l\\\\u2019application est disponible en plusieurs langues et les traduction dans des langues suppl\\\\u00e9mentaires sont bienvenues. Pour cela, \\\\u00e9ditez ce <a href=https://github.com/sebastien-plutniak/archeoviz/blob/main/R/load_interface_terms_utf8.R>fichier</a> et soumettez une <em>pull request</em>.</p>
<h1 id=utilisation>Utilisation</h1>
<p>Consid\\\\u00e9rant les objets arch\\\\u00e9ologiques d\\\\u2019un site de fouille ou de prospection, <code>archeoViz</code> est con\\\\u00e7u pour r\\\\u00e9duire les freins techniques \\\\u00e0 la r\\\\u00e9alisation de trois objectifs:</p>
<ul>
<li>l\\\\u2019exploration spatiale basique et la production de documents graphiques analytiques;</li>
<li>la pr\\\\u00e9-publication rapide de donn\\\\u00e9es arch\\\\u00e9ologiques, \\\\u00e0 destination de la communaut\\\\u00e9 scientifique;</li>
<li>le d\\\\u00e9ploiement ais\\\\u00e9 d\\\\u2019un outil d\\\\u2019exposition et de communication, \\\\u00e0 destination d\\\\u2019un plus large public.</li>
</ul>
<p>En outre, <code>archeoViz</code> constitue une ressource p\\\\u00e9dagogique adapt\\\\u00e9e \\\\u00e0 l\\\\u2019enseignement des notions d\\\\u2019analyse spatiale en arch\\\\u00e9ologie, de structuration de donn\\\\u00e9es, de science ouverte et de reproductibilit\\\\u00e9.</p>
<p>N.B.: par cons\\\\u00e9quent, <code>archeoViz</code> n\\\\u2019est pas destin\\\\u00e9 \\\\u00e0 se substituer \\\\u00e0 des outils d\\\\u2019analyse plus sophistiqu\\\\u00e9s (e.g., SIG, packages de statistiques spatiales, etc.)</p>
<h2 id=linformation-spatiale-dans-archeoviz>L\\\\u2019information spatiale dans archeoViz</h2>
<p>Les arch\\\\u00e9ologues enregistrent la localisation des objets arch\\\\u00e9ologique \\\\u00e0 diff\\\\u00e9rentes \\\\u00e9chelles et granularit\\\\u00e9. En fonction de cela, ils utilisent diff\\\\u00e9rentes concepts g\\\\u00e9om\\\\u00e9triques pour repr\\\\u00e9senter ces localisations.</p>
<h3 id=points-localisation-exacte--les-objets-relev\\\\u00e9s>Points, localisation exacte : les objets relev\\\\u00e9s</h3>
<p>L\\\\u2019utilisation d\\\\u2019un carroyage ou d\\\\u2019une \\\\u201cstation totale\\\\u201d permet d\\\\u2019enregistrer la localisation individuelle des objets sur le terrain. Dans ce cas, dans <code>archeoViz</code>, localisation de ces objets sera visualis\\\\u00e9e par des points (des triplets de valeurs de coordonn\\\\u00e9es x, y, z).</p>
<h3 id=points-localisation-vague--passes-seaux-tamis-et-erreurs-denregistement>Points, localisation vague : passes, seaux, tamis et erreurs d\\\\u2019enregistement</h3>
<p>Toutefois, il est fr\\\\u00e9quent que les coordonn\\\\u00e9es x, y, z des objets ne soit pas disponible, pour diff\\\\u00e9rentes raisons:</p>
<ul>
<li>des erreurs d\\\\u2019enregistrement, des pertes d\\\\u2019information, entra\\\\u00eenant la n\\\\u00e9cessit\\\\u00e9 de remplacer une ou plusieurs valeurs de coordonn\\\\u00e9es par des intervalles de valeurs (par exemple, une valeur X est manquante pour un objet et est remplac\\\\u00e9e par les valeurs X minimale et maximale du carr\\\\u00e9 o\\\\u00f9 cet objet a \\\\u00e9t\\\\u00e9 trouv\\\\u00e9) ;</li>
<li>le choix de la m\\\\u00e9thode (par exemple, lors d\\\\u2019une fouille r\\\\u00e9alis\\\\u00e9e et enregistr\\\\u00e9e \\\\u00e0 l\\\\u2019aide de passes de profondeur arbitraire ou, encore, des objets issus de refus de tamis, etc.)</li>
</ul>
<p>Dans tous ces cas, les localisations \\\\u00e0 traiter sont vagues, lorsque la localisation des objets n\\\\u2019est pas connue univoquement mais se situe quelque part au sein d\\\\u2019intervalles de coordonn\\\\u00e9es. La localisation vague peut concerner une, deux, ou trois dimensions spatiales (respectivement les coordonn\\\\u00e9es x, y et z).</p>
<p>Cette fonctionnalit\\\\u00e9 peut \\\\u00e9galement \\\\u00eatre employ\\\\u00e9e pour tenir compte de l\\\\u2019impr\\\\u00e9cision des instruments de relev\\\\u00e9.</p>
<h3 id=lignes>Lignes</h3>
<p>Les lignes sont des g\\\\u00e9om\\\\u00e9tries utiles pour repr\\\\u00e9senter des relations. En arch\\\\u00e9ologie, il peut s\\\\u2019agir de relations de <a href=#remontages>remontages</a> entre fragments d\\\\u2019objets, d\\\\u2019orientation (<a href=#mesures-de-fabrique>mesures de fabrique</a>), etc. Dans <code>archeoViz</code>, les lignes sont g\\\\u00e9n\\\\u00e9r\\\\u00e9es \\\\u00e0 partir des donn\\\\u00e9es charg\\\\u00e9es comme donn\\\\u00e9es de remontage, soit \\\\u00e0 partir de l\\\\u2019onglet \\\\u201cDonn\\\\u00e9es\\\\u201d, soit avec le param\\\\u00e8tre <code>refits.df</code> de la fonction <code>archeoViz()</code>.</p>
<h3 id=surfaces>Surfaces</h3>
<p>Les surfaces sont des g\\\\u00e9om\\\\u00e9tries utiles pour repr\\\\u00e9senter des niveaux de sol, des tranch\\\\u00e9es, des fosses, etc. Dans <code>archeoViz</code>, ceci peut \\\\u00eatre r\\\\u00e9alis\\\\u00e9, en d\\\\u00e9finissant un sous-ensemble de points r\\\\u00e9sumant la surface souhait\\\\u00e9e, puis en affichant l\\\\u2019<a href=#enveloppes-convexes>enveloppe convexe</a> de ce sous-ensemble.</p>
<h2 id=remontages-et-mesures-de-fabrique>Remontages et mesures de fabrique</h2>
<h3 id=remontages>Remontages</h3>
<p>Les remontages sont g\\\\u00e9n\\\\u00e9ralement enregistr\\\\u00e9s de deux mani\\\\u00e8res par les arch\\\\u00e9ologues:</p>
<ol>
<li>par ensemble d\\\\u2019objets remontant entre eux: en employant alors un tableau \\\\u00e0 deux colonnes o\\\\u00f9 une ligne correspond \\\\u00e0 un <strong>objet</strong>. La premi\\\\u00e8re colonne contient l\\\\u2019identifiant unique de l\\\\u2019objet et la deuxi\\\\u00e8me colonne contient l\\\\u2019identifiant unique de l\\\\u2019ensemble d\\\\u2019objets remontant entre eux auquel l\\\\u2019objet consid\\\\u00e9r\\\\u00e9 appartient.</li>
<li>par relation de remontage: en employant alors un tableau \\\\u00e0 deux colonnes o\\\\u00f9 une ligne correspond \\\\u00e0 une <strong>relation de remontage</strong>. La premi\\\\u00e8re colonne contient l\\\\u2019identifiant unique du premier objet et la deuxi\\\\u00e8me colonne contient l\\\\u2019identifiant unique du deuxi\\\\u00e8me objet.</li>
</ol>
<p>Bien que la seconde structure de donn\\\\u00e9e soit plus pr\\\\u00e9cise, c\\\\u2019est la premi\\\\u00e8re qui est le plus fr\\\\u00e9quemment employ\\\\u00e9e.</p>
<p>Ces deux structures de donn\\\\u00e9es sont trait\\\\u00e9es diff\\\\u00e9remment dans <code>archeoViz</code>:</p>
<ul>
<li>les ensembles d\\\\u2019objets remontant entre eux doivent \\\\u00eatre d\\\\u00e9crits dans une colonne sp\\\\u00e9cifique dans le tableau <code>objects.df</code> table (nomm\\\\u00e9e par ex. <code>object_refits</code>) et sont repr\\\\u00e9sent\\\\u00e9s par la couleur des points dans les visualisations (comme pour tout autre variable);</li>
<li>les relations de remontage doivent \\\\u00eatre d\\\\u00e9crits dans un tableau <code>refits.df</code> et sont visualis\\\\u00e9s par des segments reliant les objets li\\\\u00e9s par des relations de remontage.</li>
</ul>
<h3 id=mesures-de-fabrique>Mesures de fabrique</h3>
<p>Pour l\\\\u2019heure, <code>archeoViz</code> ne g\\\\u00e8re pas les mesures de fabrique \\\\u00e0 proprement dit. N\\\\u00e9anmoins, la proc\\\\u00e9dure employ\\\\u00e9e pour repr\\\\u00e9senter les remontages peut \\\\u00eatre adapt\\\\u00e9e et employ\\\\u00e9e pour repr\\\\u00e9senter les mesures de fabriques. Cela suppose toutefois de tordre la logique de la structure des donn\\\\u00e9es de la mani\\\\u00e8re suivante:</p>
<ul>
<li>en supposant que les mesures de fabriques ont \\\\u00e9t\\\\u00e9 enregistr\\\\u00e9es en prenant deux mesures de localisation par objet (au contraire, donc, de mesure d\\\\u2019orientation et de pendage),</li>
<li>des valeurs d\\\\u2019identifiants uniques <code>id</code> doivent \\\\u00eatre attribu\\\\u00e9es aux deux points, et</li>
<li>les deux localisations sont trait\\\\u00e9es comme s\\\\u2019il s\\\\u2019agissait d\\\\u2019une relation de remontage entre deux objets.</li>
</ul>
<p>Un exemple de cette m\\\\u00e9thode est visible <a href=https://analytics.huma-num.fr/archeoviz/shuidonggou2>ici</a>.</p>
<h2 id=formater-des-donn\\\\u00e9es>Formater des donn\\\\u00e9es</h2>
<p>Trois types de donn\\\\u00e9es peuvent \\\\u00eatre charg\\\\u00e9es dans <code>archeoViz</code>:</p>
<ul>
<li>un tableau \\\\u201cobjects\\\\u201d (requis), \\\\u00e0 propos des objets;</li>
<li>un tableau \\\\u201crefits\\\\u201d (optionnel), \\\\u00e0 propos des relations de remontage;</li>
<li>un tableau \\\\u201ctimeline\\\\u201d (optionnel), \\\\u00e0 propos des carr\\\\u00e9s du site et des ann\\\\u00e9es o\\\\u00f9 ils ont \\\\u00e9t\\\\u00e9 fouill\\\\u00e9s ou prospect\\\\u00e9s.</li>
</ul>
<p>Les tableaux doivent \\\\u00eatre au format CSV et la premi\\\\u00e8re ligne doit contenir les noms des variables (le symbole s\\\\u00e9parateur du CSV peut \\\\u00eatre d\\\\u00e9fini dans l\\\\u2019interface). Les contenus au format HTML sont autoris\\\\u00e9s. Cela permet notamment d\\\\u2019introduire r\\\\u00e9f\\\\u00e9rences vers des ressources compl\\\\u00e9mentaires du jeu de donn\\\\u00e9es (par exemple l\\\\u2019identifiant unique de l\\\\u2019objets dans une autre base de donn\\\\u00e9es, ou ceux de concepts d\\\\u2019ontologies employ\\\\u00e9s pour d\\\\u00e9crire l\\\\u2019objet, etc.).</p>
<p>Le formatage des donn\\\\u00e9es peut \\\\u00eatre r\\\\u00e9alis\\\\u00e9 :</p>
<ul>
<li>soit en utilisant un tableur sur votre machine permettant d\\\\u2019exporter des fichiers CSV;</li>
<li>ou, pour le tableau des objets, en utilisant l\\\\u2019interface de l\\\\u2019application <a href=https://aurelienroyer.shinyapps.io/Seahors/><em>SEAHORS</em></a> en chargeant vos donn\\\\u00e9es, d\\\\u00e9finissant les variables (onglet \\\\u201cLoad data\\\\u201d), puis en les exportant au format <code>archeoViz</code> (onglet \\\\u201cTable\\\\u201d / \\\\u201carcheoViz exports\\\\u201d). Il est \\\\u00e9galement possible de les transf\\\\u00e9rer directement \\\\u00e0 une instance <code>archeoViz</code> en ligne.</li>
</ul>
<h3 id=tableau-des-objets>Tableau des objets</h3>
<p>Chaque ligne d\\\\u00e9crit un objet et doit comporter les variables obligatoires suivantes:</p>
<ul>
<li><strong>id</strong>: <em>valeur alphanum\\\\u00e9rique</em>, identifiant unique de l\\\\u2019objet</li>
<li><strong>xmin</strong>: <em>valeur num\\\\u00e9rique</em>, coordonn\\\\u00e9e de l\\\\u2019objet en axe X (en cm)</li>
<li><strong>ymin</strong>: <em>valeur num\\\\u00e9rique</em>, coordonn\\\\u00e9e de l\\\\u2019objet en axe Y (en cm)</li>
<li><strong>zmin</strong>: <em>valeur num\\\\u00e9rique</em>, coordonn\\\\u00e9e de l\\\\u2019objet en axe Z (valeur positive de profondeur en cm)</li>
<li><strong>layer</strong>: <em>valeur alphanum\\\\u00e9rique</em>, identifiant de la couche de l\\\\u2019objet</li>
<li><strong>object_type</strong>: <em>valeur alphanum\\\\u00e9rique</em>, cat\\\\u00e9gorie de l\\\\u2019objet</li>
</ul>
<p>De plus, des variables optionnelles sont possibles:</p>
<ul>
<li><strong>square_x</strong>: <em>valeur alphanum\\\\u00e9rique</em>, identifiant du carr\\\\u00e9 de l\\\\u2019objet en axe X</li>
<li><strong>square_y</strong>: <em>valeur alphanum\\\\u00e9rique</em>, identifiant du carr\\\\u00e9 de l\\\\u2019objet en axe Y</li>
<li><strong>year</strong>: <em>valeur num\\\\u00e9rique</em>, ann\\\\u00e9e de fouille de l\\\\u2019objet</li>
<li><strong>xmax</strong>: <em>valeur num\\\\u00e9rique</em>, lorsque la localisation de l\\\\u2019objet en X est comprise dans un intervalle de coordonn\\\\u00e9es</li>
<li><strong>ymax</strong>: <em>valeur num\\\\u00e9rique</em>, lorsque la localisation de l\\\\u2019objet en Y est comprise dans un intervalle de coordonn\\\\u00e9es</li>
<li><strong>zmax</strong>: <em>valeur num\\\\u00e9rique</em>, lorsque la localisation de l\\\\u2019objet en Z est comprise dans un intervalle de coordonn\\\\u00e9es</li>
<li><strong>object_edit</strong>: nombre non limit\\\\u00e9 de variables additionnelles d\\\\u00e9crivant l\\\\u2019objet (les noms de colonnes doivent commencer par <em>object_</em> et avoir des suffixes diff\\\\u00e9rents</li>
</ul>
<p>Les labels des carr\\\\u00e9s du carroyage:</p>
<ul>
<li>sont ordonn\\\\u00e9s alpha-num\\\\u00e9riquement;</li>
<li>ne sont pas affich\\\\u00e9s, afin d\\\\u2019\\\\u00e9viter des affichages erron\\\\u00e9s, si le nombre de labels ne correspond pas exactement au nombre total de carr\\\\u00e9s de 100cm pouvant \\\\u00eatre d\\\\u00e9finis dans l\\\\u2019intervalle des coordonn\\\\u00e9es minimales et maximales contenues dans les variables xmin et ymin;</li>
<li>peuvent \\\\u00eatre compl\\\\u00e9t\\\\u00e9s avec les param\\\\u00e8tres <code>add.x.square.labels</code> et <code>add.y.square.labels</code> de la fonction <code>archeoViz()</code> afin d\\\\u2019ajouter les labels manquants (respectivement, sur les axes X et Y du carroyage).</li>
</ul>
<h3 id=tableau-des-remontages>Tableau des remontages</h3>
<p>Un tableau \\\\u00e0 deux colonnes peut \\\\u00eatre charg\\\\u00e9 pour les remontages entre objets (format CSV). Chaque ligne doit contenir les identifiants uniques des deux objets li\\\\u00e9s \\\\u00e0 une relation de remontage (en correspondance avec les valeurs de la colonne <code>id</code> du tableau des objets).</p>
<h3 id=tableau-de-la-chronologie>Tableau de la chronologie</h3>
<p>Optionnellement, un tableau (CSV) peut \\\\u00eatre charg\\\\u00e9 \\\\u00e0 propos du d\\\\u00e9roul\\\\u00e9 de la fouille. Chaque ligne est relative \\\\u00e0 un carr\\\\u00e9 de fouille et indique quand ce carr\\\\u00e9 a \\\\u00e9t\\\\u00e9 fouill\\\\u00e9 ou prospect\\\\u00e9. Le tableau doit comporter les variables suivantes:</p>
<ul>
<li><strong>year</strong>: valeur num\\\\u00e9rique, ann\\\\u00e9e de fouille</li>
<li><strong>square_x</strong>: valeur alphanum\\\\u00e9rique, identifiant du carr\\\\u00e9 en axe X</li>
<li><strong>square_y</strong>: valeur alphanum\\\\u00e9rique, identifiant du carr\\\\u00e9 en axe Y</li>
</ul>
<h2 id=charger-des-donn\\\\u00e9es>Charger des donn\\\\u00e9es</h2>
<p>Quatre mani\\\\u00e8res permettent de charger des donn\\\\u00e9es dans <code>archeoViz</code>:</p>
<ol>
<li>en t\\\\u00e9l\\\\u00e9chargeant des tableaux \\\\u00e0 partir de l\\\\u2019onglet \\\\u201cDonn\\\\u00e9es\\\\u201d;</li>
<li>en g\\\\u00e9n\\\\u00e9rant des donn\\\\u00e9es al\\\\u00e9atoires dans l\\\\u2019onglet \\\\u201cDonn\\\\u00e9es\\\\u201d;</li>
<li>en chargeant des tableaux \\\\u00e0 travers les param\\\\u00e8tres de la fonction <code>archeoViz</code>, dans un environnement R;</li>
<li>en t\\\\u00e9l\\\\u00e9chargeant des tableaux via les param\\\\u00e8tres d\\\\u2019URL, lors de l\\\\u2019utilisation d\\\\u2019une instance <code>archeoViz</code> en ligne.</li>
</ol>
<h3 id=via-linterface-de-lapplication>Via l\\\\u2019interface de l\\\\u2019application</h3>
<p>Des tableaux pour trois types de donn\\\\u00e9es peuvent \\\\u00eatre charg\\\\u00e9s \\\\u00e0 partir de l\\\\u2019onglet \\\\u201cDonn\\\\u00e9es\\\\u201d. Le s\\\\u00e9parateur CSV (la virgule, le point-virgule ou la tabulation) et le caract\\\\u00e8re distinguant les d\\\\u00e9cimales dans les nombres (point ou virgule) peuvent \\\\u00eatre param\\\\u00e9tr\\\\u00e9s.</p>
<h3 id=par-g\\\\u00e9n\\\\u00e9ration-de-donn\\\\u00e9es-al\\\\u00e9atoires>Par g\\\\u00e9n\\\\u00e9ration de donn\\\\u00e9es al\\\\u00e9atoires</h3>
<p>\\\\u00c0 des fins de d\\\\u00e9monstration, il est possible d\\\\u2019employer des donn\\\\u00e9es g\\\\u00e9n\\\\u00e9r\\\\u00e9es al\\\\u00e9atoirement. D\\\\u00e9placer le curseur sur une valeur sup\\\\u00e9rieure \\\\u00e0 0, dans l\\\\u2019onglet \\\\u201cDonn\\\\u00e9es\\\\u201d, active cette fonctionnalit\\\\u00e9 (replacer le curseur sur 0 la d\\\\u00e9sactive). Des donn\\\\u00e9es d\\\\u2019objets, de remontage, et de chronologie de la fouille sont alors g\\\\u00e9n\\\\u00e9r\\\\u00e9s, permettant de tester toutes les fonctionnalit\\\\u00e9s d\\\\u2019<code>archeoViz</code>.</p>
<h3 id=via-les-param\\\\u00e8tres-de-la-fonction-r>Via les param\\\\u00e8tres de la fonction R</h3>
<p>La fonction de lancement d\\\\u2019<code>archeoViz()</code> peut \\\\u00eatre ex\\\\u00e9cut\\\\u00e9e sans d\\\\u00e9finir de param\\\\u00e8tres:</p>
<div class=sourceCode id=cb6><pre class=sourceCode r><code class=sourceCode r><a class=sourceLine id=cb6-1 data-line-number=1><span class=kw>archeoViz</span>()</a></code></pre></div>
<p>ou en employant les param\\\\u00e8tres <code>objects.df</code>, <code>refits.df</code>, <code>timeline.df</code> afin de charger des donn\\\\u00e9es relatives, respectivement, aux objets, aux remontages, et \\\\u00e0 la chronologie.</p>
<div class=sourceCode id=cb7><pre class=sourceCode r><code class=sourceCode r><a class=sourceLine id=cb7-1 data-line-number=1><span class=kw>archeoViz</span>(<span class=dt>objects.df =</span> <span class=ot>NULL</span>,  <span class=co># data.frame pour les objets</span></a>
<a class=sourceLine id=cb7-2 data-line-number=2>          <span class=dt>refits.df =</span> <span class=ot>NULL</span>,   <span class=co># data.frame optionnel pour les remontages</span></a>
<a class=sourceLine id=cb7-3 data-line-number=3>          <span class=dt>timeline.df =</span> <span class=ot>NULL</span>) <span class=co># data.frame optionnel pour la chronologie</span></a></code></pre></div>
<h3 id=via-les-param\\\\u00e8tres-dune-url>Via les param\\\\u00e8tres d\\\\u2019une URL</h3>
<p>L\\\\u2019URL d\\\\u2019une instance <code>archeoViz</code> en ligne peut \\\\u00eatre compl\\\\u00e9t\\\\u00e9e avec les param\\\\u00e8tres:</p>
<ul>
<li><code>objects.df=</code></li>
<li><code>refits.df=</code></li>
<li><code>timeline.df=</code></li>
</ul>
<p>prenant pour valeurs l\\\\u2019URL d\\\\u2019un fichier CSV respectant le format <code>archeoViz</code> d\\\\u00e9crit ci-dessus. Par exemple: <a href=https://analytics.huma-num.fr/archeoviz/fr/?objects.df=https://zenodo.org/record/8003880/files/bilzingsleben.csv class=uri>https://analytics.huma-num.fr/archeoviz/fr/?objects.df=https://zenodo.org/record/8003880/files/bilzingsleben.csv</a></p>
<h2 id=sous-s\\\\u00e9lection-de-donn\\\\u00e9es>Sous-s\\\\u00e9lection de donn\\\\u00e9es</h2>
<p>Apr\\\\u00e8s que les donn\\\\u00e9es soient charg\\\\u00e9es, des sous-s\\\\u00e9lections peuvent \\\\u00eatre r\\\\u00e9alis\\\\u00e9es en employant les options du menu gauche de l\\\\u2019interface. Plusieurs param\\\\u00e8tres sont possibles: le mode de localisation, les cat\\\\u00e9gories des objets, et la d\\\\u00e9finition de sous-groupes de donn\\\\u00e9es.</p>
<h3 id=par-mode-de-localisation>Par mode de localisation</h3>
<p>Si tous les objets ont des localisation soit exactes soit vagues, aucune option n\\\\u2019est propos\\\\u00e9e. Par contre, le jeu de donn\\\\u00e9es comprend des localisations des deux types, alors il est possible de n\\\\u2019en s\\\\u00e9lectionner qu\\\\u2019un type ou les deux.</p>
<h3 id=par-couche-ou-cat\\\\u00e9gorie-dobjet>Par couche ou cat\\\\u00e9gorie d\\\\u2019objet</h3>
<p>Des sous-groupes de donn\\\\u00e9es peuvent \\\\u00eatre d\\\\u00e9finies de deux mani\\\\u00e8res: soit par couche ou en fonction de la variable \\\\u201cobject_\\\\u201d s\\\\u00e9lectionn\\\\u00e9e. Cette option d\\\\u00e9termine l\\\\u2019application des couleurs dans les graphiques 3D et 2D et les sous-groupes de donn\\\\u00e9es auxquels sont appliqu\\\\u00e9s les calculs de surface de r\\\\u00e9gression et d\\\\u2019enveloppes convexes. Des sous-ensembles de donn\\\\u00e9es peuvent \\\\u00eatre d\\\\u00e9finis \\\\u00e0 partir des cat\\\\u00e9gories des objets, en employant les champs \\\\u201cVariable\\\\u201d et \\\\u201cValeurs\\\\u201d. Apr\\\\u00e8s que l\\\\u2019une des variables ait \\\\u00e9t\\\\u00e9 s\\\\u00e9lectionn\\\\u00e9e (\\\\u201cobject_type\\\\u201d ou une autre \\\\u201cobject_\\\\u201d variable possible), ses valeurs apparaissent en dessous et peuvent \\\\u00eatre s\\\\u00e9lectionn\\\\u00e9es en cochant les items. La s\\\\u00e9lection doit \\\\u00eatre valid\\\\u00e9e en cliquant sur le bouton \\\\u201cValider\\\\u201d. Cette s\\\\u00e9lection d\\\\u00e9termine les donn\\\\u00e9es qui seront pr\\\\u00e9sent\\\\u00e9es dans les graphiques et tableaux.</p>
<h2 id=visualisations-interactives>Visualisations interactives</h2>
<h3 id=g\\\\u00e9n\\\\u00e9ralit\\\\u00e9s>G\\\\u00e9n\\\\u00e9ralit\\\\u00e9s</h3>
<p>Les visualisations dans les onglets \\\\u201cVue 3D\\\\u201d, \\\\u201cCarte\\\\u201d, \\\\u201cSection X\\\\u201d et \\\\u201cSection Y\\\\u201d sont g\\\\u00e9n\\\\u00e9r\\\\u00e9es \\\\u00e0 l\\\\u2019aide de la librairie <a href=https://CRAN.R-project.org/package=plotly/><code>plotly</code></a>. Toutes ces visualisations sont dynamiques et sont surmont\\\\u00e9es d\\\\u2019une barre de menu comportant plusieurs options (g\\\\u00e9n\\\\u00e9rer un fichier image, zoomer, d\\\\u00e9placer le point de vue, etc.). Davantage de d\\\\u00e9tails sont disponibles sur le <a href=http://plotly.github.io/getting-to-know-the-plotly-modebar/>site de <code>plotly</code></a>.</p>
<p>Cliquer sur un item de la l\\\\u00e9gende modifie l\\\\u2019affichage:</p>
<ul>
<li>un simple clic sur un item active/d\\\\u00e9sactive son affichage;</li>
<li>un double clic sur un item limite l\\\\u2019affichage \\\\u00e0 cet item seul (un autre double clic annule cette s\\\\u00e9lection).</li>
</ul>
<p>Cette fonctionnalit\\\\u00e9 permet de d\\\\u00e9finir les couches devant \\\\u00eatre affich\\\\u00e9es. De plus, la taille des points peut \\\\u00eatre ajust\\\\u00e9e, ainsi que l\\\\u2019affichage ou non des relations de remontage.</p>
<p>Enfin, cliquer sur un point active l\\\\u2019affichage d\\\\u2019informations \\\\u00e0 son sujet dans le tableau pr\\\\u00e9sent sous les visualisations.</p>
<h3 id=visualisation-de-lincertitude-spatiale>Visualisation de l\\\\u2019incertitude spatiale</h3>
<p>Dans <code>archeoViz</code>, une distinction est faite entre les localisations exactes (donn\\\\u00e9es sous la forme de coordonn\\\\u00e9es x, y, z) et les localisations vagues (donn\\\\u00e9es sous la forme d\\\\u2019intervalles de coordonn\\\\u00e9es). Il est possible d\\\\u2019afficher Les deux types de localisations peuvent \\\\u00eatre visualis\\\\u00e9es. Les incertitudes des localisations peuvent \\\\u00eatre rendues en repr\\\\u00e9sentant les objets non pas comme des points mais comme des lignes, des plans, ou des volumes (si des intervalles de coordonn\\\\u00e9es sont pr\\\\u00e9cis\\\\u00e9s pour, respectivement, une, deux ou trois dimensions spatiales). Cette derni\\\\u00e8re option est gourmande en ressources, l\\\\u2019appliquer \\\\u00e0 un nombre important d\\\\u2019objets peut ralentir consid\\\\u00e9rablement l\\\\u2019application.</p>
<h3 id=sorties-graphiques>Sorties graphiques</h3>
<p>Plusieurs sorties graphiques peuvent \\\\u00eatre g\\\\u00e9n\\\\u00e9r\\\\u00e9es dans <code>archeoViz</code>.</p>
<ul>
<li>Les visualisations en 3D, en plan et en sections peuvent \\\\u00eatre export\\\\u00e9es:
<ul>
<li>au format SVG, en cliquant sur l\\\\u2019ic\\\\u00f4ne \\\\u201cappareil photo\\\\u201d de la barre de menu s\\\\u2019affichant au-dessus des visualisations;</li>
<li>en format HTML interactif, en cliquant sur le bouton \\\\u201cExporter\\\\u201d dans la colonne droite de l\\\\u2019interface.</li>
</ul></li>
<li>Le plan miniature dans les onglets \\\\u201cSection X\\\\u201d et \\\\u201cSection Y\\\\u201d peut \\\\u00eatre export\\\\u00e9 au format SVG en cliquant sur le lien \\\\u201cT\\\\u00e9l\\\\u00e9charger plan\\\\u201d.</li>
<li>Le plan de la chronologie des fouilles peut \\\\u00eatre t\\\\u00e9l\\\\u00e9charg\\\\u00e9 au format SVG en cliquant sur le bouton \\\\u201cT\\\\u00e9l\\\\u00e9charger\\\\u201d.</li>
</ul>
<h2 id=statistiques-spatiales>Statistiques spatiales</h2>
<p><code>archeoViz</code> comporte quelques fonctionnalit\\\\u00e9s d\\\\u2019analyse spatiale, destin\\\\u00e9es \\\\u00e0 usage simple et exploratoire.</p>
<h3 id=surfaces-de-r\\\\u00e9gression>Surfaces de r\\\\u00e9gression</h3>
<p>Dans l\\\\u2019onglet \\\\u201cVue 3D\\\\u201d, cliquer sur \\\\u201cCalculer les surfaces\\\\u201d puis \\\\u201cValider\\\\u201d affiche les surfaces de r\\\\u00e9gression associ\\\\u00e9es \\\\u00e0 chaque sous-ensemble de points (couche), comportant au moins 100 points. Les surfaces sont calcul\\\\u00e9es gr\\\\u00e2ce au mod\\\\u00e8le additif g\\\\u00e9n\\\\u00e9ralis\\\\u00e9 impl\\\\u00e9ment\\\\u00e9 dans le package <a href=https://CRAN.R-project.org/package=mgcv><code>mgcv</code></a>.</p>
<h3 id=enveloppes-convexes>Enveloppes convexes</h3>
<p>Dans l\\\\u2019onglet \\\\u201cVue 3D\\\\u201d, l\\\\u2019affichage des enveloppes convexes se r\\\\u00e9alise en:</p>
<ol>
<li>cochant la case \\\\u201cEnveloppes convexes\\\\u201d,</li>
<li>s\\\\u00e9lectionnant, dans le menu qui s\\\\u2019affiche, les sous-ensembles de points pour lesquels les enveloppes doivent \\\\u00eatre calcul\\\\u00e9es,</li>
<li>appuyant sur \\\\u201cValider\\\\u201d.</li>
</ol>
<p>Les enveloppes convexes associ\\\\u00e9es \\\\u00e0 chaque sous-ensemble de points comportant au moins 20 points sont alors affich\\\\u00e9es. Le calcul des enveloppes est r\\\\u00e9alis\\\\u00e9 avec le package <a href=https://CRAN.R-project.org/package=cxhull><code>cxhull</code></a>.</p>
<h3 id=estimation-2d-de-densit\\\\u00e9-par-noyau>Estimation 2D de densit\\\\u00e9 par noyau</h3>
<p>Dans l\\\\u2019onglet \\\\u201cPlan\\\\u201d, cocher la case \\\\u201cCalculer la densit\\\\u00e9\\\\u201d et cliquer sur \\\\u201cValider\\\\u201d g\\\\u00e9n\\\\u00e8re un plan comportant des lignes de contour repr\\\\u00e9sentant la densit\\\\u00e9 des points. La densit\\\\u00e9 peut \\\\u00eatre calcul\\\\u00e9e pour l\\\\u2019ensemble des points ou par couche (comportant au moins 30 points). L\\\\u2019estimation bidimensionnelle de densit\\\\u00e9 par noyau est calcul\\\\u00e9e avec la fonction <code>kde2d</code> du package <a href=https://CRAN.R-project.org/package=MASS><code>MASS</code></a> (\\\\u00e0 travers le package <a href=https://CRAN.R-project.org/package=ggplot2><code>ggplot2</code></a>).</p>
<h2 id=reproductibilit\\\\u00e9>Reproductibilit\\\\u00e9</h2>
<p><code>archeoViz</code> est, par d\\\\u00e9finition, une application interactive. Toutefois, plusieurs fonctionnalit\\\\u00e9s permettent de satisfaire les besoins de reproductibilit\\\\u00e9 et de communicabilit\\\\u00e9 des r\\\\u00e9sultats d\\\\u2019interactions avec l\\\\u2019application.</p>
<ul>
<li>La visualisation 3D est exportable dans un format interactif HTML <em>standalone</em>, tenant compte de la sous-s\\\\u00e9lection de donn\\\\u00e9es effectu\\\\u00e9e par l\\\\u2019utilisateur (dans le menu lat\\\\u00e9ral gauche).</li>
<li>Dans l\\\\u2019onglet \\\\u201cReproductibilit\\\\u00e9\\\\u201d, une commande R est g\\\\u00e9n\\\\u00e9r\\\\u00e9e dynamiquement, tenant compte du param\\\\u00e9trage de l\\\\u2019application r\\\\u00e9alis\\\\u00e9 par l\\\\u2019utilisateur en agissant avec l\\\\u2019interface graphique.</li>
<li>Dans un usage plus avanc\\\\u00e9, les param\\\\u00e8tres d\\\\u2019URL permettent de param\\\\u00e9trer une instance en ligne de l\\\\u2019application avec des param\\\\u00e8tres d\\\\u2019int\\\\u00e9r\\\\u00eat et de la communiquer l\\\\u2019ensemble en envoyant l\\\\u2019URL \\\\u00e0 un tiers.</li>
</ul>
<h2 id=exports-depuis-et-vers-des-applications-tierces>Exports depuis et vers des applications tierces</h2>
<p><code>archeoViz</code> a \\\\u00e9t\\\\u00e9 con\\\\u00e7u comme l\\\\u2019une des pi\\\\u00e8ces d\\\\u2019un \\\\u00e9cosyst\\\\u00e8me num\\\\u00e9rique d\\\\u00e9centralis\\\\u00e9 pour les donn\\\\u00e9es et analyses arch\\\\u00e9ologiques. Dans cette approche, les fonctionnalit\\\\u00e9s sont distribu\\\\u00e9es entre de multiples applications interconenct\\\\u00e9es, plut\\\\u00f4t que concentr\\\\u00e9es dans un petit nombre de syst\\\\u00e8mes. Par cons\\\\u00e9quent, les donn\\\\u00e9es peuvent \\\\u00eatre export\\\\u00e9es et import\\\\u00e9es entre <code>archeoViz</code> et d\\\\u2019autres applications web. Notez que, jusqu\\\\u2019ici, les fonctionnalit\\\\u00e9s d\\\\u2019export ne sont disponibles que dans le cas d\\\\u2019instances <code>archeoViz</code> d\\\\u00e9ploy\\\\u00e9es en ligne.</p>
<h3 id=export-depuis-archeoviz>Export depuis archeoViz</h3>
<p>\\\\u00c0 partir de l\\\\u2019onglet \\\\u201cStatistiques\\\\u201d d\\\\u2019<code>archeoViz</code>, il est possible d\\\\u2019exporter les donn\\\\u00e9es vers d\\\\u2019autres applications en ligne. La possibilit\\\\u00e9 de certains exports est conditionn\\\\u00e9e au type de donn\\\\u00e9es ou \\\\u00e0 la satisfaction d\\\\u2019un nombre minimal de valeurs.</p>
<p><a href=https://analytics.huma-num.fr/Sebastien.Plutniak/archeofrag><em>archeofrag</em></a> est un package R et une application web permettant d\\\\u2019estimer et d\\\\u2019\\\\u00e9valuer les distinctions entre unit\\\\u00e9s spatiales arch\\\\u00e9ologiques (par ex. des couches) \\\\u00e0 partir de l\\\\u2019analyse des relations de remontage entre fragments d\\\\u2019objets. La version web de l\\\\u2019application int\\\\u00e8gre des m\\\\u00e9thodes pour mesurer la coh\\\\u00e9sion et le m\\\\u00e9lange d\\\\u2019unit\\\\u00e9s spatiales et de les comparer \\\\u00e0 des donn\\\\u00e9es simul\\\\u00e9es. Lorsqu\\\\u2019une instance d\\\\u2019<code>archeoViz</code> est execut\\\\u00e9e avec des <a href=#tableau-des-remontages>donn\\\\u00e9es de remontage</a>, alors ces donn\\\\u00e9es peuvent \\\\u00eatre export\\\\u00e9es vers <code>archeofrag</code>. Cf. cet <a href=https://analytics.huma-num.fr/archeoviz/grotte16>exemple</a>.</p>
<p>Le <a href=https://analytics.huma-num.fr/ModAthom/seriograph/><em>Seriograph</em></a> est une application web (inclues dans la collection <a href=https://spartaas.gitpages.huma-num.fr/r-package/>SPARTAAS</a>) pour visualiser des changements quantitatifs dans la distribution de types d\\\\u2019artefacts dans des s\\\\u00e9ries ordonn\\\\u00e9es ou non-ordonn\\\\u00e9es d\\\\u2019unit\\\\u00e9s spatiales. Lorsqu\\\\u2019une instance d\\\\u2019<code>archeoViz</code> est execut\\\\u00e9e avec un jeu de donn\\\\u00e9es contenant au moins 2 valeurs diff\\\\u00e9rentes pour la variable <code>layers</code> et 2 valeurs diff\\\\u00e9rentes pour la variable <code>object_type</code>, alors ces donn\\\\u00e9es peuvent \\\\u00eatre analys\\\\u00e9es avec l\\\\u2019application <code>Seriograph</code>. Cf. cet <a href=https://analytics.huma-num.fr/archeoviz/poeymau>exemple</a>.</p>
<p><a href=https://app.ptm.huma-num.fr/amado/><em>Amado online</em></a> est une application en ligne permettant d\\\\u2019analyser des tableaux de contingence. Il est possible d\\\\u2019exporter un tableau croisant les valeurs de la variable s\\\\u00e9lectionn\\\\u00e9e (par d\\\\u00e9faut, <code>object_type</code>) et les valeurs de la variable <code>layer</code>. <code>Amado</code> permet de r\\\\u00e9ordonner manuellement les lignes et les colonnes et d\\\\u2019ex\\\\u00e9cuter des s\\\\u00e9riations et classifications automatiques. Cf. cet <a href=https://analytics.huma-num.fr/archeoviz/tai>exemple</a>.</p>
<p><a href=https://cran.r-project.org/package=explor><em>explor</em></a> est une application R Shiny / package R permettant d\\\\u2019explorer interactivement les r\\\\u00e9sultats d\\\\u2019analyses multidimensionnelles. <code>explor</code> a \\\\u00e9t\\\\u00e9 adapt\\\\u00e9 pour ex\\\\u00e9cuter une analyse factorielle des correspondances sur un tableau de contingence croisant les valeurs de la variable s\\\\u00e9lectionn\\\\u00e9e (par d\\\\u00e9faut, <code>object_type</code>) et les valeurs de la variable <code>layer</code>. Cf. cet <a href=https://analytics.huma-num.fr/archeoviz/tai>exemple</a>.</p>
<h3 id=import-vers-archeoviz>Import vers archeoViz</h3>
<p><a href=https://aurelienroyer.shinyapps.io/Seahors/><em>SEAHORS</em></a> est une application web et un package R permettant de visualiser la distribution spatiale d\\\\u2019objets arch\\\\u00e9ologiques. Comme indiqu\\\\u00e9 <a href=#formater-des-donn\\\\u00e9es>ci dessus</a>, <em>SEAHORS</em> peut \\\\u00eatre employ\\\\u00e9 pour importer, transformer, et transmettre un jeu de donn\\\\u00e9e \\\\u00e0 une instance en ligne d\\\\u2019<code>archeoViz</code>.</p>
<h2 id=param\\\\u00e8tres-avanc\\\\u00e9s>Param\\\\u00e8tres avanc\\\\u00e9s</h2>
<p>La fonction <code>archeoViz()</code> admet de nombreux param\\\\u00e8tres optionnels, relatifs aux:</p>
<ul>
<li>donn\\\\u00e9es \\\\u00e0 charger (trait\\\\u00e9 <a href=#par-param\\\\u00e9trage-de-la-fonction>ci-dessus</a>),</li>
<li>contenu de la page d\\\\u2019accueil (trait\\\\u00e9 <a href=#d\\\\u00e9ploy\\\\u00e9e>ci-dessus</a>),</li>
<li><a href=#carroyage>carroyage</a>,</li>
<li><a href=#pr\\\\u00e9-s\\\\u00e9lection-des-param\\\\u00e8tres>pr\\\\u00e9-param\\\\u00e8trage</a> des param\\\\u00e8tres pouvant \\\\u00eatre d\\\\u00e9finis dans l\\\\u2019interface graphique,</li>
<li><a href=#affichage-r\\\\u00e9actif-des-visualisations>comportement r\\\\u00e9actif</a> de l\\\\u2019application \\\\u00e0 propos du calcul et de l\\\\u2019affichage des visualisations.</li>
<li><a href=#export-html>export HTML</a>.</li>
</ul>
<!-- end list -->

<div class=sourceCode id=cb8><pre class=sourceCode r><code class=sourceCode r><a class=sourceLine id=cb8-1 data-line-number=1><span class=kw>archeoViz</span>(<span class=dt>objects.df=</span><span class=ot>NULL</span>, <span class=dt>refits.df=</span><span class=ot>NULL</span>, <span class=dt>timeline.df=</span><span class=ot>NULL</span>,</a>
<a class=sourceLine id=cb8-2 data-line-number=2>          <span class=dt>title=</span><span class=ot>NULL</span>, <span class=dt>home.text=</span><span class=ot>NULL</span>, <span class=dt>lang=</span><span class=st>&quot;en&quot;</span>, <span class=dt>set.theme=</span><span class=st>&quot;cosmo&quot;</span>,</a>
<a class=sourceLine id=cb8-3 data-line-number=3>          <span class=dt>square.size =</span> <span class=dv>100</span>, <span class=dt>reverse.axis.values =</span> <span class=ot>NULL</span>, <span class=dt>reverse.square.names =</span> <span class=ot>NULL</span>,</a>
<a class=sourceLine id=cb8-4 data-line-number=4>          <span class=dt>add.x.square.labels =</span> <span class=ot>NULL</span>, <span class=dt>add.y.square.labels =</span> <span class=ot>NULL</span>,</a>
<a class=sourceLine id=cb8-5 data-line-number=5>          <span class=dt>class.variable =</span> <span class=ot>NULL</span>, <span class=dt>class.values =</span> <span class=ot>NULL</span>,</a>
<a class=sourceLine id=cb8-6 data-line-number=6>          <span class=dt>default.group =</span> <span class=st>&quot;by.layer&quot;</span>, <span class=dt>location.mode =</span> <span class=ot>NULL</span>,</a>
<a class=sourceLine id=cb8-7 data-line-number=7>          <span class=dt>map.z.val =</span> <span class=ot>NULL</span>, <span class=dt>map.density =</span> <span class=st>&quot;no&quot;</span>, <span class=dt>map.refits =</span> <span class=ot>NULL</span>,</a>
<a class=sourceLine id=cb8-8 data-line-number=8>          <span class=dt>plot3d.ratio =</span> <span class=dv>1</span>, <span class=dt>plot3d.hulls =</span> <span class=ot>FALSE</span>, <span class=dt>hulls.class.values =</span> <span class=ot>NULL</span>, </a>
<a class=sourceLine id=cb8-9 data-line-number=9>          <span class=dt>plot3d.surfaces =</span> <span class=ot>NULL</span>, <span class=dt>plot3d.refits =</span> <span class=ot>NULL</span>, <span class=dt>point.size =</span> <span class=dv>2</span>,</a>
<a class=sourceLine id=cb8-10 data-line-number=10>          <span class=dt>sectionX.x.val =</span> <span class=ot>NULL</span>, <span class=dt>sectionX.y.val =</span> <span class=ot>NULL</span>, <span class=dt>sectionX.refits =</span> <span class=ot>NULL</span>, </a>
<a class=sourceLine id=cb8-11 data-line-number=11>          <span class=dt>sectionY.x.val =</span> <span class=ot>NULL</span>, <span class=dt>sectionY.y.val =</span> <span class=ot>NULL</span>, <span class=dt>sectionY.refits =</span> <span class=ot>NULL</span>,</a>
<a class=sourceLine id=cb8-12 data-line-number=12>          <span class=dt>camera.center =</span> <span class=kw>c</span>(<span class=dv>0</span>, <span class=dv>0</span>, <span class=dv>0</span>), <span class=dt>camera.eye =</span> <span class=kw>c</span>(<span class=fl>1.25</span>, <span class=fl>1.25</span>, <span class=fl>1.25</span>),</a>
<a class=sourceLine id=cb8-13 data-line-number=13>          <span class=dt>run.plots =</span> <span class=ot>FALSE</span>, <span class=dt>html.export =</span> <span class=ot>TRUE</span>, <span class=dt>table.export =</span><span class=ot>TRUE</span></a>
<a class=sourceLine id=cb8-14 data-line-number=14>          )</a></code></pre></div>
<h3 id=carroyage>Carroyage</h3>
<div class=sourceCode id=cb9><pre class=sourceCode r><code class=sourceCode r><a class=sourceLine id=cb9-1 data-line-number=1><span class=kw>archeoViz</span>(<span class=dt>square.size =</span> <span class=dv>100</span>,</a>
<a class=sourceLine id=cb9-2 data-line-number=2>          <span class=dt>reverse.axis.values =</span> <span class=ot>NULL</span>, <span class=dt>reverse.square.names =</span> <span class=ot>NULL</span>,</a>
<a class=sourceLine id=cb9-3 data-line-number=3>          <span class=dt>add.x.square.labels =</span> <span class=ot>NULL</span>, <span class=dt>add.y.square.labels =</span> <span class=ot>NULL</span></a>
<a class=sourceLine id=cb9-4 data-line-number=4>          )</a></code></pre></div>
<ul>
<li><strong>square.size</strong> : num\\\\u00e9rique. Taille (longueur et largeur) en centim\\\\u00e8tre des carr\\\\u00e9s du carroyage. La valeur par d\\\\u00e9faut est 100 cm.</li>
<li><strong>reverse.axis.values</strong> : caract\\\\u00e8res. Nom de l\\\\u2019axe ou des axes \\\\u00e0 inverser (une combinaison de \\\\u2018x\\\\u2019, \\\\u2018y\\\\u2019, \\\\u2018z\\\\u2019).</li>
<li><strong>reverse.square.names</strong> : caract\\\\u00e8res. Nom de l\\\\u2019axe ou des axes pour lesquels inverser l\\\\u2019ordre des labels de carr\\\\u00e9s (une combinaison de \\\\u2018x\\\\u2019, \\\\u2018y\\\\u2019, \\\\u2018z\\\\u2019).</li>
<li><strong>add.x.square.labels</strong> : caract\\\\u00e8res. Labels de carr\\\\u00e9s additionnels pour l\\\\u2019axe \\\\u2018x\\\\u2019.</li>
<li><strong>add.y.square.labels</strong> : caract\\\\u00e8res. Labels de carr\\\\u00e9s additionnels pour l\\\\u2019axe \\\\u2018y\\\\u2019.</li>
</ul>
<h3 id=pr\\\\u00e9-s\\\\u00e9lection-des-param\\\\u00e8tres>Pr\\\\u00e9-s\\\\u00e9lection des param\\\\u00e8tres</h3>
<div class=sourceCode id=cb10><pre class=sourceCode r><code class=sourceCode r><a class=sourceLine id=cb10-1 data-line-number=1><span class=kw>archeoViz</span>(<span class=dt>class.variable =</span> <span class=ot>NULL</span>, <span class=dt>class.values =</span> <span class=ot>NULL</span>,</a>
<a class=sourceLine id=cb10-2 data-line-number=2>          <span class=dt>default.group =</span> <span class=st>&quot;by.layer&quot;</span>, <span class=dt>location.mode =</span> <span class=ot>NULL</span>,</a>
<a class=sourceLine id=cb10-3 data-line-number=3>          <span class=dt>map.z.val =</span> <span class=ot>NULL</span>, <span class=dt>map.density =</span> <span class=st>&quot;no&quot;</span>, <span class=dt>map.refits =</span> <span class=ot>NULL</span>,</a>
<a class=sourceLine id=cb10-4 data-line-number=4>          <span class=dt>plot3d.hulls =</span> <span class=ot>NULL</span>, <span class=dt>plot3d.surfaces =</span> <span class=ot>NULL</span>, <span class=dt>plot3d.refits =</span> <span class=ot>NULL</span>,</a>
<a class=sourceLine id=cb10-5 data-line-number=5>          <span class=dt>sectionX.x.val =</span> <span class=ot>NULL</span>, <span class=dt>sectionX.y.val =</span> <span class=ot>NULL</span>, <span class=dt>sectionX.refits =</span> <span class=ot>NULL</span>, </a>
<a class=sourceLine id=cb10-6 data-line-number=6>          <span class=dt>sectionY.x.val =</span> <span class=ot>NULL</span>, <span class=dt>sectionY.y.val =</span> <span class=ot>NULL</span>, <span class=dt>sectionY.refits =</span> <span class=ot>NULL</span>,</a>
<a class=sourceLine id=cb10-7 data-line-number=7>          <span class=dt>camera.center =</span> <span class=ot>NULL</span>, <span class=dt>camera.eye =</span> <span class=ot>NULL</span></a>
<a class=sourceLine id=cb10-8 data-line-number=8>          )</a></code></pre></div>
<ul>
<li><strong>class.variable</strong>: caract\\\\u00e8res. Au lancement de l\\\\u2019application, nom de la variable \\\\u00e0 pr\\\\u00e9-s\\\\u00e9lectionner.</li>
<li><strong>class.values</strong>: caract\\\\u00e8res. Au lancement de l\\\\u2019application, nom des valeurs \\\\u00e0 pr\\\\u00e9-s\\\\u00e9lectionner.</li>
<li><strong>default.group</strong>: caract\\\\u00e8res. Au lancement de l\\\\u2019application, pr\\\\u00e9-s\\\\u00e9lection de la variable \\\\u00e0 employer pour grouper les donn\\\\u00e9es (soit \\\\u201cby.layer\\\\u201d ou \\\\u201cby.variable\\\\u201d).</li>
<li><strong>location.mode</strong>: caract\\\\u00e8res. Au lancement de l\\\\u2019application, pr\\\\u00e9-s\\\\u00e9lection du ou des modes de localisation \\\\u00e0 afficher (une combinaison des valeurs possibles \\\\u201cexact\\\\u201d, \\\\u201cfuzzy\\\\u201d, \\\\u201cshow.uncertainty\\\\u201d).</li>
<li><strong>map.z.val</strong>: num\\\\u00e9rique. Au lancement de l\\\\u2019application, valeurs minimale et maximale des coordonn\\\\u00e9es Z \\\\u00e0 pr\\\\u00e9s\\\\u00e9lectionner dans la visualisation en plan.</li>
<li><strong>map.density</strong>: caract\\\\u00e8res. Au lancement de l\\\\u2019application, calculer et afficher ou non les courbes de densit\\\\u00e9 dans la visualisation en plan (soit \\\\u201cno\\\\u201d, \\\\u201coverall\\\\u201d, ou \\\\u201cby.variable\\\\u201d).</li>
<li><strong>map.refits</strong>: TRUE ou FALSE. Afficher ou non les remontages dans la visualisation en plan.</li>
<li><strong>plot3d.hulls</strong>: TRUE ou FALSE. Au lancement de l\\\\u2019application, calculer et afficher ou non les enveloppes convexes dans la visualisation 3D.</li>
<li><strong>hulls.class.values</strong>: caract\\\\u00e8res. Au lancement de l\\\\u2019application, noms des sous-ensembles de points pour lesquels calculer les enveloppes convexes.</li>
<li><strong>plot3d.surfaces</strong>: TRUE ou FALSE. Au lancement de l\\\\u2019application, calculer et afficher ou non les surfaces de r\\\\u00e9gression dans la visualisation 3D.</li>
<li><strong>plot3d.refits</strong>: TRUE ou FALSE. Au lancement de l\\\\u2019application, afficher ou non les remontages dans la visualisation 3D.</li>
<li><strong>point.size</strong>: entier. Au lancement de l\\\\u2019application, taille des points dans les visualisations.</li>
<li><strong>sectionX.x.val</strong>: num\\\\u00e9rique. Au lancement de l\\\\u2019application, valeurs minimale et maximale des coordonn\\\\u00e9es X \\\\u00e0 pr\\\\u00e9s\\\\u00e9lectionner dans la visualisation en section X.</li>
<li><strong>sectionX.y.val</strong>: num\\\\u00e9rique. Au lancement de l\\\\u2019application, valeurs minimale et maximale des coordonn\\\\u00e9es Y \\\\u00e0 pr\\\\u00e9s\\\\u00e9lectionner dans la visualisation en section X.</li>
<li><strong>sectionX.refits</strong>: TRUE ou FALSE. Au lancement de l\\\\u2019application, afficher ou non les remontages dans la visualisation en section X.</li>
<li><strong>sectionY.x.val</strong>: num\\\\u00e9rique. Au lancement de l\\\\u2019application, valeurs minimale et maximale des coordonn\\\\u00e9es X \\\\u00e0 pr\\\\u00e9s\\\\u00e9lectionner dans la visualisation en section Y.</li>
<li><strong>sectionY.y.val</strong>: num\\\\u00e9rique. Au lancement de l\\\\u2019application, valeurs minimale et maximale des coordonn\\\\u00e9es Y \\\\u00e0 pr\\\\u00e9s\\\\u00e9lectionner dans la visualisation en section Y.</li>
<li><strong>sectionY.refits</strong>: TRUE ou FALSE. Au lancement de l\\\\u2019application, afficher ou non les remontages dans la visualisation en section Y.</li>
<li><strong>camera.center</strong>: num\\\\u00e9rique. Au lancement de l\\\\u2019application, coordonn\\\\u00e9es du point vers lequel la cam\\\\u00e9ra est orient\\\\u00e9e dans la visualisation 3D (valeurs par d\\\\u00e9faut: x=0, y=0, z=0).</li>
<li><strong>camera.eye</strong>: num\\\\u00e9rique. Au lancement de l\\\\u2019application, coordonn\\\\u00e9es de la position de la cam\\\\u00e9ra dans la visualisation 3D (valeurs par d\\\\u00e9faut: x=1.25, y=1.25, z=1.25).</li>
</ul>
<h3 id=affichage-r\\\\u00e9actif-des-visualisations>Affichage r\\\\u00e9actif des visualisations</h3>
<div class=sourceCode id=cb11><pre class=sourceCode r><code class=sourceCode r><a class=sourceLine id=cb11-1 data-line-number=1><span class=kw>archeoViz</span>(<span class=dt>run.plots =</span> <span class=ot>FALSE</span>)</a></code></pre></div>
<ul>
<li><strong>run.plots</strong>: TRUE ou FALSE. Si les visualisations doivent, ou non, \\\\u00eatre imm\\\\u00e9diatement calcul\\\\u00e9es et affich\\\\u00e9es (sans n\\\\u00e9cessiter de cliquer sur le bouton \\\\u201cRafra\\\\u00eechir\\\\u201d).</li>
</ul>
<h3 id=contr\\\\u00f4le-des-formats-dexport>Contr\\\\u00f4le des formats d\\\\u2019export</h3>
<ul>
<li><strong>html.export</strong>: TRUE ou FALSE. Afficher ou non les boutons permettant d\\\\u2019exporter les visualisations en format HTML interactif.</li>
<li><strong>table.export</strong>: TRUE ou FALSE. Permettre ou non le transfert des donn\\\\u00e9es \\\\u00e0 des <a href=#exports-depuis-et-vers-des-applications-tierces>applications tierces</a> dans l\\\\u2019onglet \\\\u201cStatistiques\\\\u201d.</li>
</ul>
<h3 id=param\\\\u00e8tres-url>Param\\\\u00e8tres URL</h3>
<p>Une instance <code>archeoViz</code> deploy\\\\u00e9e en ligne sur un serveur peut \\\\u00eatre param\\\\u00e9tr\\\\u00e9e en ajustant les param\\\\u00e8tres de l\\\\u2019URL. Les param\\\\u00e8tres support\\\\u00e9s comprennent:</p>
<ul>
<li><code>objects.df</code>, <code>refits.df</code>, <code>timeline.df</code></li>
<li><code>title</code>, <code>home.text</code></li>
<li><code>reverse.axis.values</code>, <code>reverse.square.names</code></li>
<li><code>square.size</code></li>
<li><code>add.x.square.labels</code>, <code>add.y.square.labels</code></li>
<li><code>class.variable</code>, <code>class.values</code></li>
<li><code>default.group</code></li>
<li><code>location.mode</code></li>
<li><code>map.density</code>, <code>map.refits</code></li>
<li><code>plot3d.hulls</code>, <code>plot3d.surfaces</code>, <code>plot3d.refits</code></li>
<li><code>sectionX.refits</code></li>
<li><code>sectionY.refits</code></li>
<li><code>run.plots</code></li>
</ul>
<p>(Les param\\\\u00e8tres suivants ne sont pas support\\\\u00e9s dans la version actuelle de l\\\\u2019application: <code>map.z.val</code>, <code>sectionX.x.val</code>, <code>sectionX.y.val</code>, <code>sectionY.x.val</code>, <code>sectionY.y.val</code>, <code>point.size</code>, <code>lang</code>, <code>set.theme</code>, <code>camera.center</code>, <code>camera.eye</code>, <code>html.export</code>, <code>table.export</code>.)</p>
<p>Les param\\\\u00e8tres doivent \\\\u00eatre \\\\u00e9cris en respectant la syntaxe URL (?param1=value&amp;param2=value2) et avoir le m\\\\u00eame type de valeurs que dans leur usage dans l\\\\u2019interface R. Par exemple, l\\\\u2019URL suivante lance une instance <code>archeoViz</code> \\\\u00e0 partir du tableau principal du jeu de donn\\\\u00e9es <a href=https://zenodo.org/record/8003880>Bilzingsleben</a>:</p>
<p><a href=https://analytics.huma-num.fr/archeoviz/en/?objects.df=https://zenodo.org/record/8003880/files/bilzingsleben.csv class=uri>https://analytics.huma-num.fr/archeoviz/en/?objects.df=https://zenodo.org/record/8003880/files/bilzingsleben.csv</a></p>
<p>Cette URL fait de m\\\\u00eame, mais inclut \\\\u00e9galement le tableau des remontages (param\\\\u00e8tre <code>&amp;refits.df=</code>) et active l\\\\u2019affichage imm\\\\u00e9diat des relations de remontage dans le graphique 3D et le plan:</p>
<p><a href=https://analytics.huma-num.fr/archeoviz/en/?map.refits=TRUE&amp;plot3d.refits=TRUE&amp;objects.df=https://zenodo.org/record/8003880/files/bilzingsleben.csv&amp;refits.df=https://zenodo.org/record/8003880/files/bilzingsleben-antlers-refits.csv class=uri>https://analytics.huma-num.fr/archeoviz/en/?map.refits=TRUE&amp;plot3d.refits=TRUE&amp;objects.df=https://zenodo.org/record/8003880/files/bilzingsleben.csv&amp;refits.df=https://zenodo.org/record/8003880/files/bilzingsleben-antlers-refits.csv</a></p>
<p>L\\\\u2019URL suivante lance le jeu de donn\\\\u00e9es Bilzingsleben, en pr\\\\u00e9-r\\\\u00e9glant l\\\\u2019application telle que:</p>
<ol>
<li>les points sont group\\\\u00e9s par variable (param\\\\u00e8tre <code>default.group</code>, avec la valeur <code>by.variable</code> plut\\\\u00f4t que <code>by.layer</code>)</li>
<li>ne s\\\\u00e9lectionne que les \\\\u201cAntlers\\\\u201d (param\\\\u00e8tre <code>class.values</code>)</li>
<li>red\\\\u00e9fini la taille des carr\\\\u00e9s du carroyage (param\\\\u00e8tre <code>square.size</code> 500 cm au lieu de la valeur par d\\\\u00e9faut 100cm)</li>
<li>active l\\\\u2019affichage imm\\\\u00e9diat des graphiques (param\\\\u00e8tre <code>run.plots</code>)</li>
<li>modifie le titre de la page (param\\\\u00e8tre <code>title</code>)</li>
<li>modifie le contenu de la page d\\\\u2019accueil, illustrant l\\\\u2019usage d\\\\u2019un simple balisage HTML (param\\\\u00e8tre <code>home.txt</code>)</li>
</ol>
<p><a href=https://analytics.huma-num.fr/archeoviz/en/?default.group=by.variable&amp;class.values=Antler&amp;square.size=500&amp;run.plots=TRUE&amp;title=Anters%20at%20Bilzingsleben&amp;home.text=Many%20%3Cb%3Eantlers%3C/b%3E&amp;objects.df=https://zenodo.org/record/8003880/files/bilzingsleben.csv>https://analytics.huma-num.fr/archeoviz/en/?default.group=by.variable&amp;class.values=Antler&amp;square.size=500&amp;run.plots=TRUE&amp;title=Antlers%20at%20Bilzingsleben&amp;home.text=Many%20<b>antlers</b>&amp;objects.df=https://zenodo.org/record/8003880/files/bilzingsleben.csv</a></p>
<p>\\\\u00c0 noter que les param\\\\u00e8tres <code>add.x.square.labels</code>, <code>add.y.square.labels</code>, <code>location.mode</code>, et <code>class.values</code>, qui admettent des valeurs simples ou multiples dans l\\\\u2019interface R (par ex. c(\\\\u201cvalue1\\\\u201d, \\\\u201cvalue2\\\\u201d)) n\\\\u2019admettent qu\\\\u2019une seule valeur lorsqu\\\\u2019employ\\\\u00e9 comme param\\\\u00e8tre d\\\\u2019URL (il s\\\\u2019agit d\\\\u2019une restriction li\\\\u00e9e \\\\u00e0 la syntaxe URL).</p>
<h1 id=remerciements>Remerciements</h1>
<p>L\\\\u2019application et le package <code>archeoViz</code> sont d\\\\u00e9velopp\\\\u00e9s et maintenus par S\\\\u00e9bastien Plutniak. Arthur Coulon, Sol\\\\u00e8ne Denis, Olivier Marlet, et Thomas Perrin ont test\\\\u00e9 et soutenu ce projet durant ses premi\\\\u00e8res \\\\u00e9tapes. Renata Araujo, Laura Coltofean, Sara Giardino, Julian Laabs et Nicolas Delsol ont traduit l\\\\u2019application respectivement en portugais, roumain, italien, allemand, et espagnol.</p>
<h1 id=r\\\\u00e9f\\\\u00e9rences-et-ressources>R\\\\u00e9f\\\\u00e9rences et ressources</h1>
<h2 id=logiciels>Logiciels</h2>
<ul>
<li>Plutniak, S\\\\u00e9bastien, Renata Araujo, Laura Coltofean, Nicolas Delsol, Sara Giardino, Julian Laabs. 2023. \\\\u201carcheoViz. Visualisation, Exploration, and Web Communication of Archaeological Spatial Data\\\\u201d. v1.3.2, DOI: <a href=https://doi.org/10.5281/zenodo.7460193>10.5281/zenodo.7460193</a>.</li>
<li>Plutniak, S\\\\u00e9bastien, Ana\\\\u00efs Vignoles. 2023. \\\\u201c<a href=https://hal.science/hal-04156271>The archeoViz Portal: Dissemination of Spatial Archaeological Datasets</a>\\\\u201d, portail web, <a href=https://analytics.huma-num.fr/archeoviz/home class=uri>https://analytics.huma-num.fr/archeoviz/home</a>.</li>
</ul>
<h2 id=articles>Articles</h2>
<ul>
<li>Plutniak, S\\\\u00e9bastien. Submitted. \\\\u201carcheoViz: an R package for the Visualisation, Exploration, and Web Communication of Archaeological Spatial Data\\\\u201d. <em>Journal of Open Source Software</em>.</li>
<li>Plutniak, S\\\\u00e9bastien. 2023. \\\\u201c<a href=https://www.prehistoire.org/offres/doc_inline_src/515/0-BSPF_2023_1_2e_partie_Correspondance_PLUTNIAK.pdf>Visualiser et explorer la distribution spatiale du mobilier arch\\\\u00e9ologique : l\\\\u2019application archeoViz et son portail web</a>\\\\u201d. <em>Bulletin de la Soci\\\\u00e9t\\\\u00e9 pr\\\\u00e9historique fran\\\\u00e7aise</em>, 120(1), p. 70-74.</li>
</ul>
<h2 id=pr\\\\u00e9sentations>Pr\\\\u00e9sentations</h2>
<ul>
<li>Plutniak, S\\\\u00e9bastien. 2023. \\\\u201c<a href=https://hal.science/hal-04146410>Fostering the Publication of Spatial Archaeological Data: a Decentralized Approach. The archeoViz Web Application and its Portal</a>\\\\u201d, support d\\\\u2019une pr\\\\u00e9sentation \\\\u00e0 l\\\\u2019University of Florida, Gainesville.</li>
<li>Plutniak, S\\\\u00e9bastien, Ana\\\\u00efs Vignoles. 2023. \\\\u201c<a href=https://hal.science/hal-04070444>L\\\\u2019application web / package archeoViz et son portail web. Une solution d\\\\u00e9centralis\\\\u00e9e d\\\\u2019\\\\u00e9ditorialisation de donn\\\\u00e9es arch\\\\u00e9ologiques spatialis\\\\u00e9es</a>, support d\\\\u2019une pr\\\\u00e9sentation \\\\u00e0 l\\\\u2019atelier SITRADA, Paris.</li>
</ul>
<h2 id=sites-web>Sites web</h2>
<ul>
<li>Le blog <em>archeoViz. Data visualization in archaeology. Re-use, visualization, dissemination of spatial data</em>: <a href=https://archeoviz.hypotheses.org class=uri>https://archeoviz.hypotheses.org</a></li>
</ul>
"

  
#  : es ----
guidelines.es <- "
<h1 id=archeoviz>archeoViz</h1>
<p><code>archeoViz</code> es una aplicaci\\\\u00f3n empaquetada de R Shiny para la <em>visualizaci\\\\u00f3n</em>, <em>exploraci\\\\u00f3n</em> y <em>comunicaci\\\\u00f3n</em> web de datos espaciales arqueol\\\\u00f3gicos. Incluye <em>visualizaciones</em> 3D y 2D interactivas, puede generar <em>secciones</em> transversales y <em>mapas</em> de los restos, y mostrar una l\\\\u00ednea de tiempo interactiva del trabajo en un sitio. Puede tambien ejecutar <em>estad\\\\u00edsticas espaciales</em> b\\\\u00e1sicas (casco convexo, superficies de regresi\\\\u00f3n, estimaci\\\\u00f3n de densidad de kernel 2D), as\\\\u00ed como <em>exportar datos</em> a otras aplicaciones en l\\\\u00ednea para realizar m\\\\u00e9todos m\\\\u00e1s complejos. <code>archeoViz</code> se puede usar localmente o implementar en un servidor, ya sea permitiendo que el usuario cargue datos a trav\\\\u00e9s de la interfaz o ejecutando la aplicaci\\\\u00f3n con un conjunto de datos espec\\\\u00edfico. La interfaz de la aplicaci\\\\u00f3n est\\\\u00e1 disponible en alem\\\\u00e1n, espa\\\\u00f1ol, italiano, ingl\\\\u00e9s, franc\\\\u00e9s, portugu\\\\u00e9s, y rumano. P\\\\u00e1gina web: <a href=https://archeoviz.hypotheses.org class=uri>https://archeoviz.hypotheses.org</a>.</p>
<ul>
<li><a href=#instalaci\\\\u00f3n><strong>Instalaci\\\\u00f3n</strong></a>
<ul>
<li><a href=#uso-local>Uso local</a></li>
<li><a href=#uso-distante>Uso distante</a></li>
<li><a href=#demonstraci\\\\u00f3n>Demonstraci\\\\u00f3n</a></li>
</ul></li>
<li><a href=#recomendaciones-comunitarias><strong>Recomendaciones comunitarias</strong></a>
<ul>
<li><a href=#reportar-errores>Reportar errores</a></li>
<li><a href=#sugerir-cambios>Sugerir cambios</a></li>
<li><a href=#traducci\\\\u00f3n>Traducci\\\\u00f3n</a></li>
</ul></li>
<li><a href=#uso><strong>Uso</strong></a>
<ul>
<li><a href=#informaci\\\\u00f3n-espacial-en-archeoviz>Informaci\\\\u00f3n espacial en archeoViz</a>
<ul>
<li><a href=#puntos-ubicaci\\\\u00f3n-exacta-objetos-trazados>Puntos, ubicaci\\\\u00f3n exacta: objetos trazados</a></li>
<li><a href=#puntos-ubicaci\\\\u00f3n-vaga-niveles-arbitr\\\\u00e1rios-baldes-objetos-tamizados-y-errores-de-registro>Puntos, ubicaci\\\\u00f3n vaga: niveles arbitr\\\\u00e1rios, baldes, objetos tamizados y errores de registro</a></li>
<li><a href=#l\\\\u00edneas>L\\\\u00edneas</a></li>
<li><a href=#superficies>Superficies</a></li>
</ul></li>
<li><a href=#remontajes-y-medici\\\\u00f3n-de-f\\\\u00e1brica>Remontajes y medici\\\\u00f3n de f\\\\u00e1brica</a>
<ul>
<li><a href=#remontajes>Remontajes</a></li>
<li><a href=#medici\\\\u00f3n-de-f\\\\u00e1brica>Medici\\\\u00f3n de f\\\\u00e1brica</a></li>
</ul></li>
<li><a href=#formato-de-datos>Formato de datos</a>
<ul>
<li><a href=#formatear-datos>Formatear datos</a></li>
<li><a href=#tabla-de-objetos>Tabla de objetos</a></li>
<li><a href=#tabla-de-remontajes>Tabla de remontajes</a></li>
<li><a href=#tabla-cronol\\\\u00f3gica>Tabla cronol\\\\u00f3gica</a></li>
</ul></li>
<li><a href=#cargar-datos>Cargar datos</a>
<ul>
<li><a href=#a-trav\\\\u00e9s-de-la-interfaz-de-la-aplicaci\\\\u00f3n>A trav\\\\u00e9s de la interfaz de la aplicaci\\\\u00f3n</a></li>
<li><a href=#generaci\\\\u00f3n-de-datos-aleatorios>Generaci\\\\u00f3n de datos aleatorios</a></li>
<li><a href=#a-trav\\\\u00e9s-de-los-par\\\\u00e1metros-de-la-funci\\\\u00f3n-r>A trav\\\\u00e9s de los par\\\\u00e1metros de la funci\\\\u00f3n R</a></li>
<li><a href=#a-trav\\\\u00e9s-de-par\\\\u00e1metros-de-url>A trav\\\\u00e9s de par\\\\u00e1metros de URL</a></li>
</ul></li>
<li><a href=#subconfiguraci\\\\u00f3n-de-datos>Subconfiguraci\\\\u00f3n de datos</a>
<ul>
<li><a href=#por-modo-de-ubicaci\\\\u00f3n>Por modo de ubicaci\\\\u00f3n</a></li>
<li><a href=#por-capa-o-categor\\\\u00eda-de-objeto>Por capa o categor\\\\u00eda de objeto</a></li>
</ul></li>
<li><a href=#visualizaci\\\\u00f3n-interactiva>Visualizaci\\\\u00f3n interactiva</a>
<ul>
<li><a href=#caracter\\\\u00edsticas-generales>Caracter\\\\u00edsticas generales</a></li>
<li><a href=#visualizaci\\\\u00f3n-de-la-incertidumbre-espacial>Visualizaci\\\\u00f3n de la incertidumbre espacial</a></li>
<li><a href=#salidas-gr\\\\u00e1ficas>Salidas gr\\\\u00e1ficas</a></li>
</ul></li>
<li><a href=#estad\\\\u00edsticas-espaciales>Estad\\\\u00edsticas espaciales</a>
<ul>
<li><a href=#superficies-de-regresi\\\\u00f3n>Superficies de regresi\\\\u00f3n</a></li>
<li><a href=#cascos-convexos>Cascos convexos</a></li>
<li><a href=#densidad-de-kernel-2d>Densidad de kernel 2D</a></li>
</ul></li>
</ul></li>
<li><a href=#reproducibilidad><strong>Reproducibilidad</strong></a></li>
<li><a href=#exportaciones-desde-y-hacia-aplicaciones-de-terceros><strong>Exportaciones desde y hacia aplicaciones de terceros</strong></a>
<ul>
<li><a href=#exportar-desde-archeoviz>Exportar desde archeoViz</a></li>
<li><a href=#importar-a-archeoviz>Importar a archeoViz</a></li>
</ul></li>
<li><a href=#par\\\\u00e1metros-avanzados><strong>Par\\\\u00e1metros avanzados</strong></a>
<ul>
<li><a href=#cuadr\\\\u00edcula>Cuadr\\\\u00edcula</a></li>
<li><a href=#preajuste-de-par\\\\u00e1metros>Preajuste de par\\\\u00e1metros</a></li>
<li><a href=#visualizaci\\\\u00f3n-de-gr\\\\u00e1ficos-reactivos>Visualizaci\\\\u00f3n de gr\\\\u00e1ficos reactivos</a></li>
<li><a href=#controlar-los-formatos-de-exportaci\\\\u00f3n>Controlar los formatos de exportaci\\\\u00f3n</a></li>
<li><a href=#par\\\\u00e1metros-de-url>Par\\\\u00e1metros de URL</a></li>
</ul></li>
<li><a href=#agradecimientos><strong>Agradecimientos</strong></a></li>
<li><a href=#referencias><strong>Referencias</strong></a>
<ul>
<li><a href=#software>Software</a></li>
<li><a href=#articulos>Articulos</a></li>
<li><a href=#presentationes>Presentationes</a></li>
<li><a href=#sitios-web>Sitios web</a></li>
</ul></li>
</ul>
<h1 id=instalaci\\\\u00f3n>Instalaci\\\\u00f3n</h1>
<p><code>archeoViz</code> se puede utilizar de dos maneras:</p>
<ul>
<li>localmente, en la m\\\\u00e1quina del usuario</li>
<li>de forma remota, despu\\\\u00e9s de implementar la aplicaci\\\\u00f3n en un servidor distante</li>
</ul>
<h2 id=uso-local>Uso local</h2>
<p>El paquete se puede instalar desde CRAN con:</p>
<div class=sourceCode id=cb1><pre class=sourceCode r><code class=sourceCode r><a class=sourceLine id=cb1-1 data-line-number=1><span class=kw>install.packages</span>(<span class=st>&quot;archeoViz&quot;</span>)</a></code></pre></div>
<p>La versi\\\\u00f3n de desarrollo est\\\\u00e1 disponible en <em>GitHub</em> y se puede instalar con:</p>
<div class=sourceCode id=cb2><pre class=sourceCode r><code class=sourceCode r><a class=sourceLine id=cb2-1 data-line-number=1><span class=co># install.packages(&quot;devtools&quot;)</span></a>
<a class=sourceLine id=cb2-2 data-line-number=2>devtools<span class=op>::</span><span class=kw>install_github</span>(<span class=st>&quot;sebastien-plutniak/archeoviz&quot;</span>)</a></code></pre></div>
<p>Luego, cargue el paquete e inicie la aplicaci\\\\u00f3n con:</p>
<div class=sourceCode id=cb3><pre class=sourceCode r><code class=sourceCode r><a class=sourceLine id=cb3-1 data-line-number=1><span class=kw>library</span>(archeoViz)</a>
<a class=sourceLine id=cb3-2 data-line-number=2><span class=kw>archeoViz</span>()</a></code></pre></div>
<h2 id=uso-distante>Uso distante</h2>
<p>Para implementar <code>archeoViz</code> en su servidor Shiny, primero descargue y descomprima el paquete:</p>
<div class=sourceCode id=cb4><pre class=sourceCode r><code class=sourceCode r><a class=sourceLine id=cb4-1 data-line-number=1><span class=co># configure el directorio de trabajo en su servidor Shiny:</span></a>
<a class=sourceLine id=cb4-2 data-line-number=2><span class=kw>setwd</span>(<span class=dt>dir =</span> <span class=st>&quot;/some/path/&quot;</span>)</a>
<a class=sourceLine id=cb4-3 data-line-number=3><span class=co># descargar el package:</span></a>
<a class=sourceLine id=cb4-4 data-line-number=4><span class=kw>download.file</span>(<span class=dt>url =</span> <span class=st>&quot;https://github.com/sebastien-plutniak/archeoviz/archive/master.zip&quot;</span>,</a>
<a class=sourceLine id=cb4-5 data-line-number=5>              <span class=dt>destfile =</span> <span class=st>&quot;archeoviz.zip&quot;</span>)</a>
<a class=sourceLine id=cb4-6 data-line-number=6><span class=co># unzip:</span></a>
<a class=sourceLine id=cb4-7 data-line-number=7><span class=kw>unzip</span>(<span class=dt>zipfile =</span> <span class=st>&quot;archeoviz.zip&quot;</span>)</a></code></pre></div>
<p>Luego, abre <code>https://&lt;your-shiny-server&gt;/archeoviz-main</code>.</p>
<p>Para configurar la aplicaci\\\\u00f3n con tus datos y preferencias, edita el archivo <code>app.R</code>, ubicado en la ra\\\\u00edz del directorio:</p>
<div class=sourceCode id=cb5><pre class=sourceCode r><code class=sourceCode r><a class=sourceLine id=cb5-1 data-line-number=1><span class=kw>archeoViz</span>(<span class=dt>objects.df =</span> <span class=ot>NULL</span>,   <span class=co># data.frame con datos sobre los objetos</span></a>
<a class=sourceLine id=cb5-2 data-line-number=2>          <span class=dt>refits.df =</span> <span class=ot>NULL</span>,    <span class=co># data.frame opcional para reinstalar datos</span></a>
<a class=sourceLine id=cb5-3 data-line-number=3>          <span class=dt>timeline.df =</span> <span class=ot>NULL</span>,  <span class=co># data.frame opcional para la cronolog\\\\u00eda de excavaci\\\\u00f3n</span></a>
<a class=sourceLine id=cb5-4 data-line-number=4>          <span class=dt>default.group =</span><span class=ot>NULL</span>, <span class=co># m\\\\u00e9thode de groupement des donn\\\\u00e9es,</span></a>
<a class=sourceLine id=cb5-5 data-line-number=5>                               <span class=co># par couche (&quot;by.layer&quot;) ou &quot;by.variable&quot;</span></a>
<a class=sourceLine id=cb5-6 data-line-number=6>          <span class=dt>title =</span> <span class=ot>NULL</span>,        <span class=co># titulo del sitio / data set</span></a>
<a class=sourceLine id=cb5-7 data-line-number=7>          <span class=dt>home.text =</span> <span class=ot>NULL</span>,    <span class=co># Contenido HTML para mostrar en la p\\\\u00e1gina de inicio</span></a>
<a class=sourceLine id=cb5-8 data-line-number=8>          <span class=dt>lang =</span> <span class=st>&quot;fr&quot;</span>          <span class=co># lenguaje de interfaz (&quot;en&quot;: Ingl\\\\u00e9s, &quot;fr&quot;: Franc\\\\u00e9s, &quot;it&quot;: Italiano, &quot;pt&quot;: Portugu\\\\u00e9s, &quot;es&quot;: Espa\\\\u00f1ol)</span></a>
<a class=sourceLine id=cb5-9 data-line-number=9>          <span class=dt>set.theme =</span> <span class=st>&quot;cosmo&quot;</span>) <span class=co># tema gr\\\\u00e1fico para la interfaz Shiny</span></a></code></pre></div>
<p>Los valores posibles para el par\\\\u00e1metro <code>set.theme</code> se ilustran en esta <a href=https://rstudio.github.io/shinythemes/>p\\\\u00e1gina</a>. El idioma de la aplicaci\\\\u00f3n se puede configurar con el par\\\\u00e1metro lang.</p>
<h2 id=demostraci\\\\u00f3n>Demostraci\\\\u00f3n</h2>
<p>Las instancias de demostraci\\\\u00f3n de la aplicaci\\\\u00f3n se implementan en el servidor <em>Huma Num</em> Shiny:</p>
<ul>
<li><a href=https://analytics.huma-num.fr/archeoviz/fr><code>archeoViz</code> en franc\\\\u00e9s</a>.</li>
<li><a href=https://analytics.huma-num.fr/archeoviz/en><code>archeoViz</code> en ingl\\\\u00e9s</a>.</li>
<li><a href=https://analytics.huma-num.fr/archeoviz/de><code>archeoViz</code> en alem\\\\u00e1n</a>.</li>
<li><a href=https://analytics.huma-num.fr/archeoviz/it><code>archeoViz</code> en italiano</a>.</li>
<li><a href=https://analytics.huma-num.fr/archeoviz/pt><code>archeoViz</code> en portugu\\\\u00e9s</a>.</li>
<li><a href=https://analytics.huma-num.fr/archeoviz/es><code>archeoViz</code> en espa\\\\u00f1ol</a>.</li>
<li><a href=https://analytics.huma-num.fr/archeoviz/ro><code>archeoViz</code> en rumano</a>.</li>
</ul>
<p>Los casos de uso reales se presentan en el <a href=https://analytics.huma-num.fr/archeoviz/home><em>archeoViz Portal</em></a>.</p>
<h1 id=recomendaciones-comunitarias>Recomendaciones comunitarias</h1>
<h2 id=reportar-errores>Reportar errores</h2>
<p>Si encuentra un error, complete un <a href=https://github.com/sebastien-plutniak/archeoviz/issues><em>issue</em></a> con todos los detalles necesarios para reproducirlo.</p>
<h2 id=suggerir-cambios>Suggerir cambios</h2>
<p>Sugerencias de cambios a archeoViz son bienvenidas. Estas solicitudes pueden referirse a funciones adicionales, cambios en la documentaci\\\\u00f3n, ejemplos adicionales, nuevas caracter\\\\u00edsticas, etc. Se puede hacer llenando un <a href=https://github.com/sebastien-plutniak/archeoviz/issues>issue</a> y, a\\\\u00fan mejor, usando un <em>pull requests</em> y el modelo de <a href=https://docs.github.com/articles/about-pull-requests>Fork and Pull</a> de GitHub.</p>
<h2 id=traducci\\\\u00f3n>Traducci\\\\u00f3n</h2>
<p>Se presta especial atenci\\\\u00f3n al multiling\\\\u00fcismo. La interfaz de la aplicaci\\\\u00f3n est\\\\u00e1 disponible en varios idiomas, y se agradecer\\\\u00eda su traducci\\\\u00f3n a otros idiomas. Para ello, edite este archivo y env\\\\u00ede una <em>pull request</em>.</p>
<h1 id=uso>Uso</h1>
<p>Teniendo restos arqueol\\\\u00f3gicos de un sitio determinado, <code>archeoViz</code> est\\\\u00e1 dise\\\\u00f1ado para reducir las barreras t\\\\u00e9cnicas para cumplir tres objetivos:</p>
<ul>
<li>exploraci\\\\u00f3n espacial b\\\\u00e1sica y generaci\\\\u00f3n de informes gr\\\\u00e1ficos sencillos;</li>
<li>publicaci\\\\u00f3n previa r\\\\u00e1pida de datos arqueol\\\\u00f3gicos, destinada a la comunidad cient\\\\u00edfica;</li>
<li>implementaci\\\\u00f3n r\\\\u00e1pida de una herramienta de visualizaci\\\\u00f3n y comunicaci\\\\u00f3n destinada a un p\\\\u00fablico m\\\\u00e1s amplio.</li>
</ul>
<p>Adem\\\\u00e1s, <code>archeoViz</code> es un recurso pedag\\\\u00f3gico adecuado para ense\\\\u00f1ar an\\\\u00e1lisis espacial en arqueolog\\\\u00eda, estructuraci\\\\u00f3n de datos, ciencia abierta y flujo de trabajo reproducible.</p>
<p>N.B.: en consecuencia, <code>archeoViz</code> no pretende reemplazar herramientas de an\\\\u00e1lisis m\\\\u00e1s sofisticadas (por ejemplo, GIS, paquetes estad\\\\u00edsticos, etc.)</p>
<h2 id=informaci\\\\u00f3n-espacial-en-archeoviz>Informaci\\\\u00f3n espacial en archeoViz</h2>
<p>Los arque\\\\u00f3logos registran la ubicaci\\\\u00f3n de los objetos arqueol\\\\u00f3gicos en diferentes escalas y granularidades. En consecuencia, utilizan diferentes conceptos geom\\\\u00e9tricos para representar la ubicaci\\\\u00f3n.</p>
<h3 id=puntos-ubicaci\\\\u00f3n-exacta-objetos-trazados>Puntos, ubicaci\\\\u00f3n exacta: objetos trazados</h3>
<p>El uso de coordenadas de cuadr\\\\u00edcula o \\\\u201cestaci\\\\u00f3n total\\\\u201d electr\\\\u00f3nica permite registrar la ubicaci\\\\u00f3n individual de los objetos en el campo. En ese caso, la ubicaci\\\\u00f3n se representa como puntos en <code>archeoViz</code> (tripletes de coordenadas x, y, z).</p>
<h3 id=puntos-ubicaci\\\\u00f3n-vaga-niveles-arbitr\\\\u00e1rios-baldes-objetos-tamizados-y-errores-de-registro>Puntos, ubicaci\\\\u00f3n vaga: niveles arbitr\\\\u00e1rios, baldes, objetos tamizados y errores de registro</h3>
<p>Sin embargo, tambi\\\\u00e9n es com\\\\u00fan que las coordenadas x, y, z, por objeto no est\\\\u00e9n disponibles, por diferentes motivos debido a:</p>
<ul>
<li>errores de registro, p\\\\u00e9rdida de informaci\\\\u00f3n, lo que resulta en la necesidad de reemplazar uno de varios valores de coordenadas por rangos (por ejemplo, falta un valor X para un objeto y se reemplaza por los valores X m\\\\u00ednimo y m\\\\u00e1ximo del cuadrado donde se encuentra este objeto). fue encontrado);</li>
<li>elecci\\\\u00f3n del m\\\\u00e9todo (p. ej., excavaci\\\\u00f3n realizada y registrada utilizando asadores de profundidad arbitraria, objetos tamizados, etc.).</li>
</ul>
<p>En todos estos casos, tenemos que lidiar con la ubicaci\\\\u00f3n imprecisa, cuando los objetos no se pueden ubicar como puntos sino que se encuentran en alg\\\\u00fan lugar entre rangos de coordenadas. La ubicaci\\\\u00f3n imprecisa puede afectar a una, dos o tres dimensiones espaciales (las coordenadas x, y, z, respectivamente).</p>
<p>Esta funci\\\\u00f3n tambi\\\\u00e9n puede utilizarse para tener en cuenta la imprecisi\\\\u00f3n de los instrumentos topogr\\\\u00e1ficos.</p>
<h3 id=l\\\\u00edneas>L\\\\u00edneas</h3>
<p>Las l\\\\u00edneas son geometr\\\\u00edas \\\\u00fatiles para representar relaciones. En arqueolog\\\\u00eda, pueden ser relaciones de <a href=#remontajes>remontajes</a> entre fragmentos de objetos, orientaci\\\\u00f3n (<a href=#medici\\\\u00f3n-de-f\\\\u00e1brica>medici\\\\u00f3n de f\\\\u00e1brica</a>), etc. Las l\\\\u00edneas se generan a partir de datos cargados como datos de reensamblaje, ya sea desde la pesta\\\\u00f1a \\\\u201cDatos\\\\u201d o utilizando el par\\\\u00e1metro <code>refits.df</code> en la funci\\\\u00f3n <code>archeoViz()</code>.</p>
<h3 id=superficies>Superficies</h3>
<p>Las superficies son geometr\\\\u00edas \\\\u00fatiles para representar niveles del terreno, zanjas, fosos, etc. En <code>archeoViz</code>, esto puede conseguirse definiendo un subconjunto de puntos que resuman la superficie deseada y activando despu\\\\u00e9s la visualizaci\\\\u00f3n del <a href=#cascos-convexos>casco convexo</a> de este subconjunto.</p>
<h2 id=remontajes-y-medici\\\\u00f3n-de-f\\\\u00e1brica>Remontajes y medici\\\\u00f3n de f\\\\u00e1brica</h2>
<h3 id=remontajes>Remontajes</h3>
<p>Los remontajes suelen ser registrados por los arque\\\\u00f3logos de dos maneras:</p>
<ol>
<li>por conjuntos de objetos de remontajes: usando una tabla de dos columnas, donde una fila corresponde a un <strong>objeto</strong>. La primera columna almacena la identificaci\\\\u00f3n \\\\u00fanica del objeto y la segunda columna almacena la identificaci\\\\u00f3n del conjunto de objetos al que pertenece este objeto.</li>
<li>reensamblando relaciones: usando una tabla de dos columnas, donde una fila corresponde a una <strong>relaci\\\\u00f3n</strong>. La primera columna almacena la identificaci\\\\u00f3n \\\\u00fanica del primer objeto y la segunda columna almacena la identificaci\\\\u00f3n \\\\u00fanica del segundo objeto.</li>
</ol>
<p>Aunque la segunda estructura de datos es m\\\\u00e1s precisa, la primera se usa con m\\\\u00e1s frecuencia.</p>
<p><code>archeoViz</code> procesa y representa las dos estructuras de datos de dos maneras:</p>
<ul>
<li>los conjuntos de objetos de remontajes deben describirse usando una columna espec\\\\u00edfica en la tabla <code>objects.df</code> (p. ej., `object_refits) y est\\\\u00e1n representados por el color de los puntos en los gr\\\\u00e1ficos ( como cualquier otra variable);</li>
<li>las relaciones de remontajes deben describirse usando la tabla <code>refits.df</code> y se visualizan como segmentos que conectan los objetos de remontaje en las parcelas.</li>
</ul>
<h3 id=medici\\\\u00f3n-de-f\\\\u00e1brica>Medici\\\\u00f3n de f\\\\u00e1brica</h3>
<p>Hasta ahora <code>archeoViz</code> no maneja correctamente las mediciones de f\\\\u00e1brica. Sin embargo, el proceso utilizado para representar remontajes tambi\\\\u00e9n se puede adaptar y utilizar para representar las mediciones de f\\\\u00e1brica. Esto requiere distorsionar la estructura de datos de la siguiente manera:</p>
<ul>
<li>suponiendo que las mediciones de f\\\\u00e1brica se registraron con dos mediciones en cada objeto (y no con mediciones de inmersi\\\\u00f3n y hundimiento),</li>
<li>diferentes valores id \\\\u00fanicos deben ser dados a los dos puntos, y las dos mediciones se procesan como si fueran dos objetos reensamblados.</li>
</ul>
<p>Vea un ejemplo de este m\\\\u00e9todo <a href=https://analytics.huma-num.fr/archeoviz/shuidonggou2>aqu\\\\u00ed</a>.</p>
<h2 id=formato-de-datos>Formato de datos</h2>
<p>Se pueden cargar tres tipos de datos en <code>archeoViz</code>:</p>
<ul>
<li>una tabla de \\\\u201cobjetos\\\\u201d (obligatoria), con datos sobre los objetos;</li>
<li>una tabla de \\\\u201cremontajes\\\\u201d (opcional), con datos sobre los objetos de reacondicionamiento;</li>
<li>una tabla de \\\\u201ccronolog\\\\u00eda\\\\u201d (opcional), con datos sobre cu\\\\u00e1ndo se excav\\\\u00f3 o midi\\\\u00f3 cada cuadrado del sitio.</li>
</ul>
<h3 id=formatear-datos>Formatear datos</h3>
<p>Las tablas deben ser archivos CSV con la primera fila que contiene las etiquetas de las columnas. Se permiten contenidos en HTML. Esto hace posible, en particular, agregar enlaces a recursos externos (por ejemplo, a identificadores permanentes de objetos en otras bases de datos, o a identificadores de conceptos en ontolog\\\\u00edas / tesauros est\\\\u00e1ndar, etc.).</p>
<p>El formateo de sus datos se puede hacer:</p>
<ul>
<li>ya sea usando un editor de hojas de c\\\\u00e1lculo en su m\\\\u00e1quina para generar archivos CSV;</li>
<li>o, para la tabla de objetos , usando la aplicaci\\\\u00f3n <a href=https://aurelienroyer.shinyapps.io/Seahors/><em>SEAHORS</em></a> para cargue sus datos, defina las variables (en la pesta\\\\u00f1a \\\\u201cCargar datos\\\\u201d) y exp\\\\u00f3rtelos al formato archeoViz (en la pesta\\\\u00f1a \\\\u201cTabla\\\\u201d / \\\\u201cexportaciones archeoViz\\\\u201d). Tambi\\\\u00e9n es posible enviar directamente los datos a una instancia <code>archeoViz</code> en l\\\\u00ednea.</li>
</ul>
<h3 id=tabla-de-objetos>Tabla de objetos</h3>
<p>Una fila describe un solo objeto con los siguientes campos obligatorios:</p>
<ul>
<li><strong>id</strong>: <em>valor alfanum\\\\u00e9rico</em>, identificador \\\\u00fanico del objeto</li>
<li><strong>xmin</strong>: <em>valor num\\\\u00e9rico</em>, coordenada del objeto en el eje X (en cm)</li>
<li><strong>ymin</strong>: <em>valor num\\\\u00e9rico</em>, coordenada del objeto en el eje Y (en cm)</li>
<li><strong>zmin</strong>: <em>valor num\\\\u00e9rico</em>, coordenada del objeto en el eje Z (valor de profundidad positivo en cm)</li>
<li><strong>layer</strong>: <em>valor alfanum\\\\u00e9rio</em>, identificador de la capa del objeto</li>
<li><strong>object_type</strong>: <em>valeur alphanum\\\\u00e9rique</em>, categor\\\\u00eda del objeto</li>
</ul>
<p>Adem\\\\u00e1s, los campos opcionales son posibles, incluidos:</p>
<ul>
<li><strong>square_x</strong>: <em>valor alfanum\\\\u00e9rico</em>, identificador del cuadrado en el eje X</li>
<li><strong>square_y</strong>: <em>valor alfanum\\\\u00e9rico</em>, identificador del cuadrado en el eje Y</li>
<li><strong>year</strong>: <em>valor num\\\\u00e9rico</em>, a\\\\u00f1o en que se excav\\\\u00f3 el objeto</li>
<li><strong>xmax</strong>: <em>valor num\\\\u00e9rico</em>, cuando la ubicaci\\\\u00f3n X del objeto est\\\\u00e1 incluida en un rango de coordenadas X</li>
<li><strong>ymax</strong>: <em>valor num\\\\u00e9rico</em>, cuando la ubicaci\\\\u00f3n Y del objeto est\\\\u00e1 incluida en un rango de coordenadas Y</li>
<li><strong>zmax</strong>: <em>valor num\\\\u00e9rico</em>, cuando la ubicaci\\\\u00f3n Z del objeto est\\\\u00e1 incluida en un rango de coordenadas Z</li>
<li><strong>object_edit</strong>: n\\\\u00famero ilimitado de variables adicionales que describen el objeto (los nombres de campo deben comenzar con object_ y tener diferentes sufijos)</li>
</ul>
<p>Las etiquetas de los cuadrados de la cuadr\\\\u00edcula:</p>
<ul>
<li>est\\\\u00e1n ordenados alfanum\\\\u00e9ricamente;</li>
<li>no se muestran para evitar visualizaciones err\\\\u00f3neas, si el n\\\\u00famero de etiquetas no corresponde exactamente al n\\\\u00famero total de cuadrados de 100 cm que se pueden definir en el rango de coordenadas m\\\\u00ednimas y m\\\\u00e1ximas contenidas en las variables xmin e ymin;</li>
<li>se puede completar con los par\\\\u00e1metros <code>add.x.square.labels</code> y <code>add.y.square.labels</code> de <code>archeoViz()</code> para agregar las etiquetas que faltan (en los ejes X e Y de la cuadr\\\\u00edcula, respectivamente).</li>
</ul>
<h3 id=mesa-de-montaje>Mesa de montaje</h3>
<p>Se puede cargar una tabla de datos con dos columnas para reajustar los datos (formato CSV). Cada fila debe contener los identificadores \\\\u00fanicos de dos objetos de reacondicionamiento (correspondientes a los valores de la columna <code>id</code> en la tabla de objetos).</p>
<h3 id=tabla-de-l\\\\u00ednea-de-tiempo>Tabla de l\\\\u00ednea de tiempo</h3>
<p>Se puede cargar una tabla (formato CSV) sobre el historial de excavaciones. La fila indica el a\\\\u00f1o en que se excav\\\\u00f3 o midi\\\\u00f3 cada cuadrado de la cuadr\\\\u00edcula del sitio. Esta tabla debe incluir las siguientes variables:</p>
<ul>
<li><strong>year</strong>: <em>valor num\\\\u00e9rico</em>, el a\\\\u00f1o de excavaci\\\\u00f3n</li>
<li><strong>square_x</strong>: <em>valor alfanum\\\\u00e9rico</em>, identificador del cuadrado excavado en el eje X</li>
<li><strong>square_y</strong>: <em>valor alfanum\\\\u00e9rico</em>, identificador del cuadrado excavado en el eje Y</li>
</ul>
<h2 id=cargar-datos>Cargar datos</h2>
<p>Hay cuatro formas de ingresar datos en <code>archeoViz</code>:</p>
<ol>
<li>cargar tablas de datos a trav\\\\u00e9s de la pesta\\\\u00f1a \\\\u201cCargar datos\\\\u201d,</li>
<li>generar datos aleatorios en la pesta\\\\u00f1a \\\\u201cCargar datos\\\\u201d;</li>
<li>cargar tablas de datos a trav\\\\u00e9s de los par\\\\u00e1metros de la funci\\\\u00f3n <code>archeoViz</code>, en la interfaz R;</li>
<li>cargar tablas de datos a trav\\\\u00e9s de par\\\\u00e1metros de URL, cuando se usa una instancia en l\\\\u00ednea de <code>archeoViz</code>.</li>
</ol>
<h3 id=a-trav\\\\u00e9s-de-la-interfaz-de-la-aplicaci\\\\u00f3n>A trav\\\\u00e9s de la interfaz de la aplicaci\\\\u00f3n</h3>
<p>Los tres tipos de tablas se pueden cargar en la pesta\\\\u00f1a \\\\u201cCargar datos\\\\u201d. El separador CSV (uno de: coma, punto y coma, tabulaci\\\\u00f3n) y el car\\\\u00e1cter utilizado para los puntos decimales (punto o coma).</p>
<h3 id=generando-datos-aleatorios>Generando Datos Aleatorios</h3>
<p>El uso de datos generados aleatoriamente es posible con fines de demostraci\\\\u00f3n. Para activar esta funci\\\\u00f3n, configure el control deslizante en \\\\u201cCargar datos\\\\u201d a un valor superior a 0 (establecer el valor nuevamente en 0 desactiva la funci\\\\u00f3n). Se genera un conjunto de datos de \\\\u201cobjetos\\\\u201d, un conjunto de datos de \\\\u201cremontajes\\\\u201d y un conjunto de datos de \\\\u201ccronolog\\\\u00eda\\\\u201d, lo que permite probar todas las funcionalidades de <code>archeoViz</code>.</p>
<h3 id=a-trav\\\\u00e9s-de-los-par\\\\u00e1metros-de-la-funci\\\\u00f3n-r>A trav\\\\u00e9s de los par\\\\u00e1metros de la funci\\\\u00f3n R</h3>
<p>La funci\\\\u00f3n de inicio de archeoViz (<code>archeoViz()</code>) se puede ejecutar sin par\\\\u00e1metros</p>
<div class=sourceCode id=cb6><pre class=sourceCode r><code class=sourceCode r><a class=sourceLine id=cb6-1 data-line-number=1><span class=kw>archeoViz</span>()</a></code></pre></div>
<p>o usando los par\\\\u00e1metros <code>objects.df</code>, <code>refits.df</code> o <code>timeline.df</code> para ingresar datos.marcos sobre los objetos arqueol\\\\u00f3gicos , las relaciones de remontajes entre estos objetos y la cronolog\\\\u00eda de la excavaci\\\\u00f3n, respectivamente.</p>
<div class=sourceCode id=cb7><pre class=sourceCode r><code class=sourceCode r><a class=sourceLine id=cb7-1 data-line-number=1><span class=kw>archeoViz</span>(<span class=dt>objects.df =</span> <span class=ot>NULL</span>,  <span class=co># data.frame con datos sobre los objetos</span></a>
<a class=sourceLine id=cb7-2 data-line-number=2>          <span class=dt>refits.df =</span> <span class=ot>NULL</span>,   <span class=co># data.frame para reacondicionar objetos</span></a>
<a class=sourceLine id=cb7-3 data-line-number=3>          <span class=dt>timeline.df =</span> <span class=ot>NULL</span>) <span class=co># data.frame opcional para la cronolog\\\\u00eda de excavaci\\\\u00f3n</span></a></code></pre></div>
<h3 id=a-trav\\\\u00e9s-de-par\\\\u00e1metros-de-url>A trav\\\\u00e9s de par\\\\u00e1metros de URL</h3>
<p>La URL de una instancia en l\\\\u00ednea de <code>archeoViz</code> puede incluir los par\\\\u00e1metros:</p>
<ul>
<li><code>objects.df=</code></li>
<li><code>refits.df=</code></li>
<li><code>timeline.df=</code></li>
</ul>
<p>cuyos valores deben ser la URL de un archivo CSV respetando el formato archeoViz descrito anteriormente. Por ejemplo: <a href=https://analytics.huma-num.fr/archeoviz/fr/?objects.df=https://zenodo.org/record/8003880/files/bilzingsleben.csv class=uri>https://analytics.huma-num.fr/archeoviz/fr/?objects.df=https://zenodo.org/record/8003880/files/bilzingsleben.csv</a></p>
<h2 id=configuraci\\\\u00f3n-secundaria-de-datos>Configuraci\\\\u00f3n secundaria de datos</h2>
<p>Una vez que se cargan los datos, se puede realizar una subselecci\\\\u00f3n de los datos en el men\\\\u00fa del lado izquierdo. La agrupaci\\\\u00f3n se puede realizar cruzando los siguientes par\\\\u00e1metros: el modo de ubicaci\\\\u00f3n, las capas y la categor\\\\u00eda del objeto.</p>
<h3 id=por-modo-de-ubicaci\\\\u00f3n>Por Modo de ubicaci\\\\u00f3n</h3>
<p>Si todos los objetos tienen una ubicaci\\\\u00f3n exacta o una ubicaci\\\\u00f3n vaga, no se propone ninguna opci\\\\u00f3n. Sin embargo, si el conjunto de datos incluye una ubicaci\\\\u00f3n tanto exacta como imprecisa, es posible seleccionar solo una de estas opciones o ambas.</p>
<h3 id=por-capa-o-categor\\\\u00eda-de-objeto>Por capa o categor\\\\u00eda de objeto</h3>
<p>Los datos se pueden agrupar de dos maneras: ya sea seg\\\\u00fan su capa o seg\\\\u00fan la variable \\\\u201cobject_\\\\u201d seleccionada. Esta opci\\\\u00f3n determina los colores de los puntos en los gr\\\\u00e1ficos 3D y 2D y c\\\\u00f3mo agrupar los puntos al calcular cascos convexos y superficies de regresi\\\\u00f3n 3D. Los subconjuntos se pueden definir por categor\\\\u00edas de objetos, utilizando los campos \\\\u201cvariable\\\\u201d y \\\\u201cvalures\\\\u201d. Una vez que se selecciona uno de los \\\\u201cobject_type\\\\u201d (u otras posibles variables \\\\u201cobject_\\\\u201d), sus valores aparecen a continuaci\\\\u00f3n y se pueden seleccionar usando las casillas de verificaci\\\\u00f3n. La selecci\\\\u00f3n debe validarse haciendo clic en el bot\\\\u00f3n \\\\u201cValidar\\\\u201d. Esta selecci\\\\u00f3n determina los datos que se mostrar\\\\u00e1n en los gr\\\\u00e1ficos y tablas.</p>
<h2 id=visualizaci\\\\u00f3n-interactiva>Visualizaci\\\\u00f3n interactiva</h2>
<h3 id=caracter\\\\u00edsticas-generales>Caracter\\\\u00edsticas generales</h3>
<p>Los gr\\\\u00e1ficos en las pesta\\\\u00f1as \\\\u201cGr\\\\u00e1fico 3D\\\\u201d, \\\\u201cMapa\\\\u201d, \\\\u201cSecci\\\\u00f3n X\\\\u201d y \\\\u201cSecci\\\\u00f3n Y\\\\u201d se generan utilizando <a href=https://CRAN.R-project.org/package=plotly/><code>plotly</code></a>. Todos los gr\\\\u00e1ficos son din\\\\u00e1micos e incluyen una barra de men\\\\u00fa encima del gr\\\\u00e1fico con varias opciones (generar un archivo de imagen, hacer zoom, mover la vista, etc.). Consulte los detalles en el sitio web <a href=http://plotly.github.io/getting-to-know-the-plotly-modebar/><code>plotly</code></a>.</p>
<p>Al hacer clic en el elemento de una leyenda, se modifica la visualizaci\\\\u00f3n:</p>
<ul>
<li>un simple clic en un elemento activa/desactiva su visualizaci\\\\u00f3n;</li>
<li>un doble clic en un elemento solo muestra este elemento (otro doble clic lo cancela).</li>
</ul>
<p>Esta funci\\\\u00f3n permite elegir qu\\\\u00e9 capas se muestran. Adem\\\\u00e1s, se puede establecer el tama\\\\u00f1o de los puntos y si se deben representar o no las relaciones de reposici\\\\u00f3n.</p>
<p>Finalmente, al hacer clic en un punto, se muestra informaci\\\\u00f3n sobre ese punto en la tabla debajo del gr\\\\u00e1fico.</p>
<h3 id=visualizaci\\\\u00f3n-de-la-incertidumbre-espacial>Visualizaci\\\\u00f3n de la incertidumbre espacial</h3>
<p>En <code>archeoViz</code>, se hace una distinci\\\\u00f3n entre ubicaci\\\\u00f3n exacta (dada como coordenadas x, y, z) y ubicaciones vagas (dada como rangos de coordenadas). Se pueden mostrar ambos tipos de ubicaciones. La incertidumbre de las ubicaciones vagas se puede visualizar representando objetos no como puntos sino como l\\\\u00edneas, planos y vol\\\\u00famenes (si se dan rangos de coordenadas para una, dos o tres dimensiones espaciales, respectivamente). Tenga en cuenta que esta funci\\\\u00f3n consume muchos recursos y su uso con demasiados datos puede ralentizar significativamente la aplicaci\\\\u00f3n.</p>
<h3 id=salidas-gr\\\\u00e1ficas>Salidas gr\\\\u00e1ficas</h3>
<p>Se pueden generar varios resultados gr\\\\u00e1ficos en<code>archeoViz</code>.</p>
<ul>
<li>Los gr\\\\u00e1ficos en las pesta\\\\u00f1as \\\\u201cGr\\\\u00e1fico 3D\\\\u201d, \\\\u201cMapa\\\\u201c, \\\\u201cSecci\\\\u00f3n X\\\\u201d y \\\\u201cSecci\\\\u00f3n Y\\\\u201d se pueden exportar:
<ul>
<li>en formato SVG (haciendo clic en el \\\\u00edcono de \\\\u201cc\\\\u00e1mara\\\\u201d en la barra de men\\\\u00fa sobre el gr\\\\u00e1fico),</li>
<li>como gr\\\\u00e1ficos interactivos en formato HTML, haciendo clic en el bot\\\\u00f3n \\\\u201cExportar\\\\u201c.</li>
</ul></li>
<li>El peque\\\\u00f1o mapa en las pesta\\\\u00f1as \\\\u201cSecci\\\\u00f3n X\\\\u201d y \\\\u201cSecci\\\\u00f3n Y\\\\u201d se puede exportar en SVG haciendo clic en el enlace \\\\u201cDescargar mapa\\\\u201c.</li>
<li>El plano de la cronolog\\\\u00eda de la excavaci\\\\u00f3n se puede exportar en formato SVG haciendo clic en el bot\\\\u00f3n \\\\u201cDescargar\\\\u201c.</li>
</ul>
<h2 id=estad\\\\u00edsticas-espaciales>Estad\\\\u00edsticas espaciales</h2>
<p><code>archeoViz</code> incluye algunas funcionalidades de an\\\\u00e1lisis espacial, destinadas a un uso b\\\\u00e1sico y exploratorio.</p>
<h3 id=superficies-de-regresi\\\\u00f3n>Superficies de regresi\\\\u00f3n</h3>
<p>En la pesta\\\\u00f1a \\\\u201cGr\\\\u00e1fico 3D\\\\u201c, al hacer clic en \\\\u201cCalcular superficies\\\\u201d y \\\\u201cValidar\\\\u201d se muestra la superficie de regresi\\\\u00f3n asociada con cada capa (con al menos 100 puntos). Las superficies se calculan utilizando el modelo aditivo generalizado implementado en el paquete <a href=https://CRAN.R-project.org/package=mgcv><code>mgcv</code></a>.</p>
<h3 id=cascos-convexos>Cascos convexos</h3>
<p>En la pesta\\\\u00f1a \\\\u201cVisualizaci\\\\u00f3n 3D\\\\u201c, los cascos convexos se muestran:</p>
<ol>
<li>marcando la casilla \\\\u201ccascos convexos\\\\u201d,</li>
<li>seleccionando, en el men\\\\u00fa que aparece, los subconjuntos de puntos para los que deben calcularse los cascos,</li>
<li>pulsando \\\\u201cValidar\\\\u201d.</li>
</ol>
<p>El casco convexo asociado con cada capa (con al menos 20 puntos) se muestran. Los cascos convexos se calculan usando el paquete<a href=https://CRAN.R-project.org/package=cxhull><code>cxhull</code></a>.</p>
<h3 id=densidad-kernel-2d>densidad kernel 2D</h3>
<p>En la pesta\\\\u00f1a \\\\u201cMapa\\\\u201c, al marcar la casilla \\\\u201cCalcular densidad\\\\u201d y hacer clic en \\\\u201cValidar\\\\u201d se genera un mapa con l\\\\u00edneas de contorno que muestran la densidad de los puntos. La densidad se puede calcular para todos los puntos juntos o por capa (con al menos 30 puntos). La densidad del n\\\\u00facleo 2D se calcula con la funci\\\\u00f3n <code>kde2d</code> del paquete <a href=https://CRAN.R-project.org/package=MASS><code>MASS</code></a> (a trav\\\\u00e9s de <a href=https://CRAN.R-project.org/package=ggplot2><code>ggplot2</code></a>).</p>
<h2 id=reproducibilidad>Reproducibilidad</h2>
<p><code>archeoViz</code> es, por definici\\\\u00f3n, una aplicaci\\\\u00f3n interactiva. Sin embargo, varias caracter\\\\u00edsticas garantizan la reproducibilidad y comunicabilidad del resultado de las interacciones con la aplicaci\\\\u00f3n.</p>
<ul>
<li>La visualizaci\\\\u00f3n 3D se puede exportar en un formato independiente HTML interactivo, teniendo en cuenta la selecci\\\\u00f3n de datos realizada por el usuario.</li>
<li>En la pesta\\\\u00f1a \\\\u201cReproducibilidad\\\\u201d, se genera din\\\\u00e1micamente un comando R, teniendo en cuenta la configuraci\\\\u00f3n actual de la aplicaci\\\\u00f3n realizada por el usuario.</li>
<li>En un uso m\\\\u00e1s avanzado, los par\\\\u00e1metros de URL permiten configurar una instancia en l\\\\u00ednea de los par\\\\u00e1metros de inter\\\\u00e9s de la aplicaci\\\\u00f3n y comunicarla mediante el env\\\\u00edo de la URL.</li>
</ul>
<h2 id=exportaciones-desde-y-hacia-aplicaciones-de-terceros>Exportaciones desde y hacia aplicaciones de terceros</h2>
<p><code>archeoViz</code> fue dise\\\\u00f1ado como uno de los componentes b\\\\u00e1sicos de un ecosistema digital descentralizado para datos y an\\\\u00e1lisis arqueol\\\\u00f3gicos. En esta perspectiva, las caracter\\\\u00edsticas y funciones se distribuyen en m\\\\u00faltiples aplicaciones interconectadas, en lugar de concentrarse en unos pocos sistemas. En consecuencia, los datos se pueden exportar e importar entre <code>archeoViz</code> y otras aplicaciones basadas en la web. Tenga en cuenta que, hasta ahora, las funcionalidades de exportaci\\\\u00f3n solo est\\\\u00e1n disponibles cuando se utilizan instancias <code>archeoViz</code> en l\\\\u00ednea.</p>
<h3 id=exportar-desde-archeoviz>Exportar desde archeoViz</h3>
<p>Desde la pesta\\\\u00f1a \\\\u201cEstad\\\\u00edsticas\\\\u201d de <code>archeoViz</code>, es posible exportar datos a otras aplicaciones online. La posibilidad de realizar determinadas exportaciones est\\\\u00e1 condicionada al tipo de datos o a la presencia de un n\\\\u00famero m\\\\u00ednimo de valores.</p>
<p><a href=https://analytics.huma-num.fr/Sebastien.Plutniak/archeofrag><em>archeofrag</em></a> es un paquete R y una aplicaci\\\\u00f3n web para evaluar y evaluar las distinciones entre unidades espaciales arqueol\\\\u00f3gicas (por ejemplo, capas) basado en el an\\\\u00e1lisis de las relaciones de remontajes entre fragmentos de objetos. La versi\\\\u00f3n web de la aplicaci\\\\u00f3n incluye m\\\\u00e9todos para medir la cohesi\\\\u00f3n y la mezcla de unidades espaciales y compararlas con datos simulados. Si se inicia una instancia de <code>archeoViz</code> con <a href=#tableau-des-remontages>datos de remontaje</a>, estos datos se pueden analizar con <code>archeofrag</code>. Cf. este <a href=https://analytics.huma-num.fr/archeoviz/grotte16>ejemplo</a>.</p>
<p>El <a href=https://analytics.huma-num.fr/ModAthom/seriograph/><em>Seriograph</em></a> es una aplicaci\\\\u00f3n web (parte del <a href=https://spartaas.gitpages.huma-num.fr/r-package/><em>SPARTAAS</em></a>) collection) para visualizar cambios en la distribuci\\\\u00f3n cuantitativa de tipos de artefactos en series ordenadas o desordenadas de unidades espaciales. Si se inicia una instancia en l\\\\u00ednea de archeoViz con un conjunto de datos con al menos 2 valores diferentes para la variable <code>layers</code> y 2 valores diferentes para <code>object_type</code> entonces estos datos se pueden analizar con la aplicaci\\\\u00f3n <code>Seriograph</code>. Cf. este <a href=https://analytics.huma-num.fr/archeoviz/poeymau>ejemplo</a>.</p>
<p><a href=https://app.ptm.huma-num.fr/amado/><em>Amado online</em></a> es una aplicaci\\\\u00f3n online para analizar tablas de contingencia. Es posible exportar una tabla cruzando los valores de la variable seleccionada (por defecto, <code>object_type</code>) y los valores de la variable <code>layer</code>. <code>Amado</code> permite reordenar filas y columnas manualmente y realizar seriaciones y clasificaciones autom\\\\u00e1ticas. Cf. este <a href=https://analytics.huma-num.fr/archeoviz/tai>ejemplo</a>.</p>
<p><a href=https://cran.r-project.org/package=explor><em>explor</em></a> es una aplicaci\\\\u00f3n R Shiny / paquete R para explorar interactivamente los resultados de an\\\\u00e1lisis multidimensionales. <code>explor</code> ha sido adaptado para ejecutar un an\\\\u00e1lisis de correspondencias sobre una tabla de contingencia cruzando los valores de la variable seleccionada (por defecto, <code>object_type</code>) y los valores de la variable <code>layer</code>.<br />
Cf. este <a href=https://analytics.huma-num.fr/archeoviz/tai>ejemplo</a>.</p>
<h3 id=importar-a-archeoviz>Importar a archeoViz</h3>
<p><a href=https://aurelienroyer.shinyapps.io/Seahors/><em>SEAHORS</em></a> es una aplicaci\\\\u00f3n web y paquete R para visualizar la distribuci\\\\u00f3n espacial de restos arqueol\\\\u00f3gicos. Como <a href=#formatear-datos>se mencion\\\\u00f3</a>, <em>SEAHORS</em> se puede usar para importar, remodelar y enviar un conjunto de datos a una instancia en l\\\\u00ednea de la aplicaci\\\\u00f3n <code>archeoViz</code>.</p>
<h2 id=par\\\\u00e1metros-avanzados>Par\\\\u00e1metros avanzados</h2>
<p>La funci\\\\u00f3n <code>archeoViz()</code> se puede configurar con m\\\\u00faltiples par\\\\u00e1metros opcionales, relacionados con:</p>
<ul>
<li>os datos de entrada (ya detallados <a href=#a-trav\\\\u00e9s-de-los-par\\\\u00e1metros-de-la-funci\\\\u00f3n-r>arriba</a>),</li>
<li>el contenido de la p\\\\u00e1gina de inicio (ya detallado <a href=#uso-distante>arriba</a>),</li>
<li>la <a href=#cuadr\\\\u00edcula>cuadr\\\\u00edcula</a>,</li>
<li>la <a href=#preajuste-de-par\\\\u00e1metros>preconfiguraci\\\\u00f3n</a> de los par\\\\u00e1metros que se pueden configurar a trav\\\\u00e9s de la interfaz de la aplicaci\\\\u00f3n</li>
<li>el <a href=#visualizaci\\\\u00f3n-de-gr\\\\u00e1ficos-reactivos>comportamiento reactivo</a> de la aplicaci\\\\u00f3n con respecto a la generaci\\\\u00f3n de gr\\\\u00e1ficos,</li>
<li><a href=#controlar-los-formatos-de-exportaci\\\\u00f3n>export HTML</a>,</li>
<li>los <a href=#par\\\\u00e1metros-de-url>par\\\\u00e1metros de URL</a>.</li>
</ul>
<!-- end list -->

<div class=sourceCode id=cb8><pre class=sourceCode r><code class=sourceCode r><a class=sourceLine id=cb8-1 data-line-number=1><span class=kw>archeoViz</span>(<span class=dt>objects.df=</span><span class=ot>NULL</span>, <span class=dt>refits.df=</span><span class=ot>NULL</span>, <span class=dt>timeline.df=</span><span class=ot>NULL</span>,</a>
<a class=sourceLine id=cb8-2 data-line-number=2>          <span class=dt>title=</span><span class=ot>NULL</span>, <span class=dt>home.text=</span><span class=ot>NULL</span>, <span class=dt>lang=</span><span class=st>&quot;en&quot;</span>, <span class=dt>set.theme=</span><span class=st>&quot;cosmo&quot;</span>,</a>
<a class=sourceLine id=cb8-3 data-line-number=3>          <span class=dt>square.size =</span> <span class=dv>100</span>, <span class=dt>reverse.axis.values =</span> <span class=ot>NULL</span>, <span class=dt>reverse.square.names =</span> <span class=ot>NULL</span>,</a>
<a class=sourceLine id=cb8-4 data-line-number=4>          <span class=dt>add.x.square.labels =</span> <span class=ot>NULL</span>, <span class=dt>add.y.square.labels =</span> <span class=ot>NULL</span>,</a>
<a class=sourceLine id=cb8-5 data-line-number=5>          <span class=dt>class.variable =</span> <span class=ot>NULL</span>, <span class=dt>class.values =</span> <span class=ot>NULL</span>,</a>
<a class=sourceLine id=cb8-6 data-line-number=6>          <span class=dt>default.group =</span> <span class=st>&quot;by.layer&quot;</span>, <span class=dt>location.mode =</span> <span class=ot>NULL</span>,</a>
<a class=sourceLine id=cb8-7 data-line-number=7>          <span class=dt>map.z.val =</span> <span class=ot>NULL</span>, <span class=dt>map.density =</span> <span class=st>&quot;no&quot;</span>, <span class=dt>map.refits =</span> <span class=ot>NULL</span>,</a>
<a class=sourceLine id=cb8-8 data-line-number=8>          <span class=dt>plot3d.ratio =</span> <span class=dv>1</span>, <span class=dt>plot3d.hulls =</span> <span class=ot>FALSE</span>, <span class=dt>hulls.class.values =</span> <span class=ot>NULL</span>,</a>
<a class=sourceLine id=cb8-9 data-line-number=9>          <span class=dt>plot3d.surfaces =</span> <span class=ot>NULL</span>, <span class=dt>plot3d.refits =</span> <span class=ot>NULL</span>, <span class=dt>point.size =</span> <span class=dv>2</span>,</a>
<a class=sourceLine id=cb8-10 data-line-number=10>          <span class=dt>sectionX.x.val =</span> <span class=ot>NULL</span>, <span class=dt>sectionX.y.val =</span> <span class=ot>NULL</span>, <span class=dt>sectionX.refits =</span> <span class=ot>NULL</span>, </a>
<a class=sourceLine id=cb8-11 data-line-number=11>          <span class=dt>sectionY.x.val =</span> <span class=ot>NULL</span>, <span class=dt>sectionY.y.val =</span> <span class=ot>NULL</span>, <span class=dt>sectionY.refits =</span> <span class=ot>NULL</span>,</a>
<a class=sourceLine id=cb8-12 data-line-number=12>          <span class=dt>camera.center =</span> <span class=kw>c</span>(<span class=dv>0</span>, <span class=dv>0</span>, <span class=dv>0</span>), <span class=dt>camera.eye =</span> <span class=kw>c</span>(<span class=fl>1.25</span>, <span class=fl>1.25</span>, <span class=fl>1.25</span>),</a>
<a class=sourceLine id=cb8-13 data-line-number=13>          <span class=dt>run.plots =</span> <span class=ot>FALSE</span>, <span class=dt>html.export =</span> <span class=ot>TRUE</span>, <span class=dt>table.export =</span><span class=ot>TRUE</span></a>
<a class=sourceLine id=cb8-14 data-line-number=14>          )</a></code></pre></div>
<h3 id=cuadr\\\\u00edcula>Cuadr\\\\u00edcula</h3>
<div class=sourceCode id=cb9><pre class=sourceCode r><code class=sourceCode r><a class=sourceLine id=cb9-1 data-line-number=1><span class=kw>archeoViz</span>(<span class=dt>square.size =</span> <span class=dv>100</span>,</a>
<a class=sourceLine id=cb9-2 data-line-number=2>          <span class=dt>reverse.axis.values =</span> <span class=ot>NULL</span>, <span class=dt>reverse.square.names =</span> <span class=ot>NULL</span>,</a>
<a class=sourceLine id=cb9-3 data-line-number=3>          <span class=dt>add.x.square.labels =</span> <span class=ot>NULL</span>, <span class=dt>add.y.square.labels =</span> <span class=ot>NULL</span></a>
<a class=sourceLine id=cb9-4 data-line-number=4>          )</a></code></pre></div>
<ul>
<li><strong>square.size</strong> : <em>num\\\\u00e9rico</em>. Tama\\\\u00f1o (ancho y alto) en cent\\\\u00edmetros de los cuadrados en el sistema de cuadr\\\\u00edcula. El valor predeterminado es 100 cm.</li>
<li><strong>reverse.axis.values</strong> : caract\\\\u00e8res. Nombre del eje o ejes a invertir (cualquier combinaci\\\\u00f3n de \\\\u201cx\\\\u201d, \\\\u201cy\\\\u201d, \\\\u201cz\\\\u201d).</li>
<li><strong>reverse.square.names</strong> : <em>car\\\\u00e1cter</em>. Nombre del eje o ejes para los que invertir el orden de las etiquetas cuadradas (cualquier combinaci\\\\u00f3n de \\\\u201cx\\\\u201d, \\\\u201cy\\\\u201d, \\\\u201cz\\\\u201d).</li>
<li><strong>add.x.square.labels</strong> : <em>car\\\\u00e1cter</em>. Etiquetas cuadradas adicionales para el eje \\\\u201cx\\\\u201d.</li>
<li><strong>add.y.square.labels</strong> : <em>car\\\\u00e1cter</em>. Etiquetas cuadradas adicionales para el eje \\\\u201cy\\\\u201d.</li>
</ul>
<h3 id=preajuste-de-par\\\\u00e1metros>Preajuste de par\\\\u00e1metros</h3>
<div class=sourceCode id=cb10><pre class=sourceCode r><code class=sourceCode r><a class=sourceLine id=cb10-1 data-line-number=1><span class=kw>archeoViz</span>(<span class=dt>class.variable =</span> <span class=ot>NULL</span>, <span class=dt>class.values =</span> <span class=ot>NULL</span>,</a>
<a class=sourceLine id=cb10-2 data-line-number=2>          <span class=dt>default.group =</span> <span class=st>&quot;by.layer&quot;</span>, <span class=dt>location.mode =</span> <span class=ot>NULL</span>,</a>
<a class=sourceLine id=cb10-3 data-line-number=3>          <span class=dt>map.z.val =</span> <span class=ot>NULL</span>, <span class=dt>map.density =</span> <span class=st>&quot;no&quot;</span>, <span class=dt>map.refits =</span> <span class=ot>NULL</span>,</a>
<a class=sourceLine id=cb10-4 data-line-number=4>          <span class=dt>plot3d.hulls =</span> <span class=ot>NULL</span>, <span class=dt>plot3d.surfaces =</span> <span class=ot>NULL</span>, <span class=dt>plot3d.refits =</span> <span class=ot>NULL</span>,</a>
<a class=sourceLine id=cb10-5 data-line-number=5>          <span class=dt>sectionX.x.val =</span> <span class=ot>NULL</span>, <span class=dt>sectionX.y.val =</span> <span class=ot>NULL</span>, <span class=dt>sectionX.refits =</span> <span class=ot>NULL</span>, </a>
<a class=sourceLine id=cb10-6 data-line-number=6>          <span class=dt>sectionY.x.val =</span> <span class=ot>NULL</span>, <span class=dt>sectionY.y.val =</span> <span class=ot>NULL</span>, <span class=dt>sectionY.refits =</span> <span class=ot>NULL</span>,</a>
<a class=sourceLine id=cb10-7 data-line-number=7>          <span class=dt>camera.center =</span> <span class=ot>NULL</span>, <span class=dt>camera.eye =</span> <span class=ot>NULL</span></a>
<a class=sourceLine id=cb10-8 data-line-number=8>          )</a></code></pre></div>
<ul>
<li><strong>class.variable</strong>: <em>car\\\\u00e1cter</em>. Al iniciar la aplicaci\\\\u00f3n, nombre de la variable a preseleccionar.</li>
<li><strong>class.values</strong>: <em>car\\\\u00e1cter</em>. vector de caracteres. Al iniciar la aplicaci\\\\u00f3n, nombres de los valores para preseleccionar.</li>
<li><strong>default.group</strong>: <em>car\\\\u00e1cter</em>. car\\\\u00e1cter. Al iniciar la aplicaci\\\\u00f3n, ajuste preestablecido de la variable utilizada para agrupar datos (una de \\\\u201cby.layer\\\\u201d o \\\\u201cby.variable\\\\u201d).</li>
<li><strong>location.mode</strong>: <em>car\\\\u00e1cter</em>. Al iniciar la aplicaci\\\\u00f3n, ajuste preestablecido de los m\\\\u00e9todos de ubicaci\\\\u00f3n (cualquier combinaci\\\\u00f3n de \\\\u201cexact\\\\u201d, \\\\u201cfuzzy\\\\u201d, \\\\u201cshow.uncertainty\\\\u201d).</li>
<li><strong>map.z.val</strong>: num\\\\u00e9rico. Valores m\\\\u00ednimos y m\\\\u00e1ximos de las coordenadas Z para mostrar en el gr\\\\u00e1fico del mapa.</li>
<li><strong>map.density</strong>: <em>car\\\\u00e1cter</em>. Al iniciar la aplicaci\\\\u00f3n, si desea calcular y mostrar los contornos de densidad en el gr\\\\u00e1fico del mapa (uno de \\\\u201cno\\\\u201d, \\\\u201coverall\\\\u201d, \\\\u201cby.variable\\\\u201d).</li>
<li><strong>map.refits</strong>: TRUE o FALSE. Ya sea para mostrar remontaje en el gr\\\\u00e1fico del mapa.</li>
<li><strong>plot3d.hulls</strong>: TRUE o FALSE. Al iniciar la aplicaci\\\\u00f3n, si calcular y mostrar cascos convexos en el gr\\\\u00e1fico 3D.</li>
<li><strong>hulls.class.values</strong>: <em>car\\\\u00e1cter</em>. Al iniciar la aplicaci\\\\u00f3n, los nombres de los subconjuntos de puntos para los que se calcular\\\\u00e1n los cascos convexos.</li>
<li><strong>plot3d.surfaces</strong>: TRUE o FALSE. Al iniciar la aplicaci\\\\u00f3n, si calcular y mostrar la regresi\\\\u00f3n en el gr\\\\u00e1fico 3D.</li>
<li><strong>plot3d.refits</strong>: TRUE o FALSE. Al iniciar la aplicaci\\\\u00f3n, si mostrar remontaje en el gr\\\\u00e1fico de secci\\\\u00f3n 3D.</li>
<li><strong>point.size</strong>: <em>num\\\\u00e9rico</em>. Al iniciar la aplicaci\\\\u00f3n, el tama\\\\u00f1o de los puntos en las visualizaciones.</li>
<li><strong>sectionX.x.val</strong>: <em>num\\\\u00e9rico</em>. Al iniciar la aplicaci\\\\u00f3n, los valores m\\\\u00ednimos y m\\\\u00e1ximos de las coordenadas X se mostrar\\\\u00e1n en el gr\\\\u00e1fico de la secci\\\\u00f3n X.</li>
<li><strong>sectionX.y.val</strong>: <em>num\\\\u00e9rico</em>. Al iniciar la aplicaci\\\\u00f3n, los valores m\\\\u00ednimos y m\\\\u00e1ximos de las coordenadas Y se mostrar\\\\u00e1n en el gr\\\\u00e1fico de la secci\\\\u00f3n Y.</li>
<li><strong>sectionX.refits</strong>: TRUE o FALSE. Al iniciar la aplicaci\\\\u00f3n, si se muestran los remontajes en el gr\\\\u00e1fico de la secci\\\\u00f3n X.</li>
<li><strong>sectionY.x.val</strong>: <em>num\\\\u00e9rico</em>. Al iniciar la aplicaci\\\\u00f3n, los valores m\\\\u00ednimos y m\\\\u00e1ximos de las coordenadas X se mostrar\\\\u00e1n en el gr\\\\u00e1fico de la secci\\\\u00f3n Y.</li>
<li><strong>sectionY.y.val</strong>: <em>num\\\\u00e9rico</em>. Al iniciar la aplicaci\\\\u00f3n, los valores m\\\\u00ednimos y m\\\\u00e1ximos de las coordenadas Y se mostrar\\\\u00e1n en el gr\\\\u00e1fico de la secci\\\\u00f3n Y.</li>
<li><strong>sectionY.refits</strong>: TRUE o FALSE. Al iniciar la aplicaci\\\\u00f3n, si se muestran los reacondicionamientos en el gr\\\\u00e1fico de la secci\\\\u00f3n Y.</li>
<li><strong>camera.center</strong>: <em>num\\\\u00e9rico</em>. En el gr\\\\u00e1fico 3D, coordenadas del punto al que mira la c\\\\u00e1mara (valores predeterminados: x=0, y=0, z=0).</li>
<li><strong>camera.eye</strong>: <em>num\\\\u00e9rico</em>. En el gr\\\\u00e1fico 3D, las coordenadas de la posici\\\\u00f3n de la c\\\\u00e1mara (valores predeterminados: x=1,25, y=1,25, z=1,25).</li>
</ul>
<h3 id=visualizaci\\\\u00f3n-de-gr\\\\u00e1ficos-reactivos>Visualizaci\\\\u00f3n de gr\\\\u00e1ficos reactivos</h3>
<div class=sourceCode id=cb11><pre class=sourceCode r><code class=sourceCode r><a class=sourceLine id=cb11-1 data-line-number=1><span class=kw>archeoViz</span>(<span class=dt>run.plots =</span> <span class=ot>FALSE</span>)</a></code></pre></div>
<ul>
<li><strong>run.plots</strong>: TRUE o FALSE. Si calcular y mostrar gr\\\\u00e1ficos inmediatamente (sin requerir que el usuario haga clic en el bot\\\\u00f3n \\\\u201cActualizar\\\\u201d).</li>
</ul>
<h3 id=controlar-los-formatos-de-exportaci\\\\u00f3n>Controlar los formatos de exportaci\\\\u00f3n</h3>
<ul>
<li><strong>html.export</strong>: TRUE o FALSE. Si permitir o no que las figuras se exporten como widgets HTML interactivos.</li>
<li><strong>table.export</strong>: TRUE o FALSE. Permita o no permita la transferencia de datos a <a href=#exportaciones-desde-y-hacia-aplicaciones-de-terceros>aplicaciones de terceros</a> en la pesta\\\\u00f1a \\\\u201cEstad\\\\u00edsticas\\\\u201d.</li>
</ul>
<h3 id=par\\\\u00e1metros-de-url>Par\\\\u00e1metros de URL</h3>
<p>Una instancia de <code>archeoViz</code> implementada en l\\\\u00ednea en un servidor se puede configurar con par\\\\u00e1metros de URL. Los par\\\\u00e1metros admitidos incluyen:</p>
<ul>
<li><code>objects.df</code>, <code>refits.df</code>, <code>timeline.df</code></li>
<li><code>title</code>, <code>home.text</code></li>
<li><code>reverse.axis.values</code>, <code>reverse.square.names</code></li>
<li><code>square.size</code></li>
<li><code>add.x.square.labels</code>, <code>add.y.square.labels</code></li>
<li><code>class.variable</code>, <code>class.values</code></li>
<li><code>default.group</code></li>
<li><code>location.mode</code></li>
<li><code>map.density</code>, <code>map.refits</code></li>
<li><code>plot3d.hulls</code>, <code>plot3d.surfaces</code>, <code>plot3d.refits</code></li>
<li><code>sectionX.refits</code></li>
<li><code>sectionY.refits</code></li>
<li><code>run.plots</code></li>
</ul>
<p>(Los siguientes par\\\\u00e1metros no son compatibles con la versi\\\\u00f3n actual: <code>map.z.val</code>, <code>sectionX.x.val</code>, <code>sectionX.y.val</code>, <code>sectionY.x.val</code>, <code>sectionY.y.val</code>, <code>point.size</code>, <code>lang</code>, <code>set.theme</code>, <code>camera.center</code>, <code>camera.eye</code>, <code>html.export</code>, <code>table.export</code>.)</p>
<p>Los par\\\\u00e1metros deben escribirse usando la sintaxis de URL (?param1=value&amp;param2=value2) y tener el mismo tipo de valores que cuando se usan en la interfaz de R. Por ejemplo, la siguiente URL inicia una instancia de archeoViz utilizando el conjunto de datos <a href=https://zenodo.org/record/8003880>Bilzingsleben</a>:</p>
<p><a href=https://analytics.huma-num.fr/archeoviz/en/?objects.df=https://zenodo.org/record/8003880/files/bilzingsleben.csv class=uri>https://analytics.huma-num.fr/archeoviz/en/?objects.df=https://zenodo.org/record/8003880/files/bilzingsleben.csv</a></p>
<p>Esta URL hace lo mismo, pero tambi\\\\u00e9n incluye la tabla de reacondicionamiento (par\\\\u00e1metro <code>&amp;refits.df=</code>) y activa la visualizaci\\\\u00f3n de las relaciones de reacondicionamiento en los gr\\\\u00e1ficos 3D y de mapa:</p>
<p><a href=https://analytics.huma-num.fr/archeoviz/en/?map.refits=TRUE&amp;plot3d.refits=TRUE&amp;objects.df=https://zenodo.org/record/8003880/files/bilzingsleben.csv&amp;refits.df=https://zenodo.org/record/8003880/files/bilzingsleben-antlers-refits.csv class=uri>https://analytics.huma-num.fr/archeoviz/en/?map.refits=TRUE&amp;plot3d.refits=TRUE&amp;objects.df=https://zenodo.org/record/8003880/files/bilzingsleben.csv&amp;refits.df=https://zenodo.org/record/8003880/files/bilzingsleben-antlers-refits.csv</a></p>
<p>La siguiente URL inicia el conjunto de datos de Bilzingsleben, preconfigurando la aplicaci\\\\u00f3n para:</p>
<ol>
<li>agrupa los puntos por variable (par\\\\u00e1metro <code>default.group</code>, con valor <code>by.variable</code> en lugar de <code>by.layer</code>)</li>
<li>selecciona solo las \\\\u201cAstas\\\\u201d (par\\\\u00e1metro <code>class.values</code>)</li>
<li>redefine el tama\\\\u00f1o de la cuadr\\\\u00edcula (par\\\\u00e1metro <code>square.size</code>, 500 cm en lugar del valor predeterminado de 100 cm)</li>
<li>habilitar la visualizaci\\\\u00f3n inmediata de los gr\\\\u00e1ficos (par\\\\u00e1metro <code>run.plots</code>)</li>
<li>modifica el t\\\\u00edtulo de la p\\\\u00e1gina (par\\\\u00e1metro <code>title</code>)</li>
<li>modifica el contenido de la p\\\\u00e1gina de inicio con contenidos HTML b\\\\u00e1sicos (par\\\\u00e1metro <code>home.txt</code>)</li>
</ol>
<p><a href=https://analytics.huma-num.fr/archeoviz/en/?default.group=by.variable&amp;class.values=Antler&amp;square.size=500&amp;run.plots=TRUE&amp;title=Anters%20at%20Bilzingsleben&amp;home.text=Many%20%3Cb%3Eantlers%3C/b%3E&amp;objects.df=https://zenodo.org/record/8003880/files/bilzingsleben.csv>https://analytics.huma-num.fr/archeoviz/en/?default.group=by.variable&amp;class.values=Antler&amp;square.size=500&amp;run.plots=TRUE&amp;title=Antlers%20at%20Bilzingsleben&amp;home.text=Many%20<b>antlers</b>&amp;objects.df=https://zenodo.org/record/8003880/files/bilzingsleben.csv</a></p>
<p>Tenga en cuenta que los par\\\\u00e1metros <code>add.x.square.labels</code>, <code>add.y.square.labels</code>, <code>location.mode</code>, et <code>class.values</code>, que aceptan valores simples o m\\\\u00faltiples en la interfaz de R (p. ej., c(\\\\u201cvalue1\\\\u201d, \\\\u201cvalue2\\\\u201d)) solo aceptan un valor cuando se establecen como par\\\\u00e1metros de URL (esta es una restricci\\\\u00f3n debido a la sintaxis de la URL).</p>
<h1 id=agradecimientos>Agradecimientos</h1>
<p>La aplicaci\\\\u00f3n y el paquete <code>archeoViz</code> son desarrollados y mantenidos por S\\\\u00e9bastien Plutniak. Arthur Coulon, Sol\\\\u00e8ne Denis, Olivier Marlet y Thomas Perrin probaron y apoyaron el proyecto en su etapa inicial. Renata Araujo, Laura Coltofean, Sara Giardino, Julian Laabs, y Nicolas Delsol tradujeron la aplicaci\\\\u00f3n al portugu\\\\u00e9s, rumano, italiano, alem\\\\u00e1n, y espa\\\\u00f1ol respectivamente.</p>
<h1 id=referencias>Referencias</h1>
<h2 id=software>Software</h2>
<ul>
<li>Plutniak, S\\\\u00e9bastien, Renata Araujo, Laura Coltofean, Nicolas Delsol, Sara Giardino, Julian Laabs. 2023. \\\\u201carcheoViz. Visualisation, Exploration, and Web Communication of Archaeological Spatial Data\\\\u201d. v1.3.2, DOI: <a href=https://doi.org/10.5281/zenodo.7460193>10.5281/zenodo.7460193</a>.</li>
<li>Plutniak, S\\\\u00e9bastien, Ana\\\\u00efs Vignoles. 2023. \\\\u201c<a href=https://hal.science/hal-04156271>The archeoViz Portal: Dissemination of Spatial Archaeological Datasets</a>\\\\u201d, portail web, <a href=https://analytics.huma-num.fr/archeoviz/home class=uri>https://analytics.huma-num.fr/archeoviz/home</a>.</li>
</ul>
<h2 id=articulos>Articulos</h2>
<ul>
<li>Plutniak, S\\\\u00e9bastien. Submitted. \\\\u201carcheoViz: an R package for the Visualisation, Exploration, and Web Communication of Archaeological Spatial Data\\\\u201d. <em>Journal of Open Source Software</em>.</li>
<li>Plutniak, S\\\\u00e9bastien. 2023. \\\\u201c<a href=https://www.prehistoire.org/offres/doc_inline_src/515/0-BSPF_2023_1_2e_partie_Correspondance_PLUTNIAK.pdf>Visualiser et explorer la distribution spatiale du mobilier arch\\\\u00e9ologique : l\\\\u2019application archeoViz et son portail web</a>\\\\u201d. <em>Bulletin de la Soci\\\\u00e9t\\\\u00e9 pr\\\\u00e9historique fran\\\\u00e7aise</em>, 120(1), p. 70-74.</li>
</ul>
<h2 id=presentationes>Presentationes</h2>
<ul>
<li>Plutniak, S\\\\u00e9bastien. 2023. \\\\u201c<a href=https://hal.science/hal-04146410>Fostering the Publication of Spatial Archaeological Data: a Decentralized Approach. The archeoViz Web Application and its Portal</a>\\\\u201d, diapositivas de una presentaci\\\\u00f3n en la Universidad de Florida, Gainesville.</li>
<li>Plutniak, S\\\\u00e9bastien, Ana\\\\u00efs Vignoles. 2023. \\\\u201c<a href=https://hal.science/hal-04070444>L\\\\u2019application web / package archeoViz et son portail web. Une solution d\\\\u00e9centralis\\\\u00e9e d\\\\u2019\\\\u00e9ditorialisation de donn\\\\u00e9es arch\\\\u00e9ologiques spatialis\\\\u00e9es</a>, diapositivas de una presentaci\\\\u00f3n en el SITRADA workshop, Paris.</li>
</ul>
<h2 id=sitios-web>Sitios web</h2>
<ul>
<li>El blog <em>archeoViz. Data visualization in archaeology. Re-use, visualization, dissemination of spatial data</em>: <a href=https://archeoviz.hypotheses.org class=uri>https://archeoviz.hypotheses.org</a></li>
</ul>
"  
  
  # LIST ----
  # : fr ----
  fr <- list(
    welcome = welcome.fr,
    reproducibility = reproducibility.fr,
    tab.home = "Accueil",
    tab.input = "Donn\\\\u00e9es",
    tab.plot3d ="Vue 3D",
    tab.map = "Plan",
    tab.section.x = "Section X",
    tab.section.y = "Section Y",
    tab.statistics = "Statistiques",
    tab.timeline = "Chronologie",
    tab.reproducibility = "Reproductibilit\\\\u00e9",
    tab.guidelines = "Aide",
    all = "TOUTES",
    download = "T\\\\u00e9l\\\\u00e9charger",
    export = "Exporter (html)",
    location = "Mode de localisation",
    values = "Valeurs",
    validate = "1) Valider la s\\\\u00e9lection",
    refresh = "2) Rafra\\\\u00eechir",
    header.3d.options = "Surfaces",
    header.objects.table = "Chargement du tableau des objets",
    header.simul.data = "G\\\\u00e9n\\\\u00e9rer des donn\\\\u00e9es de d\\\\u00e9monstration simul\\\\u00e9es",
    header.refits.table = "Chargement du tableau des remontages",
    header.timeline.table = "Chargement du tableau de chronologie des fouilles",
    header.export.data = "Transmettre les donn\\\\u00e9es \\\\u00e0 des applications externes",
    export.to = "Transmettre \\\\u00e0",
    choose.csv = "S\\\\u00e9lectionnez un fichier CSV",
    input.objects = input.objects.fr,
    input.refits = input.refits.fr,
    input.timeline = input.timeline.fr,
    guidelines = guidelines.fr,
    separator = "S\\\\u00e9parateur",
    decimal = "D\\\\u00e9cimales",
    use.demo = "Simuler n objets",
    surfaces = "R\\\\u00e9gressions 3D",
    hulls = "Enveloppes convexes",
    refits = "Montrer les remontages",
    point.size = "Taille des points",
    ratio = "Ratio vertical",
    density = "Calculer la densit\\\\u00e9",
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
    group = "Grouper les donn\\\\u00e9es",
    through = "avec",
    total = "Total",
    objects = "objets",
    year = "Ann\\\\u00e9e",
    variable = "Variable",
    selection = "S\\\\u00e9lection",
    show.uncertainty = "Montrer les incertitudes",
    linear.uncertainty = "incertitude lin\\\\u00e9aire",
    planar.uncertainty = "incertitude planaire",
    volume.uncertainty = "incertitude volum\\\\u00e9trique",
    linear = "Lin\\\\u00e9aire",
    planar = "Planaire",
    volume = "Volum\\\\u00e9trique",
    grid = "Carroyage",
    click.on.point = "Cliquez sur un point pour afficher ses informations.",
    notif.objects.ok = "Fichier des objets ok!",
    notif.objects.not.ok = "Erreur. Certains champs requis sont absents, v\\\\u00e9rifiez les donn\\\\u00e9es.",
    notif.no.data = "Pas de donn\\\\u00e9es dans ces intervalles.",
    notif.tick.value = "Cochez au moins une valeur (dans le menu lat\\\\u00e9ral gauche).",
    notif.error.coords.type = "Des valeurs xmin, ymin, ou zmin ne sont pas num\\\\u00e9riques et ont \\\\u00e9t\\\\u00e9 converties (pertes possibles).",
    notif.error.identifier = "Les identifiants uniques des objets ne sont pas uniques.",
    notif.warn.obj.removed = "Les objets aux coordonn\\\\u00e9es incompl\\\\u00e8tes ont \\\\u00e9t\\\\u00e9 supprim\\\\u00e9s.",
    notif.warn.uncertainty = "Nombreuses localisations incertaines. L'affichage risque d'\\\\u00eatre lent.",
    notif.warn.refits = "Nombreux remontages. L'affichage risque d'\\\\u00eatre lent."
  )
  
  # : en ----
  en <- list(
    welcome = welcome.en,
    reproducibility = reproducibility.en,
    tab.home = "Home",
    tab.input = "Input data",
    tab.plot3d ="3D plot",
    tab.map = "Map",
    tab.section.x = "Section X",
    tab.section.y = "Section Y",
    tab.statistics = "Statistics",
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
    header.export.data = "Send data to external applications",
    export.to = "Send to",
    choose.csv = "Choose a csv file",
    input.objects = input.objects.en,
    input.refits = input.refits.en,
    input.timeline = input.timeline.en,
    guidelines = guidelines.en,
    separator = "Separator",
    decimal = "Decimal",
    use.demo = "Generate n objects:",
    surfaces = "Compute surfaces",
    hulls = "Convex hulls",
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
    grid = "Grid",
    year = "year",
    variable = "Variable",
    selection = "Selection",
    show.uncertainty = "Show uncertainty",
    click.on.point = "Click on a point to get more information.",
    notif.objects.ok = "Objects file ok!",
    notif.objects.not.ok = "Error. Some of the mandatory fields are absent. Please check the file.",
    notif.no.data = "No data in these ranges.",
    notif.tick.value = "Tick at least one value (in the left side menu).",
    notif.error.coords.type = "xmin, ymin, or zmin value(s) are not numerical and have been converted (with possible loss).",
    notif.error.identifier = "Some of the objects' unique identifier are duplicated.",
    notif.warn.obj.removed = "Objects with incomplete coordinates have been removed.",
    notif.warn.uncertainty = "Many objects with uncertain location: it might slow down the app.",
    notif.warn.refits = "Many refits: it might slow down the app."
  )
  
  # : pt ----
  pt <- list(  
    welcome = welcome.pt,
    reproducibility = reproducibility.pt,
    tab.home = "In\\\\u00edcio",
    tab.input = "Dados",
    tab.plot3d ="Visualiza\\\\u00e7\\\\u00e3o 3D",
    tab.map = "Mapa",
    tab.section.x = "Perfil X",
    tab.section.y = "Perfil Y",
    tab.statistics = "Estat\\\\u00edsticas",
    tab.timeline = "Cronologia",
    tab.reproducibility = "Reprodutibilidade",
    tab.guidelines = "Ajuda",
    all = "TUDO",
    download = "Descarregar",
    export = "Exportar (html)",
    location = "Modo de localiza\\\\u00e7\\\\u00e3o",
    values = "Valores",
    validate = "Validar a sele\\\\u00e7\\\\u00e3o",
    refresh = "Atualizar",
    header.3d.options = "Op\\\\u00e7\\\\u00f5es de visualiza\\\\u00e7\\\\u00e3o 3D",
    header.objects.table = "Carregar tabela de objetos",
    header.simul.data = "Gerar dados de demonstra\\\\u00e7\\\\u00e3o simulados ",
    header.refits.table = "Carregar tabela de remontagens",
    header.timeline.table = "Carregar tabela de cronologia de escava\\\\u00e7\\\\u00f5es",
    header.export.data = "Enviar dados a aplica\\\\u00e7\\\\u00f5es externas",
    export.to = "Enviar para",
    choose.csv = "Selecione um arquivo csv",
    input.objects = input.objects.pt,
    input.refits = input.refits.pt,
    input.timeline = input.timeline.pt,
    guidelines = guidelines.en,
    separator = "Separador",
    decimal = "Decimais",
    use.demo = "Simular n objetos",
    surfaces = "Calcular superf\\\\u00edcies",
    hulls = "Calcular envolt\\\\u00f3rias",
    refits = "Mostrar remontagens",
    point.size = "Tamanho dos pontos",
    ratio = "Ratio vertical",
    density = "Calcular densidade",
    density.no = "Nenhuma",
    density.all.layers = "Todas as camadas",
    overall = "Geral",
    by.layer = "Por camada",
    by.variable = "Por vari\\\\u00e1vel",
    tab.variable.loc = "N\\\\u00famero de objetos por vari\\\\u00e1vel e modo de localiza\\\\u00e7\\\\u00e3o",
    tab.layer.loc = "N\\\\u00famero de objetos por camada e modo de localiza\\\\u00e7\\\\u00e3o",
    exact = "Exato",
    fuzzy = "Vago",
    depth = "Profundidade",
    group = "Agrupar dados",
    through = "com",
    total = "Total",
    objects = "objetos",
    year = "ano",
    variable = "Vari\\\\u00e1vel",
    selection = "Selection",
    show.uncertainty = "Mostrar incerteza",
    linear.uncertainty = "incerteza linear",
    planar.uncertainty = "incerteza plana",
    volume.uncertainty = "incerteza volum\\\\u00e9trica",
    linear = "Lineare",
    planar = "Planare",
    volume = "Volumetrica",
    grid = "Grade",
    click.on.point = "Clique sobre um ponto para obter mais informa\\\\u00e7\\\\u00f5es",
    notif.objects.ok = "Arquivo de objetos ok!",
    notif.objects.not.ok = "Erro. Certos campos exigidos est\\\\u00e3o ausentes. Por favor, verifique o arquivo.",
    notif.no.data = "Sem dados nesses intervalos.",
    notif.tick.value = "Marque pelo menos um valor (no menu lateral esquerdo).",
    notif.error.coords.type = "Os valores xmin, ymin, ou zmin n\\\\u00e3o s\\\\u00e3o num\\\\u00e9ricos e foram convertidos (com poss\\\\u00edveis perdas)..",
    notif.error.identifier = "Alguns dos identificadores \\\\u00fanicos dos objetos est\\\\u00e3o duplicados.",
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
    tab.section.x = "Sezione X",
    tab.section.y = "Sezione Y",
    tab.statistics = "Statistiche",
    tab.timeline = "Cronologia",
    tab.reproducibility = "Riproducibilit\\\\u00e0",
    tab.guidelines = "Aiuto",
    all = "TUTTE",
    download = "Scaricare",
    export = "Esportare (html)",
    location = "Modalit\\\\u00e0 di localizzazione",
    values = "Valori",
    validate = "Convalida selezione",
    refresh = "Aggiorna",
    header.3d.options = "Opzioni di visualizzazione 3D",
    header.objects.table = "Caricamento della tabella degli oggetti",
    header.simul.data = "Generare dati dimostrativi simulati",
    header.refits.table = "Caricamento della tabella degli oggetti riassemblati",
    header.timeline.table = "Caricamento della tabella della cronologia degli scavi",
    header.export.data = "Inviare dati ad applicazioni esterne",
    export.to = "Inviare all'applicazione",
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
    density = "Calcolare la densit\\\\u00e0",
    density.no = "Nessuna",
    density.all.layers = "Tutti gli strati",
    overall = "Complessivo",
    by.layer = "Per strato",
    by.variable = "Per variabile",
    tab.variable.loc = "Numero di oggetti per variabile e modalit\\\\u00e0 di localizzazione",
    tab.layer.loc = "Numero di oggetti per strato e modalit\\\\u00e0 di localizzazione",
    exact = "Esatta",
    fuzzy = "Vago",
    depth = "Profondit\\\\u00e0",
    group = "Raggruppare i dati",
    through = "con",
    total = "Totale",
    objects = "oggetti",
    year= "Anno",
    variable = "Variabile",
    selection = "Selection",
    show.uncertainty = "Mostra l'incertezza",
    linear.uncertainty = "incertezza lineare",
    planar.uncertainty = "incertezza planare",
    volume.uncertainty = "incertezza volumetrica",
    linear = "Lineare",
    planar = "Planare",
    volume = "Volumetrica",
    grid = "Griglia",
    click.on.point = "Fare clic su un punto per visualizzarne le informazioni.",
    notif.objects.ok = "File degli oggetto ok!",
    notif.objects.not.ok = "Errore. Mancano alcuni campi obbligatori, controllare il file.",
    notif.no.data = "Nessun dato in questi intervalli.",
    notif.tick.value = "Spuntare almeno un valore (nel menu laterale a sinistra).",
    notif.error.coords.type = "Alcuni valori xmin, ymin o zmin non sono numerici e sono stati convertiti (con possibili perdite).",
    notif.error.identifier = "Gli identificativi univoci degli oggetti non sono unici.",
    notif.warn.obj.removed = "Gli oggetti con coordinate incomplete sono stati rimossi.",
    notif.warn.uncertainty = "Many objects with uncertain location: it might slow down the app.",
    notif.warn.refits = "Many refits: it might slow down the app."
  )

  # : de ----
  de <- list(
    welcome = welcome.de,
    reproducibility = reproducibility.de,
    tab.home = "Home",
    tab.input = "Dateneingabe",
    tab.plot3d ="3D Ansicht",
    tab.map = "Karte",
    tab.section.x = "Profile X",
    tab.section.y = "Profile Y",
    tab.statistics = "Statistiken",
    tab.timeline = "Chronologie",
    tab.reproducibility = "Reproduzierbarkeit",
    tab.guidelines = "Leitfaden",
    all = "ALLES",
    download = "Download",
    export = "Export (Html)",
    location = "Lokalisierungsmethode",
    values = "Werte",
    validate = "(1) Auswahl best\\\\u00e4tigen",
    refresh = "(2) Aktualisieren",
    header.3d.options = "Optionen 3D Ansicht",
    header.objects.table = "Lade Objekttabelle",
    header.simul.data = "Generiere simulierte Daten zur Demonstration",
    header.refits.table = "Lade Passobjekttabelle",
    header.timeline.table = "Lade Ausgrabungschronologietabelle",
    header.export.data = "Daten an externe Anwendungen senden",
    export.to = "Senden an",
    choose.csv = "W\\\\u00e4hle csv-Datei",
    input.objects = input.objects.de,
    input.refits = input.refits.de,
    input.timeline = input.timeline.de,
    guidelines = guidelines.en,
    separator = "Trennzeichen",
    decimal = "Dezimaltrenner",
    use.demo = "Generiere n Objecte:",
    surfaces = "Berechene Oberfl\\\\u00e4che",
    hulls = "Berechene konvexe H\\\\u00fcllen",
    refits = "Zeige Passobjekte",
    point.size = "Punktgr\\\\u00f6\\\\u00dfr",
    ratio = "Vertikalverh\\\\u00e4ltnis",
    density = "Berechne Dichte",
    density.no = "Keine",
    overall = "Gesamt",
    by.layer = "Nach Schicht",
    by.variable = "Nach Variable",
    tab.variable.loc = "Funde nach Variable und Lokalisierungsmethode",
    tab.layer.loc = "Funde nach Schicht und Lokalisierungsmethode",
    exact = "Genau",
    fuzzy = "unscharf",
    depth = "Tiefe",
    group = "Gruppiere Daten",
    through = "mit",
    total = "Total",
    objects = "Objekte",
    linear.uncertainty = "lineare Unsicherheit",
    planar.uncertainty = "Planare Unsicherheit",
    volume.uncertainty = "Volumenunsicherheit",
    linear = "Linear",
    planar = "Planar",
    volume = "Volumen",
    grid = "Quadrat",
    year = "Jahr",
    variable = "Variable",
    selection = "Selection",
    show.uncertainty = "Zeige Unsicherheit",
    click.on.point = "Klicken Sie auf einen Punkt, um weitere Informationen zu erhalten.",
    notif.objects.ok = "Objektdatei ok!",
    notif.objects.not.ok = "Fehler. Einige der Pflichtfelder fehlen. Bitte \\\\u00fcberpr\\\\u00fcfen Sie die Datei.",
    notif.no.data = "Keine Daten in diesen Bereichen.",
    notif.tick.value = "Kreuzen Sie mindestens einen Wert an (im Men\\\\u00fc auf der linken Seite).",
    notif.error.coords.type = "'xmin', 'ymin' oder 'zmin' Wert(e) sind nicht numerisch und wurden (m\\\\u00f6glicherweise mit Verlust) umgerechnet.",
    notif.error.identifier = "Einige der eindeutigen Kennungen der Objekte sind doppelt vorhanden.",
    notif.warn.obj.removed = "Objekte mit unvollst\\\\u00e4ndigen Koordinaten wurden entfernt.",
    notif.warn.uncertainty = "Viele Objekte mit unsicherem Standort: Dies kann die Anwendung verlangsamen.",
    notif.warn.refits = "Viele Passobjekte: Das k\\\\u00f6nnte die App verlangsamen."
  )

 # : es ----
  es <- list(  
    welcome = welcome.es,
    reproducibility = reproducibility.es,
    tab.home = "Inicio",
    tab.input = "Datos",
    tab.plot3d ="Visualizaci\\\\u00f3n 3D",
    tab.map = "Mapa",
    tab.section.x = "Perfil X",
    tab.section.y = "Perfil Y",
    tab.statistics = "Estad\\\\u00edsticas",
    tab.timeline = "Cronolog\\\\u00eda",
    tab.reproducibility = "Reproducibilidad",
    tab.guidelines = "Ayuda",
    all = "TODO",
    download = "Descargar",
    export = "Exportar (html)",
    location = "Modo de ubicaci\\\\u00f3n",
    values = "Valores",
    validate = "Validar la selecci\\\\u00f3n",
    refresh = "Actualizar",
    header.3d.options = "Opciones de visualizaci\\\\u00f3n 3D",
    header.objects.table = "Cargar tabela de objetos",
    header.simul.data = "Generar datos de demostraciones simuladas",
    header.refits.table = "Cargar tabla de remontajes",
    header.timeline.table = "Cargar tabla de cronolog\\\\u00eda de excavaci\\\\u00f3n",
    header.export.data = "Enviar datos a aplicaciones externas",
    export.to = "Enviar para",
    choose.csv = "Selecione un archivo csv",
    input.objects = input.objects.es,
    input.refits = input.refits.es,
    input.timeline = input.timeline.es,
    guidelines = guidelines.es,
    separator = "Separador",
    decimal = "Decimales",
    use.demo = "Simular objetos",
    surfaces = "Calcular superf\\\\u00edcies",
    hulls = "Cascos convexos",
    refits = "Mostrar remontajes",
    point.size = "Tama\\\\u00f1o de los puntos",
    ratio = "Ratio vertical",
    density = "Calcular densidad",
    density.no = "Ninguna",
    density.all.layers = "Todas las capas",
    overall = "General",
    by.layer = "Por capa",
    by.variable = "Por variable",
    tab.variable.loc = "N\\\\u00famero de objetos por variable e modo de ubicaci\\\\u00f3n",
    tab.layer.loc = "N\\\\u00famero de objetos por capa e modo de ubicaci\\\\u00f3n",
    exact = "Exacto",
    fuzzy = "Vago",
    depth = "Profundidad",
    group = "Agrupar datos",
    through = "con",
    total = "Total",
    objects = "objetos",
    year = "a\\\\u00f1o",
    variable = "Variable",
    selection = "Selection",
    show.uncertainty = "Mostrar incertidumbre",
    linear.uncertainty = "incertidumbre lineal",
    planar.uncertainty = "incertidumbre planar",
    volume.uncertainty = "incertidumbre volum\\\\u00e9trica",
    linear = "Lineal",
    planar = "Planar",
    volume = "Volum\\\\u00e9trica",
    grid = "Cuadr\\\\u00edcula",
    click.on.point = "Haga clic en un punto para obtener m\\\\u00e1s informaci\\\\u00f3n",
    notif.objects.ok = "Archivo de objetos ok!",
    notif.objects.not.ok = "Error.Faltan algunos campos obligatorios. Por favor revise el archivo.",
    notif.no.data = "No hay datos en estos rangos.",
    notif.tick.value = "Marque al menos un valor (en el men\\\\u00fa del lado izquierdo).",
    notif.error.coords.type = "Los valores xmin, ymin o zmin no son num\\\\u00e9ricos y se han convertido (posiblemente con p\\\\u00e9rdida).",
    notif.error.identifier = "Algunos de los identificadores \\\\u00fanicos de los objetos est\\\\u00e1n duplicados.",
    notif.warn.obj.removed = "Se han eliminado los objetos con coordenadas incompletas.",
    notif.warn.uncertainty = "Muchos objetos con ubicaci\\\\u00f3n incierta: podr\\\\u00eda ralentizar la aplicaci\\\\u00f3n.",
    notif.warn.refits = "Muchos remontajes: podr\\\\u00eda ralentizar la aplicaci\\\\u00f3n."
  )
  
  # : ro ----
  ro <- list(
    welcome = welcome.ro,
    reproducibility = reproducibility.ro,
    tab.home = "Home",
    tab.input = "Date de intrare",
    tab.plot3d = "Vizualizare 3D",
    tab.map = "Hart\\\\u0103",
    tab.section.x = "Sec\\\\u021biunea X",
    tab.section.y = "Sec\\\\u021biunea Y",
    tab.statistics = "Statistici",
    tab.timeline = "Cronologie",
    tab.reproducibility = "Reproductibilitate",
    tab.guidelines = "Ghid",
    all = "TOATE",
    download = "Desc\\\\u0103rcare",
    export = "Export Html",
    location = "Metod\\\\u0103 de localizare",
    values = "Valori",
    validate = "(1) Valideaz\\\\u0103 selec\\\\u021bia",
    refresh = "(2) Actualizare",
    header.3d.options = "Op\\\\u021biuni vizualizare 3D",
    header.objects.table = "\\\\u00cencarc\\\\u0103 tabelul de obiecte",
    header.simul.data = "Utilizeaz\\\\u0103 date simulate pentru demonstra\\\\u021bie",
    header.refits.table = "\\\\u00cencarc\\\\u0103 tabelul cu ajust\\\\u0103ri",
    header.timeline.table = "\\\\u00cencarc\\\\u0103 tabelul cu cronologia s\\\\u0103p\\\\u0103turii",
    header.export.data = "Trimite date c\\\\u0103tre aplica\\\\u021bii externe",
    export.to = "Trimite c\\\\u0103tre",
    choose.csv = "Alege un fi\\\\u0219ier csv",
    input.objects = input.objects.en,
    input.refits = input.refits.en,
    input.timeline = input.timeline.en,
    guidelines = guidelines.en,
    separator = "Separator",
    decimal = "Zecimal\\\\u0103",
    use.demo = "Genereaz\\\\u0103 n obiecte:",
    surfaces = "Calculeaz\\\\u0103 suprafe\\\\u021be",
    hulls = "Calculeaz\\\\u0103 anvelope",
    refits = "Afi\\\\u0219eaz\\\\u0103 ajust\\\\u0103ri",
    point.size = "Dimensiune punct",
    ratio = "Raport vertical",
    density = "Calculeaz\\\\u0103 densitatea",
    density.no = "Nu",
    overall = "Ansamblu",
    by.layer = "Dup\\\\u0103 strat",
    by.variable = "Dup\\\\u0103 variabil\\\\u0103",
    tab.variable.loc = "Resturi arheologice dup\\\\u0103 variabil\\\\u0103 \\\\u0219i metoda de localizare",
    tab.layer.loc = "Resturi arheologice dup\\\\u0103 strat \\\\u0219i metoda de localizare",
    exact = "Exact",
    fuzzy = "Neclar",
    depth = "Ad\\\\u00e2ncime",
    group = "Date de grup",
    through = "cu",
    total = "Total",
    objects = "obiecte",
    linear.uncertainty = "incertitudine liniar\\\\u0103",
    planar.uncertainty = "incertitudine planar\\\\u0103",
    volume.uncertainty = "incertitudine de volum",
    linear = "Linear",
    planar = "Planar",
    volume = "Volum",
    grid = "Caroiaj",
    year = "an",
    variable = "Variabil\\\\u0103",
    selection = "Selection",
    show.uncertainty = "Arat\\\\u0103 incertitudine",
    click.on.point = "Click pe un punct pentru mai multe informa\\\\u021bii.",
    notif.objects.ok = "Fi\\\\u0219ier obiecte ok!",
    notif.objects.not.ok = "Eroare. Unele dintre c\\\\u00e2mpurile obligatorii sunt absente. Verific\\\\u0103 fi\\\\u0219ierul.",
    notif.no.data = "Nu exist\\\\u0103 date \\\\u00een aceste intervale.",
    notif.tick.value = "Bifeaz\\\\u0103 cel pu\\\\u021bin o valoare (\\\\u00een meniul din st\\\\u00e2nga).",
    notif.error.coords.type = "valorile xmin, ymin, sau zmin nu sunt numerice \\\\u0219i au fost convertite (cu posibile pierderi).", 
    notif.error.identifier = "Unii dintre identificatorii unici ai obiectelor sunt duplica\\\\u021bi.",
    notif.warn.obj.removed = "Obiectele cu coordonate incomplete au fost eliminate.",
    notif.warn.uncertainty = "Multe obiecte cu loca\\\\u021bie incert\\\\u0103: ar putea \\\\u00eencetini aplica\\\\u021bia.",
    notif.warn.refits = "Multe ajust\\\\u0103ri: ar putea \\\\u00eencetini aplica\\\\u021bia."
  ) 

  
  # SWITCH ----
  if(length(grep("en", lang, ignore.case = T)) == 1){ ui.terms <- en }
  if(length(grep("fr", lang, ignore.case = T)) == 1){ ui.terms <- fr }
  if(length(grep("it", lang, ignore.case = T)) == 1){ ui.terms <- it }
  if(length(grep("port", lang, ignore.case = T)) == 1 | lang == "pt"){ ui.terms <- pt}
  if(length(grep("de", lang, ignore.case = T)) == 1){ ui.terms <- de }
  if(length(grep("es", lang, ignore.case = T)) == 1){ ui.terms <- es }
  if(length(grep("ro", lang, ignore.case = T)) == 1){ ui.terms <- ro }
  
  
  ui.terms
}


