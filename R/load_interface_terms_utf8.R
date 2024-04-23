
.load_interface_terms <- function(lang){
  # welcome ----
  # : fr ----
  welcome.fr <- "<h1>Bienvenue dans <i>archeoViz</i> !</h1>
                <p><i>archeoViz</i> est une application dédiée à l'archéologie.
                Elle permet de <b>visualiser</b>, d'<b>explorer</b> interactivement, et  
                d'exposer et <b>communiquer</b> rapidement sur le web des données 
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
                L'interface est disponible en 
                <a href=https://analytics.huma-num.fr/archeoviz/de target=_blank>allemand</a>, 
                <a href=https://analytics.huma-num.fr/archeoviz/en target=_blank>anglais</a>, français, 
                <a href=https://analytics.huma-num.fr/archeoviz/it target=_blank>italien</a>,  
                <a href=https://analytics.huma-num.fr/archeoviz/ro target=_blank>roumain</a> et 
                <a href=https://analytics.huma-num.fr/archeoviz/pt target=_blank>portugais</a>.
                </p>
                Le package, sous licence libre, est publié sur le <a href=https://cran.r-project.org/package=archeoViz target=_blank>CRAN</a>. Son code source est aussi disponible sur <a href=https://github.com/sebastien-plutniak/archeoviz target=_blank>github</a>."
  
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
                <p><i>archeoViz</i> é um aplicativo dedicado à arqueologia. Ele permite <b>visualizar</b>, <b>explorar</b> interativamente, e   
                expor e <b>comunicar</b> rapidamente na web dados de campo arqueológicos.
                </p>
                <p>
                Ele oferece <b>visualizações</b> 3D e 2D, gera <b>perfis estratigráficos</b> e <b>mapas</b> de vestígios arqueológicos, possibilita a realização de estatísticas espaciais simples (envoltórias convexas, superfícies de regressão, estimativa de densidade de kernel 2D) e a visualização de uma cronologia interativa da escavação de um sítio.
                </p>
                <p>
                Distribuído como um pacote R, 
                o <i>archeoViz</i> pode ser usado localmente ou implantado em um servidor, seja carregando dados por meio da interface, seja iniciando o aplicativo com um conjunto de dados específico. A interface está disponível em 
                <a href=https://analytics.huma-num.fr/archeoviz/de target=_blank>alemão</a>
                <a href=https://analytics.huma-num.fr/archeoviz/en target=_blank>inglês</a>, 
                <a href=https://analytics.huma-num.fr/archeoviz/fr target=_blank>francês</a>, 
                <a href=https://analytics.huma-num.fr/archeoviz/it target=_blank>italiano</a>,
                <a href=https://analytics.huma-num.fr/archeoviz/ro target=_blank>romeno</a>, 
                e português.
                </p>
                O pacote, sob licença livre, é publicado na <a href=https://cran.r-project.org/package=archeoViz target=_blank>CRAN</a>. O seu código-fonte está também disponível no <a href=https://github.com/sebastien-plutniak/archeoviz target=_blank>github</a>."
  
  # : it ----
  welcome.it <- "<h1>Benvenuti in <i>archeoViz</i>!</h1>
                 <p><i>archeoViz</i> è un’applicazione dedicata all’archeologia. Permette di <b>visualizzare</b>, <b>esplorare</b> in modo interattivo e rapido, esporre e <b>comunicare</b> sul web i dati archeologici acquisiti sul campo.
                </p>
                <p>
                Offre <b>visualizzazioni</b> in 3D e 2D, genera <b>sezioni</b> e <b>carte</b> dei resti archeologici, consente di realizzare statistiche spaziali semplici (inviluppi convessi, superfici di regressione, stima kernel di densità 2D) e di visualizzare una cronologia interattiva degli scavi di un sito.
                </p>
                <p>
                Distribuito come pacchetto R, <i>archeoViz</i> può essere utilizzato localmente o distribuito su un server, caricando i dati tramite l’interfaccia o lanciando l’applicazione con un insieme di dati specifico. L’interfaccia è disponibile in 
                <a href=https://analytics.huma-num.fr/archeoviz/de target=_blank>tedesco</a>, 
                <a href=https://analytics.huma-num.fr/archeoviz/en target=_blank>inglese</a>, 
                <a href=https://analytics.huma-num.fr/archeoviz/fr target=_blank>francese</a>, 
                italiano,  
                <a href=https://analytics.huma-num.fr/archeoviz/ro target=_blank>rumeno</a>, e 
                <a href=https://analytics.huma-num.fr/archeoviz/pt target=_blank>portoghese</a>.
                </p>
                Il pacchetto è open source e pubblicato su il <a href=https://cran.r-project.org/package=archeoViz target=_blank>CRAN</a> Il suo codice sorgente è disponibile anche su  <a href=https://github.com/sebastien-plutniak/archeoviz target=_blank>github</a>."
   
   # : de ----
   welcome.de <- "<h1>Willkommen bei <i>archeoViz</i>!</h1>
                  <p>
                    <i>archeoViz</i> ist eine für die Archäologie entwickelte Anwendung. 
                    Sie ermöglicht die <b>Visualisierung</b>, interaktive <b>Erkundung</b> und 
                    schnelle Bereitstellung und <b>Kommunikation</b> von Raumdaten
                    archäologischer Grabungen und Prospektionen im Internet.
                  </p>
                  <p>
                    <i>archeoViz</i> bietet interaktive 3D und 2D <b>Visualisierungen</b> und kann
                    <b>Profile</b>, als auch <b>Karten</b> der Fundverteilungen generieren. Es 
                    bietet zudem die Möglichkeit grundlegende Methoden der <b>räumlichen Statistik</b>
                    ausführen (konvexe Hülle, Regressionsoberflächen, 2D-Kernel-Dichte-Schätzung)
                    und stellt eine interaktive Darstellung der Ausgrabung in Zeitschritten zur 
                    Verfügung. 
                  </p> 
                  <p>
                    Als R-Paket, kann <i>archeoViz</i> lokal mit eigenen Daten ausgeführt werden.
                    Oder Daten können Online über eine Eingabemaske eingeladen werden. Die 
                    Eingabemaske ist derezit in 
                    Deutsch, 
                    <a href=https://analytics.huma-num.fr/archeoviz/en target=_blank>Englisch</a>, 
                    <a href=https://analytics.huma-num.fr/archeoviz/fr target=_blank>Französisch</a>, 
                    <a href=https://analytics.huma-num.fr/archeoviz/it target=_blank>Italienisch</a>,  
                    <a href=https://analytics.huma-num.fr/archeoviz/ro target=_blank>Rumänisch</a>, und 
                    <a href=https://analytics.huma-num.fr/archeoviz/pt target=_blank>Portugiesisch</a> verfügbar.
                  </p>
                  <p>     
                    Das R-Paket wird unter einer GNU GPL-3 Lizenz auf dem Server 
                    <a href=https://cran.r-project.org/package=archeoViz target=_blank>CRAN</a> 
                      veröffentlicht. Sein Quellcode ist auf 
                    <a href=https://github.com/sebastien-plutniak/archeoviz target=_blank>github</a> 
                      verfügbar.
                  </p>"
  # : es ----
  welcome.es <- "<h1>Bienvenidos en <i>archeoViz</i> !</h1>
                <p><i>archeoViz</i> es una aplicación dedicada al arqueología.
                Permite <b>visualizar</b>, <b>explorar</b> de manera interactiva, y 
                presentar y <b>comunicar</b> datos arqueológicos de campo rápidamente en la web.
                </p>
                <p>
                Ofrece <b>visualizaciones</b> en 3D y 2D,
                genera <b>perfiles estratigráficos</b> y <b>mapas</b> de los vestigios arqueológicos,
                permite correr <b>estadísticas espaciales</b> sencillas
                (cascos convexos, superficies de regresión, estimación de densidad por núcleo en 2D), 
                y visualizar una <b>cronología</b> interactiva de las excavaciones de un sitio.
                </p>
                <p>
                Distribuida como un paquete R, 
                <i>archeoViz</i> se puede usar localmente o implementada en un servidor,
                sea cargando los datos través de la interfaz, o
                 iniciando la aplicación con un conjunto de datos específico.
                La interfaz está disponible en 
                <a href=https://analytics.huma-num.fr/archeoviz/de target=_blank>alemán</a>, 
                <a href=https://analytics.huma-num.fr/archeoviz/en target=_blank>inglés</a>, 
                francés, 
                <a href=https://analytics.huma-num.fr/archeoviz/it target=_blank>italiano</a>, 
                <a href=https://analytics.huma-num.fr/archeoviz/pt target=_blank>portugués</a>,  
                <a href=https://analytics.huma-num.fr/archeoviz/ro target=_blank>rumano</a>, y 
                <a href=https://analytics.huma-num.fr/archeoviz/es target=_blank>español</a>.
                </p>
                El paquete, bajo licencia libre, está publicado en <a href=https://cran.r-project.org/package=archeoViz target=_blank>CRAN</a>. Su código fuente también está disponible en <a href=https://github.com/sebastien-plutniak/archeoviz target=_blank>github</a>."
  
    # : ro ----
  welcome.ro <- "
        <h1>Bun venit în <i>archeoViz</i>!</h1>
                <p><i>archeoViz</i> este o aplicație concepută pentru arheologie.
                Permite <b>vizualizarea</b>, <b>explorarea</b> interactivă, transferul și
                <b>communicarea</b> rapide a datelor archaeologice spațiale pe web.
                </p>
                <p>
                Oferă <b>vizualizări</b> interactive 3D și 2D,
                poate genera <b>secțiuni</b> și <b>hărți</b> ale resturilor arheologice, 
        poate rula metode de bază de <b>statistică spațială</b>
                (anvelopa convexă, suprafețe de regresie, estimarea densităţii kernel 2D), 
                și poate afișa o <b>cronologie</b> interactivă a săpăturilor. 
                </p>
                <p>
                Distribuit ca pachet R, 
                <i>archeoViz</i> poate fi folosit local sau încărcat pe un server, 
        permițând utilizatorului să urce datele prin intermediul interfeței 
        sau prin rularea aplicației cu un anumit set de date.
                Interfața este disponibilă în 
                <a href=https://analytics.huma-num.fr/archeoviz/de target=_blank>germană</a>, 
                engleză, 
                <a href=https://analytics.huma-num.fr/archeoviz/fr target=_blank>franceză</a>, 
                <a href=https://analytics.huma-num.fr/archeoviz/it target=_blank>italiană</a>,  
                <a href=https://analytics.huma-num.fr/archeoviz/ro target=_blank>română</a>, și 
                <a href=https://analytics.huma-num.fr/archeoviz/pt target=_blank>portugeză</a>.
                </p>
                Pachetul este publicat sub licență gratuită pe <a href=https://cran.r-project.org/package=archeoViz target=_blank>CRAN</a>. Codul sursă este disponibil și pe <a href=https://github.com/sebastien-plutniak/archeoviz target=_blank>github</a>."


  
  # Input objects ----
  # :  fr ----
  input.objects.fr <- 
    "<p>
    Un tableau au format CSV est requis. Chaque ligne décrit un objet, comportant les champs obligatoires suivants :
    <ul>
      <li> <b>id</b> : <i>valeur alphanumérique</i>, identifiant unique de l'objet </li>
      <li> <b>xmin</b> : <i>valeur numérique</i>, coordonnée de l'objet en axe X (en cm)</li>
      <li> <b>ymin</b> : <i>valeur numérique</i>, coordonnée de l'objet en axe Y (en cm)</li>
      <li> <b>zmin</b> : <i>valeur numérique</i>, coordonnée de l'objet en axe Z (valeur de profondeur en cm)</li>
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
    A data table is required (CSV format). A row describes a single object with the following mandatory fields:
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
    É necessária uma tabela no formato CSV Cada linha descreve um objeto, incluindo os seguintes campos obrigatórios:
    <ul>
      <li> <b>id</b> : <i>valor alfanumérico</i>, identificador único do objeto </li>
      <li> <b>xmin</b> : <i>valor numérico</i>, coordenada do objeto no eixo X (em cm)</li>
      <li> <b>ymin</b> : <i>valor numérico</i>, coordenada do objeto no eixo Y (em cm)</li>
      <li> <b>zmin</b> : <i>valor numérico</i>, coordenada do objeto no eixo Z (valor de profundidade em cm)</li>
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
  
  # :  it ----
  input.objects.it <- 
    "<p>
    È richiesta una tabella in formato CSV. Ogni riga descrive un oggetto, con i seguenti campi obbligatori:
    <ul>
      <li> <b>id</b> : <i>valore alfanumerico</i>, identificativo univoco dell’oggetto </li>
      <li> <b>xmin</b> : <i>valore numerico</i>, coordinata dell’oggetto sull’asse X (in cm)</li>
      <li> <b>ymin</b> : <i>valore numerico</i>, coordinata dell’oggetto sull’asse Y (in cm)</li>
      <li> <b>zmin</b> : <i>valore numerico</i>, coordinata dell’oggetto sull’asse Z (valore di profondità in cm)</li>
      <li> <b>layer</b> : <i>valore numerico</i>, identificativo del livello dell’oggetto</li>
      <li> <b>object_type</b> : <i>valore alfanumerico</i>, categoria dell’oggetto</li>
    </ul>
    Si possono inserire inoltre dei campi opzionali, tra cui:
    <ul>
      <li> <b>square_x</b> : <i>valore alfanumerico</i>, identificativo del quadrato dell’oggetto nell’asse X</li>
      <li> <b>square_y</b> : <i>valore alfanumerico</i>, identificatore del quadrato dell’oggetto nell’asse Y</li>
      <li> <b>year</b> : <i>valore numerico</i>, anno di scavo dell’oggetto</li>
      <li> <b>xmax</b> : <i>valore numerico</i>, se la posizione dell’oggetto in X è compresa in un intervallo di coordinate</li>
      <li> <b>ymax</b> : <i>valore numerico</i>, se la posizione dell’oggetto in Y è compresa in un intervallo di coordinate</li>
      <li> <b>zmax</b> : <i>valore numerico</i>, se la posizione dell’oggetto in Z è compresa in un intervallo di coordinate</li>
      <li> <b>object<i>_edit</i></b>: numero non limitato di variabili aggiuntive che descrivono l’oggetto (i nomi delle colonne devono iniziare con `object_` e avere suffissi diversi)</li>
    </ul>
    </p>"
  
  # :  de ----
    input.objects.de <- 
      "<p>
      Eine Datentablle wird benötigt (CSV-Format). Zeilen beschreiben einzelne Objekte mit folgenden Pflichtfeldern:
      <ul>
        <li> <b>id</b>: <i>alphanumerischer Wert</i>, eindeutige Kennung des Objekts </li>
        <li> <b>xmin</b>: <i>numerischer Wert</i>, Koordinate des Objekts auf der X-Achse (in cm)</li>
        <li> <b>ymin</b>: <i>numerischer Wert</i>, Koordinate des Objekts auf der Y-Achse (in cm)</li>
        <li> <b>zmin</b>: <i>numerischer Wert</i>, Koordinate des Objekts auf der Z-Achse (Tiefe in cm)</li>
        <li> <b>layer</b>: <i>alphanumerischer Wert</i>, Kennung der Ebene/Schicht des Objekts</li>
        <li> <b>object_type</b>: <i>alphanumerischer Wert</i>, Kategorie des Objekts</li>
      </ul>
      Darüber hinaus sind optionale Felder möglich:
      <ul>
        <li> <b>square_x</b>: <i>alphanumerischer Wert</i>, Kennung des Quadranten auf der X-Achse</li>
        <li> <b>square_y</b>: <i>alphanumerischer Wert</i>, Kennung des Quadranten auf der Y-Achse</li>
        <li> <b>year</b> : <i>numerischer Wert</i>, Ausgrabungsjahr</li>
        <li> <b>xmax</b>: <i>numerischer Wert</i>, Zeitangaben, in der die X-Position des Objekts in einem Bereich von X-Koordinaten enthalten ist</li>
        <li> <b>ymax</b>: <i>numerischer Wert</i>, Zeitangaben, in der die Y-Position des Objekts in einem Bereich von Y-Koordinaten enthalten ist</li>
        <li> <b>zmax</b>: <i>numerischer Wert</i>, Zeitangaben, in der die Z-Position des Objekts in einem Bereich von Z-Koordinaten enthalten ist</li>
        <li> <b>object<i>_edit</i></b>: unbegrenzte Anzahl zusätzlicher Variablen, die das Objekt beschreiben (Feldnamen müssen mit 'object_' beginnen und verschiedene Suffixe besitzen)</li>
      </ul>
      </p>"

# :  es ----
  input.objects.es <- 
    "<p>
    Se necesita una tabla bajo el formato CSV. Cada línea describe un objeto, incluyendo los siguientes campos obligatorios:
    <ul>
      <li> <b>id</b> : <i>valor alfanumérico</i>, identificador único del objeto </li>
      <li> <b>xmin</b> : <i>valor numérico</i>, coordenada del objeto en el eje X (en cm)</li>
      <li> <b>ymin</b> : <i>valor numérico</i>, coordenada del objeto en el eje Y (en cm)</li>
      <li> <b>zmin</b> : <i>valor numérico</i>, coordenada del objeto en el eje Z (valor de profundidad en cm)</li>
      <li> <b>layer</b> : <i>valor alfanumérico</i>, identificador de capa del objeto</li>
      <li> <b>object_type</b> : <i>valor alfanumérico</i>, categoría del objeto</li>
    </ul>
    Además, otros campos opcionales son posibles, incluyendo:
    <ul>
      <li> <b>square_x</b> : <i>valor alfanumérico</i>, identificador del cuadrado del objeto en el eje X</li>
      <li> <b>square_y</b> : <i>valor alfanumérico</i>, identificador del cuadrado del objeto en el eje Y</li>
      <li> <b>year</b> : <i>valor numérico</i>, año de excavación del objeto</li>
      <li> <b>xmax</b> : <i>valor numérico</i>, cuando la ubicación del objeto en X está comprendida en un rango de coordenadas</li>
      <li> <b>ymax</b> : <i>valor numérico</i>, cuando la ubicación del objeto en Y está comprendida en un rango de coordenadas</li>
      <li> <b>zmax</b> : <i>valor numérico</i>, cuando la ubicación del objeto en Z está comprendida en un rango de coordenadas</li>
      <li> <b>object<i>_edit</i></b>: número ilimitado de variables adicionales que describen el objeto (los nombres de las columnas debem empezar con `objeto_` y tener sufijos diferentes)</li>
    </ul>
    </p>"

# :  ro ----
  input.objects.ro <- 
    "<p>
    Este necesar un tabel de date (format CSV). Un rând descrie un singur obiect cu următoarele câmpuri obligatorii:  
    <ul>
      <li> <b>id</b>: <i>valoare alfanumerică</i>, identificator unic al obiectului </li>
      <li> <b>xmin</b>: <i>valoare numerică</i>, coordonata obiectului pe axa X (în cm)</li>
      <li> <b>ymin</b>: <i>valoare numerică</i>, coordonata obiectului pe axa Y (în cm)</li>
      <li> <b>zmin</b>: <i>valoare numerică</i>, coordonata obiectului pe axa Z (valoarea adâncimii în cm)</li>
      <li> <b>layer</b>: <i>valoare alfanumerică</i>, identificatorul stratului obiectului</li>
      <li> <b>object_type</b>: <i>valoare alfanumerică</i>, categoria obiectului</li>
    </ul>
    Sunt posibile și câmpuri opționale, printre care:    
    <ul>
      <li> <b>square_x</b>: <i>valoare alfanumerică</i>, identificatorul caroului pe axa X</li>
      <li> <b>square_y</b>: <i>valoare alfanumerică</i>, identificatorul caroului pe axa Y</li>
      <li> <b>year</b> : <i>valoare numerică</i>, anul în care obiectul a fost excavat</li>
      <li> <b>xmax</b>: <i>valoare numerică</i>, atunci când poziția pe axa X a obiectului este inclusă într-un interval de coordonate X</li>
      <li> <b>ymax</b>: <i>valoare numerică</i>, atunci când poziția pe axa Y a obiectului este inclusă într-un interval de coordonate Y</li>
      <li> <b>zmax</b>: <i>valoare numerică</i>, atunci când poziția pe axa Z a obiectului este inclusă într-un interval de coordonate Z</li>
      <li> <b>object<i>_edit</i></b>: număr nelimitat de variabile suplimentare care descriu obiectul (numele câmpurilor trebuie să înceapă cu `object_` și să aibă sufixe diferite)</li>
    </ul>
    </p>"  


  # Input refits ----
  input.refits.fr <- 
    "<p>
    Un tableau à deux colonnes peut être chargé pour les remontages entre objets (format CSV).
    Chaque ligne doit contenir les identifiants uniques des deux objets liés à une relation de remontage (en correspondance avec les valeurs de la colonne `id` du tableau des objets).
  </p>"
  
  input.refits.en <- 
    "<p>
    A data table with two columns can be uploaded for refitting data (CSV format).
  Each row must contain the unique identifiers of two refitting objects (corresponding to the values of the `id` column in the objects table).
  </p>"
  
  input.refits.pt <- 
    "<p>
    Uma tabela de duas colunas pode ser carregada para as remontagens entre objetos (formato CSV). Cada linha deve conter os identificadores únicos dos dois objetos vinculados a uma relação de remontagem (em correspondência com os valores da coluna `id` da tabela de objetos).
    </p>"
  
  input.refits.it <- 
    "<p>
    È possibile caricare una tabella a due colonne per i riassemblaggi tra gli oggetti (formato CSV). Ogni riga deve contenere gli identificativi univoci dei due oggetti riassemblati (in corrispondenza dei valori della colonna `id` della tabella degli oggetti).
    </p>"

  input.refits.de <- 
    "<p>
    Eine Datentabelle für Passobjekte (refitting) mit zwei Spalten hochgeladen werden (CSV-Format).
    Jede Zeile muss die eindeutigen Kennungen von zwei Passobjekten enthalten (entsprechend den Werten der Spalte 'ID' in der Objekttabelle).
    </p>"   

  input.refits.es <- 
    "<p>
    Una tabla de dos columnas puede ser cargada para los remontajes entre objetos (formato CSV). Cada línea debe contener los identificadores únicos de los dos objetos vinculados en una relación de remontaje (corespondiendo con los valores de la columna `id` de la tabla de objetos).
    </p>"
  
    input.refits.ro <- 
    "<p>
  Se poate încărca un tabel de date cu două coloane pentru ajustarea datelor (format CSV).
  Fiecare rând trebuie să conțină identificatorii unici a două obiecte ajustate (care corespund valorilor coloanei `id` din tabelul de obiecte).
  </p>"
  
  
  # Input timeline ----
  input.timeline.fr <- 
    "<p>
    Optionnellement, un tableau (CSV) peut être chargé  à propos du déroulé de la fouille.
    Chaque ligne est relative à un carré de fouille et comporte les informations suivantes: 
    <ul>
    <li> <b>year</b> : <i>valeur numérique</i>, année de fouille</li>
    <li> <b>square_x</b> : <i>valeur alphanumérique</i>, identifiant du carré en axe X</li>
    <li> <b>square_y</b> : <i>valeur alphanumérique</i>, identifiant du carré en axe Y</li>
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
      Opcionalmente, pode ser carregada uma tabela (CSV) referente ao desenvolvimento da escavação. Cada linha refere-se a uma quadra de escavação e contém as seguintes informações:
    <ul>
    <li> <b>year</b>: <i>valor numérico</i>, ano de escavação </li>
    <li> <b>square_x</b>: <i>valor alfanumérico</i>, identificador da quadra no eixo X</li>
    <li> <b>square_y</b>: <i>valor alfanumérico</i>, identificador da quadra no eixo Y</li>
    </ul>
    </p>"
  
  input.timeline.it <- 
    "<p>
      Il caricamento di una tabella (CSV) riguardante lo sviluppo dello scavo è facoltativo. Ogni riga si riferisce a un quadrato di scavo e contiene le seguenti informazioni:
    <ul>
    <li> <b>year</b>: <i>valore numerico</i>, anno di scavo </li>
    <li> <b>square_x</b>: <i>valore alfanumerico</i>, identificatore del quadrato sull’asse X</li>
    <li> <b>square_y</b>: <i>valore alfanumerico</i>, identificatore del quadrato sull’asse Y</li>
    </ul>
    </p>"

    input.timeline.de <- 
    "<p>
    Es kann eine Tabelle (CSV-Format) über die Ausgrabungschronologie hochgeladen werden. Jede Zeile beschreibt einen Quadranten der Fundstelle mit den folgenden Variablen:
    <ul>
    <li> <b>year</b>: <i>numerischer Wert</i>, Jahr der Grabung/Maßnahme </li>
    <li> <b>square_x</b>: <i>alphanumerischer Wert</i>, Kennung des Quadranten auf der X-Achse</li>
    <li> <b>square_y</b>: <i>alphanumerischer Wert</i>, Kennung des Quadranten auf der Y-Achse</li>
    </ul>
    </p>"  
  
      input.timeline.es <- 
    "<p>
      Opcionalmente, se puede cargar una tabla (CSV) con detalles sobre la conducta de la excavación. Cada línea describe un cuadrado de la excavación y contiene las informaciones siguientes:
    <ul>
    <li> <b>year</b>: <i>valor numérico</i>, año de excavación</li>
    <li> <b>square_x</b>: <i>valor alfanumérico</i>, identificador del cuadrado en el eje X</li>
    <li> <b>square_y</b>: <i>valor alfanumérico</i>, identificador del cuadrado en el eje Y</li>
    </ul>
    </p>"
  
    input.timeline.ro <- 
    "<p>
    Se poate încărca un tabel (format CSV) despre istoricul săpăturilor. Fiecare rând descrie un carou al sitului cu următoarele variabile:

    <ul>
    <li> <b>year</b>: <i>valoare numerică</i>, anul săpăturii </li>
    <li> <b>square_x</b>: <i>valoare alfanumerică</i>, identificatorul caroului excavat pe axa X</li>
    <li> <b>square_y</b>: <i>valoare alfanumerică</i>, identificatorul caroului excavat pe axa Y</li>
    </ul>
    </p>"
  
  
  # reproducibility ----
  reproducibility.fr <- "<h1>Reproductibilité</h1>
                         <p>Pour reproduire vos réglages actuels, exécutez <i>archeoViz</i> avec la commande R suivante (ajustez les paramètres “objects.df” et “refits.df” selon vos données) :</p>"
  
  reproducibility.en <- "<h1>Reproducibility</h1>
                         <p>To reproduce your current settings, run <i>archeoViz</i> with the following R command (adjust the “objects.df” and “refits.df” parameters to your needs): </p>"
  
  reproducibility.pt <- "<h1>Reprodutibilidade</h1>
                         <p>Para reproduzir as suas definições actuais, execute o <i>archeoViz</i> com o seguinte comando R (ajuste os parâmetros “objects.df” e “refits.df” aos seus dados):</p>"
  
  reproducibility.it <- "<h1>Riproducibilità</h1>
                         <p>Per riprodurre le impostazioni attuali, eseguire archeoViz con il seguente comando R (regolare i parametri “objects.df” e “refits.df” in base ai propri dati):</p>"

  reproducibility.de <- "<h1>Reproduzierbarkeit</h1>
                         <p>Um Ihre aktuellen Einstellungen zu reproduzieren, führen Sie <i>archeoViz</i> mit dem folgenden R-Befehl aus (passen Sie die Parameter “objects.df” und “refits.df” an Ihre Bedürfnisse an):  </p>"    

  reproducibility.es <- "<h1>Reprodutibilidad</h1>
                         <p>Para reproducir su configuración actual, ejecute <i>archeoViz</i> con el siguiente comando R (ajuste los parámetros “objects.df” y “refits.df” a sus datos):</p>"
  
  reproducibility.ro <- "<h1>Reproductibilitate</h1>
                         <p>Pentru a reproduce setările actuale, rulează <i>archeoViz</i> cu următoarea comandă R (ajustează parametrii “objects.df” și “refits.df” în funcție de ceea ce ai nevoie): </p>"

  
  
  # guidelines ----
  # : en ----
  guidelines.en <- "
<h1 id=archeoviz>archeoViz</h1>
<p><code>archeoViz</code> is a packaged R Shiny application for the
<em>visualisation</em>, <em>exploration</em>, and web
<em>communication</em> of archaeological spatial data. It includes
interactive 3D and 2D <em>visualisations</em>, can generate <em>cross
sections</em> and <em>maps</em> of the remains, and display an
interactive <em>timeline</em> of the work made in a site. Simple
<em>spatial statistics</em> can be performed (convex hull, regression
surfaces, 2D kernel density estimation), as well as <em>exporting
data</em> to other online applications for more complex methods.
<code>archeoViz</code> can be used locally or deployed on a server,
either by allowing the user to load data through the interface or by
running the app with a specific data set. The app interface is available
in English, French, German, Italian, Portuguese, Romanian, and Spanish.
Website: <a href=https://archeoviz.hypotheses.org>https://archeoviz.hypotheses.org</a>.</p>
<ul>
<li><a href=#installation><strong>Installation</strong></a>
<ul>
<li><a href=#local-use>Local Use</a></li>
<li><a href=#remote-use>Remote Use</a></li>
<li><a href=#demonstration>Demonstration</a></li>
</ul></li>
<li><a href=#community-guidelines><strong>Community
Guidelines</strong></a>
<ul>
<li><a href=#reporting-bugs>Reporting Bugs</a></li>
<li><a href=#suggesting-changes>Suggesting Changes</a></li>
<li><a href=#translation>Translation</a></li>
</ul></li>
<li><a href=#use><strong>Use</strong></a>
<ul>
<li><a href=#spatial-information-in-archeoviz>Spatial Information in
archeoViz</a>
<ul>
<li><a href=#points-exact-location-plotted-objects>Points, Exact
Location: Plotted Objects</a></li>
<li><a href=#points-vague-location-spits-buckets-sieved-objects-and-recording-errors>Points,
Vague Location: Spits, Buckets, Sieved Objects, and Recording
Errors</a></li>
<li><a href=#lines>Lines</a></li>
<li><a href=#surfaces>Surfaces</a></li>
</ul></li>
<li><a href=#refittings-and-fabric-measurements>Refittings and Fabric
Measurements</a>
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
<li><a href=#background-drawing>Background drawing</a></li>
<li><a href=#units>Units</a></li>
</ul></li>
<li><a href=#data-input>Data Input</a>
<ul>
<li><a href=#through-the-application-interface>Through the Application
Interface</a></li>
<li><a href=#through-the-r-function-parameters>Through the R Function
Parameters</a></li>
<li><a href=#through-url-parameters>Through URL Parameters</a></li>
<li><a href=#generating-random-data>Generating Random Data</a></li>
<li><a href=#rotating-the-points>Rotating the points</a></li>
</ul></li>
<li><a href=#data-sub-setting>Data sub-setting</a>
<ul>
<li><a href=#by-location-mode>By Location Mode</a></li>
<li><a href=#by-objects-category>By Layer or Object Category</a></li>
</ul></li>
<li><a href=#interactive-visualisation>Interactive Visualisation</a>
<ul>
<li><a href=#general-features>General Features</a></li>
<li><a href=#visualising-spatial-uncertainty>Visualising Spatial
Uncertainty</a></li>
<li><a href=#graphical-outputs>Graphical Outputs</a></li>
</ul></li>
<li><a href=#spatial-statistics>Spatial Statistics</a>
<ul>
<li><a href=#regression-surfaces>Regression Surfaces</a></li>
<li><a href=#convex-hulls>Convex Hulls</a></li>
<li><a href=#id_2d-kernel-density>2D Kernel Density</a></li>
</ul></li>
</ul></li>
<li><a href=#reproducibility><strong>Reproducibility</strong></a></li>
<li><a href=#exports-from-and-to-third-party-applications><strong>Exports
from and to Third-party Applications</strong></a>
<ul>
<li><a href=#export-from-archeoviz>Export from archeoViz</a></li>
<li><a href=#import-to-archeoviz>Import to archeoViz</a></li>
</ul></li>
<li><a href=#advanced-parameters><strong>Advanced
Parameters</strong></a>
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
<li>locally, on the user’s machine</li>
<li>remotely, after deploying the app on a distant server</li>
</ul>
<h2 id=local-use>Local use</h2>
<p>The package can be installed from CRAN with:</p>
<div class=sourceCode id=cb1><pre class=sourceCode r><code class=sourceCode r><span id=cb1-1><a href=#cb1-1 tabindex=-1></a><span class=fu>install.packages</span>(<span class=st>&quot;archeoViz&quot;</span>)</span></code></pre></div>
<p>The development version is available on <em>GitHub</em> and can be
installed with:</p>
<div class=sourceCode id=cb2><pre class=sourceCode r><code class=sourceCode r><span id=cb2-1><a href=#cb2-1 tabindex=-1></a><span class=co># install.packages(&quot;devtools&quot;)</span></span>
<span id=cb2-2><a href=#cb2-2 tabindex=-1></a>devtools<span class=sc>::</span><span class=fu>install_github</span>(<span class=st>&quot;sebastien-plutniak/archeoviz&quot;</span>)</span></code></pre></div>
<p>Then, load the package and launch the app with:</p>
<div class=sourceCode id=cb3><pre class=sourceCode r><code class=sourceCode r><span id=cb3-1><a href=#cb3-1 tabindex=-1></a><span class=fu>library</span>(archeoViz)</span>
<span id=cb3-2><a href=#cb3-2 tabindex=-1></a><span class=fu>archeoViz</span>()</span></code></pre></div>
<h2 id=remote-use>Remote use</h2>
<p>To deploy <code>archeoViz</code> on your Shiny server, first download
and unzip the package:</p>
<div class=sourceCode id=cb4><pre class=sourceCode r><code class=sourceCode r><span id=cb4-1><a href=#cb4-1 tabindex=-1></a><span class=co># set the working directory on your shiny server:</span></span>
<span id=cb4-2><a href=#cb4-2 tabindex=-1></a><span class=fu>setwd</span>(<span class=at>dir =</span> <span class=st>&quot;/some/path/&quot;</span>)</span>
<span id=cb4-3><a href=#cb4-3 tabindex=-1></a><span class=co># download the package:</span></span>
<span id=cb4-4><a href=#cb4-4 tabindex=-1></a><span class=fu>download.file</span>(</span>
<span id=cb4-5><a href=#cb4-5 tabindex=-1></a>  <span class=at>url =</span> <span class=st>&quot;https://github.com/sebastien-plutniak/archeoviz/archive/master.zip&quot;</span>,</span>
<span id=cb4-6><a href=#cb4-6 tabindex=-1></a>  <span class=at>destfile =</span> <span class=st>&quot;archeoviz.zip&quot;</span>)</span>
<span id=cb4-7><a href=#cb4-7 tabindex=-1></a><span class=co># unzip it:</span></span>
<span id=cb4-8><a href=#cb4-8 tabindex=-1></a><span class=fu>unzip</span>(<span class=at>zipfile =</span> <span class=st>&quot;archeoviz.zip&quot;</span>)</span></code></pre></div>
<p>Then, go to
<code>https://&lt;your-shiny-server&gt;/archeoviz-main</code>.</p>
<p>To set the app with your data and preferences, edit the app.R file,
located at the root of the directory:</p>
<div class=sourceCode id=cb5><pre class=sourceCode r><code class=sourceCode r><span id=cb5-1><a href=#cb5-1 tabindex=-1></a><span class=fu>archeoViz</span>(<span class=at>objects.df =</span> <span class=cn>NULL</span>,   <span class=co># data.frame with data about the objects</span></span>
<span id=cb5-2><a href=#cb5-2 tabindex=-1></a>          <span class=at>refits.df =</span> <span class=cn>NULL</span>,    <span class=co># optional data.frame for refitting data</span></span>
<span id=cb5-3><a href=#cb5-3 tabindex=-1></a>          <span class=at>timeline.df =</span> <span class=cn>NULL</span>,  <span class=co># optional data.frame for the excavation timeline</span></span>
<span id=cb5-4><a href=#cb5-4 tabindex=-1></a>          <span class=at>title =</span> <span class=cn>NULL</span>,        <span class=co># title of the site / data set</span></span>
<span id=cb5-5><a href=#cb5-5 tabindex=-1></a>          <span class=at>home.text =</span> <span class=cn>NULL</span>,    <span class=co># HTML content to display on the home page</span></span>
<span id=cb5-6><a href=#cb5-6 tabindex=-1></a>          <span class=at>lang =</span> <span class=st>&quot;en&quot;</span>          <span class=co># interface language (&quot;de&quot;: German, &quot;en&quot;: English, &quot;fr&quot;: French, &quot;it&quot;: Italian, &quot;pt&quot;: Portuguese, &quot;es&quot;: Spanish)</span></span>
<span id=cb5-7><a href=#cb5-7 tabindex=-1></a>          <span class=at>set.theme =</span> <span class=st>&quot;cosmo&quot;</span>) <span class=co># graphic theme for the Shiny interface</span></span></code></pre></div>
<p>The possible values for the <code>set.theme</code> parameter are
illustrated on <a href=https://rstudio.github.io/shinythemes/>this
page</a>. The language of the application can be set with the
<code>lang</code> parameter.</p>
<h2 id=demonstration>Demonstration</h2>
<p>Demonstration instances of the application are deployed on the
<em>Huma Num</em> Shiny server:</p>
<ul>
<li><a href=https://analytics.huma-num.fr/archeoviz/de><code>archeoViz</code>
in German</a>.</li>
<li><a href=https://analytics.huma-num.fr/archeoviz/en><code>archeoViz</code>
in English</a>.</li>
<li><a href=https://analytics.huma-num.fr/archeoviz/fr><code>archeoViz</code>
in French</a>.</li>
<li><a href=https://analytics.huma-num.fr/archeoviz/es><code>archeoViz</code>
in Spanish</a>.</li>
<li><a href=https://analytics.huma-num.fr/archeoviz/it><code>archeoViz</code>
in Italian</a>.</li>
<li><a href=https://analytics.huma-num.fr/archeoviz/pt><code>archeoViz</code>
in Portuguese</a>.</li>
<li><a href=https://analytics.huma-num.fr/archeoviz/ro><code>archeoViz</code>
in Romanian</a>.</li>
</ul>
<p>Real use cases are presented on the <a href=https://analytics.huma-num.fr/archeoviz/home><em>archeoViz
Portal</em></a>.</p>
<h1 id=community-guidelines>Community guidelines</h1>
<h2 id=reporting-bugs>Reporting bugs</h2>
<p>If you encounter a bug, please fill an <a href=https://github.com/sebastien-plutniak/archeoviz/issues>issue</a>
with all the details needed to reproduce it.</p>
<h2 id=suggesting-changes>Suggesting changes</h2>
<p>Suggestions of changes to <code>archeoViz</code> are welcome. These
requests may concern additional functions, changes to documentation,
additional examples, new features, etc. They can be made by filling an
<a href=https://github.com/sebastien-plutniak/archeoviz/issues>issue</a>
and, even better, using pull requests and the <a href=https://docs.github.com/articles/about-pull-requests>GitHub Fork
and Pull model</a>.</p>
<h2 id=translation>Translation</h2>
<p>In the development of <code>archeoViz</code>, particular attention is
paid to multilingualism. The application interface is available in
several languages and translations into additional languages are
welcome. To do so, please edit this <a href=https://github.com/sebastien-plutniak/archeoviz/blob/main/R/load_interface_terms_utf8.R>file</a>
and submit a pull request.</p>
<h1 id=use>Use</h1>
<p>Having archaeological remains from a given site,
<code>archeoViz</code> is designed to lower the technical barriers to
fulfill three objectives:</p>
<ul>
<li>basic spatial exploration and generation of simple graphical
reports;</li>
<li>fast pre-publication of archaeological data, intended for the
scientific community;</li>
<li>fast deployment of a visualisation and communication tool intended
for a broader audience.</li>
</ul>
<p>In addition, <code>archeoViz</code> is a suitable pedagogical
resource for teaching spatial analysis in archaeology, data structuring,
open science, and reproducible workflow.</p>
<p>N.B.: consequently, <code>archeoViz</code> is not intended to replace
more sophisticated analysis tools (e.g., GIS, statistical packages,
etc.)</p>
<h2 id=spatial-information-in-archeoviz>Spatial Information in
archeoViz</h2>
<p>Archaeologists record the location of archaeological objects at
different scales and granularity. Accordingly, they use different
geometrical concepts to represent location.</p>
<h3 id=points-exact-location-plotted-objects>Points, Exact Location:
Plotted Objects</h3>
<p>Using grid coordinates or electronic “total station” enables
recording the individual location of objects on the field. In that case,
the location are represented as points in <code>archeoViz</code>
(triplets of x, y and z coordinates).</p>
<h3 id=points-vague-location-spits-buckets-sieved-objects-and-recording-errors>Points,
Vague Location: Spits, Buckets, Sieved Objects, and Recording
Errors</h3>
<p>However, it is also common that x, y, z, coordinates by object are
not available, for different reasons due to:</p>
<ul>
<li>recording errors, loss of information, resulting in the need to
replace one of several coordinates values by ranges (e.g., a X value is
missing for an object and is replaced by the minimal and maximal X
values of the square where this object was found);</li>
<li>choice of method (e.g., excavation made and recorded using spits of
arbitrary depth, sieved objects, etc.).</li>
</ul>
<p>In all these cases, we have to deal with vague location, when objects
cannot be located as points but are somewhere between ranges of
coordinates. Vague location can concern one, two, or the three spatial
dimensions (the x, y, z coordinates, respectively).</p>
<p>Note that this feature can also be used to deal with the imprecision
of topographical instruments.</p>
<h3 id=lines>Lines</h3>
<p>Lines are useful geometries for representing relationships. In
archaeology, these can be <a href=#reffitings>refitting</a>
relationships between object fragments, orientation (<a href=#fabric-measurements>fabric measurements</a>, etc. Lines are
generated from data loaded as refitting data, either from the “Data”
tab, or with the <code>refits.df</code> parameter of the
<code>archeoViz()</code> function.</p>
<h3 id=surfaces>Surfaces</h3>
<p>Surfaces are useful geometries for representing ground levels,
trenches, pits, etc. In <code>archeoViz</code>, this can be achieved by
defining a subset of points summarising the desired surface, then
displaying the <a href=#convex-hulls>convex hull</a> of this
subset.</p>
<h2 id=refittings-and-fabric-measurements>Refittings and Fabric
Measurements</h2>
<h3 id=refittings>Refittings</h3>
<p>Refittings are usually recorded by archaeologists in two ways:</p>
<ol style=list-style-type: decimal>
<li>by sets of refitting objects: using a two columns table, where a row
corresponds to an <strong>object</strong>. The first column stores the
object’s unique id and the second column stores the id of the set of
refitting objects this object belongs to.</li>
<li>by refitting relationships: using a two columns table, where a row
corresponds to a <strong>relationship</strong>. The first column stores
the first object’s unique id and the second column stores the second
object’s unique id.</li>
</ol>
<p>Although the second data structure is more accurate, the first is
more commonly used.</p>
<p><code>archeoViz</code> processes and represents the two data
structures in two ways:</p>
<ul>
<li>sets of refitting objects must be described using a specific column
in the <code>objects.df</code> table (e.g. <code>object_refits</code>)
and are represented by the color of points in the plots (like any other
variable);</li>
<li>refitting relationships must be described using the
<code>refits.df</code> table and are visualised as segments connecting
the refitting objects in the plots.</li>
</ul>
<h3 id=fabric-measurements>Fabric Measurements</h3>
<p>So far, <code>archeoViz</code> does not handle fabric measurements
properly. However, the process used to represent refittings can also
adapted and used to represent fabric measurements. This requires to
distort the data structure as follows:</p>
<ul>
<li>assuming that fabric measurements were recorded with two
measurements on each object (and not with dip and plunge
measurements),</li>
<li>different unique <code>id</code> values must be given to the two
points, and</li>
<li>the two measures are processed as if they were two refitting
objects.</li>
</ul>
<p>See an example of this method <a href=https://analytics.huma-num.fr/archeoviz/shuidonggou2>here</a>.</p>
<h2 id=data-format>Data Format</h2>
<p>Three types of data can be loaded in <code>archeoViz</code>:</p>
<ul>
<li>an “objects” table (mandatory), with data about the objects;</li>
<li>a “refits” table (optional), with data about the refitting
objects;</li>
<li>a “timeline” table (optional) giving the year when each square of
the site was excavated or surveyed.</li>
</ul>
<h3 id=formatting-data>Formatting Data</h3>
<p>The tables must be CSV files with the first row containing the column
labels. Contents in HTML are allowed. This makes it possible, in
particular, to add links to external resources (e.g., to objects
permanent identifier in other databases, or to concepts identifiers in
standard ontologies / thesauri, etc.).</p>
<p>Formatting your data can be done:</p>
<ul>
<li>either using a spreadsheet editor on your machine to generate CSV
files;</li>
<li>or, for the <code>objects table,</code> using the <a href=https://aurelienroyer.shinyapps.io/Seahors/><em>SEAHORS</em></a>
application to load your data, define the variables (in the “Load data”
tab), and export it to the <code>archeoViz</code> format (in the “Table”
/ “archeoViz exports” tab). It is also possible to directly send the
data to an online <code>archeoViz</code> instance.</li>
</ul>
<h3 id=objects-table>Objects Table</h3>
<p>A row describes a single object with the following mandatory
fields:</p>
<ul>
<li><strong>id</strong>: <em>alphanumerical value</em>, unique
identifier of the object</li>
<li><strong>xmin</strong>: <em>numerical value</em>, coordinate of the
object on the X axis</li>
<li><strong>ymin</strong>: <em>numerical value</em>, coordinate of the
object on the Y axis</li>
<li><strong>zmin</strong>: <em>numerical value</em>, coordinate of the
object on the Z axis (positive depth value)</li>
<li><strong>layer</strong>: <em>alphanumerical value</em>, identifier of
the object’s layer</li>
<li><strong>object_type</strong>: <em>alphanumerical value</em>,
category of the object</li>
</ul>
<p>In addition, optional fields are possible, including:</p>
<ul>
<li><strong>square_x</strong>: <em>alphanumerical value</em>, identifier
of the square on the X axis</li>
<li><strong>square_y</strong>: <em>alphanumerical value</em>, identifier
of the square on the Y axis</li>
<li><strong>year</strong> : <em>numerical value</em>, year when the
object was excavated</li>
<li><strong>xmax</strong>: <em>numerical value</em>, when the X location
of the object is included in a range of X coordinates</li>
<li><strong>ymax</strong>: <em>numerical value</em>, when the Y location
of the object is included in a range of Y coordinates</li>
<li><strong>zmax</strong>: <em>numerical value</em>, when the Z location
of the object is included in a range of Z coordinates</li>
<li><strong>object_edit</strong>: unlimited number of additional
variables describing the object (field names must start with
<code>object_</code> and have different suffixes)</li>
</ul>
<p>The labels of the squares of the grid:</p>
<ul>
<li>are ordered alpha-numerically;</li>
<li>are not displayed to avoid erroneous displays, if the number of
labels does not correspond exactly to the total number of 100 (cm, m,
km) squares that can be defined in the range of minimum and maximum
coordinates contained in the xmin and ymin variables;</li>
<li>can be completed with the <code>add.x.square.labels</code> and
<code>add.y.square.labels</code> parameters of the
<code>archeoViz()</code> function in order to add the missing labels (on
the X and Y axes of the grid, respectively).</li>
</ul>
<h3 id=refitting-table>Refitting Table</h3>
<p>A data table with two columns can be uploaded for refitting data (CSV
format). Each row must contain the unique identifiers of two refitting
objects (corresponding to the values of the <code>id</code> column in
the objects table).</p>
<h3 id=timeline-table>Timeline Table</h3>
<p>A table (CSV format) can be uploaded about excavation history. Row
gives the year when each grid square of the site was excavated or
surveyed. This table must include the following variables:</p>
<ul>
<li><strong>year</strong>: numerical value, the year of excavation</li>
<li><strong>square_x</strong>: alphanumerical value, identifier of the
excavated square on the X axis</li>
<li><strong>square_y</strong>: alphanumerical value, identifier of the
excavated square on the Y axis</li>
</ul>
<h3 id=background-drawing>Background Drawing</h3>
<p>A background drawing can be displayed in the 3D and Map plots. This
feature makes it possible, for example, to show a site map behind a
point cloud. It requires a data table in which each row gives the X and
Y coordinates of the points to be used to draw. Note that the lines will
be drawn following the order of the points in the table. The coordinates
system used must be the same that the one used for the objects. To draw
several lines, an additional column (named “group”) is required,
containing for each point the unique identifier of the line to which
this point belongs to. The data set is loaded using the
<code>background.map</code> parameter.</p>
<h3 id=units>Units</h3>
<p>By default, all distances in <code>archeoViz</code> are in
centimeter. However, it can be changed by giving the <code>unit</code>
parameter one of the following value: “cm”, “m”, “km”. This parameter
determines the contents of the legend of the square size.</p>
<h2 id=data-input>Data Input</h2>
<p>There are four ways to input data in <code>archeoViz</code>:</p>
<ol style=list-style-type: decimal>
<li>uploading data tables through the “Input data” tab,</li>
<li>loading data tables through the <code>archeoViz</code> function’s
parameters, in the R interface;</li>
<li>uploading data tables through URL parameters, when using an online
instance of <code>archeoViz</code>.</li>
<li>generating random data in the “Input data” tab;</li>
</ol>
<h3 id=through-the-application-interface>Through the Application
Interface</h3>
<p>The three types of tables can be loaded in the “Input data” tab. The
CSV separator (one of: comma, semicolon, tabulation) and the character
used for decimal points (period or comma).</p>
<h3 id=through-url-parameters>Through URL parameters</h3>
<p>The URL of an online instance of <code>archeoViz</code> can include
the parameters:</p>
<ul>
<li><code>objects.df=</code></li>
<li><code>refits.df=</code></li>
<li><code>timeline.df=</code></li>
</ul>
<p>whose values must be the URL of a CSV file observing the
<code>archeoViz</code> format described above. For example: <a href=https://analytics.huma-num.fr/archeoviz/en/?objects.df=https://zenodo.org/record/8003880/files/bilzingsleben.csv>https://analytics.huma-num.fr/archeoviz/en/?objects.df=https://zenodo.org/record/8003880/files/bilzingsleben.csv</a></p>
<h3 id=generating-random-data>Generating Random Data</h3>
<p>Using randomly generated data is made possible for demonstration
purposes. To activate this feature, set the slider in “Input data” to a
value higher than 0 (setting the value back to 0 deactivates the
feature). An “objects” data set, a “refits” data set, and a “timeline”
data set are generated, making it possible to test all the
<code>archeoViz</code> functionalities.</p>
<h3 id=through-the-r-function-parameters>Through the R function
parameters</h3>
<p><code>archeoViz</code>’s launching function
(<code>archeoViz()</code>) can be run without parameter</p>
<div class=sourceCode id=cb6><pre class=sourceCode r><code class=sourceCode r><span id=cb6-1><a href=#cb6-1 tabindex=-1></a><span class=fu>archeoViz</span>()</span></code></pre></div>
<p>or by using the <code>objects.df</code>, <code>refits.df</code>, or
<code>timeline.df</code> parameters to input data.frames about the
archaeological objects, refitting relationships between these objects,
and the chronology of the excavation, respectively.</p>
<div class=sourceCode id=cb7><pre class=sourceCode r><code class=sourceCode r><span id=cb7-1><a href=#cb7-1 tabindex=-1></a><span class=fu>archeoViz</span>(<span class=at>objects.df =</span> <span class=cn>NULL</span>,  <span class=co># data.frame with data about the objects</span></span>
<span id=cb7-2><a href=#cb7-2 tabindex=-1></a>          <span class=at>refits.df =</span> <span class=cn>NULL</span>,   <span class=co># data.frame for refitting objects</span></span>
<span id=cb7-3><a href=#cb7-3 tabindex=-1></a>          <span class=at>timeline.df =</span> <span class=cn>NULL</span>) <span class=co># optional data.frame for the excavation timeline</span></span></code></pre></div>
<h3 id=rotating-the-points>Rotating the points</h3>
<p>You can change the orientation of the points in the plan. In the
“Data” tab, select a value (in degrees) and click on the “Validate
selection” button to confirm.</p>
<h2 id=data-sub-setting>Data Sub-setting</h2>
<p>Once data are loaded, a sub-selection of the data can be done in the
left side menu. Grouping can be done by crossing the following
parameters: the mode of location, the layers, and the category of
object.</p>
<h3 id=by-location-mode>By Location Mode</h3>
<p>If all the objects have exact location or vague location, then no
option is proposed. However, if the dataset includes both exact and
vague location, then it is possible to select only one or both of these
options.</p>
<h3 id=by-layer-or-object-category>By Layer or Object Category</h3>
<p>The data can be grouped in two ways: either based on their layer or
on the selected “object_” variable. This option determines the colours
of the points in the 3D and 2D plots and how to group points when
computing convex hulls and 3D regression surfaces. Sub-sets can be
defined by object categories, using the “variable” and “values” fields.
Once one of the “object_type” (or other possible “object_” variables) is
selected, its values appear below and can be selected using the tick
boxes. The selection must be validated by clicking on the “Validate”
button. This selection determines the data to be displayed in the plots
and tables.</p>
<h2 id=interactive-visualisation>Interactive visualisation</h2>
<h3 id=general-features>General features</h3>
<p>The plots in the “3D plot”, “Map”, “Section X”, and “Section Y” tabs
are generated using the <a href=https://CRAN.R-project.org/package=plotly><code>plotly</code></a>
library. All the plots are dynamic and include a menu bar above the plot
with several options (generating an image file, zooming, moving the
view, etc). See details on the <a href=http://plotly.github.io/getting-to-know-the-plotly-modebar/><code>plotly</code>
website</a>.</p>
<p>Clicking on a legend’s item modifies the display:</p>
<ul>
<li>a simple click on an item activates/deactivates its display;</li>
<li>a double click on an item displays this item only (another double
click cancels it).</li>
</ul>
<p>This feature makes it possible to choose which layers are shown. In
addition, the size of the points can be set and whether the refitting
relationships must be represented or not.</p>
<p>Finally, clicking on a point displays information about that point in
the table below the plot.</p>
<h3 id=visualising-spatial-uncertainty>Visualising Spatial
Uncertainty</h3>
<p>In <code>archeoViz</code>, a distinction is made between exact
location (given as x, y, z coordinates) and vague locations (given as
ranges of coordinates). Both types of locations can be displayed. The
uncertainty of vague locations can be visualised by representing objects
not as points but as lines, planes, and volumes (if ranges of
coordinates are given for one, two, or three spatial dimensions,
respectively). Note that this feature is resource intensive and using it
with too much data can significantly slow down the application.</p>
<h3 id=graphical-outputs>Graphical outputs</h3>
<p>Several graphical outputs can be generated in
<code>archeoViz</code>.</p>
<ul>
<li>The plots in the “3D plot”, “Map”, “Section X”, and “Section Y” tabs
can be exported:
<ul>
<li>in SVG format (by clicking on the “camera” icon in the menu bar
above the plot),</li>
<li>as interactive plots in HTML format, by clicking on the “Export”
button.</li>
</ul></li>
<li>The small map in the “Section X” and “Section Y” tabs can be
exported in SVG by clicking on the “Download Map” link.</li>
<li>The plan of the excavation chronology can be exported in SVG format
by clicking on the “Download” button.</li>
</ul>
<h2 id=spatial-statistics>Spatial statistics</h2>
<p><code>archeoViz</code> includes some spatial analysis
functionalities, intended for basic and exploratory use.</p>
<h3 id=regression-surfaces>Regression surfaces</h3>
<p>In the “3D plot” tab, clicking on “Compute surfaces” and “Validate”
displays the regression surface associated with each layer (with at
least 100 points). The surfaces are computed using the generalized
additive model implemented in the <a href=https://CRAN.R-project.org/package=mgcv><code>mgcv</code></a>
package.</p>
<h3 id=convex-hulls>Convex hulls</h3>
<p>In the “3D plot” tab, convex hulls can be displayed as follows:</p>
<ol style=list-style-type: decimal>
<li>tick the “Convex hulls” box,</li>
<li>select, from the menu that appears, the subsets of points for which
convex hulls are to be calculated,</li>
<li>click on “Validate”.</li>
</ol>
<p>Convex hulls associated with each subsets with at least 20 points are
displayed. The convex hulls are computed using the <a href=https://CRAN.R-project.org/package=cxhull><code>cxhull</code></a>
package.</p>
<h3 id=id_2d-kernel-density>2D kernel density</h3>
<p>In the “Map” tab, ticking the “Compute density” box and clicking on
“Validate” generates a map with contour lines showing the points’
density. Density can be computed for all the points together or by layer
(with at least 30 points). The 2D kernel density is computed with the
<code>kde2d</code> function of the <a href=https://CRAN.R-project.org/package=MASS><code>MASS</code></a>
package (through <a href=https://CRAN.R-project.org/package=ggplot2><code>ggplot2</code></a>).</p>
<h2 id=reproducibility>Reproducibility</h2>
<p><code>archeoViz</code> is, by definition, an interactive application.
However, several features guarantee the reproducibility and
communicability of the result of interactions with the application.</p>
<ul>
<li>The 3D visualisation can be exported in an interactive HTML
standalone format, considering the data selection made by the user.</li>
<li>In the “Reproducibility” tab, an R command is dynamically generated,
considering the current application settings made by the user.</li>
<li>In a more advanced use, the URL parameters makes it possible to set
an online instance of the application parameters of interest and to
communicate it by sending the URL.</li>
</ul>
<h2 id=exports-from-and-to-third-party-applications>Exports from and
to Third-party Applications</h2>
<p><code>archeoViz</code> was designed as one of the building blocks of
a decentralised digital ecosystem for archaeological data and analysis.
In this perspective, features and functions are distributed in multiple
interconnected applications, rather than concentrated into few systems.
Consequently, data can be exported and imported between
<code>archeoViz</code> and other web-based applications. Note that, so
far, the export functionalities are only available when using online
<code>archeoViz</code> instances.</p>
<h3 id=export-from-archeoviz>Export from archeoViz</h3>
<p>Data can be exported to other online applications from
<code>archeoViz</code> “Statistics” tab. Some exports are possible only
for specific types of data or if a minimum number of values is
satisfied.</p>
<p><a href=https://analytics.huma-num.fr/Sebastien.Plutniak/archeofrag><em>archeofrag</em></a>
is an R package and web application to assess and evaluate the
distinctions betwen archaeological spatial units (e.g. layers) based on
the analysis of refitting relationships between fragments of objects.
The web version of the application includes methods to measure the
cohesion and admixture of spatial units, and compare it to simulated
data. If an instance of <code>archeoViz</code> is launched with <a href=#refittings>refitting data</a>, then this data can be analysed
with <code>archeofrag</code>. See an example <a href=https://analytics.huma-num.fr/archeoviz/grotte16>here</a>.</p>
<p>The <a href=https://analytics.huma-num.fr/ModAthom/seriograph/><em>Seriograph</em></a>
is a web application (part of the <a href=https://spartaas.gitpages.huma-num.fr/r-package/>SPARTAAS</a>
collection) to visualise changes in the quantitative distribution of
artefacts types in ordered or unordered series of spatial units. Export
to <code>Seriograph</code> is available from online
<code>archeoViz</code> instance (only) for dataset with at least 2
different values for the <code>layer</code> variable and 2 different
values for the selected variable (by default, <code>object_type</code>).
See an example <a href=https://analytics.huma-num.fr/archeoviz/poeymau>here</a>.</p>
<p><a href=https://app.ptm.huma-num.fr/amado/><em>Amado
online</em></a> is an on-line application for analysing contingency
tables. <code>Amado online</code> allows you to manually reorder rows
and columns, and perform automatic seriation and classification. Export
to <code>Amado online</code> is available from online
<code>archeoViz</code> instance (only) for dataset with at least 2
different values for the <code>layer</code> variable and 2 different
values for the selected variable (by default, <code>object_type</code>).
See an example <a href=https://analytics.huma-num.fr/archeoviz/tai>here</a>.</p>
<p><a href=https://cran.r-project.org/package=explor><em>explor</em></a> is
an R Shiny / R package application for interactively exploring the
results of multi-dimensional analyses. Export to <code>explor</code> is
available from online <code>archeoViz</code> instance (only) for dataset
with at least 2 different values for the <code>layer</code> variable and
2 different values for the selected variable (by default,
<code>object_type</code>). The version of <code>explor</code> used from
<code>archeoViz</code> is a fork of the original application, adapted to
run correspondence analysis. See an example <a href=https://analytics.huma-num.fr/archeoviz/tai>here</a>.</p>
<p><a href=https://cran.r-project.org/package=shinyHeatmaply><em>shinyHeatmaply</em></a>
is an R Shiny / R package application to generate and interactively
explore heatmaps. Multiple statistical distance and classification
methods can be applied. Export to <code>shinyHeatmaply</code> is
available from online <code>archeoViz</code> instance (only) for dataset
with at least 2 different values for the <code>layer</code> variable and
2 different values for the selected variable (by default,
<code>object_type</code>). The version of <code>shinyHeatmaply</code>
used from <code>archeoViz</code> is a fork of the original application.
See an example <a href=https://analytics.huma-num.fr/archeoviz/grande-rivoire>here</a>.</p>
<h3 id=import-to-archeoviz>Import to archeoViz</h3>
<p><a href=https://aurelienroyer.shinyapps.io/Seahors/><em>SEAHORS</em></a>
is a web application and R package to visualise the spatial distribution
of archaeological remains. As mentioned <a href=#formatting-data>above</a>, SEAHORS can be used to import,
reshape, and send a dataset to an online instance of the
<code>archeoViz</code> application.</p>
<h2 id=advanced-parameters>Advanced parameters</h2>
<p>The <code>archeoViz()</code> function can be set with multiple
optional parameters, related to:</p>
<ul>
<li>the input data (see <a href=#through-function-parameters>above</a>),</li>
<li>the contents of the home page (see <a href=#deployed-use>above</a>),</li>
<li>the <a href=#square-grid>square grid</a>,</li>
<li>the <a href=#parameters-presetting>presetting</a> of the
parameters that can be set through the application’s graphical
interface,</li>
<li>the <a href=#reactive-plot-display>reactive behavior</a> of the
application regarding the generation of plots,</li>
<li>the <a href=#html-export>HTML export</a>,</li>
<li>the <a href=#url-parameters>URL parameters</a>.</li>
</ul>
<div class=sourceCode id=cb8><pre class=sourceCode r><code class=sourceCode r><span id=cb8-1><a href=#cb8-1 tabindex=-1></a><span class=fu>archeoViz</span>(<span class=at>objects.df=</span><span class=cn>NULL</span>, <span class=at>refits.df=</span><span class=cn>NULL</span>, <span class=at>timeline.df=</span><span class=cn>NULL</span>,</span>
<span id=cb8-2><a href=#cb8-2 tabindex=-1></a>          <span class=at>title=</span><span class=cn>NULL</span>, <span class=at>home.text=</span><span class=cn>NULL</span>, <span class=at>lang=</span><span class=st>&quot;en&quot;</span>, <span class=at>set.theme=</span><span class=st>&quot;cosmo&quot;</span>,</span>
<span id=cb8-3><a href=#cb8-3 tabindex=-1></a>          <span class=at>square.size =</span> <span class=dv>100</span>, <span class=at>unit =</span> <span class=st>&quot;cm&quot;</span>, <span class=at>rotation =</span> <span class=dv>0</span>, </span>
<span id=cb8-4><a href=#cb8-4 tabindex=-1></a>          <span class=at>grid.orientation =</span> <span class=cn>NULL</span>, <span class=at>background.map =</span> <span class=cn>NULL</span>,</span>
<span id=cb8-5><a href=#cb8-5 tabindex=-1></a>          <span class=at>reverse.axis.values =</span> <span class=cn>NULL</span>, <span class=at>reverse.square.names =</span> <span class=cn>NULL</span>,</span>
<span id=cb8-6><a href=#cb8-6 tabindex=-1></a>          <span class=at>add.x.square.labels =</span> <span class=cn>NULL</span>, <span class=at>add.y.square.labels =</span> <span class=cn>NULL</span>,</span>
<span id=cb8-7><a href=#cb8-7 tabindex=-1></a>          <span class=at>class.variable =</span> <span class=cn>NULL</span>, <span class=at>class.values =</span> <span class=cn>NULL</span>,</span>
<span id=cb8-8><a href=#cb8-8 tabindex=-1></a>          <span class=at>default.group =</span> <span class=st>&quot;by.layer&quot;</span>, <span class=at>location.mode =</span> <span class=cn>NULL</span>,</span>
<span id=cb8-9><a href=#cb8-9 tabindex=-1></a>          <span class=at>map.z.val =</span> <span class=cn>NULL</span>, <span class=at>map.density =</span> <span class=st>&quot;no&quot;</span>, <span class=at>map.refits =</span> <span class=cn>NULL</span>,</span>
<span id=cb8-10><a href=#cb8-10 tabindex=-1></a>          <span class=at>plot3d.ratio =</span> <span class=dv>1</span>, <span class=at>plot3d.hulls =</span> <span class=cn>FALSE</span>, <span class=at>hulls.class.values =</span> <span class=cn>NULL</span>,</span>
<span id=cb8-11><a href=#cb8-11 tabindex=-1></a>          <span class=at>plot3d.surfaces =</span> <span class=cn>NULL</span>, <span class=at>plot3d.refits =</span> <span class=cn>NULL</span>, <span class=at>point.size =</span> <span class=dv>2</span>,</span>
<span id=cb8-12><a href=#cb8-12 tabindex=-1></a>          <span class=at>sectionX.x.val =</span> <span class=cn>NULL</span>, <span class=at>sectionX.y.val =</span> <span class=cn>NULL</span>, <span class=at>sectionX.refits =</span> <span class=cn>NULL</span>, </span>
<span id=cb8-13><a href=#cb8-13 tabindex=-1></a>          <span class=at>sectionY.x.val =</span> <span class=cn>NULL</span>, <span class=at>sectionY.y.val =</span> <span class=cn>NULL</span>, <span class=at>sectionY.refits =</span> <span class=cn>NULL</span>,</span>
<span id=cb8-14><a href=#cb8-14 tabindex=-1></a>          <span class=at>camera.center =</span> <span class=fu>c</span>(<span class=dv>0</span>, <span class=dv>0</span>, <span class=dv>0</span>), <span class=at>camera.eye =</span> <span class=fu>c</span>(<span class=fl>1.25</span>, <span class=fl>1.25</span>, <span class=fl>1.25</span>),</span>
<span id=cb8-15><a href=#cb8-15 tabindex=-1></a>          <span class=at>run.plots =</span> <span class=cn>FALSE</span>, <span class=at>html.export =</span> <span class=cn>TRUE</span>, <span class=at>table.export =</span> <span class=cn>TRUE</span></span>
<span id=cb8-16><a href=#cb8-16 tabindex=-1></a>          )</span></code></pre></div>
<h3 id=square-grid>Square grid</h3>
<div class=sourceCode id=cb9><pre class=sourceCode r><code class=sourceCode r><span id=cb9-1><a href=#cb9-1 tabindex=-1></a><span class=fu>archeoViz</span>(<span class=at>square.size =</span> <span class=dv>100</span>, <span class=at>unit =</span> <span class=st>&quot;cm&quot;</span>, <span class=at>rotation =</span> <span class=dv>0</span>, </span>
<span id=cb9-2><a href=#cb9-2 tabindex=-1></a>          <span class=at>grid.orientation =</span> <span class=cn>NULL</span>, <span class=at>background.map =</span> <span class=cn>NULL</span>,</span>
<span id=cb9-3><a href=#cb9-3 tabindex=-1></a>          <span class=at>reverse.axis.values =</span> <span class=cn>NULL</span>, <span class=at>reverse.square.names =</span> <span class=cn>NULL</span>,</span>
<span id=cb9-4><a href=#cb9-4 tabindex=-1></a>          <span class=at>add.x.square.labels =</span> <span class=cn>NULL</span>, <span class=at>add.y.square.labels =</span> <span class=cn>NULL</span></span>
<span id=cb9-5><a href=#cb9-5 tabindex=-1></a>          )</span></code></pre></div>
<ul>
<li><strong>square.size</strong>: numerical. Size (width and height) of
the squares in the grid system. Default value is 100.</li>
<li><strong>unit</strong>: character. Unit for spatial distances. One of
“cm”, “m”, “km”.</li>
<li><strong>rotation</strong>: integer. Value (degrees) for the in-plane
rotation of the point cloud.</li>
<li><strong>grid.orientation</strong>: numerical. Orientation (degrees,
positive or negative) of the grid (0 corresponds to a north
orientation).</li>
<li><strong>background.map</strong>: data frame or matrix. Coordinates
to draw background lines in 3D and Map plots.</li>
<li><strong>reverse.axis.values</strong>: character. Name of the axis or
axes to be reversed (any combination of “x”, “y”, “z”).</li>
<li><strong>reverse.square.names</strong>: character. Name of the axis
or axes for which to reverse the order of the square labels (any
combination of “x”, “y”, “z”).</li>
<li><strong>add.x.square.labels</strong>: character. Additional square
labels for the “x” axis.</li>
<li><strong>add.y.square.labels</strong>: character. Additional square
labels for the “y” axis.</li>
</ul>
<h3 id=parameter-presetting>Parameter presetting</h3>
<div class=sourceCode id=cb10><pre class=sourceCode r><code class=sourceCode r><span id=cb10-1><a href=#cb10-1 tabindex=-1></a><span class=fu>archeoViz</span>(<span class=at>class.variable =</span> <span class=cn>NULL</span>, <span class=at>class.values =</span> <span class=cn>NULL</span>,</span>
<span id=cb10-2><a href=#cb10-2 tabindex=-1></a>          <span class=at>default.group =</span> <span class=st>&quot;by.layer&quot;</span>, <span class=at>location.mode =</span> <span class=cn>NULL</span>,</span>
<span id=cb10-3><a href=#cb10-3 tabindex=-1></a>          <span class=at>map.z.val =</span> <span class=cn>NULL</span>, <span class=at>map.density =</span> <span class=st>&quot;no&quot;</span>, <span class=at>map.refits =</span> <span class=cn>NULL</span>,</span>
<span id=cb10-4><a href=#cb10-4 tabindex=-1></a>          <span class=at>plot3d.hulls =</span> <span class=cn>NULL</span>, <span class=at>plot3d.surfaces =</span> <span class=cn>NULL</span>, <span class=at>plot3d.refits =</span> <span class=cn>NULL</span>,</span>
<span id=cb10-5><a href=#cb10-5 tabindex=-1></a>          <span class=at>sectionX.x.val =</span> <span class=cn>NULL</span>, <span class=at>sectionX.y.val =</span> <span class=cn>NULL</span>, <span class=at>sectionX.refits =</span> <span class=cn>NULL</span>, </span>
<span id=cb10-6><a href=#cb10-6 tabindex=-1></a>          <span class=at>sectionY.x.val =</span> <span class=cn>NULL</span>, <span class=at>sectionY.y.val =</span> <span class=cn>NULL</span>, <span class=at>sectionY.refits =</span> <span class=cn>NULL</span>,</span>
<span id=cb10-7><a href=#cb10-7 tabindex=-1></a>          <span class=at>camera.center =</span> <span class=cn>NULL</span>, <span class=at>camera.eye =</span> <span class=cn>NULL</span></span>
<span id=cb10-8><a href=#cb10-8 tabindex=-1></a>          )</span></code></pre></div>
<ul>
<li><strong>class.variable</strong>: character. At the launch of the
app, name of the variable to preselect.</li>
<li><strong>class.values</strong>: character vector. At the launch of
the app, names of the values to preselect.</li>
<li><strong>default.group</strong>: character. At the launch of the app,
preset of the variable used to group data (one of “by.layer” or
“by.variable”).</li>
<li><strong>location.mode</strong>: character. At the launch of the app,
preset of the location methods (any combination of “exact”, “fuzzy”,
“show.uncertainty”).</li>
<li><strong>map.z.val</strong>: numerical. Minimal and maximal Z
coordinates values to display in the map plot.</li>
<li><strong>map.density</strong>: character. At the launch of the app,
whether to compute and show density contours in the map plot (one of
“no”, “overall”, “by.variable”).</li>
<li><strong>map.refits</strong>: TRUE or FALSE. Whether to show refits
in the map plot.</li>
<li><strong>plot3d.hulls</strong>: TRUE or FALSE. At the launch of the
app, whether to compute and show convex hulls in the 3D plot.</li>
<li><strong>hulls.class.values</strong>: character. At the launch of the
app, names of the points subsets for which to compute convex hulls.</li>
<li><strong>plot3d.surfaces</strong>: TRUE or FALSE. At the launch of
the app, whether to compute and show regression in the 3D plot.</li>
<li><strong>plot3d.refits</strong>: TRUE or FALSE. At the launch of the
app, whether to show refits on the 3D section plot.</li>
<li><strong>point.size</strong>: integer. At the launch of the app, size
of the points in the plots.</li>
<li><strong>sectionX.x.val</strong>: numerical. At the launch of the
app, minimal and maximal X coordinates values to display in the X
section plot.</li>
<li><strong>sectionX.y.val</strong>: numerical. At the launch of the
app, minimal and maximal Y coordinates values to display in the X
section plot.</li>
<li><strong>sectionX.refits</strong>: TRUE or FALSE. At the launch of
the app, whether to show refits in the X section plot.</li>
<li><strong>sectionY.x.val</strong>: numerical. At the launch of the
app, minimal and maximal X coordinates values to display in the Y
section plot.</li>
<li><strong>sectionY.y.val</strong>: numerical. At the launch of the
app, minimal and maximal Y coordinates values to display in the Y
section plot.</li>
<li><strong>sectionY.refits</strong>: TRUE or FALSE. At the launch of
the app, whether to show refits in the Y section plot.</li>
<li><strong>camera.center</strong>: numerical. In 3D plot, coordinates
of the point to which the camera looks at (default values: x=0, y=0,
z=0).</li>
<li><strong>camera.eye</strong>: numerical. In 3D plot, coordinates of
the camera’s position (default values: x=1.25, y=1.25, z=1.25).</li>
</ul>
<h3 id=reactive-plot-display>Reactive plot display</h3>
<div class=sourceCode id=cb11><pre class=sourceCode r><code class=sourceCode r><span id=cb11-1><a href=#cb11-1 tabindex=-1></a><span class=fu>archeoViz</span>(<span class=at>run.plots =</span> <span class=cn>FALSE</span>)</span></code></pre></div>
<ul>
<li><strong>run.plots</strong>: TRUE or FALSE. Whether to immediately
compute and show plots (without requiring the user to click on the
“Refresh” button).</li>
</ul>
<h3 id=control-export-formats>Control Export Formats</h3>
<ul>
<li><strong>html.export</strong> : TRUE or FALSE. Whether or not to
allow figures to be exported as interactive HTML widgets.</li>
<li><strong>table.export</strong>: TRUE or FALSE. Allow or disallow data
transfer to <a href=#exports-from-and-to-third-party-applications>third-party
applications</a> in the “Statistics” tab.</li>
</ul>
<h3 id=url-parameters>URL parameters</h3>
<p>An instance of <code>archeoViz</code> deployed online on a server can
be set with URL parameters. Supported parameters include:</p>
<ul>
<li><code>objects.df</code>, <code>refits.df</code>,
<code>timeline.df</code></li>
<li><code>title</code>, <code>home.text</code></li>
<li><code>reverse.axis.values</code>,
<code>reverse.square.names</code></li>
<li><code>square.size</code></li>
<li><code>add.x.square.labels</code>,
<code>add.y.square.labels</code></li>
<li><code>class.variable</code>, <code>class.values</code></li>
<li><code>default.group</code></li>
<li><code>location.mode</code></li>
<li><code>map.density</code>, <code>map.refits</code></li>
<li><code>plot3d.hulls</code>, <code>plot3d.surfaces</code>,
<code>plot3d.refits</code></li>
<li><code>sectionX.refits</code></li>
<li><code>sectionY.refits</code></li>
<li><code>run.plots</code></li>
</ul>
<p>(The following parameters are not supported in the current version:
<code>map.z.val</code>, <code>sectionX.x.val</code>,
<code>point.size</code>, <code>sectionX.y.val</code>,
<code>sectionY.x.val</code>, <code>sectionY.y.val</code>,
<code>lang</code>, <code>set.theme</code>, <code>camera.center</code>,
<code>camera.eye</code>, <code>html.export</code>,
<code>table.export</code>.)</p>
<p>The parameters must be written using the URL syntax
(?param1=value&amp;param2=value2) and have the same type of values than
when used in the R interface. For example, the following URL launches an
<code>archeoViz</code> instance using the <a href=https://zenodo.org/record/8003880>Bilzingsleben</a> dataset:</p>
<p><a href=https://analytics.huma-num.fr/archeoviz/en/?objects.df=https://zenodo.org/record/8003880/files/bilzingsleben.csv>https://analytics.huma-num.fr/archeoviz/en/?objects.df=https://zenodo.org/record/8003880/files/bilzingsleben.csv</a></p>
<p>This URL does the same, but also includes the refitting table
(parameter <code>&amp;refits.df=</code>) and set the activate the
display of the refitting relationships in the 3D and map plots:</p>
<p><a href=https://analytics.huma-num.fr/archeoviz/en/?map.refits=TRUE&amp;plot3d.refits=TRUE&amp;objects.df=https://zenodo.org/record/8003880/files/bilzingsleben.csv&amp;refits.df=https://zenodo.org/record/8003880/files/bilzingsleben-antlers-refits.csv>https://analytics.huma-num.fr/archeoviz/en/?map.refits=TRUE&amp;plot3d.refits=TRUE&amp;objects.df=https://zenodo.org/record/8003880/files/bilzingsleben.csv&amp;refits.df=https://zenodo.org/record/8003880/files/bilzingsleben-antlers-refits.csv</a></p>
<p>The following URL launches the Bilzingsleben dataset, pre-setting the
app to:</p>
<ol style=list-style-type: decimal>
<li>groups the points by variable (parameter <code>default.group</code>,
with walue <code>by.variable</code> instead of
<code>by.layer</code>)</li>
<li>selects only the “Antlers” (parameter
<code>class.values</code>)</li>
<li>redefines the size of the square grid (parameter
<code>square.size</code>, 500 instead of the 100 default value)</li>
<li>enable the immediate display of the plots (parameter
<code>run.plots</code>)</li>
<li>modifies the title of the page (parameter <code>title</code>)</li>
<li>modifies the content of the home page with basic HTML contents
(parameter <code>home.txt</code>)</li>
</ol>
<p><a href=https://analytics.huma-num.fr/archeoviz/en/?default.group=by.variable&amp;class.values=Antler&amp;square.size=500&amp;run.plots=TRUE&amp;title=Anters%20at%20Bilzingsleben&amp;home.text=Many%20%3Cb%3Eantlers%3C/b%3E&amp;objects.df=https://zenodo.org/record/8003880/files/bilzingsleben.csv><span>https://analytics.huma-num.fr/archeoviz/en/?default.group=by.variable&amp;class.values=Antler&amp;square.size=500&amp;run.plots=TRUE&amp;title=Antlers%20at%20Bilzingsleben&amp;home.text=Many%20</span><b>antlers</b>&amp;objects.df=<span>https://zenodo.org/record/8003880/files/bilzingsleben.csv</span></a></p>
<p>Note that the parameters <code>add.x.square.labels</code>,
<code>add.y.square.labels</code>, <code>location.mode</code>, and
<code>class.values</code>, which accept simple or multiple values in the
R interface (e.g., c(“value1”, “value2”)) only accept one value when set
as URL parameters (this is a restriction due to the URL syntax).</p>
<h1 id=acknowledgments>Acknowledgments</h1>
<p>The <code>archeoViz</code> application and package is developed and
maintained by Sébastien Plutniak. Arthur Coulon, Solène Denis, Olivier
Marlet, and Thomas Perrin tested and supported the project in its early
stage. Renata Araujo, Laura Coltofean, Sara Giardino, Julian Laabs, and
Nicolas Delsol translated the application into Portuguese, Romanian,
Italian, German, and Spanish respectively.</p>
<h1 id=references>References</h1>
<h2 id=software>Software</h2>
<ul>
<li>Plutniak, Sébastien, Renata Araujo, Laura Coltofean, Nicolas Delsol,
Sara Giardino, Julian Laabs. 2024. “archeoViz. Visualisation,
Exploration, and Web Communication of Archaeological Spatial Data”.
v1.3.4, DOI: <a href=https://doi.org/10.5281/zenodo.7460193>10.5281/zenodo.7460193</a>.</li>
<li>Plutniak, Sébastien, Anaïs Vignoles. 2023. “<a href=https://hal.science/hal-04156271>The archeoViz Portal:
Dissemination of Spatial Archaeological Datasets</a>”, web portal, <a href=https://analytics.huma-num.fr/archeoviz/home>https://analytics.huma-num.fr/archeoviz/home</a>.</li>
</ul>
<h2 id=papers>Papers</h2>
<ul>
<li>Plutniak, Sébastien. 2023. “archeoViz: an R package for the
Visualisation, Exploration, and Web Communication of Archaeological
Spatial Data”. <em>Journal of Open Source Software</em>, 92(8), 5811,
DOI: <a href=https://doi.org/10.21105/joss.05811>10.21105/joss.05811</a>.</li>
<li>Plutniak, Sébastien. 2023. “<a href=https://www.prehistoire.org/offres/doc_inline_src/515/0-BSPF_2023_1_2e_partie_Correspondance_PLUTNIAK.pdf>Visualiser
et explorer la distribution spatiale du mobilier archéologique :
l’application archeoViz et son portail web</a>”. <em>Bulletin de la
Société préhistorique française</em>, 120(1), p. 70-74.</li>
</ul>
<h2 id=presentations>Presentations</h2>
<ul>
<li>Plutniak, Sébastien. 2023. “<a href=https://hal.science/hal-04146410>Fostering the Publication of
Spatial Archaeological Data: a Decentralized Approach. The archeoViz Web
Application and its Portal</a>”, slides of a presentation at the
University of Florida, Gainesville.</li>
<li>Plutniak, Sébastien, Anaïs Vignoles. 2023. “<a href=https://hal.science/hal-04070444>L’application web / package
archeoViz et son portail web. Une solution décentralisée
d’éditorialisation de données archéologiques spatialisées</a>, slides of
a presentation at the SITRADA workshop, Paris.</li>
</ul>
<h2 id=websites>Websites</h2>
<ul>
<li>The <em>archeoViz. Data visualization in archaeology. Re-use,
visualization, dissemination of spatial data</em> blog: <a href=https://archeoviz.hypotheses.org>https://archeoviz.hypotheses.org</a></li>
</ul>
"
  
  
#  : fr ----
guidelines.fr <- "
<h1 id=archeoviz>archeoViz</h1>
<p><code>archeoViz</code> est une application dédiée à l’archéologie.
Elle permet de <em>visualiser</em>, d’<em>explorer</em> interactivement,
et d’exposer et <em>communiquer</em> rapidement sur le web des données
archéologiques spatialisées. Elle propose des <em>visualisations</em> en
3D et 2D, génère des <em>coupes</em> et des <em>cartes</em> du mobilier
archéologique, permet de visualiser la <em>chronologie</em> des travaux
sur un site. Il est possible d’y réaliser des <em>statistiques
spatiales</em> simples (enveloppes convexes, surfaces de régression,
estimation de densité par noyau en 2D) ainsi que d’<em>exporter des
données</em> vers d’autres applications en ligne pour appliquer des
méthodes plus complexes. <code>archeoViz</code> peut être utilisée
localement ou déployée sur un serveur, soit en chargeant des données via
l’interface, soit en lançant l’application avec un jeu de donnée
spécifique. L’interface est disponible en allemand, anglais, italien,
français, portugais et roumain. Page web: <a href=https://archeoviz.hypotheses.org>https://archeoviz.hypotheses.org</a>.</p>
<ul>
<li><a href=#installation><strong>Installation</strong></a>
<ul>
<li><a href=#locale>Locale</a></li>
<li><a href=#distante>Distante</a></li>
<li><a href=#démonstration>Démonstration</a></li>
</ul></li>
<li><a href=#recommandations-communautaires><strong>Recommandations
communautaires</strong></a>
<ul>
<li><a href=#signaler-un-bug>Signaler un bug</a></li>
<li><a href=#soumettre-une-modification>Soumettre une
modification</a></li>
<li><a href=#traduire>Traduire</a></li>
</ul></li>
<li><a href=#utilisation><strong>Utilisation</strong></a>
<ul>
<li><a href=#linformation-spatiale-dans-archeoviz>L’information
spatiale dans archeoViz</a>
<ul>
<li><a href=#points-localisation-exacte--les-objets-relevés>Points,
localisation exacte : les objets relevés</a></li>
<li><a href=#points-localisation-vague--passes-seaux-tamis-et-erreurs-denregistement>Points,
localisation vague : passes, seaux, tamis et erreurs
d’enregistement</a></li>
<li><a href=#lignes>Lignes</a></li>
<li><a href=#surfaces>Surfaces</a></li>
</ul></li>
<li><a href=#remontages-et-mesures-de-fabrique>Remontages et mesures
de fabrique</a>
<ul>
<li><a href=#remontages>Remontages</a></li>
<li><a href=#mesures-de-fabrique>Mesures de fabrique</a></li>
</ul></li>
<li><a href=#formater-des-données>Format de données</a>
<ul>
<li><a href=#formater-des-données>Formater des données</a></li>
<li><a href=#tableau-des-objets>Tableau des objets</a></li>
<li><a href=#tableau-des-remontages>Tableau des remontages</a></li>
<li><a href=#tableau-de-la-chronologie>Tableau de la
chronologie</a></li>
<li><a href=#dessin-darrière-fond>Dessin d’arrière-fond</a></li>
<li><a href=#unités>Unités</a></li>
</ul></li>
<li><a href=#charger-des-données>Charger des données</a>
<ul>
<li><a href=#via-linterface-de-lapplication>Via l’interface de
l’application</a></li>
<li><a href=#via-les-paramètres-de-la-fonction-r>Via les paramètres de
la fonction R</a></li>
<li><a href=#via-les-paramètres-dune-url>Via les paramètres d’une
URL</a></li>
<li><a href=#par-génération-de-données-aléatoires>Par génération de
données aléatoires</a></li>
<li><a href=#rotation-des-points>Rotation des points</a></li>
</ul></li>
<li><a href=#sous-sélection-de-données>Sous-sélection de données</a>
<ul>
<li><a href=#par-mode-de-localisation>Par mode de
localisation</a></li>
<li><a href=#par-couche-ou-catégorie-dobjet>Par couche ou catégorie
d’objet</a></li>
</ul></li>
<li><a href=#visualisations-interactives>Visualisations
interactives</a>
<ul>
<li><a href=#généralités>Généralités</a></li>
<li><a href=#sorties-graphiques>Sorties graphiques</a></li>
<li><a href=#visualisation-de-l-incertitude-spatiale>Visualisation de
l’incertitude spatiale</a></li>
</ul></li>
<li><a href=#statistiques-spatiales>Statistiques spatiales</a>
<ul>
<li><a href=#surfaces-de-régression>Surfaces de régression</a></li>
<li><a href=#enveloppes-convexes>Enveloppes convexes</a></li>
<li><a href=#estimation-2d-de-densité-par-noyau>Estimation 2D de
densité par noyau</a></li>
</ul></li>
</ul></li>
<li><a href=#reproductibilité><strong>Reproductibilité</strong></a></li>
<li><a href=#exports-depuis-et-vers-des-applications-tierces><strong>Exports
depuis et vers des applications tierces</strong></a>
<ul>
<li><a href=#export-depuis-archeoviz>Export depuis archeoViz</a></li>
<li><a href=#import-vers-archeoviz>Import vers archeoViz</a></li>
</ul></li>
<li><a href=#paramètres-avancés><strong>Paramètres
avancés</strong></a>
<ul>
<li><a href=#carroyage>Carroyage</a></li>
<li><a href=#pré-sélection-des-paramètres>Pré-sélection des
paramètres</a></li>
<li><a href=#affichage-réactif-des-visualisations>Affichage réactif
des visualisations</a></li>
<li><a href=#contrôle-des-formats-d-export>Contrôle des formats
d’export</a></li>
<li><a href=#paramètres-url>Paramètres URL</a></li>
</ul></li>
<li><a href=#remerciements><strong>Remerciements</strong></a></li>
<li><a href=#références-et-ressources><strong>Références et
ressources</strong></a>
<ul>
<li><a href=#logiciels>Logiciels</a></li>
<li><a href=#articles>Articles</a></li>
<li><a href=#présentations>Présentations</a></li>
<li><a href=#sites-web>Sites web</a></li>
</ul></li>
</ul>
<h1 id=installation>Installation</h1>
<p><code>archeoViz</code> peut être employée de deux manières:</p>
<ul>
<li>localement, sur la machine de l’utilisateur</li>
<li>à distance, après déploiement sur un serveur distant</li>
</ul>
<h2 id=locale>Locale</h2>
<p>Le package peut être installé depuis le CRAN:</p>
<div class=sourceCode id=cb1><pre class=sourceCode r><code class=sourceCode r><span id=cb1-1><a href=#cb1-1 tabindex=-1></a><span class=fu>install.packages</span>(<span class=st>&quot;archeoViz&quot;</span>)</span></code></pre></div>
<p>La version de développement peut être téléchargée depuis
<em>GitHub</em>:</p>
<div class=sourceCode id=cb2><pre class=sourceCode r><code class=sourceCode r><span id=cb2-1><a href=#cb2-1 tabindex=-1></a><span class=co># install.packages(&quot;devtools&quot;)</span></span>
<span id=cb2-2><a href=#cb2-2 tabindex=-1></a>devtools<span class=sc>::</span><span class=fu>install_github</span>(<span class=st>&quot;sebastien-plutniak/archeoviz&quot;</span>)</span></code></pre></div>
<p>Après quoi, chargez le package et lancez l’application avec:</p>
<div class=sourceCode id=cb3><pre class=sourceCode r><code class=sourceCode r><span id=cb3-1><a href=#cb3-1 tabindex=-1></a><span class=fu>library</span>(archeoViz)</span>
<span id=cb3-2><a href=#cb3-2 tabindex=-1></a><span class=fu>archeoViz</span>()</span></code></pre></div>
<h2 id=déployée>Déployée</h2>
<p>Pour déployer <code>archeoViz</code> sur votre Shiny server,
téléchargez premièrement le package:</p>
<div class=sourceCode id=cb4><pre class=sourceCode r><code class=sourceCode r><span id=cb4-1><a href=#cb4-1 tabindex=-1></a><span class=co># déterminez le répertoire de travail dans votre shiny server:</span></span>
<span id=cb4-2><a href=#cb4-2 tabindex=-1></a><span class=fu>setwd</span>(<span class=at>dir =</span> <span class=st>&quot;/some/path/&quot;</span>)</span>
<span id=cb4-3><a href=#cb4-3 tabindex=-1></a><span class=co># téléchargez le package:</span></span>
<span id=cb4-4><a href=#cb4-4 tabindex=-1></a><span class=fu>download.file</span>(<span class=at>url =</span> <span class=st>&quot;https://github.com/sebastien-plutniak/archeoviz/archive/master.zip&quot;</span>,</span>
<span id=cb4-5><a href=#cb4-5 tabindex=-1></a>              <span class=at>destfile =</span> <span class=st>&quot;archeoviz.zip&quot;</span>)</span>
<span id=cb4-6><a href=#cb4-6 tabindex=-1></a><span class=co># décompression:</span></span>
<span id=cb4-7><a href=#cb4-7 tabindex=-1></a><span class=fu>unzip</span>(<span class=at>zipfile =</span> <span class=st>&quot;archeoviz.zip&quot;</span>)</span></code></pre></div>
<p>Puis, rendez-vous à
<code>https://&lt;your-shiny-server&gt;/archeoviz-main</code>.</p>
<p>Pour paramétrer l’application avec vos données et préférences, éditez
le fichier <code>app.R</code> situé à la racine du répertoire de
l’application:</p>
<div class=sourceCode id=cb5><pre class=sourceCode r><code class=sourceCode r><span id=cb5-1><a href=#cb5-1 tabindex=-1></a><span class=fu>archeoViz</span>(<span class=at>objects.df =</span> <span class=cn>NULL</span>,   <span class=co># data.frame pour les objets</span></span>
<span id=cb5-2><a href=#cb5-2 tabindex=-1></a>          <span class=at>refits.df =</span> <span class=cn>NULL</span>,    <span class=co># data.frame optionnel pour les remontages</span></span>
<span id=cb5-3><a href=#cb5-3 tabindex=-1></a>          <span class=at>timeline.df =</span> <span class=cn>NULL</span>,  <span class=co># data.frame optionnel pour la chronologie des fouilles</span></span>
<span id=cb5-4><a href=#cb5-4 tabindex=-1></a>          <span class=at>default.group =</span><span class=cn>NULL</span>, <span class=co># méthode de groupement des données,</span></span>
<span id=cb5-5><a href=#cb5-5 tabindex=-1></a>                               <span class=co># par couche (&quot;by.layer&quot;) ou &quot;by.variable&quot;</span></span>
<span id=cb5-6><a href=#cb5-6 tabindex=-1></a>          <span class=at>title =</span> <span class=cn>NULL</span>,        <span class=co># titre du site / du jeu de données</span></span>
<span id=cb5-7><a href=#cb5-7 tabindex=-1></a>          <span class=at>home.text =</span> <span class=cn>NULL</span>,    <span class=co># contenu HTML à afficher sur la page d&#39;accueil</span></span>
<span id=cb5-8><a href=#cb5-8 tabindex=-1></a>          <span class=at>lang =</span> <span class=st>&quot;fr&quot;</span>          <span class=co># langue de l&#39;interface (&quot;de&quot;: Allemand, &quot;en&quot;: Anglais, &quot;fr&quot;: Français, &quot;it&quot;: Italien &quot;pt&quot;: Portugais, &quot;es&quot;: Espagnol)</span></span>
<span id=cb5-9><a href=#cb5-9 tabindex=-1></a>          <span class=at>set.theme =</span> <span class=st>&quot;cosmo&quot;</span>) <span class=co># thème graphique de l&#39;interface Shiny</span></span></code></pre></div>
<p>Les valeurs possibles pour le paramètre <code>set.theme</code> sont
illustrées sur <a href=https://rstudio.github.io/shinythemes/>cette
page</a>. La langue de l’application peut être définie avec le paramètre
<code>lang</code>.</p>
<h2 id=démonstration>Démonstration</h2>
<p>Des instances de démonstration de l’application sont déployées sur le
Shiny server d’<em>Huma Num</em>:</p>
<ul>
<li><a href=https://analytics.huma-num.fr/archeoviz/fr><code>archeoViz</code>
en français</a>.</li>
<li><a href=https://analytics.huma-num.fr/archeoviz/en><code>archeoViz</code>
en anglais</a>.</li>
<li><a href=https://analytics.huma-num.fr/archeoviz/de><code>archeoViz</code>
en allemand</a>.</li>
<li><a href=https://analytics.huma-num.fr/archeoviz/es><code>archeoViz</code>
en espagnol</a>.</li>
<li><a href=https://analytics.huma-num.fr/archeoviz/it><code>archeoViz</code>
en italien</a>.</li>
<li><a href=https://analytics.huma-num.fr/archeoviz/pt><code>archeoViz</code>
en portugais</a>.</li>
<li><a href=https://analytics.huma-num.fr/archeoviz/ro><code>archeoViz</code>
en roumain</a>.</li>
</ul>
<p>Des cas d’applications à divers sites archéologiques sont rassemblés
sur le <a href=https://analytics.huma-num.fr/archeoviz/home><em>Portail
archeoViz</em></a>.</p>
<h1 id=recommandations-communautaires>Recommandations
communautaires</h1>
<h2 id=signaler-un-bug>Signaler un bug</h2>
<p>Si vous rencontrez un bug, ouvrez une <a href=https://github.com/sebastien-plutniak/archeoviz/issues><em>issue</em></a>
en indiquant tous les détails nécessaires pour le reproduire.</p>
<h2 id=suggérer-un-changement>Suggérer un changement</h2>
<p>Les suggestions de modifications sont bienvenues. Les demandes
peuvent concerner des fonctions additionnelles, des modifications dans
la documentation, des exemples additionnels, de nouvelles
fonctionnalités, etc. Elles peuvent être faites en ouvrant une <a href=https://github.com/sebastien-plutniak/archeoviz/issues>issue</a>
ou, mieux encore, en employant une <em>pull requests</em> et le modèle
GitHub <a href=https://docs.github.com/articles/about-pull-requests>Fork and
Pull</a>.</p>
<h2 id=traduire>Traduire</h2>
<p>Un soin particulier est accordé au multilinguisme. L’interface de
l’application est disponible en plusieurs langues et les traduction dans
des langues supplémentaires sont bienvenues. Pour cela, éditez ce <a href=https://github.com/sebastien-plutniak/archeoviz/blob/main/R/load_interface_terms_utf8.R>fichier</a>
et soumettez une <em>pull request</em>.</p>
<h1 id=utilisation>Utilisation</h1>
<p>Considérant les objets archéologiques d’un site de fouille ou de
prospection, <code>archeoViz</code> est conçu pour réduire les freins
techniques à la réalisation de trois objectifs:</p>
<ul>
<li>l’exploration spatiale basique et la production de documents
graphiques analytiques;</li>
<li>la pré-publication rapide de données archéologiques, à destination
de la communauté scientifique;</li>
<li>le déploiement aisé d’un outil d’exposition et de communication, à
destination d’un plus large public.</li>
</ul>
<p>En outre, <code>archeoViz</code> constitue une ressource pédagogique
adaptée à l’enseignement des notions d’analyse spatiale en archéologie,
de structuration de données, de science ouverte et de
reproductibilité.</p>
<p>N.B.: par conséquent, <code>archeoViz</code> n’est pas destiné à se
substituer à des outils d’analyse plus sophistiqués (e.g., SIG, packages
de statistiques spatiales, etc.)</p>
<h2 id=linformation-spatiale-dans-archeoviz>L’information spatiale
dans archeoViz</h2>
<p>Les archéologues enregistrent la localisation des objets
archéologique à différentes échelles et granularité. En fonction de
cela, ils utilisent différentes concepts géométriques pour représenter
ces localisations.</p>
<h3 id=points-localisation-exacte--les-objets-relevés>Points,
localisation exacte : les objets relevés</h3>
<p>L’utilisation d’un carroyage ou d’une “station totale” permet
d’enregistrer la localisation individuelle des objets sur le terrain.
Dans ce cas, dans <code>archeoViz</code>, localisation de ces objets
sera visualisée par des points (des triplets de valeurs de coordonnées
x, y, z).</p>
<h3 id=points-localisation-vague--passes-seaux-tamis-et-erreurs-denregistement>Points,
localisation vague : passes, seaux, tamis et erreurs
d’enregistement</h3>
<p>Toutefois, il est fréquent que les coordonnées x, y, z des objets ne
soit pas disponible, pour différentes raisons:</p>
<ul>
<li>des erreurs d’enregistrement, des pertes d’information, entraînant
la nécessité de remplacer une ou plusieurs valeurs de coordonnées par
des intervalles de valeurs (par exemple, une valeur X est manquante pour
un objet et est remplacée par les valeurs X minimale et maximale du
carré où cet objet a été trouvé) ;</li>
<li>le choix de la méthode (par exemple, lors d’une fouille réalisée et
enregistrée à l’aide de passes de profondeur arbitraire ou, encore, des
objets issus de refus de tamis, etc.)</li>
</ul>
<p>Dans tous ces cas, les localisations à traiter sont vagues, lorsque
la localisation des objets n’est pas connue univoquement mais se situe
quelque part au sein d’intervalles de coordonnées. La localisation vague
peut concerner une, deux, ou trois dimensions spatiales (respectivement
les coordonnées x, y et z).</p>
<p>Cette fonctionnalité peut également être employée pour tenir compte
de l’imprécision des instruments de relevé.</p>
<h3 id=lignes>Lignes</h3>
<p>Les lignes sont des géométries utiles pour représenter des relations.
En archéologie, il peut s’agir de relations de <a href=#remontages>remontages</a> entre fragments d’objets,
d’orientation (<a href=#mesures-de-fabrique>mesures de fabrique</a>),
etc. Dans <code>archeoViz</code>, les lignes sont générées à partir des
données chargées comme données de remontage, soit à partir de l’onglet
“Données”, soit avec le paramètre <code>refits.df</code> de la fonction
<code>archeoViz()</code>.</p>
<h3 id=surfaces>Surfaces</h3>
<p>Les surfaces sont des géométries utiles pour représenter des niveaux
de sol, des tranchées, des fosses, etc. Dans <code>archeoViz</code>,
ceci peut être réalisé, en définissant un sous-ensemble de points
résumant la surface souhaitée, puis en affichant l’<a href=#enveloppes-convexes>enveloppe convexe</a> de ce
sous-ensemble.</p>
<h2 id=remontages-et-mesures-de-fabrique>Remontages et mesures de
fabrique</h2>
<h3 id=remontages>Remontages</h3>
<p>Les remontages sont généralement enregistrés de deux manières par les
archéologues:</p>
<ol style=list-style-type: decimal>
<li>par ensemble d’objets remontant entre eux: en employant alors un
tableau à deux colonnes où une ligne correspond à un
<strong>objet</strong>. La première colonne contient l’identifiant
unique de l’objet et la deuxième colonne contient l’identifiant unique
de l’ensemble d’objets remontant entre eux auquel l’objet considéré
appartient.</li>
<li>par relation de remontage: en employant alors un tableau à deux
colonnes où une ligne correspond à une <strong>relation de
remontage</strong>. La première colonne contient l’identifiant unique du
premier objet et la deuxième colonne contient l’identifiant unique du
deuxième objet.</li>
</ol>
<p>Bien que la seconde structure de donnée soit plus précise, c’est la
première qui est le plus fréquemment employée.</p>
<p>Ces deux structures de données sont traitées différemment dans
<code>archeoViz</code>:</p>
<ul>
<li>les ensembles d’objets remontant entre eux doivent être décrits dans
une colonne spécifique dans le tableau <code>objects.df</code> table
(nommée par ex. <code>object_refits</code>) et sont représentés par la
couleur des points dans les visualisations (comme pour tout autre
variable);</li>
<li>les relations de remontage doivent être décrits dans un tableau
<code>refits.df</code> et sont visualisés par des segments reliant les
objets liés par des relations de remontage.</li>
</ul>
<h3 id=mesures-de-fabrique>Mesures de fabrique</h3>
<p>Pour l’heure, <code>archeoViz</code> ne gère pas les mesures de
fabrique à proprement dit. Néanmoins, la procédure employée pour
représenter les remontages peut être adaptée et employée pour
représenter les mesures de fabriques. Cela suppose toutefois de tordre
la logique de la structure des données de la manière suivante:</p>
<ul>
<li>en supposant que les mesures de fabriques ont été enregistrées en
prenant deux mesures de localisation par objet (au contraire, donc, de
mesure d’orientation et de pendage),</li>
<li>des valeurs d’identifiants uniques <code>id</code> doivent être
attribuées aux deux points, et</li>
<li>les deux localisations sont traitées comme s’il s’agissait d’une
relation de remontage entre deux objets.</li>
</ul>
<p>Un exemple de cette méthode est visible <a href=https://analytics.huma-num.fr/archeoviz/shuidonggou2>ici</a>.</p>
<h2 id=formater-des-données>Formater des données</h2>
<p>Trois types de données peuvent être chargées dans
<code>archeoViz</code>:</p>
<ul>
<li>un tableau “objects” (requis), à propos des objets;</li>
<li>un tableau “refits” (optionnel), à propos des relations de
remontage;</li>
<li>un tableau “timeline” (optionnel), à propos des carrés du site et
des années où ils ont été fouillés ou prospectés.</li>
</ul>
<p>Les tableaux doivent être au format CSV et la première ligne doit
contenir les noms des variables (le symbole séparateur du CSV peut être
défini dans l’interface). Les contenus au format HTML sont autorisés.
Cela permet notamment d’introduire références vers des ressources
complémentaires du jeu de données (par exemple l’identifiant unique de
l’objets dans une autre base de données, ou ceux de concepts
d’ontologies employés pour décrire l’objet, etc.).</p>
<p>Le formatage des données peut être réalisé :</p>
<ul>
<li>soit en utilisant un tableur sur votre machine permettant d’exporter
des fichiers CSV;</li>
<li>ou, pour le tableau des objets, en utilisant l’interface de
l’application <a href=https://aurelienroyer.shinyapps.io/Seahors/><em>SEAHORS</em></a>
en chargeant vos données, définissant les variables (onglet “Load
data”), puis en les exportant au format <code>archeoViz</code> (onglet
“Table” / “archeoViz exports”). Il est également possible de les
transférer directement à une instance <code>archeoViz</code> en
ligne.</li>
</ul>
<h3 id=tableau-des-objets>Tableau des objets</h3>
<p>Chaque ligne décrit un objet et doit comporter les variables
obligatoires suivantes:</p>
<ul>
<li><strong>id</strong>: <em>valeur alphanumérique</em>, identifiant
unique de l’objet</li>
<li><strong>xmin</strong>: <em>valeur numérique</em>, coordonnée de
l’objet en axe X</li>
<li><strong>ymin</strong>: <em>valeur numérique</em>, coordonnée de
l’objet en axe Y</li>
<li><strong>zmin</strong>: <em>valeur numérique</em>, coordonnée de
l’objet en axe Z (valeur positive de profondeur)</li>
<li><strong>layer</strong>: <em>valeur alphanumérique</em>, identifiant
de la couche de l’objet</li>
<li><strong>object_type</strong>: <em>valeur alphanumérique</em>,
catégorie de l’objet</li>
</ul>
<p>De plus, des variables optionnelles sont possibles:</p>
<ul>
<li><strong>square_x</strong>: <em>valeur alphanumérique</em>,
identifiant du carré de l’objet en axe X</li>
<li><strong>square_y</strong>: <em>valeur alphanumérique</em>,
identifiant du carré de l’objet en axe Y</li>
<li><strong>year</strong>: <em>valeur numérique</em>, année de fouille
de l’objet</li>
<li><strong>xmax</strong>: <em>valeur numérique</em>, lorsque la
localisation de l’objet en X est comprise dans un intervalle de
coordonnées</li>
<li><strong>ymax</strong>: <em>valeur numérique</em>, lorsque la
localisation de l’objet en Y est comprise dans un intervalle de
coordonnées</li>
<li><strong>zmax</strong>: <em>valeur numérique</em>, lorsque la
localisation de l’objet en Z est comprise dans un intervalle de
coordonnées</li>
<li><strong>object_edit</strong>: nombre non limité de variables
additionnelles décrivant l’objet (les noms de colonnes doivent commencer
par <em>object_</em> et avoir des suffixes différents</li>
</ul>
<p>Les labels des carrés du carroyage:</p>
<ul>
<li>sont ordonnés alpha-numériquement;</li>
<li>ne sont pas affichés, afin d’éviter des affichages erronés, si le
nombre de labels ne correspond pas exactement au nombre total de carrés
de 100 (cm, m, km) pouvant être définis dans l’intervalle des
coordonnées minimales et maximales contenues dans les variables xmin et
ymin;</li>
<li>peuvent être complétés avec les paramètres
<code>add.x.square.labels</code> et <code>add.y.square.labels</code> de
la fonction <code>archeoViz()</code> afin d’ajouter les labels manquants
(respectivement, sur les axes X et Y du carroyage).</li>
</ul>
<h3 id=tableau-des-remontages>Tableau des remontages</h3>
<p>Un tableau à deux colonnes peut être chargé pour les remontages entre
objets (format CSV). Chaque ligne doit contenir les identifiants uniques
des deux objets liés à une relation de remontage (en correspondance avec
les valeurs de la colonne <code>id</code> du tableau des objets).</p>
<h3 id=tableau-de-la-chronologie>Tableau de la chronologie</h3>
<p>Optionnellement, un tableau (CSV) peut être chargé à propos du
déroulé de la fouille. Chaque ligne est relative à un carré de fouille
et indique quand ce carré a été fouillé ou prospecté. Le tableau doit
comporter les variables suivantes:</p>
<ul>
<li><strong>year</strong>: valeur numérique, année de fouille</li>
<li><strong>square_x</strong>: valeur alphanumérique, identifiant du
carré en axe X</li>
<li><strong>square_y</strong>: valeur alphanumérique, identifiant du
carré en axe Y</li>
</ul>
<h3 id=dessin-darrière-fond>Dessin d’arrière-fond</h3>
<p>Un dessin d’arrière-plan peut être affiché dans les visualisations
“3D” et “Carte”. Ceci permet par exemple d’afficher le plan d’un site en
fonds d’un nuage de points. Cette fonctionnalité nécessite un tableau de
données où chaque ligne contient les coordonnées X et Y des points à
utiliser pour le dessin. À noter que les lignes seront tracées en
suivant l’ordre des points dans le tableau. Le système de coordonnées
utilisé doit être le même que celui utilisé pour les objets. Pour
dessiner plusieurs lignes, une colonne supplémentaire (intitulée
“group”) est nécessaire, et doit indiquer pour chaque point
l’identifiant unique de la ligne à laquelle le point appartient. Le jeu
de données doit être chargé via le paramètre
<code>background.map</code>.</p>
<h3 id=unités>Unités</h3>
<p>Par défaut, toutes les distances dans <code>archeoViz</code> sont
exprimées en centimètres. Il est cependant possible de spécifier une
autre unité en donnant l’une des valeurs suivantes au paramètre
<code>unit</code> : “cm”, “m”, “km”. Ce paramètre détermine le contenu
de la légende relative à la taille des carrés de la grille.</p>
<h2 id=charger-des-données>Charger des données</h2>
<p>Quatre manières permettent de charger des données dans
<code>archeoViz</code>:</p>
<ol style=list-style-type: decimal>
<li>en téléchargeant des tableaux à partir de l’onglet “Données”;</li>
<li>en chargeant des tableaux à travers les paramètres de la fonction
<code>archeoViz</code>, dans un environnement R;</li>
<li>en téléchargeant des tableaux via les paramètres d’URL, lors de
l’utilisation d’une instance <code>archeoViz</code> en ligne.</li>
<li>en générant des données aléatoires dans l’onglet “Données”;</li>
</ol>
<h3 id=via-linterface-de-lapplication>Via l’interface de
l’application</h3>
<p>Des tableaux pour trois types de données peuvent être chargés à
partir de l’onglet “Données”. Le séparateur CSV (la virgule, le
point-virgule ou la tabulation) et le caractère distinguant les
décimales dans les nombres (point ou virgule) peuvent être
paramétrés.</p>
<h3 id=via-les-paramètres-de-la-fonction-r>Via les paramètres de la
fonction R</h3>
<p>La fonction de lancement d’<code>archeoViz()</code> peut être
exécutée sans définir de paramètres:</p>
<div class=sourceCode id=cb6><pre class=sourceCode r><code class=sourceCode r><span id=cb6-1><a href=#cb6-1 tabindex=-1></a><span class=fu>archeoViz</span>()</span></code></pre></div>
<p>ou en employant les paramètres <code>objects.df</code>,
<code>refits.df</code>, <code>timeline.df</code> afin de charger des
données relatives, respectivement, aux objets, aux remontages, et à la
chronologie.</p>
<div class=sourceCode id=cb7><pre class=sourceCode r><code class=sourceCode r><span id=cb7-1><a href=#cb7-1 tabindex=-1></a><span class=fu>archeoViz</span>(<span class=at>objects.df =</span> <span class=cn>NULL</span>,  <span class=co># data.frame pour les objets</span></span>
<span id=cb7-2><a href=#cb7-2 tabindex=-1></a>          <span class=at>refits.df =</span> <span class=cn>NULL</span>,   <span class=co># data.frame optionnel pour les remontages</span></span>
<span id=cb7-3><a href=#cb7-3 tabindex=-1></a>          <span class=at>timeline.df =</span> <span class=cn>NULL</span>) <span class=co># data.frame optionnel pour la chronologie</span></span></code></pre></div>
<h3 id=via-les-paramètres-dune-url>Via les paramètres d’une URL</h3>
<p>L’URL d’une instance <code>archeoViz</code> en ligne peut être
complétée avec les paramètres:</p>
<ul>
<li><code>objects.df=</code></li>
<li><code>refits.df=</code></li>
<li><code>timeline.df=</code></li>
</ul>
<p>prenant pour valeurs l’URL d’un fichier CSV respectant le format
<code>archeoViz</code> décrit ci-dessus. Par exemple: <a href=https://analytics.huma-num.fr/archeoviz/fr/?objects.df=https://zenodo.org/record/8003880/files/bilzingsleben.csv>https://analytics.huma-num.fr/archeoviz/fr/?objects.df=https://zenodo.org/record/8003880/files/bilzingsleben.csv</a></p>
<h3 id=par-génération-de-données-aléatoires>Par génération de données
aléatoires</h3>
<p>À des fins de démonstration, il est possible d’employer des données
générées aléatoirement. Déplacer le curseur sur une valeur supérieure à
0, dans l’onglet “Données”, active cette fonctionnalité (replacer le
curseur sur 0 la désactive). Des données d’objets, de remontage, et de
chronologie de la fouille sont alors générés, permettant de tester
toutes les fonctionnalités d’<code>archeoViz</code>.</p>
<h3 id=rotation-des-points>Rotation des points</h3>
<p>Il est possible de modifier l’orientation des points en plan. Dans
l’onglet “Données”, sélectionnez une valeur (en degrés) et validez en
cliquant sur le bouton “Validez la sélection”.</p>
<h2 id=sous-sélection-de-données>Sous-sélection de données</h2>
<p>Après que les données soient chargées, des sous-sélections peuvent
être réalisées en employant les options du menu gauche de l’interface.
Plusieurs paramètres sont possibles: le mode de localisation, les
catégories des objets, et la définition de sous-groupes de données.</p>
<h3 id=par-mode-de-localisation>Par mode de localisation</h3>
<p>Si tous les objets ont des localisation soit exactes soit vagues,
aucune option n’est proposée. Par contre, le jeu de données comprend des
localisations des deux types, alors il est possible de n’en sélectionner
qu’un type ou les deux.</p>
<h3 id=par-couche-ou-catégorie-dobjet>Par couche ou catégorie
d’objet</h3>
<p>Des sous-groupes de données peuvent être définies de deux manières:
soit par couche ou en fonction de la variable “object_” sélectionnée.
Cette option détermine l’application des couleurs dans les graphiques 3D
et 2D et les sous-groupes de données auxquels sont appliqués les calculs
de surface de régression et d’enveloppes convexes. Des sous-ensembles de
données peuvent être définis à partir des catégories des objets, en
employant les champs “Variable” et “Valeurs”. Après que l’une des
variables ait été sélectionnée (“object_type” ou une autre “object_”
variable possible), ses valeurs apparaissent en dessous et peuvent être
sélectionnées en cochant les items. La sélection doit être validée en
cliquant sur le bouton “Valider”. Cette sélection détermine les données
qui seront présentées dans les graphiques et tableaux.</p>
<h2 id=visualisations-interactives>Visualisations interactives</h2>
<h3 id=généralités>Généralités</h3>
<p>Les visualisations dans les onglets “Vue 3D”, “Carte”, “Section X” et
“Section Y” sont générées à l’aide de la librairie <a href=https://CRAN.R-project.org/package=plotly/><code>plotly</code></a>.
Toutes ces visualisations sont dynamiques et sont surmontées d’une barre
de menu comportant plusieurs options (générer un fichier image, zoomer,
déplacer le point de vue, etc.). Davantage de détails sont disponibles
sur le <a href=http://plotly.github.io/getting-to-know-the-plotly-modebar/>site
de <code>plotly</code></a>.</p>
<p>Cliquer sur un item de la légende modifie l’affichage:</p>
<ul>
<li>un simple clic sur un item active/désactive son affichage;</li>
<li>un double clic sur un item limite l’affichage à cet item seul (un
autre double clic annule cette sélection).</li>
</ul>
<p>Cette fonctionnalité permet de définir les couches devant être
affichées. De plus, la taille des points peut être ajustée, ainsi que
l’affichage ou non des relations de remontage.</p>
<p>Enfin, cliquer sur un point active l’affichage d’informations à son
sujet dans le tableau présent sous les visualisations.</p>
<h3 id=visualisation-de-lincertitude-spatiale>Visualisation de
l’incertitude spatiale</h3>
<p>Dans <code>archeoViz</code>, une distinction est faite entre les
localisations exactes (données sous la forme de coordonnées x, y, z) et
les localisations vagues (données sous la forme d’intervalles de
coordonnées). Il est possible d’afficher Les deux types de localisations
peuvent être visualisées. Les incertitudes des localisations peuvent
être rendues en représentant les objets non pas comme des points mais
comme des lignes, des plans, ou des volumes (si des intervalles de
coordonnées sont précisés pour, respectivement, une, deux ou trois
dimensions spatiales). Cette dernière option est gourmande en
ressources, l’appliquer à un nombre important d’objets peut ralentir
considérablement l’application.</p>
<h3 id=sorties-graphiques>Sorties graphiques</h3>
<p>Plusieurs sorties graphiques peuvent être générées dans
<code>archeoViz</code>.</p>
<ul>
<li>Les visualisations en 3D, en plan et en sections peuvent être
exportées:
<ul>
<li>au format SVG, en cliquant sur l’icône “appareil photo” de la barre
de menu s’affichant au-dessus des visualisations;</li>
<li>en format HTML interactif, en cliquant sur le bouton “Exporter” dans
la colonne droite de l’interface.</li>
</ul></li>
<li>Le plan miniature dans les onglets “Section X” et “Section Y” peut
être exporté au format SVG en cliquant sur le lien “Télécharger
plan”.</li>
<li>Le plan de la chronologie des fouilles peut être téléchargé au
format SVG en cliquant sur le bouton “Télécharger”.</li>
</ul>
<h2 id=statistiques-spatiales>Statistiques spatiales</h2>
<p><code>archeoViz</code> comporte quelques fonctionnalités d’analyse
spatiale, destinées à usage simple et exploratoire.</p>
<h3 id=surfaces-de-régression>Surfaces de régression</h3>
<p>Dans l’onglet “Vue 3D”, cliquer sur “Calculer les surfaces” puis
“Valider” affiche les surfaces de régression associées à chaque
sous-ensemble de points (couche), comportant au moins 100 points. Les
surfaces sont calculées grâce au modèle additif généralisé implémenté
dans le package <a href=https://CRAN.R-project.org/package=mgcv><code>mgcv</code></a>.</p>
<h3 id=enveloppes-convexes>Enveloppes convexes</h3>
<p>Dans l’onglet “Vue 3D”, l’affichage des enveloppes convexes se
réalise en:</p>
<ol style=list-style-type: decimal>
<li>cochant la case “Enveloppes convexes”,</li>
<li>sélectionnant, dans le menu qui s’affiche, les sous-ensembles de
points pour lesquels les enveloppes doivent être calculées,</li>
<li>appuyant sur “Valider”.</li>
</ol>
<p>Les enveloppes convexes associées à chaque sous-ensemble de points
comportant au moins 20 points sont alors affichées. Le calcul des
enveloppes est réalisé avec le package <a href=https://CRAN.R-project.org/package=cxhull><code>cxhull</code></a>.</p>
<h3 id=estimation-2d-de-densité-par-noyau>Estimation 2D de densité par
noyau</h3>
<p>Dans l’onglet “Plan”, cocher la case “Calculer la densité” et cliquer
sur “Valider” génère un plan comportant des lignes de contour
représentant la densité des points. La densité peut être calculée pour
l’ensemble des points ou par couche (comportant au moins 30 points).
L’estimation bidimensionnelle de densité par noyau est calculée avec la
fonction <code>kde2d</code> du package <a href=https://CRAN.R-project.org/package=MASS><code>MASS</code></a> (à
travers le package <a href=https://CRAN.R-project.org/package=ggplot2><code>ggplot2</code></a>).</p>
<h2 id=reproductibilité>Reproductibilité</h2>
<p><code>archeoViz</code> est, par définition, une application
interactive. Toutefois, plusieurs fonctionnalités permettent de
satisfaire les besoins de reproductibilité et de communicabilité des
résultats d’interactions avec l’application.</p>
<ul>
<li>La visualisation 3D est exportable dans un format interactif HTML
<em>standalone</em>, tenant compte de la sous-sélection de données
effectuée par l’utilisateur (dans le menu latéral gauche).</li>
<li>Dans l’onglet “Reproductibilité”, une commande R est générée
dynamiquement, tenant compte du paramétrage de l’application réalisé par
l’utilisateur en agissant avec l’interface graphique.</li>
<li>Dans un usage plus avancé, les paramètres d’URL permettent de
paramétrer une instance en ligne de l’application avec des paramètres
d’intérêt et de la communiquer l’ensemble en envoyant l’URL à un
tiers.</li>
</ul>
<h2 id=exports-depuis-et-vers-des-applications-tierces>Exports depuis
et vers des applications tierces</h2>
<p><code>archeoViz</code> a été conçu comme l’une des pièces d’un
écosystème numérique décentralisé pour les données et analyses
archéologiques. Dans cette approche, les fonctionnalités sont
distribuées entre de multiples applications interconenctées, plutôt que
concentrées dans un petit nombre de systèmes. Par conséquent, les
données peuvent être exportées et importées entre <code>archeoViz</code>
et d’autres applications web. Notez que, jusqu’ici, les fonctionnalités
d’export ne sont disponibles que dans le cas d’instances
<code>archeoViz</code> déployées en ligne.</p>
<h3 id=export-depuis-archeoviz>Export depuis archeoViz</h3>
<p>À partir de l’onglet “Statistiques” d’<code>archeoViz</code>, il est
possible d’exporter les données vers d’autres applications en ligne. La
possibilité de certains exports est conditionnée au type de données ou à
la satisfaction d’un nombre minimal de valeurs.</p>
<p><a href=https://analytics.huma-num.fr/Sebastien.Plutniak/archeofrag><em>archeofrag</em></a>
est un package R et une application web permettant d’estimer et
d’évaluer les distinctions entre unités spatiales archéologiques (par
ex. des couches) à partir de l’analyse des relations de remontage entre
fragments d’objets. La version web de l’application intègre des méthodes
pour mesurer la cohésion et le mélange d’unités spatiales et de les
comparer à des données simulées. Lorsqu’une instance
d’<code>archeoViz</code> est executée avec des <a href=#tableau-des-remontages>données de remontage</a>, alors ces
données peuvent être exportées vers <code>archeofrag</code>. Cf. cet <a href=https://analytics.huma-num.fr/archeoviz/grotte16>exemple</a>.</p>
<p>Le <a href=https://analytics.huma-num.fr/ModAthom/seriograph/><em>Seriograph</em></a>
est une application web (issue de la collection <a href=https://spartaas.gitpages.huma-num.fr/r-package/>SPARTAAS</a>)
pour visualiser des changements quantitatifs dans la distribution de
types d’artefacts dans des séries ordonnées ou non-ordonnées d’unités
spatiales. L’export vers le <code>Seriograph</code> est uniquement
possible depuis les instances d’<code>archeoViz</code> déployées en
ligne dont le jeu de données possède (au moins) 2 valeurs différentes
pour la variable <code>layer</code> et 2 valeurs différentes pour la
variable sélectionnée (<code>object_type</code> par défaut). Voir cet <a href=https://analytics.huma-num.fr/archeoviz/poeymau>exemple</a>.</p>
<p><a href=https://app.ptm.huma-num.fr/amado/><em>Amado
online</em></a> est une application en ligne permettant d’analyser des
tableaux de contingence. Les lignes et les colonnes peuvent être
réordonnées manuellement et des sériations et classifications
automatiques peuvent être exécutées. L’export vers
<code>Amado online</code> est uniquement possible depuis les instances
d’<code>archeoViz</code> déployées en ligne dont le jeu de données
possède (au moins) 2 valeurs différentes pour la variable
<code>layer</code> et 2 valeurs différentes pour la variable
sélectionnée (<code>object_type</code> par défaut). Voir cet <a href=https://analytics.huma-num.fr/archeoviz/tai>exemple</a>.</p>
<p><a href=https://cran.r-project.org/package=explor><em>explor</em></a> est
une application R Shiny / package R permettant d’explorer
interactivement les résultats d’analyses multidimensionnelles. L’export
vers <code>explor</code> est uniquement possible depuis les instances
d’<code>archeoViz</code> déployées en ligne dont le jeu de données
possède (au moins) 2 valeurs différentes pour la variable
<code>layer</code> et 2 valeurs différentes pour la variable
sélectionnée (<code>object_type</code> par défaut). La version
d’<code>explor</code> utilisée depuis <code>archeoViz</code> est une
adaptation de l’application originale, limitées aux analyses
factorielles de correspondances. Voir cet <a href=https://analytics.huma-num.fr/archeoviz/tai>exemple</a>.</p>
<p><a href=https://cran.r-project.org/package=shinyHeatmaply><em>shinyHeatmaply</em></a>
est une application R Shiny / package R permettant de générer et
d’explorer interactivement des cartes de chaleur (<em>heatmaps</em>).
Plusieurs distances et méthodes de classifications peuvent être
apploquées. L’export vers <code>shinyHeatmaply</code> est uniquement
possible depuis les instances d’<code>archeoViz</code> déployées en
ligne dont le jeu de données possède (au moins) 2 valeurs différentes
pour la variable <code>layer</code> et 2 valeurs différentes pour la
variable sélectionnée (<code>object_type</code> par défaut). La version
de <code>shinyHeatmaply</code> utilisée depuis <code>archeoViz</code>
est une adaptation de l’application originale. Voir cet <a href=https://analytics.huma-num.fr/archeoviz/grande-rivoire>exemple</a>.</p>
<h3 id=import-vers-archeoviz>Import vers archeoViz</h3>
<p><a href=https://aurelienroyer.shinyapps.io/Seahors><em>SEAHORS</em></a>
est une application web et un package R permettant de visualiser la
distribution spatiale d’objets archéologiques. Comme indiqué <a href=#formater-des-données>ci dessus</a>, <em>SEAHORS</em> peut être
employé pour importer, transformer, et transmettre un jeu de donnée à
une instance en ligne d’<code>archeoViz</code>.</p>
<h2 id=paramètres-avancés>Paramètres avancés</h2>
<p>La fonction <code>archeoViz()</code> admet de nombreux paramètres
optionnels, relatifs aux :</p>
<ul>
<li>données à charger (traité <a href=#par-paramétrage-de-la-fonction>ci-dessus</a>),</li>
<li>contenu de la page d’accueil (traité <a href=#déployée>ci-dessus</a>),</li>
<li><a href=#carroyage>carroyage</a>,</li>
<li><a href=#pré-sélection-des-paramètres>pré-paramètrage</a> des
paramètres pouvant être définis dans l’interface graphique,</li>
<li><a href=#affichage-réactif-des-visualisations>comportement
réactif</a> de l’application à propos du calcul et de l’affichage des
visualisations.</li>
<li><a href=#export-html>export HTML</a>.</li>
</ul>
<div class=sourceCode id=cb8><pre class=sourceCode r><code class=sourceCode r><span id=cb8-1><a href=#cb8-1 tabindex=-1></a><span class=fu>archeoViz</span>(<span class=at>objects.df=</span><span class=cn>NULL</span>, <span class=at>refits.df=</span><span class=cn>NULL</span>, <span class=at>timeline.df=</span><span class=cn>NULL</span>,</span>
<span id=cb8-2><a href=#cb8-2 tabindex=-1></a>          <span class=at>title=</span><span class=cn>NULL</span>, <span class=at>home.text=</span><span class=cn>NULL</span>, <span class=at>lang=</span><span class=st>&quot;en&quot;</span>, <span class=at>set.theme=</span><span class=st>&quot;cosmo&quot;</span>,</span>
<span id=cb8-3><a href=#cb8-3 tabindex=-1></a>          <span class=at>square.size =</span> <span class=dv>100</span>, <span class=at>unit =</span> <span class=st>&quot;cm&quot;</span>, <span class=at>rotation =</span> <span class=dv>0</span>, </span>
<span id=cb8-4><a href=#cb8-4 tabindex=-1></a>          <span class=at>grid.orientation =</span> <span class=cn>NULL</span>, <span class=at>background.map =</span> <span class=cn>NULL</span>,</span>
<span id=cb8-5><a href=#cb8-5 tabindex=-1></a>          <span class=at>reverse.axis.values =</span> <span class=cn>NULL</span>, <span class=at>reverse.square.names =</span> <span class=cn>NULL</span>,</span>
<span id=cb8-6><a href=#cb8-6 tabindex=-1></a>          <span class=at>add.x.square.labels =</span> <span class=cn>NULL</span>, <span class=at>add.y.square.labels =</span> <span class=cn>NULL</span>,</span>
<span id=cb8-7><a href=#cb8-7 tabindex=-1></a>          <span class=at>class.variable =</span> <span class=cn>NULL</span>, <span class=at>class.values =</span> <span class=cn>NULL</span>,</span>
<span id=cb8-8><a href=#cb8-8 tabindex=-1></a>          <span class=at>default.group =</span> <span class=st>&quot;by.layer&quot;</span>, <span class=at>location.mode =</span> <span class=cn>NULL</span>,</span>
<span id=cb8-9><a href=#cb8-9 tabindex=-1></a>          <span class=at>map.z.val =</span> <span class=cn>NULL</span>, <span class=at>map.density =</span> <span class=st>&quot;no&quot;</span>, <span class=at>map.refits =</span> <span class=cn>NULL</span>,</span>
<span id=cb8-10><a href=#cb8-10 tabindex=-1></a>          <span class=at>plot3d.ratio =</span> <span class=dv>1</span>, <span class=at>plot3d.hulls =</span> <span class=cn>FALSE</span>, <span class=at>hulls.class.values =</span> <span class=cn>NULL</span>,</span>
<span id=cb8-11><a href=#cb8-11 tabindex=-1></a>          <span class=at>plot3d.surfaces =</span> <span class=cn>NULL</span>, <span class=at>plot3d.refits =</span> <span class=cn>NULL</span>, <span class=at>point.size =</span> <span class=dv>2</span>,</span>
<span id=cb8-12><a href=#cb8-12 tabindex=-1></a>          <span class=at>sectionX.x.val =</span> <span class=cn>NULL</span>, <span class=at>sectionX.y.val =</span> <span class=cn>NULL</span>, <span class=at>sectionX.refits =</span> <span class=cn>NULL</span>, </span>
<span id=cb8-13><a href=#cb8-13 tabindex=-1></a>          <span class=at>sectionY.x.val =</span> <span class=cn>NULL</span>, <span class=at>sectionY.y.val =</span> <span class=cn>NULL</span>, <span class=at>sectionY.refits =</span> <span class=cn>NULL</span>,</span>
<span id=cb8-14><a href=#cb8-14 tabindex=-1></a>          <span class=at>camera.center =</span> <span class=fu>c</span>(<span class=dv>0</span>, <span class=dv>0</span>, <span class=dv>0</span>), <span class=at>camera.eye =</span> <span class=fu>c</span>(<span class=fl>1.25</span>, <span class=fl>1.25</span>, <span class=fl>1.25</span>),</span>
<span id=cb8-15><a href=#cb8-15 tabindex=-1></a>          <span class=at>run.plots =</span> <span class=cn>FALSE</span>, <span class=at>html.export =</span> <span class=cn>TRUE</span>, <span class=at>table.export =</span> <span class=cn>TRUE</span></span>
<span id=cb8-16><a href=#cb8-16 tabindex=-1></a>          )</span></code></pre></div>
<h3 id=carroyage>Carroyage</h3>
<div class=sourceCode id=cb9><pre class=sourceCode r><code class=sourceCode r><span id=cb9-1><a href=#cb9-1 tabindex=-1></a><span class=fu>archeoViz</span>(<span class=at>square.size =</span> <span class=dv>100</span>, <span class=at>unit =</span> <span class=st>&quot;cm&quot;</span>, <span class=at>rotation =</span> <span class=dv>0</span>, </span>
<span id=cb9-2><a href=#cb9-2 tabindex=-1></a>          <span class=at>grid.orientation =</span> <span class=cn>NULL</span>, <span class=at>background.map =</span> <span class=cn>NULL</span>,</span>
<span id=cb9-3><a href=#cb9-3 tabindex=-1></a>          <span class=at>reverse.axis.values =</span> <span class=cn>NULL</span>, <span class=at>reverse.square.names =</span> <span class=cn>NULL</span>,</span>
<span id=cb9-4><a href=#cb9-4 tabindex=-1></a>          <span class=at>add.x.square.labels =</span> <span class=cn>NULL</span>, <span class=at>add.y.square.labels =</span> <span class=cn>NULL</span></span>
<span id=cb9-5><a href=#cb9-5 tabindex=-1></a>          )</span></code></pre></div>
<ul>
<li><strong>square.size</strong> : numérique. Taille (longueur et
largeur) des carrés du carroyage. La valeur par défaut est 100</li>
<li><strong>unit</strong> : caractères. Unité pour les distances
spatiales. Soit ‘cm’, ‘m’ ou ‘km’.</li>
<li><strong>rotation</strong> : numérique. integer. Valeur (en degrés)
pour la rotation à appliquer en plan au nuage de points.</li>
<li><strong>grid.orientation</strong> : numérique. Orientation (en
degrés) du carroyage par rapport au nord.</li>
<li><strong>background.map</strong> : data frame ou matrix. Coordonnées
pour tracer des lignes en arrière-plan des visualisations en 3D et en
plan.</li>
<li><strong>reverse.axis.values</strong> : caractères. Nom de l’axe ou
des axes à inverser (une combinaison de ‘x’, ‘y’, ‘z’).</li>
<li><strong>reverse.square.names</strong> : caractères. Nom de l’axe ou
des axes pour lesquels inverser l’ordre des labels de carrés (une
combinaison de ‘x’, ‘y’, ‘z’).</li>
<li><strong>add.x.square.labels</strong> : caractères. Labels de carrés
additionnels pour l’axe ‘x’.</li>
<li><strong>add.y.square.labels</strong> : caractères. Labels de carrés
additionnels pour l’axe ‘y’.</li>
</ul>
<h3 id=pré-sélection-des-paramètres>Pré-sélection des paramètres</h3>
<div class=sourceCode id=cb10><pre class=sourceCode r><code class=sourceCode r><span id=cb10-1><a href=#cb10-1 tabindex=-1></a><span class=fu>archeoViz</span>(<span class=at>class.variable =</span> <span class=cn>NULL</span>, <span class=at>class.values =</span> <span class=cn>NULL</span>,</span>
<span id=cb10-2><a href=#cb10-2 tabindex=-1></a>          <span class=at>default.group =</span> <span class=st>&quot;by.layer&quot;</span>, <span class=at>location.mode =</span> <span class=cn>NULL</span>,</span>
<span id=cb10-3><a href=#cb10-3 tabindex=-1></a>          <span class=at>map.z.val =</span> <span class=cn>NULL</span>, <span class=at>map.density =</span> <span class=st>&quot;no&quot;</span>, <span class=at>map.refits =</span> <span class=cn>NULL</span>,</span>
<span id=cb10-4><a href=#cb10-4 tabindex=-1></a>          <span class=at>plot3d.hulls =</span> <span class=cn>NULL</span>, <span class=at>plot3d.surfaces =</span> <span class=cn>NULL</span>, <span class=at>plot3d.refits =</span> <span class=cn>NULL</span>,</span>
<span id=cb10-5><a href=#cb10-5 tabindex=-1></a>          <span class=at>sectionX.x.val =</span> <span class=cn>NULL</span>, <span class=at>sectionX.y.val =</span> <span class=cn>NULL</span>, <span class=at>sectionX.refits =</span> <span class=cn>NULL</span>, </span>
<span id=cb10-6><a href=#cb10-6 tabindex=-1></a>          <span class=at>sectionY.x.val =</span> <span class=cn>NULL</span>, <span class=at>sectionY.y.val =</span> <span class=cn>NULL</span>, <span class=at>sectionY.refits =</span> <span class=cn>NULL</span>,</span>
<span id=cb10-7><a href=#cb10-7 tabindex=-1></a>          <span class=at>camera.center =</span> <span class=cn>NULL</span>, <span class=at>camera.eye =</span> <span class=cn>NULL</span></span>
<span id=cb10-8><a href=#cb10-8 tabindex=-1></a>          )</span></code></pre></div>
<ul>
<li><strong>class.variable</strong>: caractères. Au lancement de
l’application, nom de la variable à pré-sélectionner.</li>
<li><strong>class.values</strong>: caractères. Au lancement de
l’application, nom des valeurs à pré-sélectionner.</li>
<li><strong>default.group</strong>: caractères. Au lancement de
l’application, pré-sélection de la variable à employer pour grouper les
données (soit “by.layer” ou “by.variable”).</li>
<li><strong>location.mode</strong>: caractères. Au lancement de
l’application, pré-sélection du ou des modes de localisation à afficher
(une combinaison des valeurs possibles “exact”, “fuzzy”,
“show.uncertainty”).</li>
<li><strong>map.z.val</strong>: numérique. Au lancement de
l’application, valeurs minimale et maximale des coordonnées Z à
présélectionner dans la visualisation en plan.</li>
<li><strong>map.density</strong>: caractères. Au lancement de
l’application, calculer et afficher ou non les courbes de densité dans
la visualisation en plan (soit “no”, “overall”, ou “by.variable”).</li>
<li><strong>map.refits</strong>: TRUE ou FALSE. Afficher ou non les
remontages dans la visualisation en plan.</li>
<li><strong>plot3d.hulls</strong>: TRUE ou FALSE. Au lancement de
l’application, calculer et afficher ou non les enveloppes convexes dans
la visualisation 3D.</li>
<li><strong>hulls.class.values</strong>: caractères. Au lancement de
l’application, noms des sous-ensembles de points pour lesquels calculer
les enveloppes convexes.</li>
<li><strong>plot3d.surfaces</strong>: TRUE ou FALSE. Au lancement de
l’application, calculer et afficher ou non les surfaces de régression
dans la visualisation 3D.</li>
<li><strong>plot3d.refits</strong>: TRUE ou FALSE. Au lancement de
l’application, afficher ou non les remontages dans la visualisation
3D.</li>
<li><strong>point.size</strong>: entier. Au lancement de l’application,
taille des points dans les visualisations.</li>
<li><strong>sectionX.x.val</strong>: numérique. Au lancement de
l’application, valeurs minimale et maximale des coordonnées X à
présélectionner dans la visualisation en section X.</li>
<li><strong>sectionX.y.val</strong>: numérique. Au lancement de
l’application, valeurs minimale et maximale des coordonnées Y à
présélectionner dans la visualisation en section X.</li>
<li><strong>sectionX.refits</strong>: TRUE ou FALSE. Au lancement de
l’application, afficher ou non les remontages dans la visualisation en
section X.</li>
<li><strong>sectionY.x.val</strong>: numérique. Au lancement de
l’application, valeurs minimale et maximale des coordonnées X à
présélectionner dans la visualisation en section Y.</li>
<li><strong>sectionY.y.val</strong>: numérique. Au lancement de
l’application, valeurs minimale et maximale des coordonnées Y à
présélectionner dans la visualisation en section Y.</li>
<li><strong>sectionY.refits</strong>: TRUE ou FALSE. Au lancement de
l’application, afficher ou non les remontages dans la visualisation en
section Y.</li>
<li><strong>camera.center</strong>: numérique. Au lancement de
l’application, coordonnées du point vers lequel la caméra est orientée
dans la visualisation 3D (valeurs par défaut: x=0, y=0, z=0).</li>
<li><strong>camera.eye</strong>: numérique. Au lancement de
l’application, coordonnées de la position de la caméra dans la
visualisation 3D (valeurs par défaut: x=1.25, y=1.25, z=1.25).</li>
</ul>
<h3 id=affichage-réactif-des-visualisations>Affichage réactif des
visualisations</h3>
<div class=sourceCode id=cb11><pre class=sourceCode r><code class=sourceCode r><span id=cb11-1><a href=#cb11-1 tabindex=-1></a><span class=fu>archeoViz</span>(<span class=at>run.plots =</span> <span class=cn>FALSE</span>)</span></code></pre></div>
<ul>
<li><strong>run.plots</strong>: TRUE ou FALSE. Si les visualisations
doivent, ou non, être immédiatement calculées et affichées (sans
nécessiter de cliquer sur le bouton “Rafraîchir”).</li>
</ul>
<h3 id=contrôle-des-formats-dexport>Contrôle des formats d’export</h3>
<ul>
<li><strong>html.export</strong>: TRUE ou FALSE. Afficher ou non les
boutons permettant d’exporter les visualisations en format HTML
interactif.</li>
<li><strong>table.export</strong>: TRUE ou FALSE. Permettre ou non le
transfert des données à des <a href=#exports-depuis-et-vers-des-applications-tierces>applications
tierces</a> dans l’onglet “Statistiques”.</li>
</ul>
<h3 id=paramètres-url>Paramètres URL</h3>
<p>Une instance <code>archeoViz</code> deployée en ligne sur un serveur
peut être paramétrée en ajustant les paramètres de l’URL. Les paramètres
supportés comprennent:</p>
<ul>
<li><code>objects.df</code>, <code>refits.df</code>,
<code>timeline.df</code></li>
<li><code>title</code>, <code>home.text</code></li>
<li><code>reverse.axis.values</code>,
<code>reverse.square.names</code></li>
<li><code>square.size</code></li>
<li><code>add.x.square.labels</code>,
<code>add.y.square.labels</code></li>
<li><code>class.variable</code>, <code>class.values</code></li>
<li><code>default.group</code></li>
<li><code>location.mode</code></li>
<li><code>map.density</code>, <code>map.refits</code></li>
<li><code>plot3d.hulls</code>, <code>plot3d.surfaces</code>,
<code>plot3d.refits</code></li>
<li><code>sectionX.refits</code></li>
<li><code>sectionY.refits</code></li>
<li><code>run.plots</code></li>
</ul>
<p>(Les paramètres suivants ne sont pas supportés dans la version
actuelle de l’application: <code>map.z.val</code>,
<code>sectionX.x.val</code>, <code>sectionX.y.val</code>,
<code>sectionY.x.val</code>, <code>sectionY.y.val</code>,
<code>point.size</code>, <code>lang</code>, <code>set.theme</code>,
<code>camera.center</code>, <code>camera.eye</code>,
<code>html.export</code>, <code>table.export</code>.)</p>
<p>Les paramètres doivent être écris en respectant la syntaxe URL
(?param1=value&amp;param2=value2) et avoir le même type de valeurs que
dans leur usage dans l’interface R. Par exemple, l’URL suivante lance
une instance <code>archeoViz</code> à partir du tableau principal du jeu
de données <a href=https://zenodo.org/record/8003880>Bilzingsleben</a>:</p>
<p><a href=https://analytics.huma-num.fr/archeoviz/en/?objects.df=https://zenodo.org/record/8003880/files/bilzingsleben.csv>https://analytics.huma-num.fr/archeoviz/en/?objects.df=https://zenodo.org/record/8003880/files/bilzingsleben.csv</a></p>
<p>Cette URL fait de même, mais inclut également le tableau des
remontages (paramètre <code>&amp;refits.df=</code>) et active
l’affichage immédiat des relations de remontage dans le graphique 3D et
le plan:</p>
<p><a href=https://analytics.huma-num.fr/archeoviz/en/?map.refits=TRUE&amp;plot3d.refits=TRUE&amp;objects.df=https://zenodo.org/record/8003880/files/bilzingsleben.csv&amp;refits.df=https://zenodo.org/record/8003880/files/bilzingsleben-antlers-refits.csv>https://analytics.huma-num.fr/archeoviz/en/?map.refits=TRUE&amp;plot3d.refits=TRUE&amp;objects.df=https://zenodo.org/record/8003880/files/bilzingsleben.csv&amp;refits.df=https://zenodo.org/record/8003880/files/bilzingsleben-antlers-refits.csv</a></p>
<p>L’URL suivante lance le jeu de données Bilzingsleben, en pré-réglant
l’application tel que:</p>
<ol style=list-style-type: decimal>
<li>les points sont groupés par variable (paramètre
<code>default.group</code>, avec la valeur <code>by.variable</code>
plutôt que <code>by.layer</code>)</li>
<li>seuls les “Antlers” sont sélectionnés (paramètre
<code>class.values</code>)</li>
<li>la taille des carrés du carroyage est redéfinie (paramètre
<code>square.size</code> 500 cm au lieu de la valeur par défaut
100cm)</li>
<li>l’affichage immédiat des graphiques est activé (paramètre
<code>run.plots</code>)</li>
<li>le titre de la page est modifé (paramètre <code>title</code>)</li>
<li>le contenu de la page d’accueil est modifié, illustrant l’usage d’un
simple balisage HTML (paramètre <code>home.txt</code>)</li>
</ol>
<p><a href=https://analytics.huma-num.fr/archeoviz/en/?default.group=by.variable&amp;class.values=Antler&amp;square.size=500&amp;run.plots=TRUE&amp;title=Anters%20at%20Bilzingsleben&amp;home.text=Many%20%3Cb%3Eantlers%3C/b%3E&amp;objects.df=https://zenodo.org/record/8003880/files/bilzingsleben.csv><span>https://analytics.huma-num.fr/archeoviz/en/?default.group=by.variable&amp;class.values=Antler&amp;square.size=500&amp;run.plots=TRUE&amp;title=Antlers%20at%20Bilzingsleben&amp;home.text=Many%20</span><b>antlers</b>&amp;objects.df=<span>https://zenodo.org/record/8003880/files/bilzingsleben.csv</span></a></p>
<p>À noter que les paramètres <code>add.x.square.labels</code>,
<code>add.y.square.labels</code>, <code>location.mode</code>, et
<code>class.values</code>, qui admettent des valeurs simples ou
multiples dans l’interface R (par ex. c(“value1”, “value2”)) n’admettent
qu’une seule valeur lorsqu’employé comme paramètre d’URL (il s’agit
d’une restriction liée à la syntaxe URL).</p>
<h1 id=remerciements>Remerciements</h1>
<p>L’application et le package <code>archeoViz</code> sont développés et
maintenus par Sébastien Plutniak. Arthur Coulon, Solène Denis, Olivier
Marlet, et Thomas Perrin ont testé et soutenu ce projet durant ses
premières étapes. Renata Araujo, Laura Coltofean, Sara Giardino, Julian
Laabs et Nicolas Delsol ont traduit l’application respectivement en
portugais, roumain, italien, allemand, et espagnol.</p>
<h1 id=références-et-ressources>Références et ressources</h1>
<h2 id=logiciels>Logiciels</h2>
<ul>
<li>Plutniak, Sébastien, Renata Araujo, Laura Coltofean, Nicolas Delsol,
Sara Giardino, Julian Laabs. 2024. “archeoViz. Visualisation,
Exploration, and Web Communication of Archaeological Spatial Data”.
v1.3.4, DOI: <a href=https://doi.org/10.5281/zenodo.7460193>10.5281/zenodo.7460193</a>.</li>
<li>Plutniak, Sébastien, Anaïs Vignoles. 2023. “<a href=https://hal.science/hal-04156271>The archeoViz Portal:
Dissemination of Spatial Archaeological Datasets</a>”, portail web, <a href=https://analytics.huma-num.fr/archeoviz/home>https://analytics.huma-num.fr/archeoviz/home</a>.</li>
</ul>
<h2 id=articles>Articles</h2>
<ul>
<li>Plutniak, Sébastien. 2023. “archeoViz: an R package for the
Visualisation, Exploration, and Web Communication of Archaeological
Spatial Data”. <em>Journal of Open Source Software</em>, 92(8), 5811,
DOI: <a href=https://doi.org/10.21105/joss.05811>10.21105/joss.05811</a>.</li>
<li>Plutniak, Sébastien. 2023. “<a href=https://www.prehistoire.org/offres/doc_inline_src/515/0-BSPF_2023_1_2e_partie_Correspondance_PLUTNIAK.pdf>Visualiser
et explorer la distribution spatiale du mobilier archéologique :
l’application archeoViz et son portail web</a>”. <em>Bulletin de la
Société préhistorique française</em>, 120(1), p. 70-74.</li>
</ul>
<h2 id=présentations>Présentations</h2>
<ul>
<li>Plutniak, Sébastien. 2023. “<a href=https://hal.science/hal-04146410>Fostering the Publication of
Spatial Archaeological Data: a Decentralized Approach. The archeoViz Web
Application and its Portal</a>”, support d’une présentation à
l’University of Florida, Gainesville.</li>
<li>Plutniak, Sébastien, Anaïs Vignoles. 2023. “<a href=https://hal.science/hal-04070444>L’application web / package
archeoViz et son portail web. Une solution décentralisée
d’éditorialisation de données archéologiques spatialisées</a>, support
d’une présentation à l’atelier SITRADA, Paris.</li>
</ul>
<h2 id=sites-web>Sites web</h2>
<ul>
<li>Le blog <em>archeoViz. Data visualization in archaeology. Re-use,
visualization, dissemination of spatial data</em>: <a href=https://archeoviz.hypotheses.org>https://archeoviz.hypotheses.org</a></li>
</ul>
"

  
#  : es ----
guidelines.es <- "
<h1 id=archeoviz>archeoViz</h1>
<p><code>archeoViz</code> es una aplicación empaquetada de R Shiny para
la <em>visualización</em>, <em>exploración</em> y <em>comunicación</em>
web de datos espaciales arqueológicos. Incluye <em>visualizaciones</em>
3D y 2D interactivas, puede generar <em>secciones</em> transversales y
<em>mapas</em> de los restos, y mostrar una línea de tiempo interactiva
del trabajo en un sitio. Puede tambien ejecutar <em>estadísticas
espaciales</em> básicas (casco convexo, superficies de regresión,
estimación de densidad de kernel 2D), así como <em>exportar datos</em> a
otras aplicaciones en línea para realizar métodos más complejos.
<code>archeoViz</code> se puede usar localmente o implementar en un
servidor, ya sea permitiendo que el usuario cargue datos a través de la
interfaz o ejecutando la aplicación con un conjunto de datos específico.
La interfaz de la aplicación está disponible en alemán, español,
italiano, inglés, francés, portugués, y rumano. Página web: <a href=https://archeoviz.hypotheses.org>https://archeoviz.hypotheses.org</a>.</p>
<ul>
<li><a href=#instalación><strong>Instalación</strong></a>
<ul>
<li><a href=#uso-local>Uso local</a></li>
<li><a href=#uso-distante>Uso distante</a></li>
<li><a href=#demonstración>Demonstración</a></li>
</ul></li>
<li><a href=#recomendaciones-comunitarias><strong>Recomendaciones
comunitarias</strong></a>
<ul>
<li><a href=#reportar-errores>Reportar errores</a></li>
<li><a href=#sugerir-cambios>Sugerir cambios</a></li>
<li><a href=#traducción>Traducción</a></li>
</ul></li>
<li><a href=#uso><strong>Uso</strong></a>
<ul>
<li><a href=#información-espacial-en-archeoviz>Información espacial en
archeoViz</a>
<ul>
<li><a href=#puntos-ubicación-exacta-objetos-trazados>Puntos,
ubicación exacta: objetos trazados</a></li>
<li><a href=#puntos-ubicación-vaga-niveles-arbitrários-baldes-objetos-tamizados-y-errores-de-registro>Puntos,
ubicación vaga: niveles arbitrários, baldes, objetos tamizados y errores
de registro</a></li>
<li><a href=#líneas>Líneas</a></li>
<li><a href=#superficies>Superficies</a></li>
</ul></li>
<li><a href=#remontajes-y-medición-de-fábrica>Remontajes y medición de
fábrica</a>
<ul>
<li><a href=#remontajes>Remontajes</a></li>
<li><a href=#medición-de-fábrica>Medición de fábrica</a></li>
</ul></li>
<li><a href=#formato-de-datos>Formato de datos</a>
<ul>
<li><a href=#formatear-datos>Formatear datos</a></li>
<li><a href=#tabla-de-objetos>Tabla de objetos</a></li>
<li><a href=#tabla-de-remontajes>Tabla de remontajes</a></li>
<li><a href=#tabla-cronológica>Tabla cronológica</a></li>
<li><a href=#dibujo-de-fondo>Dibujo de fondo</a></li>
<li><a href=#unidades>Unidades</a></li>
</ul></li>
<li><a href=#cargar-datos>Cargar datos</a>
<ul>
<li><a href=#a-través-de-la-interfaz-de-la-aplicación>A través de la
interfaz de la aplicación</a></li>
<li><a href=#a-través-de-los-parámetros-de-la-función-r>A través de
los parámetros de la función R</a></li>
<li><a href=#a-través-de-parámetros-de-url>A través de parámetros de
URL</a></li>
<li><a href=#generación-de-datos-aleatorios>Generación de datos
aleatorios</a></li>
<li><a href=#girar-los-puntos>Girar los puntos</a></li>
</ul></li>
<li><a href=#subconfiguración-de-datos>Subconfiguración de datos</a>
<ul>
<li><a href=#por-modo-de-ubicación>Por modo de ubicación</a></li>
<li><a href=#por-capa-o-categoría-de-objeto>Por capa o categoría de
objeto</a></li>
</ul></li>
<li><a href=#visualización-interactiva>Visualización interactiva</a>
<ul>
<li><a href=#características-generales>Características
generales</a></li>
<li><a href=#visualización-de-la-incertidumbre-espacial>Visualización
de la incertidumbre espacial</a></li>
<li><a href=#salidas-gráficas>Salidas gráficas</a></li>
</ul></li>
<li><a href=#estadísticas-espaciales>Estadísticas espaciales</a>
<ul>
<li><a href=#superficies-de-regresión>Superficies de
regresión</a></li>
<li><a href=#cascos-convexos>Cascos convexos</a></li>
<li><a href=#densidad-de-kernel-2d>Densidad de kernel 2D</a></li>
</ul></li>
</ul></li>
<li><a href=#reproducibilidad><strong>Reproducibilidad</strong></a></li>
<li><a href=#exportaciones-desde-y-hacia-aplicaciones-de-terceros><strong>Exportaciones
desde y hacia aplicaciones de terceros</strong></a>
<ul>
<li><a href=#exportar-desde-archeoviz>Exportar desde
archeoViz</a></li>
<li><a href=#importar-a-archeoviz>Importar a archeoViz</a></li>
</ul></li>
<li><a href=#parámetros-avanzados><strong>Parámetros
avanzados</strong></a>
<ul>
<li><a href=#cuadrícula>Cuadrícula</a></li>
<li><a href=#preajuste-de-parámetros>Preajuste de parámetros</a></li>
<li><a href=#visualización-de-gráficos-reactivos>Visualización de
gráficos reactivos</a></li>
<li><a href=#controlar-los-formatos-de-exportación>Controlar los
formatos de exportación</a></li>
<li><a href=#parámetros-de-url>Parámetros de URL</a></li>
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
<h1 id=instalación>Instalación</h1>
<p><code>archeoViz</code> se puede utilizar de dos maneras:</p>
<ul>
<li>localmente, en la máquina del usuario</li>
<li>de forma remota, después de implementar la aplicación en un servidor
distante</li>
</ul>
<h2 id=uso-local>Uso local</h2>
<p>El paquete se puede instalar desde CRAN con:</p>
<div class=sourceCode id=cb1><pre class=sourceCode r><code class=sourceCode r><span id=cb1-1><a href=#cb1-1 tabindex=-1></a><span class=fu>install.packages</span>(<span class=st>&quot;archeoViz&quot;</span>)</span></code></pre></div>
<p>La versión de desarrollo está disponible en <em>GitHub</em> y se
puede instalar con:</p>
<div class=sourceCode id=cb2><pre class=sourceCode r><code class=sourceCode r><span id=cb2-1><a href=#cb2-1 tabindex=-1></a><span class=co># install.packages(&quot;devtools&quot;)</span></span>
<span id=cb2-2><a href=#cb2-2 tabindex=-1></a>devtools<span class=sc>::</span><span class=fu>install_github</span>(<span class=st>&quot;sebastien-plutniak/archeoviz&quot;</span>)</span></code></pre></div>
<p>Luego, cargue el paquete e inicie la aplicación con:</p>
<div class=sourceCode id=cb3><pre class=sourceCode r><code class=sourceCode r><span id=cb3-1><a href=#cb3-1 tabindex=-1></a><span class=fu>library</span>(archeoViz)</span>
<span id=cb3-2><a href=#cb3-2 tabindex=-1></a><span class=fu>archeoViz</span>()</span></code></pre></div>
<h2 id=uso-distante>Uso distante</h2>
<p>Para implementar <code>archeoViz</code> en su servidor Shiny, primero
descargue y descomprima el paquete:</p>
<div class=sourceCode id=cb4><pre class=sourceCode r><code class=sourceCode r><span id=cb4-1><a href=#cb4-1 tabindex=-1></a><span class=co># configure el directorio de trabajo en su servidor Shiny:</span></span>
<span id=cb4-2><a href=#cb4-2 tabindex=-1></a><span class=fu>setwd</span>(<span class=at>dir =</span> <span class=st>&quot;/some/path/&quot;</span>)</span>
<span id=cb4-3><a href=#cb4-3 tabindex=-1></a><span class=co># descargar el package:</span></span>
<span id=cb4-4><a href=#cb4-4 tabindex=-1></a><span class=fu>download.file</span>(<span class=at>url =</span> <span class=st>&quot;https://github.com/sebastien-plutniak/archeoviz/archive/master.zip&quot;</span>,</span>
<span id=cb4-5><a href=#cb4-5 tabindex=-1></a>              <span class=at>destfile =</span> <span class=st>&quot;archeoviz.zip&quot;</span>)</span>
<span id=cb4-6><a href=#cb4-6 tabindex=-1></a><span class=co># unzip:</span></span>
<span id=cb4-7><a href=#cb4-7 tabindex=-1></a><span class=fu>unzip</span>(<span class=at>zipfile =</span> <span class=st>&quot;archeoviz.zip&quot;</span>)</span></code></pre></div>
<p>Luego, abre
<code>https://&lt;your-shiny-server&gt;/archeoviz-main</code>.</p>
<p>Para configurar la aplicación con tus datos y preferencias, edita el
archivo <code>app.R</code>, ubicado en la raíz del directorio:</p>
<div class=sourceCode id=cb5><pre class=sourceCode r><code class=sourceCode r><span id=cb5-1><a href=#cb5-1 tabindex=-1></a><span class=fu>archeoViz</span>(<span class=at>objects.df =</span> <span class=cn>NULL</span>,   <span class=co># data.frame con datos sobre los objetos</span></span>
<span id=cb5-2><a href=#cb5-2 tabindex=-1></a>          <span class=at>refits.df =</span> <span class=cn>NULL</span>,    <span class=co># data.frame opcional para reinstalar datos</span></span>
<span id=cb5-3><a href=#cb5-3 tabindex=-1></a>          <span class=at>timeline.df =</span> <span class=cn>NULL</span>,  <span class=co># data.frame opcional para la cronología de excavación</span></span>
<span id=cb5-4><a href=#cb5-4 tabindex=-1></a>          <span class=at>default.group =</span><span class=cn>NULL</span>, <span class=co># méthode de groupement des données,</span></span>
<span id=cb5-5><a href=#cb5-5 tabindex=-1></a>                               <span class=co># par couche (&quot;by.layer&quot;) ou &quot;by.variable&quot;</span></span>
<span id=cb5-6><a href=#cb5-6 tabindex=-1></a>          <span class=at>title =</span> <span class=cn>NULL</span>,        <span class=co># titulo del sitio / data set</span></span>
<span id=cb5-7><a href=#cb5-7 tabindex=-1></a>          <span class=at>home.text =</span> <span class=cn>NULL</span>,    <span class=co># Contenido HTML para mostrar en la página de inicio</span></span>
<span id=cb5-8><a href=#cb5-8 tabindex=-1></a>          <span class=at>lang =</span> <span class=st>&quot;fr&quot;</span>          <span class=co># lenguaje de interfaz (&quot;en&quot;: Inglés, &quot;fr&quot;: Francés, &quot;it&quot;: Italiano, &quot;pt&quot;: Portugués, &quot;es&quot;: Español)</span></span>
<span id=cb5-9><a href=#cb5-9 tabindex=-1></a>          <span class=at>set.theme =</span> <span class=st>&quot;cosmo&quot;</span>) <span class=co># tema gráfico para la interfaz Shiny</span></span></code></pre></div>
<p>Los valores posibles para el parámetro <code>set.theme</code> se
ilustran en esta <a href=https://rstudio.github.io/shinythemes/>página</a>. El idioma de
la aplicación se puede configurar con el parámetro lang.</p>
<h2 id=demostración>Demostración</h2>
<p>Las instancias de demostración de la aplicación se implementan en el
servidor <em>Huma Num</em> Shiny:</p>
<ul>
<li><a href=https://analytics.huma-num.fr/archeoviz/fr><code>archeoViz</code>
en francés</a>.</li>
<li><a href=https://analytics.huma-num.fr/archeoviz/en><code>archeoViz</code>
en inglés</a>.</li>
<li><a href=https://analytics.huma-num.fr/archeoviz/de><code>archeoViz</code>
en alemán</a>.</li>
<li><a href=https://analytics.huma-num.fr/archeoviz/it><code>archeoViz</code>
en italiano</a>.</li>
<li><a href=https://analytics.huma-num.fr/archeoviz/pt><code>archeoViz</code>
en portugués</a>.</li>
<li><a href=https://analytics.huma-num.fr/archeoviz/es><code>archeoViz</code>
en español</a>.</li>
<li><a href=https://analytics.huma-num.fr/archeoviz/ro><code>archeoViz</code>
en rumano</a>.</li>
</ul>
<p>Los casos de uso reales se presentan en el <a href=https://analytics.huma-num.fr/archeoviz/home><em>archeoViz
Portal</em></a>.</p>
<h1 id=recomendaciones-comunitarias>Recomendaciones comunitarias</h1>
<h2 id=reportar-errores>Reportar errores</h2>
<p>Si encuentra un error, complete un <a href=https://github.com/sebastien-plutniak/archeoviz/issues><em>issue</em></a>
con todos los detalles necesarios para reproducirlo.</p>
<h2 id=suggerir-cambios>Suggerir cambios</h2>
<p>Sugerencias de cambios a archeoViz son bienvenidas. Estas solicitudes
pueden referirse a funciones adicionales, cambios en la documentación,
ejemplos adicionales, nuevas características, etc. Se puede hacer
llenando un <a href=https://github.com/sebastien-plutniak/archeoviz/issues>issue</a>
y, aún mejor, usando un <em>pull requests</em> y el modelo de <a href=https://docs.github.com/articles/about-pull-requests>Fork and
Pull</a> de GitHub.</p>
<h2 id=traducción>Traducción</h2>
<p>Se presta especial atención al multilingüismo. La interfaz de la
aplicación está disponible en varios idiomas, y se agradecería su
traducción a otros idiomas. Para ello, edite este archivo y envíe una
<em>pull request</em>.</p>
<h1 id=uso>Uso</h1>
<p>Teniendo restos arqueológicos de un sitio determinado,
<code>archeoViz</code> está diseñado para reducir las barreras técnicas
para cumplir tres objetivos:</p>
<ul>
<li>exploración espacial básica y generación de informes gráficos
sencillos;</li>
<li>publicación previa rápida de datos arqueológicos, destinada a la
comunidad científica;</li>
<li>implementación rápida de una herramienta de visualización y
comunicación destinada a un público más amplio.</li>
</ul>
<p>Además, <code>archeoViz</code> es un recurso pedagógico adecuado para
enseñar análisis espacial en arqueología, estructuración de datos,
ciencia abierta y flujo de trabajo reproducible.</p>
<p>N.B.: en consecuencia, <code>archeoViz</code> no pretende reemplazar
herramientas de análisis más sofisticadas (por ejemplo, GIS, paquetes
estadísticos, etc.)</p>
<h2 id=información-espacial-en-archeoviz>Información espacial en
archeoViz</h2>
<p>Los arqueólogos registran la ubicación de los objetos arqueológicos
en diferentes escalas y granularidades. En consecuencia, utilizan
diferentes conceptos geométricos para representar la ubicación.</p>
<h3 id=puntos-ubicación-exacta-objetos-trazados>Puntos, ubicación
exacta: objetos trazados</h3>
<p>El uso de coordenadas de cuadrícula o “estación total” electrónica
permite registrar la ubicación individual de los objetos en el campo. En
ese caso, la ubicación se representa como puntos en
<code>archeoViz</code> (tripletes de coordenadas x, y, z).</p>
<h3 id=puntos-ubicación-vaga-niveles-arbitrários-baldes-objetos-tamizados-y-errores-de-registro>Puntos,
ubicación vaga: niveles arbitrários, baldes, objetos tamizados y errores
de registro</h3>
<p>Sin embargo, también es común que las coordenadas x, y, z, por objeto
no estén disponibles, por diferentes motivos debido a:</p>
<ul>
<li>errores de registro, pérdida de información, lo que resulta en la
necesidad de reemplazar uno de varios valores de coordenadas por rangos
(por ejemplo, falta un valor X para un objeto y se reemplaza por los
valores X mínimo y máximo del cuadrado donde se encuentra este objeto).
fue encontrado);</li>
<li>elección del método (p. ej., excavación realizada y registrada
utilizando asadores de profundidad arbitraria, objetos tamizados,
etc.).</li>
</ul>
<p>En todos estos casos, tenemos que lidiar con la ubicación imprecisa,
cuando los objetos no se pueden ubicar como puntos sino que se
encuentran en algún lugar entre rangos de coordenadas. La ubicación
imprecisa puede afectar a una, dos o tres dimensiones espaciales (las
coordenadas x, y, z, respectivamente).</p>
<p>Esta función también puede utilizarse para tener en cuenta la
imprecisión de los instrumentos topográficos.</p>
<h3 id=líneas>Líneas</h3>
<p>Las líneas son geometrías útiles para representar relaciones. En
arqueología, pueden ser relaciones de <a href=#remontajes>remontajes</a> entre fragmentos de objetos,
orientación (<a href=#medición-de-fábrica>medición de fábrica</a>),
etc. Las líneas se generan a partir de datos cargados como datos de
reensamblaje, ya sea desde la pestaña “Datos” o utilizando el parámetro
<code>refits.df</code> en la función <code>archeoViz()</code>.</p>
<h3 id=superficies>Superficies</h3>
<p>Las superficies son geometrías útiles para representar niveles del
terreno, zanjas, fosos, etc. En <code>archeoViz</code>, esto puede
conseguirse definiendo un subconjunto de puntos que resuman la
superficie deseada y activando después la visualización del <a href=#cascos-convexos>casco convexo</a> de este subconjunto.</p>
<h2 id=remontajes-y-medición-de-fábrica>Remontajes y medición de
fábrica</h2>
<h3 id=remontajes>Remontajes</h3>
<p>Los remontajes suelen ser registrados por los arqueólogos de dos
maneras:</p>
<ol style=list-style-type: decimal>
<li>por conjuntos de objetos de remontajes: usando una tabla de dos
columnas, donde una fila corresponde a un <strong>objeto</strong>. La
primera columna almacena la identificación única del objeto y la segunda
columna almacena la identificación del conjunto de objetos al que
pertenece este objeto.</li>
<li>reensamblando relaciones: usando una tabla de dos columnas, donde
una fila corresponde a una <strong>relación</strong>. La primera columna
almacena la identificación única del primer objeto y la segunda columna
almacena la identificación única del segundo objeto.</li>
</ol>
<p>Aunque la segunda estructura de datos es más precisa, la primera se
usa con más frecuencia.</p>
<p><code>archeoViz</code> procesa y representa las dos estructuras de
datos de dos maneras:</p>
<ul>
<li>los conjuntos de objetos de remontajes deben describirse usando una
columna específica en la tabla <code>objects.df</code> (p. ej.,
<code>object_refits</code>) y están representados por el color de los
puntos en los gráficos ( como cualquier otra variable);</li>
<li>las relaciones de remontajes deben describirse usando la tabla
<code>refits.df</code> y se visualizan como segmentos que conectan los
objetos de remontaje en las parcelas.</li>
</ul>
<h3 id=medición-de-fábrica>Medición de fábrica</h3>
<p>Hasta ahora <code>archeoViz</code> no maneja correctamente las
mediciones de fábrica. Sin embargo, el proceso utilizado para
representar remontajes también se puede adaptar y utilizar para
representar las mediciones de fábrica. Esto requiere distorsionar la
estructura de datos de la siguiente manera:</p>
<ul>
<li>suponiendo que las mediciones de fábrica se registraron con dos
mediciones en cada objeto (y no con mediciones de inmersión y
hundimiento),</li>
<li>diferentes valores id únicos deben ser dados a los dos puntos, y las
dos mediciones se procesan como si fueran dos objetos
reensamblados.</li>
</ul>
<p>Vea un ejemplo de este método <a href=https://analytics.huma-num.fr/archeoviz/shuidonggou2>aquí</a>.</p>
<h2 id=formato-de-datos>Formato de datos</h2>
<p>Se pueden cargar tres tipos de datos en <code>archeoViz</code>:</p>
<ul>
<li>una tabla de “objetos” (obligatoria), con datos sobre los
objetos;</li>
<li>una tabla de “remontajes” (opcional), con datos sobre los objetos de
reacondicionamiento;</li>
<li>una tabla de “cronología” (opcional), con datos sobre cuándo se
excavó o midió cada cuadrado del sitio.</li>
</ul>
<h3 id=formatear-datos>Formatear datos</h3>
<p>Las tablas deben ser archivos CSV con la primera fila que contiene
las etiquetas de las columnas. Se permiten contenidos en HTML. Esto hace
posible, en particular, agregar enlaces a recursos externos (por
ejemplo, a identificadores permanentes de objetos en otras bases de
datos, o a identificadores de conceptos en ontologías / tesauros
estándar, etc.).</p>
<p>El formateo de sus datos se puede hacer:</p>
<ul>
<li>ya sea usando un editor de hojas de cálculo en su máquina para
generar archivos CSV;</li>
<li>o, para la tabla de objetos , usando la aplicación <a href=https://aurelienroyer.shinyapps.io/Seahors/><em>SEAHORS</em></a>
para cargue sus datos, defina las variables (en la pestaña “Cargar
datos”) y expórtelos al formato archeoViz (en la pestaña “Tabla” /
“exportaciones archeoViz”). También es posible enviar directamente los
datos a una instancia <code>archeoViz</code> en línea.</li>
</ul>
<h3 id=tabla-de-objetos>Tabla de objetos</h3>
<p>Una fila describe un solo objeto con los siguientes campos
obligatorios:</p>
<ul>
<li><strong>id</strong>: <em>valor alfanumérico</em>, identificador
único del objeto</li>
<li><strong>xmin</strong>: <em>valor numérico</em>, coordenada del
objeto en el eje X</li>
<li><strong>ymin</strong>: <em>valor numérico</em>, coordenada del
objeto en el eje Y</li>
<li><strong>zmin</strong>: <em>valor numérico</em>, coordenada del
objeto en el eje Z (valor de profundidad positivo)</li>
<li><strong>layer</strong>: <em>valor alfanumério</em>, identificador de
la capa del objeto</li>
<li><strong>object_type</strong>: <em>valeur alphanumérique</em>,
categoría del objeto</li>
</ul>
<p>Además, los campos opcionales son posibles, incluidos:</p>
<ul>
<li><strong>square_x</strong>: <em>valor alfanumérico</em>,
identificador del cuadrado en el eje X</li>
<li><strong>square_y</strong>: <em>valor alfanumérico</em>,
identificador del cuadrado en el eje Y</li>
<li><strong>year</strong>: <em>valor numérico</em>, año en que se excavó
el objeto</li>
<li><strong>xmax</strong>: <em>valor numérico</em>, cuando la ubicación
X del objeto está incluida en un rango de coordenadas X</li>
<li><strong>ymax</strong>: <em>valor numérico</em>, cuando la ubicación
Y del objeto está incluida en un rango de coordenadas Y</li>
<li><strong>zmax</strong>: <em>valor numérico</em>, cuando la ubicación
Z del objeto está incluida en un rango de coordenadas Z</li>
<li><strong>object_edit</strong>: número ilimitado de variables
adicionales que describen el objeto (los nombres de campo deben comenzar
con object_ y tener diferentes sufijos)</li>
</ul>
<p>Las etiquetas de los cuadrados de la cuadrícula:</p>
<ul>
<li>están ordenados alfanuméricamente;</li>
<li>no se muestran para evitar visualizaciones erróneas, si el número de
etiquetas no corresponde exactamente al número total de cuadrados de 100
(cm, m, km) que se pueden definir en el rango de coordenadas mínimas y
máximas contenidas en las variables xmin e ymin;</li>
<li>se puede completar con los parámetros
<code>add.x.square.labels</code> y <code>add.y.square.labels</code> de
<code>archeoViz()</code> para agregar las etiquetas que faltan (en los
ejes X e Y de la cuadrícula, respectivamente).</li>
</ul>
<h3 id=tabla-de-remontajes>Tabla de remontajes</h3>
<p>Se puede cargar una tabla de datos con dos columnas para reajustar
los datos (formato CSV). Cada fila debe contener los identificadores
únicos de dos objetos de reacondicionamiento (correspondientes a los
valores de la columna <code>id</code> en la tabla de objetos).</p>
<h3 id=tabla-cronológica>Tabla cronológica</h3>
<p>Se puede cargar una tabla (formato CSV) sobre el historial de
excavaciones. La fila indica el año en que se excavó o midió cada
cuadrado de la cuadrícula del sitio. Esta tabla debe incluir las
siguientes variables:</p>
<ul>
<li><strong>year</strong>: <em>valor numérico</em>, el año de
excavación</li>
<li><strong>square_x</strong>: <em>valor alfanumérico</em>,
identificador del cuadrado excavado en el eje X</li>
<li><strong>square_y</strong>: <em>valor alfanumérico</em>,
identificador del cuadrado excavado en el eje Y</li>
</ul>
<h3 id=dibujo-de-fondo>Dibujo de fondo</h3>
<p>En las pestañas “3D” y “Mapa” se puede mostrar un dibujo de fondo.
Esto puede utilizarse, por ejemplo, para mostrar un plano del sitio como
fondo de una nube de puntos. Esta función requiere una tabla de datos en
la que cada línea contenga las coordenadas X e Y de los puntos que se
utilizarán para el dibujo. Tenga en cuenta que las líneas se dibujarán
en el orden de los puntos de la tabla. El sistema de coordenadas
utilizado debe ser el mismo que el utilizado para los objetos. Para
dibujar varias líneas, se requiere una columna adicional (titulada
“group”), que debe indicar para cada punto el identificador único de la
línea a la que pertenece el punto. El conjunto de datos debe cargarse
utilizando el parámetro <code>background.map</code>.</p>
<h3 id=unidades>Unidades</h3>
<p>Por defecto, todas las distancias en <code>archeoViz</code> están en
centímetros. Sin embargo, es posible especificar otra unidad dando uno
de los siguientes valores al parámetro <code>unit</code>: “cm”, “m”,
“km”. Este parámetro determina el contenido de la leyenda relativa al
tamaño de los cuadrados de la cuadrícula.</p>
<h2 id=cargar-datos>Cargar datos</h2>
<p>Hay cuatro formas de ingresar datos en <code>archeoViz</code>:</p>
<ol style=list-style-type: decimal>
<li>cargar tablas de datos a través de la pestaña “Cargar datos”,</li>
<li>cargar tablas de datos a través de los parámetros de la función
<code>archeoViz</code>, en la interfaz R;</li>
<li>cargar tablas de datos a través de parámetros de URL, cuando se usa
una instancia en línea de <code>archeoViz</code>.</li>
<li>generar datos aleatorios en la pestaña “Cargar datos”;</li>
</ol>
<h3 id=a-través-de-la-interfaz-de-la-aplicación>A través de la
interfaz de la aplicación</h3>
<p>Los tres tipos de tablas se pueden cargar en la pestaña “Cargar
datos”. El separador CSV (uno de: coma, punto y coma, tabulación) y el
carácter utilizado para los puntos decimales (punto o coma).</p>
<h3 id=a-través-de-los-parámetros-de-la-función-r>A través de los
parámetros de la función R</h3>
<p>La función de inicio de archeoViz (<code>archeoViz()</code>) se puede
ejecutar sin parámetros</p>
<div class=sourceCode id=cb6><pre class=sourceCode r><code class=sourceCode r><span id=cb6-1><a href=#cb6-1 tabindex=-1></a><span class=fu>archeoViz</span>()</span></code></pre></div>
<p>o usando los parámetros <code>objects.df</code>,
<code>refits.df</code> o <code>timeline.df</code> para ingresar
datos.marcos sobre los objetos arqueológicos , las relaciones de
remontajes entre estos objetos y la cronología de la excavación,
respectivamente.</p>
<div class=sourceCode id=cb7><pre class=sourceCode r><code class=sourceCode r><span id=cb7-1><a href=#cb7-1 tabindex=-1></a><span class=fu>archeoViz</span>(<span class=at>objects.df =</span> <span class=cn>NULL</span>,  <span class=co># data.frame con datos sobre los objetos</span></span>
<span id=cb7-2><a href=#cb7-2 tabindex=-1></a>          <span class=at>refits.df =</span> <span class=cn>NULL</span>,   <span class=co># data.frame para reacondicionar objetos</span></span>
<span id=cb7-3><a href=#cb7-3 tabindex=-1></a>          <span class=at>timeline.df =</span> <span class=cn>NULL</span>) <span class=co># data.frame opcional para la cronología de excavación</span></span></code></pre></div>
<h3 id=a-través-de-parámetros-de-url>A través de parámetros de
URL</h3>
<p>La URL de una instancia en línea de <code>archeoViz</code> puede
incluir los parámetros:</p>
<ul>
<li><code>objects.df=</code></li>
<li><code>refits.df=</code></li>
<li><code>timeline.df=</code></li>
</ul>
<p>cuyos valores deben ser la URL de un archivo CSV respetando el
formato archeoViz descrito anteriormente. Por ejemplo: <a href=https://analytics.huma-num.fr/archeoviz/fr/?objects.df=https://zenodo.org/record/8003880/files/bilzingsleben.csv>https://analytics.huma-num.fr/archeoviz/fr/?objects.df=https://zenodo.org/record/8003880/files/bilzingsleben.csv</a></p>
<h3 id=generando-datos-aleatorios>Generando Datos Aleatorios</h3>
<p>El uso de datos generados aleatoriamente es posible con fines de
demostración. Para activar esta función, configure el control deslizante
en “Cargar datos” a un valor superior a 0 (establecer el valor
nuevamente en 0 desactiva la función). Se genera un conjunto de datos de
“objetos”, un conjunto de datos de “remontajes” y un conjunto de datos
de “cronología”, lo que permite probar todas las funcionalidades de
<code>archeoViz</code>.</p>
<h3 id=girar-los-puntos>Girar los puntos</h3>
<p>Puede cambiar la orientación de los puntos en planta. En la pestaña
“Datos”, seleccione un valor (en grados) y confírmelo haciendo clic en
el botón “Validar la selección”.</p>
<h2 id=configuración-secundaria-de-datos>Configuración secundaria de
datos</h2>
<p>Una vez que se cargan los datos, se puede realizar una subselección
de los datos en el menú del lado izquierdo. La agrupación se puede
realizar cruzando los siguientes parámetros: el modo de ubicación, las
capas y la categoría del objeto.</p>
<h3 id=por-modo-de-ubicación>Por Modo de ubicación</h3>
<p>Si todos los objetos tienen una ubicación exacta o una ubicación
vaga, no se propone ninguna opción. Sin embargo, si el conjunto de datos
incluye una ubicación tanto exacta como imprecisa, es posible
seleccionar solo una de estas opciones o ambas.</p>
<h3 id=por-capa-o-categoría-de-objeto>Por capa o categoría de
objeto</h3>
<p>Los datos se pueden agrupar de dos maneras: ya sea según su capa o
según la variable “object_” seleccionada. Esta opción determina los
colores de los puntos en los gráficos 3D y 2D y cómo agrupar los puntos
al calcular cascos convexos y superficies de regresión 3D. Los
subconjuntos se pueden definir por categorías de objetos, utilizando los
campos “variable” y “valures”. Una vez que se selecciona uno de los
“object_type” (u otras posibles variables “object_”), sus valores
aparecen a continuación y se pueden seleccionar usando las casillas de
verificación. La selección debe validarse haciendo clic en el botón
“Validar”. Esta selección determina los datos que se mostrarán en los
gráficos y tablas.</p>
<h2 id=visualización-interactiva>Visualización interactiva</h2>
<h3 id=características-generales>Características generales</h3>
<p>Los gráficos en las pestañas “Gráfico 3D”, “Mapa”, “Sección X” y
“Sección Y” se generan utilizando <a href=https://CRAN.R-project.org/package=plotly/><code>plotly</code></a>.
Todos los gráficos son dinámicos e incluyen una barra de menú encima del
gráfico con varias opciones (generar un archivo de imagen, hacer zoom,
mover la vista, etc.). Consulte los detalles en el sitio web <a href=http://plotly.github.io/getting-to-know-the-plotly-modebar/><code>plotly</code></a>.</p>
<p>Al hacer clic en el elemento de una leyenda, se modifica la
visualización:</p>
<ul>
<li>un simple clic en un elemento activa/desactiva su
visualización;</li>
<li>un doble clic en un elemento solo muestra este elemento (otro doble
clic lo cancela).</li>
</ul>
<p>Esta función permite elegir qué capas se muestran. Además, se puede
establecer el tamaño de los puntos y si se deben representar o no las
relaciones de reposición.</p>
<p>Finalmente, al hacer clic en un punto, se muestra información sobre
ese punto en la tabla debajo del gráfico.</p>
<h3 id=visualización-de-la-incertidumbre-espacial>Visualización de la
incertidumbre espacial</h3>
<p>En <code>archeoViz</code>, se hace una distinción entre ubicación
exacta (dada como coordenadas x, y, z) y ubicaciones vagas (dada como
rangos de coordenadas). Se pueden mostrar ambos tipos de ubicaciones. La
incertidumbre de las ubicaciones vagas se puede visualizar representando
objetos no como puntos sino como líneas, planos y volúmenes (si se dan
rangos de coordenadas para una, dos o tres dimensiones espaciales,
respectivamente). Tenga en cuenta que esta función consume muchos
recursos y su uso con demasiados datos puede ralentizar
significativamente la aplicación.</p>
<h3 id=salidas-gráficas>Salidas gráficas</h3>
<p>Se pueden generar varios resultados gráficos
en<code>archeoViz</code>.</p>
<ul>
<li>Los gráficos en las pestañas “Gráfico 3D”, “Mapa“, “Sección X” y
“Sección Y” se pueden exportar:
<ul>
<li>en formato SVG (haciendo clic en el ícono de “cámara” en la barra de
menú sobre el gráfico),</li>
<li>como gráficos interactivos en formato HTML, haciendo clic en el
botón “Exportar“.</li>
</ul></li>
<li>El pequeño mapa en las pestañas “Sección X” y “Sección Y” se puede
exportar en SVG haciendo clic en el enlace “Descargar mapa“.</li>
<li>El plano de la cronología de la excavación se puede exportar en
formato SVG haciendo clic en el botón “Descargar“.</li>
</ul>
<h2 id=estadísticas-espaciales>Estadísticas espaciales</h2>
<p><code>archeoViz</code> incluye algunas funcionalidades de análisis
espacial, destinadas a un uso básico y exploratorio.</p>
<h3 id=superficies-de-regresión>Superficies de regresión</h3>
<p>En la pestaña “Gráfico 3D“, al hacer clic en “Calcular superficies” y
“Validar” se muestra la superficie de regresión asociada con cada capa
(con al menos 100 puntos). Las superficies se calculan utilizando el
modelo aditivo generalizado implementado en el paquete <a href=https://CRAN.R-project.org/package=mgcv><code>mgcv</code></a>.</p>
<h3 id=cascos-convexos>Cascos convexos</h3>
<p>En la pestaña “Visualización 3D“, los cascos convexos se
muestran:</p>
<ol style=list-style-type: decimal>
<li>marcando la casilla “cascos convexos”,</li>
<li>seleccionando, en el menú que aparece, los subconjuntos de puntos
para los que deben calcularse los cascos,</li>
<li>pulsando “Validar”.</li>
</ol>
<p>El casco convexo asociado con cada capa (con al menos 20 puntos) se
muestran. Los cascos convexos se calculan usando el paquete<a href=https://CRAN.R-project.org/package=cxhull><code>cxhull</code></a>.</p>
<h3 id=densidad-kernel-2d>densidad kernel 2D</h3>
<p>En la pestaña “Mapa“, al marcar la casilla “Calcular densidad” y
hacer clic en “Validar” se genera un mapa con líneas de contorno que
muestran la densidad de los puntos. La densidad se puede calcular para
todos los puntos juntos o por capa (con al menos 30 puntos). La densidad
del núcleo 2D se calcula con la función <code>kde2d</code> del paquete
<a href=https://CRAN.R-project.org/package=MASS><code>MASS</code></a>
(a través de <a href=https://CRAN.R-project.org/package=ggplot2><code>ggplot2</code></a>).</p>
<h2 id=reproducibilidad>Reproducibilidad</h2>
<p><code>archeoViz</code> es, por definición, una aplicación
interactiva. Sin embargo, varias características garantizan la
reproducibilidad y comunicabilidad del resultado de las interacciones
con la aplicación.</p>
<ul>
<li>La visualización 3D se puede exportar en un formato independiente
HTML interactivo, teniendo en cuenta la selección de datos realizada por
el usuario.</li>
<li>En la pestaña “Reproducibilidad”, se genera dinámicamente un comando
R, teniendo en cuenta la configuración actual de la aplicación realizada
por el usuario.</li>
<li>En un uso más avanzado, los parámetros de URL permiten configurar
una instancia en línea de los parámetros de interés de la aplicación y
comunicarla mediante el envío de la URL.</li>
</ul>
<h2 id=exportaciones-desde-y-hacia-aplicaciones-de-terceros>Exportaciones
desde y hacia aplicaciones de terceros</h2>
<p><code>archeoViz</code> fue diseñado como uno de los componentes
básicos de un ecosistema digital descentralizado para datos y análisis
arqueológicos. En esta perspectiva, las características y funciones se
distribuyen en múltiples aplicaciones interconectadas, en lugar de
concentrarse en unos pocos sistemas. En consecuencia, los datos se
pueden exportar e importar entre <code>archeoViz</code> y otras
aplicaciones basadas en la web. Tenga en cuenta que, hasta ahora, las
funcionalidades de exportación solo están disponibles cuando se utilizan
instancias <code>archeoViz</code> en línea.</p>
<h3 id=exportar-desde-archeoviz>Exportar desde archeoViz</h3>
<p>Desde la pestaña “Estadísticas” de <code>archeoViz</code>, es posible
exportar datos a otras aplicaciones online. La posibilidad de realizar
determinadas exportaciones está condicionada al tipo de datos o a la
presencia de un número mínimo de valores.</p>
<p><a href=https://analytics.huma-num.fr/Sebastien.Plutniak/archeofrag><em>archeofrag</em></a>
es un paquete R y una aplicación web para evaluar y evaluar las
distinciones entre unidades espaciales arqueológicas (por ejemplo,
capas) basado en el análisis de las relaciones de remontajes entre
fragmentos de objetos. La versión web de la aplicación incluye métodos
para medir la cohesión y la mezcla de unidades espaciales y compararlas
con datos simulados. Si se inicia una instancia de
<code>archeoViz</code> con <a href=#tabla-de-remontajes>datos de
remontaje</a>, estos datos se pueden analizar con
<code>archeofrag</code>. Cf. este <a href=https://analytics.huma-num.fr/archeoviz/grotte16>ejemplo</a>.</p>
<p>El <a href=https://analytics.huma-num.fr/ModAthom/seriograph/><em>Seriograph</em></a>
es una aplicación web (parte del <a href=https://spartaas.gitpages.huma-num.fr/r-package/><em>SPARTAAS</em></a>)
collection) para visualizar cambios en la distribución cuantitativa de
tipos de artefactos en series ordenadas o desordenadas de unidades
espaciales. La exportación a <code>Seriograph</code> sólo es posible
desde instancias de <code>archeoViz</code> ejecutadas online cuyo
conjunto de datos tenga (al menos) 2 valores diferentes para la variable
<code>layer</code> y 2 valores diferentes para la variable seleccionada
(<code>object_type</code> por defecto). Cf. este <a href=https://analytics.huma-num.fr/archeoviz/poeymau>ejemplo</a>.</p>
<p><a href=https://app.ptm.huma-num.fr/amado/><em>Amado
online</em></a> es una aplicación online para analizar tablas de
contingencia. <code>Amado online</code> permite reordenar filas y
columnas manualmente y realizar seriaciones y clasificaciones
automáticas. La exportación a <code>Amado online</code> sólo es posible
desde instancias de <code>archeoViz</code> ejecutadas online cuyo
conjunto de datos tenga (al menos) 2 valores diferentes para la variable
<code>layer</code> y 2 valores diferentes para la variable seleccionada
(<code>object_type</code> por defecto). Cf. este <a href=https://analytics.huma-num.fr/archeoviz/tai>ejemplo</a>.</p>
<p><a href=https://cran.r-project.org/package=explor><em>explor</em></a> es
una aplicación R Shiny / paquete R para explorar interactivamente los
resultados de análisis multidimensionales. La exportación a
<code>explor</code> sólo es posible desde instancias de
<code>archeoViz</code> ejecutadas online cuyo conjunto de datos tenga
(al menos) 2 valores diferentes para la variable <code>layer</code> y 2
valores diferentes para la variable seleccionada
(<code>object_type</code> por defecto). La versión de
<code>explor</code> utilizada desde <code>archeoViz</code> es una
adaptación de la aplicación original, limitada al análisis factorial de
correspondencias. Cf. este <a href=https://analytics.huma-num.fr/archeoviz/tai>ejemplo</a>.</p>
<p><a href=https://cran.r-project.org/package=shinyHeatmaply><em>shinyHeatmaply</em></a>
es una aplicación R Shiny / paquete R para generar y explorar
interactivamente mapas de calor (<em>heatmaps</em>). Plusieurs distances
et méthodes de classifications peuvent être apploquées. Pueden aplicarse
varias distancias y métodos de clasificación. La exportación a
<code>shinyHeatmaply</code> sólo es posible desde instancias de
<code>archeoViz</code> ejecutadas online cuyo conjunto de datos tenga
(al menos) 2 valores diferentes para la variable <code>layer</code> y 2
valores diferentes para la variable seleccionada
(<code>object_type</code> por defecto). La versión de
<code>shinyHeatmaply</code> utilizada desde <code>archeoViz</code> es
una adaptación de la aplicación original. Cf. este <a href=https://analytics.huma-num.fr/archeoviz/grande-rivoire>ejemplo</a>.</p>
<h3 id=importar-a-archeoviz>Importar a archeoViz</h3>
<p><a href=https://aurelienroyer.shinyapps.io/Seahors/><em>SEAHORS</em></a>
es una aplicación web y paquete R para visualizar la distribución
espacial de restos arqueológicos. Como <a href=#formatear-datos>se
mencionó</a>, <em>SEAHORS</em> se puede usar para importar, remodelar y
enviar un conjunto de datos a una instancia en línea de la aplicación
<code>archeoViz</code>.</p>
<h2 id=parámetros-avanzados>Parámetros avanzados</h2>
<p>La función <code>archeoViz()</code> se puede configurar con múltiples
parámetros opcionales, relacionados con:</p>
<ul>
<li>os datos de entrada (ya detallados <a href=#a-través-de-los-parámetros-de-la-función-r>arriba</a>),</li>
<li>el contenido de la página de inicio (ya detallado <a href=#uso-distante>arriba</a>),</li>
<li>la <a href=#cuadrícula>cuadrícula</a>,</li>
<li>la <a href=#preajuste-de-parámetros>preconfiguración</a> de los
parámetros que se pueden configurar a través de la interfaz de la
aplicación</li>
<li>el <a href=#visualización-de-gráficos-reactivos>comportamiento
reactivo</a> de la aplicación con respecto a la generación de
gráficos,</li>
<li><a href=#controlar-los-formatos-de-exportación>export
HTML</a>,</li>
<li>los <a href=#parámetros-de-url>parámetros de URL</a>.</li>
</ul>
<div class=sourceCode id=cb8><pre class=sourceCode r><code class=sourceCode r><span id=cb8-1><a href=#cb8-1 tabindex=-1></a><span class=fu>archeoViz</span>(<span class=at>objects.df=</span><span class=cn>NULL</span>, <span class=at>refits.df=</span><span class=cn>NULL</span>, <span class=at>timeline.df=</span><span class=cn>NULL</span>,</span>
<span id=cb8-2><a href=#cb8-2 tabindex=-1></a>          <span class=at>title=</span><span class=cn>NULL</span>, <span class=at>home.text=</span><span class=cn>NULL</span>, <span class=at>lang=</span><span class=st>&quot;en&quot;</span>, <span class=at>set.theme=</span><span class=st>&quot;cosmo&quot;</span>,</span>
<span id=cb8-3><a href=#cb8-3 tabindex=-1></a>          <span class=at>square.size =</span> <span class=dv>100</span>, <span class=at>unit =</span> <span class=st>&quot;cm&quot;</span>, <span class=at>rotation =</span> <span class=dv>0</span>, </span>
<span id=cb8-4><a href=#cb8-4 tabindex=-1></a>          <span class=at>grid.orientation =</span> <span class=cn>NULL</span>, <span class=at>background.map =</span> <span class=cn>NULL</span>,</span>
<span id=cb8-5><a href=#cb8-5 tabindex=-1></a>          <span class=at>reverse.axis.values =</span> <span class=cn>NULL</span>, <span class=at>reverse.square.names =</span> <span class=cn>NULL</span>,</span>
<span id=cb8-6><a href=#cb8-6 tabindex=-1></a>          <span class=at>add.x.square.labels =</span> <span class=cn>NULL</span>, <span class=at>add.y.square.labels =</span> <span class=cn>NULL</span>,</span>
<span id=cb8-7><a href=#cb8-7 tabindex=-1></a>          <span class=at>class.variable =</span> <span class=cn>NULL</span>, <span class=at>class.values =</span> <span class=cn>NULL</span>,</span>
<span id=cb8-8><a href=#cb8-8 tabindex=-1></a>          <span class=at>default.group =</span> <span class=st>&quot;by.layer&quot;</span>, <span class=at>location.mode =</span> <span class=cn>NULL</span>,</span>
<span id=cb8-9><a href=#cb8-9 tabindex=-1></a>          <span class=at>map.z.val =</span> <span class=cn>NULL</span>, <span class=at>map.density =</span> <span class=st>&quot;no&quot;</span>, <span class=at>map.refits =</span> <span class=cn>NULL</span>,</span>
<span id=cb8-10><a href=#cb8-10 tabindex=-1></a>          <span class=at>plot3d.ratio =</span> <span class=dv>1</span>, <span class=at>plot3d.hulls =</span> <span class=cn>FALSE</span>, <span class=at>hulls.class.values =</span> <span class=cn>NULL</span>,</span>
<span id=cb8-11><a href=#cb8-11 tabindex=-1></a>          <span class=at>plot3d.surfaces =</span> <span class=cn>NULL</span>, <span class=at>plot3d.refits =</span> <span class=cn>NULL</span>, <span class=at>point.size =</span> <span class=dv>2</span>,</span>
<span id=cb8-12><a href=#cb8-12 tabindex=-1></a>          <span class=at>sectionX.x.val =</span> <span class=cn>NULL</span>, <span class=at>sectionX.y.val =</span> <span class=cn>NULL</span>, <span class=at>sectionX.refits =</span> <span class=cn>NULL</span>, </span>
<span id=cb8-13><a href=#cb8-13 tabindex=-1></a>          <span class=at>sectionY.x.val =</span> <span class=cn>NULL</span>, <span class=at>sectionY.y.val =</span> <span class=cn>NULL</span>, <span class=at>sectionY.refits =</span> <span class=cn>NULL</span>,</span>
<span id=cb8-14><a href=#cb8-14 tabindex=-1></a>          <span class=at>camera.center =</span> <span class=fu>c</span>(<span class=dv>0</span>, <span class=dv>0</span>, <span class=dv>0</span>), <span class=at>camera.eye =</span> <span class=fu>c</span>(<span class=fl>1.25</span>, <span class=fl>1.25</span>, <span class=fl>1.25</span>),</span>
<span id=cb8-15><a href=#cb8-15 tabindex=-1></a>          <span class=at>run.plots =</span> <span class=cn>FALSE</span>, <span class=at>html.export =</span> <span class=cn>TRUE</span>, <span class=at>table.export =</span> <span class=cn>TRUE</span></span>
<span id=cb8-16><a href=#cb8-16 tabindex=-1></a>          )</span></code></pre></div>
<h3 id=cuadrícula>Cuadrícula</h3>
<div class=sourceCode id=cb9><pre class=sourceCode r><code class=sourceCode r><span id=cb9-1><a href=#cb9-1 tabindex=-1></a><span class=fu>archeoViz</span>(<span class=at>square.size =</span> <span class=dv>100</span>, <span class=at>unit =</span> <span class=st>&quot;cm&quot;</span>, <span class=at>rotation =</span> <span class=dv>0</span>, </span>
<span id=cb9-2><a href=#cb9-2 tabindex=-1></a>          <span class=at>grid.orientation =</span> <span class=cn>NULL</span>, <span class=at>background.map =</span> <span class=cn>NULL</span>,</span>
<span id=cb9-3><a href=#cb9-3 tabindex=-1></a>          <span class=at>reverse.axis.values =</span> <span class=cn>NULL</span>, <span class=at>reverse.square.names =</span> <span class=cn>NULL</span>,</span>
<span id=cb9-4><a href=#cb9-4 tabindex=-1></a>          <span class=at>add.x.square.labels =</span> <span class=cn>NULL</span>, <span class=at>add.y.square.labels =</span> <span class=cn>NULL</span></span>
<span id=cb9-5><a href=#cb9-5 tabindex=-1></a>          )</span></code></pre></div>
<ul>
<li><strong>square.size</strong> : <em>numérico</em>. Tamaño (ancho y
alto) de los cuadrados en el sistema de cuadrícula. El valor
predeterminado es 100.</li>
<li><strong>unit</strong> : carácter. Unidad para distancias espaciales.
Puede ser “cm”, “m” o “km”.</li>
<li><strong>rotation</strong> : <em>numérico</em>. Valor (grados) de la
rotación en el plano de la nube de puntos.</li>
<li><strong>grid.orientation</strong> : <em>numérico</em>. Orientación
(grados, positiva o negativa) de la cuadrícula (0 corresponde a una
orientación norte).</li>
<li><strong>background.map</strong> : data frame o matrix. Coordenadas
para dibujar líneas en el fondo de las vistas en 3D y en planta.</li>
<li><strong>reverse.axis.values</strong> : <em>carácter</em>. Nombre del
eje o ejes a invertir (cualquier combinación de ‘x’, ‘y’, ’z”).</li>
<li><strong>reverse.square.names</strong> : <em>carácter</em>. Nombre
del eje o ejes para los que invertir el orden de las etiquetas cuadradas
(cualquier combinación de “x”, “y”, “z”).</li>
<li><strong>add.x.square.labels</strong> : <em>carácter</em>. Etiquetas
cuadradas adicionales para el eje “x”.</li>
<li><strong>add.y.square.labels</strong> : <em>carácter</em>. Etiquetas
cuadradas adicionales para el eje “y”.</li>
</ul>
<h3 id=preajuste-de-parámetros>Preajuste de parámetros</h3>
<div class=sourceCode id=cb10><pre class=sourceCode r><code class=sourceCode r><span id=cb10-1><a href=#cb10-1 tabindex=-1></a><span class=fu>archeoViz</span>(<span class=at>class.variable =</span> <span class=cn>NULL</span>, <span class=at>class.values =</span> <span class=cn>NULL</span>,</span>
<span id=cb10-2><a href=#cb10-2 tabindex=-1></a>          <span class=at>default.group =</span> <span class=st>&quot;by.layer&quot;</span>, <span class=at>location.mode =</span> <span class=cn>NULL</span>,</span>
<span id=cb10-3><a href=#cb10-3 tabindex=-1></a>          <span class=at>map.z.val =</span> <span class=cn>NULL</span>, <span class=at>map.density =</span> <span class=st>&quot;no&quot;</span>, <span class=at>map.refits =</span> <span class=cn>NULL</span>,</span>
<span id=cb10-4><a href=#cb10-4 tabindex=-1></a>          <span class=at>plot3d.hulls =</span> <span class=cn>NULL</span>, <span class=at>plot3d.surfaces =</span> <span class=cn>NULL</span>, <span class=at>plot3d.refits =</span> <span class=cn>NULL</span>,</span>
<span id=cb10-5><a href=#cb10-5 tabindex=-1></a>          <span class=at>sectionX.x.val =</span> <span class=cn>NULL</span>, <span class=at>sectionX.y.val =</span> <span class=cn>NULL</span>, <span class=at>sectionX.refits =</span> <span class=cn>NULL</span>, </span>
<span id=cb10-6><a href=#cb10-6 tabindex=-1></a>          <span class=at>sectionY.x.val =</span> <span class=cn>NULL</span>, <span class=at>sectionY.y.val =</span> <span class=cn>NULL</span>, <span class=at>sectionY.refits =</span> <span class=cn>NULL</span>,</span>
<span id=cb10-7><a href=#cb10-7 tabindex=-1></a>          <span class=at>camera.center =</span> <span class=cn>NULL</span>, <span class=at>camera.eye =</span> <span class=cn>NULL</span></span>
<span id=cb10-8><a href=#cb10-8 tabindex=-1></a>          )</span></code></pre></div>
<ul>
<li><strong>class.variable</strong>: <em>carácter</em>. Al iniciar la
aplicación, nombre de la variable a preseleccionar.</li>
<li><strong>class.values</strong>: <em>carácter</em>. vector de
caracteres. Al iniciar la aplicación, nombres de los valores para
preseleccionar.</li>
<li><strong>default.group</strong>: <em>carácter</em>. carácter. Al
iniciar la aplicación, ajuste preestablecido de la variable utilizada
para agrupar datos (una de “by.layer” o “by.variable”).</li>
<li><strong>location.mode</strong>: <em>carácter</em>. Al iniciar la
aplicación, ajuste preestablecido de los métodos de ubicación (cualquier
combinación de “exact”, “fuzzy”, “show.uncertainty”).</li>
<li><strong>map.z.val</strong>: numérico. Valores mínimos y máximos de
las coordenadas Z para mostrar en el gráfico del mapa.</li>
<li><strong>map.density</strong>: <em>carácter</em>. Al iniciar la
aplicación, si desea calcular y mostrar los contornos de densidad en el
gráfico del mapa (uno de “no”, “overall”, “by.variable”).</li>
<li><strong>map.refits</strong>: TRUE o FALSE. Ya sea para mostrar
remontaje en el gráfico del mapa.</li>
<li><strong>plot3d.hulls</strong>: TRUE o FALSE. Al iniciar la
aplicación, si calcular y mostrar cascos convexos en el gráfico 3D.</li>
<li><strong>hulls.class.values</strong>: <em>carácter</em>. Al iniciar
la aplicación, los nombres de los subconjuntos de puntos para los que se
calcularán los cascos convexos.</li>
<li><strong>plot3d.surfaces</strong>: TRUE o FALSE. Al iniciar la
aplicación, si calcular y mostrar la regresión en el gráfico 3D.</li>
<li><strong>plot3d.refits</strong>: TRUE o FALSE. Al iniciar la
aplicación, si mostrar remontaje en el gráfico de sección 3D.</li>
<li><strong>point.size</strong>: <em>numérico</em>. Al iniciar la
aplicación, el tamaño de los puntos en las visualizaciones.</li>
<li><strong>sectionX.x.val</strong>: <em>numérico</em>. Al iniciar la
aplicación, los valores mínimos y máximos de las coordenadas X se
mostrarán en el gráfico de la sección X.</li>
<li><strong>sectionX.y.val</strong>: <em>numérico</em>. Al iniciar la
aplicación, los valores mínimos y máximos de las coordenadas Y se
mostrarán en el gráfico de la sección Y.</li>
<li><strong>sectionX.refits</strong>: TRUE o FALSE. Al iniciar la
aplicación, si se muestran los remontajes en el gráfico de la sección
X.</li>
<li><strong>sectionY.x.val</strong>: <em>numérico</em>. Al iniciar la
aplicación, los valores mínimos y máximos de las coordenadas X se
mostrarán en el gráfico de la sección Y.</li>
<li><strong>sectionY.y.val</strong>: <em>numérico</em>. Al iniciar la
aplicación, los valores mínimos y máximos de las coordenadas Y se
mostrarán en el gráfico de la sección Y.</li>
<li><strong>sectionY.refits</strong>: TRUE o FALSE. Al iniciar la
aplicación, si se muestran los reacondicionamientos en el gráfico de la
sección Y.</li>
<li><strong>camera.center</strong>: <em>numérico</em>. En el gráfico 3D,
coordenadas del punto al que mira la cámara (valores predeterminados:
x=0, y=0, z=0).</li>
<li><strong>camera.eye</strong>: <em>numérico</em>. En el gráfico 3D,
las coordenadas de la posición de la cámara (valores predeterminados:
x=1,25, y=1,25, z=1,25).</li>
</ul>
<h3 id=visualización-de-gráficos-reactivos>Visualización de gráficos
reactivos</h3>
<div class=sourceCode id=cb11><pre class=sourceCode r><code class=sourceCode r><span id=cb11-1><a href=#cb11-1 tabindex=-1></a><span class=fu>archeoViz</span>(<span class=at>run.plots =</span> <span class=cn>FALSE</span>)</span></code></pre></div>
<ul>
<li><strong>run.plots</strong>: TRUE o FALSE. Si calcular y mostrar
gráficos inmediatamente (sin requerir que el usuario haga clic en el
botón “Actualizar”).</li>
</ul>
<h3 id=controlar-los-formatos-de-exportación>Controlar los formatos de
exportación</h3>
<ul>
<li><strong>html.export</strong>: TRUE o FALSE. Si permitir o no que las
figuras se exporten como widgets HTML interactivos.</li>
<li><strong>table.export</strong>: TRUE o FALSE. Permita o no permita la
transferencia de datos a <a href=#exportaciones-desde-y-hacia-aplicaciones-de-terceros>aplicaciones
de terceros</a> en la pestaña “Estadísticas”.</li>
</ul>
<h3 id=parámetros-de-url>Parámetros de URL</h3>
<p>Una instancia de <code>archeoViz</code> implementada en línea en un
servidor se puede configurar con parámetros de URL. Los parámetros
admitidos incluyen:</p>
<ul>
<li><code>objects.df</code>, <code>refits.df</code>,
<code>timeline.df</code></li>
<li><code>title</code>, <code>home.text</code></li>
<li><code>reverse.axis.values</code>,
<code>reverse.square.names</code></li>
<li><code>square.size</code></li>
<li><code>add.x.square.labels</code>,
<code>add.y.square.labels</code></li>
<li><code>class.variable</code>, <code>class.values</code></li>
<li><code>default.group</code></li>
<li><code>location.mode</code></li>
<li><code>map.density</code>, <code>map.refits</code></li>
<li><code>plot3d.hulls</code>, <code>plot3d.surfaces</code>,
<code>plot3d.refits</code></li>
<li><code>sectionX.refits</code></li>
<li><code>sectionY.refits</code></li>
<li><code>run.plots</code></li>
</ul>
<p>(Los siguientes parámetros no son compatibles con la versión actual:
<code>map.z.val</code>, <code>sectionX.x.val</code>,
<code>sectionX.y.val</code>, <code>sectionY.x.val</code>,
<code>sectionY.y.val</code>, <code>point.size</code>, <code>lang</code>,
<code>set.theme</code>, <code>camera.center</code>,
<code>camera.eye</code>, <code>html.export</code>,
<code>table.export</code>.)</p>
<p>Los parámetros deben escribirse usando la sintaxis de URL
(?param1=value&amp;param2=value2) y tener el mismo tipo de valores que
cuando se usan en la interfaz de R. Por ejemplo, la siguiente URL inicia
una instancia de archeoViz utilizando el conjunto de datos <a href=https://zenodo.org/record/8003880>Bilzingsleben</a>:</p>
<p><a href=https://analytics.huma-num.fr/archeoviz/en/?objects.df=https://zenodo.org/record/8003880/files/bilzingsleben.csv>https://analytics.huma-num.fr/archeoviz/en/?objects.df=https://zenodo.org/record/8003880/files/bilzingsleben.csv</a></p>
<p>Esta URL hace lo mismo, pero también incluye la tabla de
reacondicionamiento (parámetro <code>&amp;refits.df=</code>) y activa la
visualización de las relaciones de reacondicionamiento en los gráficos
3D y de mapa:</p>
<p><a href=https://analytics.huma-num.fr/archeoviz/en/?map.refits=TRUE&amp;plot3d.refits=TRUE&amp;objects.df=https://zenodo.org/record/8003880/files/bilzingsleben.csv&amp;refits.df=https://zenodo.org/record/8003880/files/bilzingsleben-antlers-refits.csv>https://analytics.huma-num.fr/archeoviz/en/?map.refits=TRUE&amp;plot3d.refits=TRUE&amp;objects.df=https://zenodo.org/record/8003880/files/bilzingsleben.csv&amp;refits.df=https://zenodo.org/record/8003880/files/bilzingsleben-antlers-refits.csv</a></p>
<p>La siguiente URL inicia el conjunto de datos de Bilzingsleben,
preconfigurando la aplicación para:</p>
<ol style=list-style-type: decimal>
<li>agrupa los puntos por variable (parámetro
<code>default.group</code>, con valor <code>by.variable</code> en lugar
de <code>by.layer</code>)</li>
<li>selecciona solo las “Astas” (parámetro
<code>class.values</code>)</li>
<li>redefine el tamaño de la cuadrícula (parámetro
<code>square.size</code>, 500 en lugar del valor predeterminado de
100)</li>
<li>habilitar la visualización inmediata de los gráficos (parámetro
<code>run.plots</code>)</li>
<li>modifica el título de la página (parámetro <code>title</code>)</li>
<li>modifica el contenido de la página de inicio con contenidos HTML
básicos (parámetro <code>home.txt</code>)</li>
</ol>
<p><a href=https://analytics.huma-num.fr/archeoviz/en/?default.group=by.variable&amp;class.values=Antler&amp;square.size=500&amp;run.plots=TRUE&amp;title=Anters%20at%20Bilzingsleben&amp;home.text=Many%20%3Cb%3Eantlers%3C/b%3E&amp;objects.df=https://zenodo.org/record/8003880/files/bilzingsleben.csv><span>https://analytics.huma-num.fr/archeoviz/en/?default.group=by.variable&amp;class.values=Antler&amp;square.size=500&amp;run.plots=TRUE&amp;title=Antlers%20at%20Bilzingsleben&amp;home.text=Many%20</span><b>antlers</b>&amp;objects.df=<span>https://zenodo.org/record/8003880/files/bilzingsleben.csv</span></a></p>
<p>Tenga en cuenta que los parámetros <code>add.x.square.labels</code>,
<code>add.y.square.labels</code>, <code>location.mode</code>, et
<code>class.values</code>, que aceptan valores simples o múltiples en la
interfaz de R (p. ej., c(“value1”, “value2”)) solo aceptan un valor
cuando se establecen como parámetros de URL (esta es una restricción
debido a la sintaxis de la URL).</p>
<h1 id=agradecimientos>Agradecimientos</h1>
<p>La aplicación y el paquete <code>archeoViz</code> son desarrollados y
mantenidos por Sébastien Plutniak. Arthur Coulon, Solène Denis, Olivier
Marlet y Thomas Perrin probaron y apoyaron el proyecto en su etapa
inicial. Renata Araujo, Laura Coltofean, Sara Giardino, Julian Laabs, y
Nicolas Delsol tradujeron la aplicación al portugués, rumano, italiano,
alemán, y español respectivamente.</p>
<h1 id=referencias>Referencias</h1>
<h2 id=software>Software</h2>
<ul>
<li>Plutniak, Sébastien, Renata Araujo, Laura Coltofean, Nicolas Delsol,
Sara Giardino, Julian Laabs. 2024. “archeoViz. Visualisation,
Exploration, and Web Communication of Archaeological Spatial Data”.
v1.3.4, DOI: <a href=https://doi.org/10.5281/zenodo.7460193>10.5281/zenodo.7460193</a>.</li>
<li>Plutniak, Sébastien, Anaïs Vignoles. 2023. “<a href=https://hal.science/hal-04156271>The archeoViz Portal:
Dissemination of Spatial Archaeological Datasets</a>”, portail web, <a href=https://analytics.huma-num.fr/archeoviz/home>https://analytics.huma-num.fr/archeoviz/home</a>.</li>
</ul>
<h2 id=articulos>Articulos</h2>
<ul>
<li>Plutniak, Sébastien. 2023. “archeoViz: an R package for the
Visualisation, Exploration, and Web Communication of Archaeological
Spatial Data”. <em>Journal of Open Source Software</em>, 92(8), 5811,
DOI: <a href=https://doi.org/10.21105/joss.05811>10.21105/joss.05811</a>.</li>
<li>Plutniak, Sébastien. 2023. “<a href=https://www.prehistoire.org/offres/doc_inline_src/515/0-BSPF_2023_1_2e_partie_Correspondance_PLUTNIAK.pdf>Visualiser
et explorer la distribution spatiale du mobilier archéologique :
l’application archeoViz et son portail web</a>”. <em>Bulletin de la
Société préhistorique française</em>, 120(1), p. 70-74.</li>
</ul>
<h2 id=presentationes>Presentationes</h2>
<ul>
<li>Plutniak, Sébastien. 2023. “<a href=https://hal.science/hal-04146410>Fostering the Publication of
Spatial Archaeological Data: a Decentralized Approach. The archeoViz Web
Application and its Portal</a>”, diapositivas de una presentación en la
Universidad de Florida, Gainesville.</li>
<li>Plutniak, Sébastien, Anaïs Vignoles. 2023. “<a href=https://hal.science/hal-04070444>L’application web / package
archeoViz et son portail web. Une solution décentralisée
d’éditorialisation de données archéologiques spatialisées</a>,
diapositivas de una presentación en el SITRADA workshop, Paris.</li>
</ul>
<h2 id=sitios-web>Sitios web</h2>
<ul>
<li>El blog <em>archeoViz. Data visualization in archaeology. Re-use,
visualization, dissemination of spatial data</em>: <a href=https://archeoviz.hypotheses.org>https://archeoviz.hypotheses.org</a></li>
</ul>
"  
  
  # LIST ----
  # : fr ----
  fr <- list(
    welcome = welcome.fr,
    reproducibility = reproducibility.fr,
    tab.home = "Accueil",
    tab.input = "Données",
    tab.plot3d ="Vue 3D",
    tab.map = "Plan",
    tab.section.x = "Section X",
    tab.section.y = "Section Y",
    tab.statistics = "Statistiques",
    tab.timeline = "Chronologie",
    tab.reproducibility = "Reproductibilité",
    tab.guidelines = "Aide",
    all = "TOUTES",
    download = "Télécharger",
    export = "Exporter (html)",
    location = "Mode de localisation",
    values = "Valeurs",
    validate = "1) Valider la sélection",
    refresh = "2) Rafraîchir",
    header.3d.options = "Surfaces",
    header.objects.table = "Chargement du tableau des objets",
    header.simul.data = "Générer des données de démonstration simulées",
    header.refits.table = "Chargement du tableau des remontages",
    header.timeline.table = "Chargement du tableau de chronologie des fouilles",
    header.export.data = "Transmettre les données à des applications externes",
    export.to = "Transmettre à",
    seriations = "sériations",
    classifications = "classifications",
    corr.analysis = "analyses de correspondances",
    refit.analysis = "analyses de remontages",
    heatmaps = "cartes de chaleur",
    choose.csv = "Sélectionnez un fichier CSV",
    input.objects = input.objects.fr,
    input.refits = input.refits.fr,
    input.timeline = input.timeline.fr,
    guidelines = guidelines.fr,
    separator = "Séparateur",
    decimal = "Décimales",
    use.demo = "Simuler n objets",
    surfaces = "Régressions 3D",
    hulls = "Enveloppes convexes",
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
    total = "Total",
    objects = "objets",
    year = "Année",
    variable = "Variable",
    selection = "Sélection",
    show.uncertainty = "Montrer les incertitudes",
    linear.uncertainty = "incertitude linéaire",
    planar.uncertainty = "incertitude planaire",
    volume.uncertainty = "incertitude volumétrique",
    linear = "Linéaire",
    planar = "Planaire",
    volume = "Volumétrique",
    grid = "Carroyage",
    rotation = "Rotation en plan (puis cliquez sur 'Valider')",
    click.on.point = "Cliquez sur un point pour afficher ses informations.",
    notif.objects.ok = "Fichier des objets ok!",
    notif.objects.not.ok = "Erreur. Certains champs requis sont absents, vérifiez les données.",
    notif.no.data = "Pas de données dans ces intervalles.",
    notif.tick.value = "Cochez au moins une valeur (dans le menu latéral gauche).",
    notif.error.coords.type = "Des valeurs xmin, ymin, ou zmin ne sont pas numériques et ont été converties (pertes possibles).",
    notif.error.identifier = "Les identifiants uniques des objets ne sont pas uniques.",
    notif.warn.obj.removed = "Les objets aux coordonnées incomplètes ont été supprimés.",
    notif.warn.uncertainty = "Nombreuses localisations incertaines. L'affichage risque d'être lent.",
    notif.warn.refits = "Nombreux remontages. L'affichage risque d'être lent."
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
    seriations = "seriation",
    classifications = "classifications",
    corr.analysis = "correspondence analysis",
    refit.analysis = "refitting analysis",
    heatmaps = "heatmaps",
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
    rotation = "Planar rotation (then click on 'Validate')",
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
    tab.home = "Início",
    tab.input = "Dados",
    tab.plot3d ="Visualização 3D",
    tab.map = "Mapa",
    tab.section.x = "Perfil X",
    tab.section.y = "Perfil Y",
    tab.statistics = "Estatísticas",
    tab.timeline = "Cronologia",
    tab.reproducibility = "Reprodutibilidade",
    tab.guidelines = "Ajuda",
    all = "TUDO",
    download = "Descarregar",
    export = "Exportar (html)",
    location = "Modo de localização",
    values = "Valores",
    validate = "Validar a seleção",
    refresh = "Atualizar",
    header.3d.options = "Opções de visualização 3D",
    header.objects.table = "Carregar tabela de objetos",
    header.simul.data = "Gerar dados de demonstração simulados ",
    header.refits.table = "Carregar tabela de remontagens",
    header.timeline.table = "Carregar tabela de cronologia de escavações",
    header.export.data = "Enviar dados a aplicações externas",
    export.to = "Enviar a",
    seriations = "serialização",
    classifications = "classificações",
    corr.analysis = "análise de correspondência",
    refit.analysis = "análise de remontagens",
    heatmaps = "mapas de calor",
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
    total = "Total",
    objects = "objetos",
    year = "ano",
    variable = "Variável",
    selection = "Selection",
    show.uncertainty = "Mostrar incerteza",
    linear.uncertainty = "incerteza linear",
    planar.uncertainty = "incerteza plana",
    volume.uncertainty = "incerteza volumétrica",
    linear = "Lineare",
    planar = "Planare",
    volume = "Volumetrica",
    grid = "Grade",
    rotation = "Girar no plano (depois clicar em 'Validar a seleção')",
    click.on.point = "Clique sobre um ponto para obter mais informações",
    notif.objects.ok = "Arquivo de objetos ok!",
    notif.objects.not.ok = "Erro. Certos campos exigidos estão ausentes. Por favor, verifique o arquivo.",
    notif.no.data = "Sem dados nesses intervalos.",
    notif.tick.value = "Marque pelo menos um valor (no menu lateral esquerdo).",
    notif.error.coords.type = "Os valores xmin, ymin, ou zmin não são numéricos e foram convertidos (com possíveis perdas)..",
    notif.error.identifier = "Alguns dos identificadores únicos dos objetos estão duplicados.",
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
    tab.reproducibility = "Riproducibilità",
    tab.guidelines = "Aiuto",
    all = "TUTTE",
    download = "Scaricare",
    export = "Esportare (html)",
    location = "Modalità di localizzazione",
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
    seriations = "seriazioni",
    classifications = "classificazioni",
    corr.analysis = "analisi delle corrispondenze",
    refit.analysis = "analisi dei rimontaggi",
    heatmaps = "mappe di calore",
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
    density = "Calcolare la densità",
    density.no = "Nessuna",
    density.all.layers = "Tutti gli strati",
    overall = "Complessivo",
    by.layer = "Per strato",
    by.variable = "Per variabile",
    tab.variable.loc = "Numero di oggetti per variabile e modalità di localizzazione",
    tab.layer.loc = "Numero di oggetti per strato e modalità di localizzazione",
    exact = "Esatta",
    fuzzy = "Vago",
    depth = "Profondità",
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
    rotation = "Rotazione in pianta (poi cliccare su 'Convalida')",
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
    validate = "(1) Auswahl bestätigen",
    refresh = "(2) Aktualisieren",
    header.3d.options = "Optionen 3D Ansicht",
    header.objects.table = "Lade Objekttabelle",
    header.simul.data = "Generiere simulierte Daten zur Demonstration",
    header.refits.table = "Lade Passobjekttabelle",
    header.timeline.table = "Lade Ausgrabungschronologietabelle",
    header.export.data = "Daten an externe Anwendungen senden",
    export.to = "Senden an",
    seriations = "Seriation",
    classifications = "Klassifizierungen",
    corr.analysis = "Korrespondenzanalyse",
    refit.analysis = "Zusammenfassung Analyse",
    heatmaps = "Heatmaps",
    choose.csv = "Wähle csv-Datei",
    input.objects = input.objects.de,
    input.refits = input.refits.de,
    input.timeline = input.timeline.de,
    guidelines = guidelines.en,
    separator = "Trennzeichen",
    decimal = "Dezimaltrenner",
    use.demo = "Generiere n Objecte:",
    surfaces = "Berechene Oberfläche",
    hulls = "Berechene konvexe Hüllen",
    refits = "Zeige Passobjekte",
    point.size = "Punktgrößr",
    ratio = "Vertikalverhältnis",
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
    rotation = "In der Ebene drehen (dann auf 'Bestätigen' klicken)",
    year = "Jahr",
    variable = "Variable",
    selection = "Selection",
    show.uncertainty = "Zeige Unsicherheit",
    click.on.point = "Klicken Sie auf einen Punkt, um weitere Informationen zu erhalten.",
    notif.objects.ok = "Objektdatei ok!",
    notif.objects.not.ok = "Fehler. Einige der Pflichtfelder fehlen. Bitte überprüfen Sie die Datei.",
    notif.no.data = "Keine Daten in diesen Bereichen.",
    notif.tick.value = "Kreuzen Sie mindestens einen Wert an (im Menü auf der linken Seite).",
    notif.error.coords.type = "'xmin', 'ymin' oder 'zmin' Wert(e) sind nicht numerisch und wurden (möglicherweise mit Verlust) umgerechnet.",
    notif.error.identifier = "Einige der eindeutigen Kennungen der Objekte sind doppelt vorhanden.",
    notif.warn.obj.removed = "Objekte mit unvollständigen Koordinaten wurden entfernt.",
    notif.warn.uncertainty = "Viele Objekte mit unsicherem Standort: Dies kann die Anwendung verlangsamen.",
    notif.warn.refits = "Viele Passobjekte: Das könnte die App verlangsamen."
  )

 # : es ----
  es <- list(  
    welcome = welcome.es,
    reproducibility = reproducibility.es,
    tab.home = "Inicio",
    tab.input = "Datos",
    tab.plot3d ="Visualización 3D",
    tab.map = "Mapa",
    tab.section.x = "Perfil X",
    tab.section.y = "Perfil Y",
    tab.statistics = "Estadísticas",
    tab.timeline = "Cronología",
    tab.reproducibility = "Reproducibilidad",
    tab.guidelines = "Ayuda",
    all = "TODO",
    download = "Descargar",
    export = "Exportar (html)",
    location = "Modo de ubicación",
    values = "Valores",
    validate = "Validar la selección",
    refresh = "Actualizar",
    header.3d.options = "Opciones de visualización 3D",
    header.objects.table = "Cargar tabela de objetos",
    header.simul.data = "Generar datos de demostraciones simuladas",
    header.refits.table = "Cargar tabla de remontajes",
    header.timeline.table = "Cargar tabla de cronología de excavación",
    header.export.data = "Enviar datos a aplicaciones externas",
    export.to = "Enviar a",
    seriations = "seriaciónes",
    classifications = "clasificaciónes",
    corr.analysis = "análisis de correspondencias",
    refit.analysis = "análisis de remontajes",
    heatmaps = "mapas de calor",
    choose.csv = "Selecione un archivo CSV",
    input.objects = input.objects.es,
    input.refits = input.refits.es,
    input.timeline = input.timeline.es,
    guidelines = guidelines.es,
    separator = "Separador",
    decimal = "Decimales",
    use.demo = "Simular objetos",
    surfaces = "Calcular superfícies",
    hulls = "Cascos convexos",
    refits = "Mostrar remontajes",
    point.size = "Tamaño de los puntos",
    ratio = "Ratio vertical",
    density = "Calcular densidad",
    density.no = "Ninguna",
    density.all.layers = "Todas las capas",
    overall = "General",
    by.layer = "Por capa",
    by.variable = "Por variable",
    tab.variable.loc = "Número de objetos por variable e modo de ubicación",
    tab.layer.loc = "Número de objetos por capa e modo de ubicación",
    exact = "Exacto",
    fuzzy = "Vago",
    depth = "Profundidad",
    group = "Agrupar datos",
    through = "con",
    total = "Total",
    objects = "objetos",
    year = "año",
    variable = "Variable",
    selection = "Selection",
    show.uncertainty = "Mostrar incertidumbre",
    linear.uncertainty = "incertidumbre lineal",
    planar.uncertainty = "incertidumbre planar",
    volume.uncertainty = "incertidumbre volumétrica",
    linear = "Lineal",
    planar = "Planar",
    volume = "Volumétrica",
    grid = "Cuadrícula",
    rotation ="Rotación en el plano (luego pulse 'Validar'')",
    click.on.point = "Haga clic en un punto para obtener más información",
    notif.objects.ok = "Archivo de objetos ok!",
    notif.objects.not.ok = "Error.Faltan algunos campos obligatorios. Por favor revise el archivo.",
    notif.no.data = "No hay datos en estos rangos.",
    notif.tick.value = "Marque al menos un valor (en el menú del lado izquierdo).",
    notif.error.coords.type = "Los valores xmin, ymin o zmin no son numéricos y se han convertido (posiblemente con pérdida).",
    notif.error.identifier = "Algunos de los identificadores únicos de los objetos están duplicados.",
    notif.warn.obj.removed = "Se han eliminado los objetos con coordenadas incompletas.",
    notif.warn.uncertainty = "Muchos objetos con ubicación incierta: podría ralentizar la aplicación.",
    notif.warn.refits = "Muchos remontajes: podría ralentizar la aplicación."
  )
  
  # : ro ----
  ro <- list(
    welcome = welcome.ro,
    reproducibility = reproducibility.ro,
    tab.home = "Home",
    tab.input = "Date de intrare",
    tab.plot3d = "Vizualizare 3D",
    tab.map = "Hartă",
    tab.section.x = "Secțiunea X",
    tab.section.y = "Secțiunea Y",
    tab.statistics = "Statistici",
    tab.timeline = "Cronologie",
    tab.reproducibility = "Reproductibilitate",
    tab.guidelines = "Ghid",
    all = "TOATE",
    download = "Descărcare",
    export = "Export Html",
    location = "Metodă de localizare",
    values = "Valori",
    validate = "(1) Validează selecția",
    refresh = "(2) Actualizare",
    header.3d.options = "Opțiuni vizualizare 3D",
    header.objects.table = "Încarcă tabelul de obiecte",
    header.simul.data = "Utilizează date simulate pentru demonstrație",
    header.refits.table = "Încarcă tabelul cu ajustări",
    header.timeline.table = "Încarcă tabelul cu cronologia săpăturii",
    header.export.data = "Trimite date către aplicații externe",
    export.to = "Trimite către",
    seriations = "seriațiile",
    classifications = "clasificările",
    corr.analysis = "analiza corespondenței",
    refit.analysis = "analiza ajustărilor",
    heatmaps = "hărții calorice",
    choose.csv = "Alege un fișier CSV",
    input.objects = input.objects.en,
    input.refits = input.refits.en,
    input.timeline = input.timeline.en,
    guidelines = guidelines.en,
    separator = "Separator",
    decimal = "Zecimală",
    use.demo = "Generează n obiecte:",
    surfaces = "Calculează suprafețe",
    hulls = "Calculează anvelope",
    refits = "Afișează ajustări",
    point.size = "Dimensiune punct",
    ratio = "Raport vertical",
    density = "Calculează densitatea",
    density.no = "Nu",
    overall = "Ansamblu",
    by.layer = "După strat",
    by.variable = "După variabilă",
    tab.variable.loc = "Resturi arheologice după variabilă și metoda de localizare",
    tab.layer.loc = "Resturi arheologice după strat și metoda de localizare",
    exact = "Exact",
    fuzzy = "Neclar",
    depth = "Adâncime",
    group = "Date de grup",
    through = "cu",
    total = "Total",
    objects = "obiecte",
    linear.uncertainty = "incertitudine liniară",
    planar.uncertainty = "incertitudine planară",
    volume.uncertainty = "incertitudine de volum",
    linear = "Linear",
    planar = "Planar",
    volume = "Volum",
    grid = "Caroiaj",
    rotation = "Rotiți în plan (apoi clic pe 'Validează')",
    year = "an",
    variable = "Variabilă",
    selection = "Selection",
    show.uncertainty = "Arată incertitudine",
    click.on.point = "Click pe un punct pentru mai multe informații.",
    notif.objects.ok = "Fișier obiecte ok!",
    notif.objects.not.ok = "Eroare. Unele dintre câmpurile obligatorii sunt absente. Verifică fișierul.",
    notif.no.data = "Nu există date în aceste intervale.",
    notif.tick.value = "Bifează cel puțin o valoare (în meniul din stânga).",
    notif.error.coords.type = "valorile xmin, ymin, sau zmin nu sunt numerice și au fost convertite (cu posibile pierderi).", 
    notif.error.identifier = "Unii dintre identificatorii unici ai obiectelor sunt duplicați.",
    notif.warn.obj.removed = "Obiectele cu coordonate incomplete au fost eliminate.",
    notif.warn.uncertainty = "Multe obiecte cu locație incertă: ar putea încetini aplicația.",
    notif.warn.refits = "Multe ajustări: ar putea încetini aplicația."
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


