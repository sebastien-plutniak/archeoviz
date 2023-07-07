
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
                L'interface est disponible en <a href=https://analytics.huma-num.fr/archeoviz/de target=_blank>allemand</a>, <a href=https://analytics.huma-num.fr/archeoviz/en target=_blank>anglais</a>, français, <a href=https://analytics.huma-num.fr/archeoviz/it target=_blank>italien</a> et <a href=https://analytics.huma-num.fr/archeoviz/pt target=_blank>portugais</a>.
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
                The interface is available in <a href=https://analytics.huma-num.fr/archeoviz/de target=_blank>German</a>, English, <a href=https://analytics.huma-num.fr/archeoviz/fr target=_blank>French</a>, <a href=https://analytics.huma-num.fr/archeoviz/it target=_blank>Italian</a>, and <a href=https://analytics.huma-num.fr/archeoviz/pt target=_blank>Portuguese</a>.
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
                o <i>archeoViz</i> pode ser usado localmente ou implantado em um servidor, seja carregando dados por meio da interface, seja iniciando o aplicativo com um conjunto de dados específico. A interface está disponível em <a href=https://analytics.huma-num.fr/archeoviz/de target=_blank>alemão</a>
<a href=https://analytics.huma-num.fr/archeoviz/en target=_blank>inglês</a>, <a href=https://analytics.huma-num.fr/archeoviz/fr target=_blank>francês</a>, <a href=https://analytics.huma-num.fr/archeoviz/it target=_blank>italiano</a>, e português.
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
                Distribuito come pacchetto R, <i>archeoViz</i> può essere utilizzato localmente o distribuito su un server, caricando i dati tramite l’interfaccia o lanciando l’applicazione con un insieme di dati specifico. L’interfaccia è disponibile in <a href=https://analytics.huma-num.fr/archeoviz/de target=_blank>tedesco</a>, <a href=https://analytics.huma-num.fr/archeoviz/en target=_blank>inglese</a>, <a href=https://analytics.huma-num.fr/archeoviz/fr target=_blank>francese</a>, italiano e <a href=https://analytics.huma-num.fr/archeoviz/pt target=_blank>portoghese</a>.
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
                    Eingabemaske ist derezit in Deutsch, <a href=https://analytics.huma-num.fr/archeoviz/en target=_blank>Englisch</a>, <a href=https://analytics.huma-num.fr/archeoviz/fr target=_blank>Französisch</a>, <a href=https://analytics.huma-num.fr/archeoviz/it target=_blank>Italienisch</a> und <a href=https://analytics.huma-num.fr/archeoviz/pt target=_blank>Portugiesisch</a>  verfügbar.
                  </p>
                  <p>     
                    Das R-Paket wird unter einer GNU GPL-3 Lizenz auf dem Server 
                    <a href=https://cran.r-project.org/package=archeoViz target=_blank>CRAN</a> 
                      veröffentlicht. Sein Quellcode ist auf 
                    <a href=https://github.com/sebastien-plutniak/archeoviz target=_blank>github</a> 
                      verfügbar.
                  </p>"

  
  # Input objects ----
  # :  fr ----
  input.objects.fr <- 
    "<p>
    Un tableau au format csv est requis. Chaque ligne décrit un objet, comportant les champs obligatoires suivants :
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
    É necessária uma tabela no formato csv. Cada linha descreve um objeto, incluindo os seguintes campos obrigatórios:
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
    È richiesta una tabella in formato csv. Ogni riga descrive un oggetto, con i seguenti campi obbligatori:
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
      Eine Datentablle wird benötigt (csv-Format). Zeilen beschreiben einzelne Objekte mit folgenden Pflichtfeldern:
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
  
  input.refits.it <- 
    "<p>
    È possibile caricare una tabella a due colonne per i riassemblaggi tra gli oggetti (formato csv). Ogni riga deve contenere gli identificativi univoci dei due oggetti riassemblati (in corrispondenza dei valori della colonna `id` della tabella degli oggetti).
    </p>"

  input.refits.de <- 
    "<p>
    Eine Datentabelle für Passobjekte (refitting) mit zwei Spalten hochgeladen werden (csv-Format).
    Jede Zeile muss die eindeutigen Kennungen von zwei Passobjekten enthalten (entsprechend den Werten der Spalte 'ID' in der Objekttabelle).
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
      Opcionalmente, pode ser carregada uma tabela (csv) referente ao desenvolvimento da escavação. Cada linha refere-se a uma quadra de escavação e contém as seguintes informações:
    <ul>
    <li> <b>year</b>: <i>valor numérico</i>, ano de escavação </li>
    <li> <b>square_x</b>: <i>valor alfanumérico</i>, identificador da quadra no eixo X</li>
    <li> <b>square_y</b>: <i>valor alfanumérico</i>, identificador da quadra no eixo Y</li>
    </ul>
    </p>"
  
  input.timeline.it <- 
    "<p>
      Il caricamento di una tabella (csv) riguardante lo sviluppo dello scavo è facoltativo. Ogni riga si riferisce a un quadrato di scavo e contiene le seguenti informazioni:
    <ul>
    <li> <b>year</b>: <i>valore numerico</i>, anno di scavo </li>
    <li> <b>square_x</b>: <i>valore alfanumerico</i>, identificatore del quadrato sull’asse X</li>
    <li> <b>square_y</b>: <i>valore alfanumerico</i>, identificatore del quadrato sull’asse Y</li>
    </ul>
    </p>"

    input.timeline.de <- 
    "<p>
    Es kann eine Tabelle (csv-Format) über die Ausgrabungschronologie hochgeladen werden. Jede Zeile beschreibt einen Quadranten der Fundstelle mit den folgenden Variablen:
    <ul>
    <li> <b>year</b>: <i>numerischer Wert</i>, Jahr der Grabung/Maßnahme </li>
    <li> <b>square_x</b>: <i>alphanumerischer Wert</i>, Kennung des Quadranten auf der X-Achse</li>
    <li> <b>square_y</b>: <i>alphanumerischer Wert</i>, Kennung des Quadranten auf der Y-Achse</li>
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
                         <p>Um Ihre aktuellen Einstellungen zu reproduzieren, führen Sie <i>archeoViz</i> mit dem folgenden R-Befehl aus (passen Sie die Parameter 'objects.df' und 'refits.df' an Ihre Bedürfnisse an):  </p>"    

  
  # guidelines ----
  # : en ----
  guidelines.en <- "

<h1 id=archeoviz>archeoViz</h1>
<p><code>archeoViz</code> is a packaged R Shiny application for the <em>visualisation</em>, <em>exploration</em>, and web <em>communication</em> of archaeological spatial data. It includes interactive 3D and 2D <em>visualisations</em>, can generate <em>cross sections</em> and <em>maps</em> of the remains, can run basic <em>spatial statistics</em> methods (convex hull, regression surfaces, 2D kernel density estimation), and display an interactive <em>timeline</em> of an excavation. <code>archeoViz</code> can be used locally or deployed on a server, either by allowing the user to load data through the interface or by running the app with a specific data set. The app interface is available in English, French, German, Italian, and Portuguese.</p>
<p><a href=https://www.repostatus.org/#active><img src=data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHhtbG5zOnhsaW5rPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5L3hsaW5rIiB3aWR0aD0iMTE2IiBoZWlnaHQ9IjIwIiByb2xlPSJpbWciIGFyaWEtbGFiZWw9InJlcG8gc3RhdHVzOiBBY3RpdmUiPjx0aXRsZT5yZXBvIHN0YXR1czogQWN0aXZlPC90aXRsZT48bGluZWFyR3JhZGllbnQgaWQ9InMiIHgyPSIwIiB5Mj0iMTAwJSI+PHN0b3Agb2Zmc2V0PSIwIiBzdG9wLWNvbG9yPSIjYmJiIiBzdG9wLW9wYWNpdHk9Ii4xIi8+PHN0b3Agb2Zmc2V0PSIxIiBzdG9wLW9wYWNpdHk9Ii4xIi8+PC9saW5lYXJHcmFkaWVudD48Y2xpcFBhdGggaWQ9InIiPjxyZWN0IHdpZHRoPSIxMTYiIGhlaWdodD0iMjAiIHJ4PSIzIiBmaWxsPSIjZmZmIi8+PC9jbGlwUGF0aD48ZyBjbGlwLXBhdGg9InVybCgjcikiPjxyZWN0IHdpZHRoPSI3MyIgaGVpZ2h0PSIyMCIgZmlsbD0iIzU1NSIvPjxyZWN0IHg9IjczIiB3aWR0aD0iNDMiIGhlaWdodD0iMjAiIGZpbGw9IiM0YzEiLz48cmVjdCB3aWR0aD0iMTE2IiBoZWlnaHQ9IjIwIiBmaWxsPSJ1cmwoI3MpIi8+PC9nPjxnIGZpbGw9IiNmZmYiIHRleHQtYW5jaG9yPSJtaWRkbGUiIGZvbnQtZmFtaWx5PSJWZXJkYW5hLEdlbmV2YSxEZWphVnUgU2FucyxzYW5zLXNlcmlmIiB0ZXh0LXJlbmRlcmluZz0iZ2VvbWV0cmljUHJlY2lzaW9uIiBmb250LXNpemU9IjExMCI+PHRleHQgYXJpYS1oaWRkZW49InRydWUiIHg9IjM3NSIgeT0iMTUwIiBmaWxsPSIjMDEwMTAxIiBmaWxsLW9wYWNpdHk9Ii4zIiB0cmFuc2Zvcm09InNjYWxlKC4xKSIgdGV4dExlbmd0aD0iNjMwIj5yZXBvIHN0YXR1czwvdGV4dD48dGV4dCB4PSIzNzUiIHk9IjE0MCIgdHJhbnNmb3JtPSJzY2FsZSguMSkiIGZpbGw9IiNmZmYiIHRleHRMZW5ndGg9IjYzMCI+cmVwbyBzdGF0dXM8L3RleHQ+PHRleHQgYXJpYS1oaWRkZW49InRydWUiIHg9IjkzNSIgeT0iMTUwIiBmaWxsPSIjMDEwMTAxIiBmaWxsLW9wYWNpdHk9Ii4zIiB0cmFuc2Zvcm09InNjYWxlKC4xKSIgdGV4dExlbmd0aD0iMzMwIj5BY3RpdmU8L3RleHQ+PHRleHQgeD0iOTM1IiB5PSIxNDAiIHRyYW5zZm9ybT0ic2NhbGUoLjEpIiBmaWxsPSIjZmZmIiB0ZXh0TGVuZ3RoPSIzMzAiPkFjdGl2ZTwvdGV4dD48L2c+PC9zdmc+ alt=Project Status: Active – The project has reached a stable, usable state and is being actively developed. /></a> <a href=https://lifecycle.r-lib.org/articles/stages.html#stable><img src=data:image/svg+xml;charset=utf-8;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHhtbG5zOnhsaW5rPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5L3hsaW5rIiB3aWR0aD0iOTgiIGhlaWdodD0iMjAiIHJvbGU9ImltZyIgYXJpYS1sYWJlbD0ibGlmZWN5Y2xlOiBzdGFibGUiPjx0aXRsZT5saWZlY3ljbGU6IHN0YWJsZTwvdGl0bGU+PGxpbmVhckdyYWRpZW50IGlkPSJzIiB4Mj0iMCIgeTI9IjEwMCUiPjxzdG9wIG9mZnNldD0iMCIgc3RvcC1jb2xvcj0iI2JiYiIgc3RvcC1vcGFjaXR5PSIuMSIvPjxzdG9wIG9mZnNldD0iMSIgc3RvcC1vcGFjaXR5PSIuMSIvPjwvbGluZWFyR3JhZGllbnQ+PGNsaXBQYXRoIGlkPSJyIj48cmVjdCB3aWR0aD0iOTgiIGhlaWdodD0iMjAiIHJ4PSIzIiBmaWxsPSIjZmZmIi8+PC9jbGlwUGF0aD48ZyBjbGlwLXBhdGg9InVybCgjcikiPjxyZWN0IHdpZHRoPSI1NSIgaGVpZ2h0PSIyMCIgZmlsbD0iIzU1NSIvPjxyZWN0IHg9IjU1IiB3aWR0aD0iNDMiIGhlaWdodD0iMjAiIGZpbGw9IiMwMDdlYzYiLz48cmVjdCB3aWR0aD0iOTgiIGhlaWdodD0iMjAiIGZpbGw9InVybCgjcykiLz48L2c+PGcgZmlsbD0iI2ZmZiIgdGV4dC1hbmNob3I9Im1pZGRsZSIgZm9udC1mYW1pbHk9IlZlcmRhbmEsR2VuZXZhLERlamFWdSBTYW5zLHNhbnMtc2VyaWYiIHRleHQtcmVuZGVyaW5nPSJnZW9tZXRyaWNQcmVjaXNpb24iIGZvbnQtc2l6ZT0iMTEwIj48dGV4dCBhcmlhLWhpZGRlbj0idHJ1ZSIgeD0iMjg1IiB5PSIxNTAiIGZpbGw9IiMwMTAxMDEiIGZpbGwtb3BhY2l0eT0iLjMiIHRyYW5zZm9ybT0ic2NhbGUoLjEpIiB0ZXh0TGVuZ3RoPSI0NTAiPmxpZmVjeWNsZTwvdGV4dD48dGV4dCB4PSIyODUiIHk9IjE0MCIgdHJhbnNmb3JtPSJzY2FsZSguMSkiIGZpbGw9IiNmZmYiIHRleHRMZW5ndGg9IjQ1MCI+bGlmZWN5Y2xlPC90ZXh0Pjx0ZXh0IGFyaWEtaGlkZGVuPSJ0cnVlIiB4PSI3NTUiIHk9IjE1MCIgZmlsbD0iIzAxMDEwMSIgZmlsbC1vcGFjaXR5PSIuMyIgdHJhbnNmb3JtPSJzY2FsZSguMSkiIHRleHRMZW5ndGg9IjMzMCI+c3RhYmxlPC90ZXh0Pjx0ZXh0IHg9Ijc1NSIgeT0iMTQwIiB0cmFuc2Zvcm09InNjYWxlKC4xKSIgZmlsbD0iI2ZmZiIgdGV4dExlbmd0aD0iMzMwIj5zdGFibGU8L3RleHQ+PC9nPjwvc3ZnPg== alt=Lifecycle: stable /></a> <a href=https://github.com/sebastien-plutniak/archeoviz/actions/workflows/r.yml><img src=data:image/svg+xml; charset=utf-8;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSI4NSIgaGVpZ2h0PSIyMCI+CiAgPHRpdGxlPlIgLSBwYXNzaW5nPC90aXRsZT4KICA8ZGVmcz4KICAgIDxsaW5lYXJHcmFkaWVudCBpZD0id29ya2Zsb3ctZmlsbCIgeDE9IjUwJSIgeTE9IjAlIiB4Mj0iNTAlIiB5Mj0iMTAwJSI+CiAgICAgIDxzdG9wIHN0b3AtY29sb3I9IiM0NDRENTYiIG9mZnNldD0iMCUiPjwvc3RvcD4KICAgICAgPHN0b3Agc3RvcC1jb2xvcj0iIzI0MjkyRSIgb2Zmc2V0PSIxMDAlIj48L3N0b3A+CiAgICA8L2xpbmVhckdyYWRpZW50PgogICAgPGxpbmVhckdyYWRpZW50IGlkPSJzdGF0ZS1maWxsIiB4MT0iNTAlIiB5MT0iMCUiIHgyPSI1MCUiIHkyPSIxMDAlIj4KICAgICAgPHN0b3Agc3RvcC1jb2xvcj0iIzM0RDA1OCIgb2Zmc2V0PSIwJSI+PC9zdG9wPgogICAgICA8c3RvcCBzdG9wLWNvbG9yPSIjMjhBNzQ1IiBvZmZzZXQ9IjEwMCUiPjwvc3RvcD4KICAgIDwvbGluZWFyR3JhZGllbnQ+CiAgPC9kZWZzPgogIDxnIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCI+CiAgICA8ZyBmb250LWZhbWlseT0iJiMzOTtEZWphVnUgU2FucyYjMzk7LFZlcmRhbmEsR2VuZXZhLHNhbnMtc2VyaWYiIGZvbnQtc2l6ZT0iMTEiPgogICAgICA8cGF0aCBpZD0id29ya2Zsb3ctYmciIGQ9Ik0wLDMgQzAsMS4zNDMxIDEuMzU1MiwwIDMuMDI3MDI3MDMsMCBMMzUsMCBMMzUsMjAgTDMuMDI3MDI3MDMsMjAgQzEuMzU1MiwyMCAwLDE4LjY1NjkgMCwxNyBMMCwzIFoiIGZpbGw9InVybCgjd29ya2Zsb3ctZmlsbCkiIGZpbGwtcnVsZT0ibm9uemVybyI+PC9wYXRoPgogICAgICA8dGV4dCBmaWxsPSIjMDEwMTAxIiBmaWxsLW9wYWNpdHk9Ii4zIj4KICAgICAgICA8dHNwYW4geD0iMjIuMTk4MTk4MiIgeT0iMTUiIGFyaWEtaGlkZGVuPSJ0cnVlIj5SPC90c3Bhbj4KICAgICAgPC90ZXh0PgogICAgICA8dGV4dCBmaWxsPSIjRkZGRkZGIj4KICAgICAgICA8dHNwYW4geD0iMjIuMTk4MTk4MiIgeT0iMTQiPlI8L3RzcGFuPgogICAgICA8L3RleHQ+CiAgICA8L2c+CiAgICA8ZyB0cmFuc2Zvcm09InRyYW5zbGF0ZSgzNSkiIGZvbnQtZmFtaWx5PSImIzM5O0RlamFWdSBTYW5zJiMzOTssVmVyZGFuYSxHZW5ldmEsc2Fucy1zZXJpZiIgZm9udC1zaXplPSIxMSI+CiAgICAgIDxwYXRoIGQ9Ik0wIDBoNDYuOTM5QzQ4LjYyOSAwIDUwIDEuMzQzIDUwIDN2MTRjMCAxLjY1Ny0xLjM3IDMtMy4wNjEgM0gwVjB6IiBpZD0ic3RhdGUtYmciIGZpbGw9InVybCgjc3RhdGUtZmlsbCkiIGZpbGwtcnVsZT0ibm9uemVybyI+PC9wYXRoPgogICAgICA8dGV4dCBmaWxsPSIjMDEwMTAxIiBmaWxsLW9wYWNpdHk9Ii4zIiBhcmlhLWhpZGRlbj0idHJ1ZSI+CiAgICAgICAgPHRzcGFuIHg9IjQiIHk9IjE1Ij5wYXNzaW5nPC90c3Bhbj4KICAgICAgPC90ZXh0PgogICAgICA8dGV4dCBmaWxsPSIjRkZGRkZGIj4KICAgICAgICA8dHNwYW4geD0iNCIgeT0iMTQiPnBhc3Npbmc8L3RzcGFuPgogICAgICA8L3RleHQ+CiAgICA8L2c+CiAgICA8cGF0aCBmaWxsPSIjOTU5REE1IiBkPSJNMTEgM2MtMy44NjggMC03IDMuMTMyLTcgN2E2Ljk5NiA2Ljk5NiAwIDAgMCA0Ljc4NiA2LjY0MWMuMzUuMDYyLjQ4Mi0uMTQ4LjQ4Mi0uMzMyIDAtLjE2Ni0uMDEtLjcxOC0uMDEtMS4zMDQtMS43NTguMzI0LTIuMjEzLS40MjktMi4zNTMtLjgyMi0uMDc5LS4yMDItLjQyLS44MjMtLjcxNy0uOTktLjI0NS0uMTMtLjU5NS0uNDU0LS4wMS0uNDYzLjU1Mi0uMDA5Ljk0Ni41MDggMS4wNzcuNzE4LjYzIDEuMDU4IDEuNjM2Ljc2IDIuMDM5LjU3Ny4wNjEtLjQ1NS4yNDUtLjc2MS40NDYtLjkzNi0xLjU1Ny0uMTc1LTMuMTg1LS43NzktMy4xODUtMy40NTYgMC0uNzYyLjI3MS0xLjM5Mi43MTgtMS44ODItLjA3LS4xNzUtLjMxNS0uODkyLjA3LTEuODU1IDAgMCAuNTg2LS4xODMgMS45MjUuNzE4YTYuNSA2LjUgMCAwIDEgMS43NS0uMjM2IDYuNSA2LjUgMCAwIDEgMS43NS4yMzZjMS4zMzgtLjkxIDEuOTI1LS43MTggMS45MjUtLjcxOC4zODUuOTYzLjE0IDEuNjguMDcgMS44NTUuNDQ2LjQ5LjcxNyAxLjExMi43MTcgMS44ODIgMCAyLjY4Ni0xLjYzNiAzLjI4LTMuMTk0IDMuNDU2LjI1NC4yMTkuNDczLjYzOS40NzMgMS4yOTUgMCAuOTM2LS4wMDkgMS42ODktLjAwOSAxLjkyNSAwIC4xODQuMTMxLjQwMi40ODEuMzMyQTcuMDExIDcuMDExIDAgMCAwIDE4IDEwYzAtMy44NjctMy4xMzMtNy03LTd6Ij48L3BhdGg+CiAgPC9nPgo8L3N2Zz4KCg== alt=R /></a> <a href=https://app.codecov.io/gh/sebastien-plutniak/archeoviz><img src=data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxMTIiIGhlaWdodD0iMjAiPgogICAgPGxpbmVhckdyYWRpZW50IGlkPSJiIiB4Mj0iMCIgeTI9IjEwMCUiPgogICAgICAgIDxzdG9wIG9mZnNldD0iMCIgc3RvcC1jb2xvcj0iI2JiYiIgc3RvcC1vcGFjaXR5PSIuMSIgLz4KICAgICAgICA8c3RvcCBvZmZzZXQ9IjEiIHN0b3Atb3BhY2l0eT0iLjEiIC8+CiAgICA8L2xpbmVhckdyYWRpZW50PgogICAgPG1hc2sgaWQ9ImEiPgogICAgICAgIDxyZWN0IHdpZHRoPSIxMTIiIGhlaWdodD0iMjAiIHJ4PSIzIiBmaWxsPSIjZmZmIiAvPgogICAgPC9tYXNrPgogICAgPGcgbWFzaz0idXJsKCNhKSI+CiAgICAgICAgPHBhdGggZmlsbD0iIzU1NSIgZD0iTTAgMGg3NnYyMEgweiIgLz4KICAgICAgICA8cGF0aCBmaWxsPSIjZTA1ZDQ0IiBkPSJNNzYgMGgzNnYyMEg3NnoiIC8+CiAgICAgICAgPHBhdGggZmlsbD0idXJsKCNiKSIgZD0iTTAgMGgxMTJ2MjBIMHoiIC8+CiAgICA8L2c+CiAgICA8ZyBmaWxsPSIjZmZmIiB0ZXh0LWFuY2hvcj0ibWlkZGxlIiBmb250LWZhbWlseT0iRGVqYVZ1IFNhbnMsVmVyZGFuYSxHZW5ldmEsc2Fucy1zZXJpZiIgZm9udC1zaXplPSIxMSI+CiAgICAgICAgPHRleHQgeD0iNDYiIHk9IjE1IiBmaWxsPSIjMDEwMTAxIiBmaWxsLW9wYWNpdHk9Ii4zIj5jb2RlY292PC90ZXh0PgogICAgICAgIDx0ZXh0IHg9IjQ2IiB5PSIxNCI+Y29kZWNvdjwvdGV4dD4KICAgICAgICA8dGV4dCB4PSI5MyIgeT0iMTUiIGZpbGw9IiMwMTAxMDEiIGZpbGwtb3BhY2l0eT0iLjMiPjU2JTwvdGV4dD4KICAgICAgICA8dGV4dCB4PSI5MyIgeT0iMTQiPjU2JTwvdGV4dD4KICAgIDwvZz4KICAgIDxzdmcgdmlld0JveD0iMTIwIC04IDYwIDYwIj4KICAgICAgICA8cGF0aCBkPSJNMjMuMDEzIDBDMTAuMzMzLjAwOS4wMSAxMC4yMiAwIDIyLjc2MnYuMDU4bDMuOTE0IDIuMjc1LjA1My0uMDM2YTExLjI5MSAxMS4yOTEgMCAwIDEgOC4zNTItMS43NjcgMTAuOTExIDEwLjkxMSAwIDAgMSA1LjUgMi43MjZsLjY3My42MjQuMzgtLjgyOGMuMzY4LS44MDIuNzkzLTEuNTU2IDEuMjY0LTIuMjQuMTktLjI3Ni4zOTgtLjU1NC42MzctLjg1MWwuMzkzLS40OS0uNDg0LS40MDRhMTYuMDggMTYuMDggMCAwIDAtNy40NTMtMy40NjYgMTYuNDgyIDE2LjQ4MiAwIDAgMC03LjcwNS40NDlDNy4zODYgMTAuNjgzIDE0LjU2IDUuMDE2IDIzLjAzIDUuMDFjNC43NzkgMCA5LjI3MiAxLjg0IDEyLjY1MSA1LjE4IDIuNDEgMi4zODIgNC4wNjkgNS4zNSA0LjgwNyA4LjU5MWExNi41MyAxNi41MyAwIDAgMC00Ljc5Mi0uNzIzbC0uMjkyLS4wMDJhMTYuNzA3IDE2LjcwNyAwIDAgMC0xLjkwMi4xNGwtLjA4LjAxMmMtLjI4LjAzNy0uNTI0LjA3NC0uNzQ4LjExNS0uMTEuMDE5LS4yMTguMDQxLS4zMjcuMDYzLS4yNTcuMDUyLS41MS4xMDgtLjc1LjE2OWwtLjI2NS4wNjdhMTYuMzkgMTYuMzkgMCAwIDAtLjkyNi4yNzZsLS4wNTYuMDE4Yy0uNjgyLjIzLTEuMzYuNTExLTIuMDE2LjgzOGwtLjA1Mi4wMjZjLS4yOS4xNDUtLjU4NC4zMDUtLjg5OS40OWwtLjA2OS4wNGExNS41OTYgMTUuNTk2IDAgMCAwLTQuMDYxIDMuNDY2bC0uMTQ1LjE3NWMtLjI5LjM2LS41MjEuNjY2LS43MjMuOTYtLjE3LjI0Ny0uMzQuNTEzLS41NTIuODY0bC0uMTE2LjE5OWMtLjE3LjI5Mi0uMzIuNTctLjQ0OS44MjRsLS4wMy4wNTdhMTYuMTE2IDE2LjExNiAwIDAgMC0uODQzIDIuMDI5bC0uMDM0LjEwMmExNS42NSAxNS42NSAwIDAgMC0uNzg2IDUuMTc0bC4wMDMuMjE0YTIxLjUyMyAyMS41MjMgMCAwIDAgLjA0Ljc1NGMuMDA5LjExOS4wMi4yMzcuMDMyLjM1NS4wMTQuMTQ1LjAzMi4yOS4wNDkuNDMybC4wMS4wOGMuMDEuMDY3LjAxNy4xMzMuMDI2LjE5Ny4wMzQuMjQyLjA3NC40OC4xMTkuNzIuNDYzIDIuNDE5IDEuNjIgNC44MzYgMy4zNDUgNi45OWwuMDc4LjA5OC4wOC0uMDk1Yy42ODgtLjgxIDIuMzk1LTMuMzggMi41MzktNC45MjJsLjAwMy0uMDI5LS4wMTQtLjAyNWExMC43MjcgMTAuNzI3IDAgMCAxLTEuMjI2LTQuOTU2YzAtNS43NiA0LjU0NS0xMC41NDQgMTAuMzQzLTEwLjg5bC4zODEtLjAxNGExMS40MDMgMTEuNDAzIDAgMCAxIDYuNjUxIDEuOTU3bC4wNTQuMDM2IDMuODYyLTIuMjM3LjA1LS4wM3YtLjA1NmMuMDA2LTYuMDgtMi4zODQtMTEuNzkzLTYuNzI5LTE2LjA4OUMzNC45MzIgMi4zNjEgMjkuMTYgMCAyMy4wMTMgMCIgZmlsbD0iI0YwMUY3QSIgZmlsbC1ydWxlPSJldmVub2RkIi8+CiAgICA8L3N2Zz4KPC9zdmc+ alt=codecov /></a> <a href=https://sebastien-plutniak.r-universe.dev/archeoViz><img src=data:image/svg+xml; charset=utf-8;base64,PHN2ZyB3aWR0aD0iMTA1LjgiIGhlaWdodD0iMjAiIHZpZXdCb3g9IjAgMCAxMDU4IDIwMCIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiByb2xlPSJpbWciIGFyaWEtbGFiZWw9InItdW5pdmVyc2U6IDEuMi4xIj4KICA8YSBocmVmPSJodHRwczovL3NlYmFzdGllbi1wbHV0bmlhay5yLXVuaXZlcnNlLmRldi9hcmNoZW9WaXoiIGFsdD0ici11bml2ZXJzZSI+CiAgPHRpdGxlPnItdW5pdmVyc2U6IDEuMi4xPC90aXRsZT4KICA8bGluZWFyR3JhZGllbnQgaWQ9ImEiIHgyPSIwIiB5Mj0iMTAwJSI+CiAgICA8c3RvcCBvZmZzZXQ9IjAiIHN0b3Atb3BhY2l0eT0iLjEiIHN0b3AtY29sb3I9IiNFRUUiLz4KICAgIDxzdG9wIG9mZnNldD0iMSIgc3RvcC1vcGFjaXR5PSIuMSIvPgogIDwvbGluZWFyR3JhZGllbnQ+CiAgPG1hc2sgaWQ9Im0iPjxyZWN0IHdpZHRoPSIxMDU4IiBoZWlnaHQ9IjIwMCIgcng9IjMwIiBmaWxsPSIjRkZGIi8+PC9tYXNrPgogIDxnIG1hc2s9InVybCgjbSkiPgogICAgPHJlY3Qgd2lkdGg9IjY2OCIgaGVpZ2h0PSIyMDAiIGZpbGw9IiM1NTUiLz4KICAgIDxyZWN0IHdpZHRoPSIzOTAiIGhlaWdodD0iMjAwIiBmaWxsPSIjM0MxIiB4PSI2NjgiLz4KICAgIDxyZWN0IHdpZHRoPSIxMDU4IiBoZWlnaHQ9IjIwMCIgZmlsbD0idXJsKCNhKSIvPgogIDwvZz4KICA8ZyBhcmlhLWhpZGRlbj0idHJ1ZSIgZmlsbD0iI2ZmZiIgdGV4dC1hbmNob3I9InN0YXJ0IiBmb250LWZhbWlseT0iVmVyZGFuYSxEZWphVnUgU2FucyxzYW5zLXNlcmlmIiBmb250LXNpemU9IjExMCI+CiAgICA8dGV4dCB4PSI2MCIgeT0iMTQ4IiB0ZXh0TGVuZ3RoPSI1NjgiIGZpbGw9IiMwMDAiIG9wYWNpdHk9IjAuMjUiPnItdW5pdmVyc2U8L3RleHQ+CiAgICA8dGV4dCB4PSI1MCIgeT0iMTM4IiB0ZXh0TGVuZ3RoPSI1NjgiPnItdW5pdmVyc2U8L3RleHQ+CiAgICA8dGV4dCB4PSI3MjMiIHk9IjE0OCIgdGV4dExlbmd0aD0iMjkwIiBmaWxsPSIjMDAwIiBvcGFjaXR5PSIwLjI1Ij4xLjIuMTwvdGV4dD4KICAgIDx0ZXh0IHg9IjcxMyIgeT0iMTM4IiB0ZXh0TGVuZ3RoPSIyOTAiPjEuMi4xPC90ZXh0PgogIDwvZz4KICAKICA8L2E+Cjwvc3ZnPg== alt=archeoViz status badge /></a> <a href=https://joss.theoj.org/papers/ec7d14809161bb21d0e258742e64f131><img src=data:image/svg+xml; charset=utf-8;base64,PHN2ZyB4bWxucz0naHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmcnIHdpZHRoPScxMDgnIGhlaWdodD0nMjAnPjxsaW5lYXJHcmFkaWVudCBpZD0nYicgeDI9JzAnIHkyPScxMDAlJz48c3RvcCBvZmZzZXQ9JzAnIHN0b3AtY29sb3I9JyNiYmInIHN0b3Atb3BhY2l0eT0nLjEnLz48c3RvcCBvZmZzZXQ9JzEnIHN0b3Atb3BhY2l0eT0nLjEnLz48L2xpbmVhckdyYWRpZW50PjxtYXNrIGlkPSdhJz48cmVjdCB3aWR0aD0nMTA4JyBoZWlnaHQ9JzIwJyByeD0nMycgZmlsbD0nI2ZmZicvPjwvbWFzaz48ZyBtYXNrPSd1cmwoI2EpJz48cGF0aCBmaWxsPScjNTU1JyBkPSdNMCAwaDQwdjIwSDB6Jy8+PHBhdGggZmlsbD0nIzAwN2VjNicgZD0nTTQwIDBoNjh2MjBINDB6Jy8+PHBhdGggZmlsbD0ndXJsKCNiKScgZD0nTTAgMGgxMDh2MjBIMHonLz48L2c+PGcgZmlsbD0nI2ZmZicgdGV4dC1hbmNob3I9J21pZGRsZScgZm9udC1mYW1pbHk9J0RlamFWdSBTYW5zLFZlcmRhbmEsR2VuZXZhLHNhbnMtc2VyaWYnIGZvbnQtc2l6ZT0nMTEnPjx0ZXh0IHg9JzIwJyB5PScxNScgZmlsbD0nIzAxMDEwMScgZmlsbC1vcGFjaXR5PScuMyc+Sk9TUzwvdGV4dD48dGV4dCB4PScyMCcgeT0nMTQnPkpPU1M8L3RleHQ+PHRleHQgeD0nNzMnIHk9JzE1JyBmaWxsPScjMDEwMTAxJyBmaWxsLW9wYWNpdHk9Jy4zJz5TdWJtaXR0ZWQ8L3RleHQ+PHRleHQgeD0nNzMnIHk9JzE0Jz5TdWJtaXR0ZWQ8L3RleHQ+PC9nPjwvc3ZnPg== alt=status /></a> <a href=https://www.r-project.org/Licenses/GPL-3><img src=data:image/svg+xml;charset=utf-8;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHhtbG5zOnhsaW5rPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5L3hsaW5rIiB3aWR0aD0iMTAwIiBoZWlnaHQ9IjIwIiByb2xlPSJpbWciIGFyaWEtbGFiZWw9IkxpY2Vuc2U6IEdQTCB2MyI+PHRpdGxlPkxpY2Vuc2U6IEdQTCB2MzwvdGl0bGU+PGxpbmVhckdyYWRpZW50IGlkPSJzIiB4Mj0iMCIgeTI9IjEwMCUiPjxzdG9wIG9mZnNldD0iMCIgc3RvcC1jb2xvcj0iI2JiYiIgc3RvcC1vcGFjaXR5PSIuMSIvPjxzdG9wIG9mZnNldD0iMSIgc3RvcC1vcGFjaXR5PSIuMSIvPjwvbGluZWFyR3JhZGllbnQ+PGNsaXBQYXRoIGlkPSJyIj48cmVjdCB3aWR0aD0iMTAwIiBoZWlnaHQ9IjIwIiByeD0iMyIgZmlsbD0iI2ZmZiIvPjwvY2xpcFBhdGg+PGcgY2xpcC1wYXRoPSJ1cmwoI3IpIj48cmVjdCB3aWR0aD0iNTEiIGhlaWdodD0iMjAiIGZpbGw9IiM1NTUiLz48cmVjdCB4PSI1MSIgd2lkdGg9IjQ5IiBoZWlnaHQ9IjIwIiBmaWxsPSIjMDA3ZWM2Ii8+PHJlY3Qgd2lkdGg9IjEwMCIgaGVpZ2h0PSIyMCIgZmlsbD0idXJsKCNzKSIvPjwvZz48ZyBmaWxsPSIjZmZmIiB0ZXh0LWFuY2hvcj0ibWlkZGxlIiBmb250LWZhbWlseT0iVmVyZGFuYSxHZW5ldmEsRGVqYVZ1IFNhbnMsc2Fucy1zZXJpZiIgdGV4dC1yZW5kZXJpbmc9Imdlb21ldHJpY1ByZWNpc2lvbiIgZm9udC1zaXplPSIxMTAiPjx0ZXh0IGFyaWEtaGlkZGVuPSJ0cnVlIiB4PSIyNjUiIHk9IjE1MCIgZmlsbD0iIzAxMDEwMSIgZmlsbC1vcGFjaXR5PSIuMyIgdHJhbnNmb3JtPSJzY2FsZSguMSkiIHRleHRMZW5ndGg9IjQxMCI+TGljZW5zZTwvdGV4dD48dGV4dCB4PSIyNjUiIHk9IjE0MCIgdHJhbnNmb3JtPSJzY2FsZSguMSkiIGZpbGw9IiNmZmYiIHRleHRMZW5ndGg9IjQxMCI+TGljZW5zZTwvdGV4dD48dGV4dCBhcmlhLWhpZGRlbj0idHJ1ZSIgeD0iNzQ1IiB5PSIxNTAiIGZpbGw9IiMwMTAxMDEiIGZpbGwtb3BhY2l0eT0iLjMiIHRyYW5zZm9ybT0ic2NhbGUoLjEpIiB0ZXh0TGVuZ3RoPSIzOTAiPkdQTCB2MzwvdGV4dD48dGV4dCB4PSI3NDUiIHk9IjE0MCIgdHJhbnNmb3JtPSJzY2FsZSguMSkiIGZpbGw9IiNmZmYiIHRleHRMZW5ndGg9IjM5MCI+R1BMIHYzPC90ZXh0PjwvZz48L3N2Zz4= alt=license /></a> <a href=https://doi.org/10.5281/zenodo.7460193><img src=data:image/svg+xml; charset=utf-8;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciCiAgICAgd2lkdGg9IjE4NiIgaGVpZ2h0PSIyMCI+CiAgICAgICAgPGxpbmVhckdyYWRpZW50IGlkPSJiIiB4Mj0iMCIgeTI9IjEwMCUiPgogICAgICAgICAgICA8c3RvcCBvZmZzZXQ9IjAiIHN0b3AtY29sb3I9IiNiYmIiIHN0b3Atb3BhY2l0eT0iLjEiLz4KICAgICAgICAgICAgPHN0b3Agb2Zmc2V0PSIxIiBzdG9wLW9wYWNpdHk9Ii4xIi8+CiAgICAgICAgPC9saW5lYXJHcmFkaWVudD4KICAgICAgICA8bWFzayBpZD0iYSIgd2lkdGg9IjE4NiIgaGVpZ2h0PSIyMCI+CiAgICAgICAgICAgIDxyZWN0IHdpZHRoPSIxODYiIGhlaWdodD0iMjAiIHJ4PSIzIgogICAgICAgICAgICBmaWxsPSIjZmZmIi8+CiAgICAgICAgPC9tYXNrPgogICAgICAgIDxnIG1hc2s9InVybCgjYSkiPgogICAgICAgICAgICA8cGF0aCBmaWxsPSIjNTU1IiBkPSJNMCAwaDMxdjIwSDB6IiAvPgogICAgICAgICAgICA8cGF0aCBmaWxsPSIjMDA3ZWM2IgogICAgICAgICAgICBkPSJNMzEgMGgxNTV2MjBIMzF6IgogICAgICAgICAgICAvPgogICAgICAgICAgICA8cGF0aCBmaWxsPSJ1cmwoI2IpIiBkPSJNMCAwaDE4NnYyMEgweiIgLz4KICAgICAgICA8L2c+CiAgICAgICAgPGcgZmlsbD0iI2ZmZiIgdGV4dC1hbmNob3I9Im1pZGRsZSIgZm9udC1mYW1pbHk9IkRlamFWdSBTYW5zLAogICAgICAgIFZlcmRhbmEsR2VuZXZhLHNhbnMtc2VyaWYiIGZvbnQtc2l6ZT0iMTEiPgogICAgICAgICAgICA8dGV4dCB4PSIxNiIgeT0iMTUiIGZpbGw9IiMwMTAxMDEiCiAgICAgICAgICAgIGZpbGwtb3BhY2l0eT0iLjMiPgogICAgICAgICAgICAgICAgRE9JCiAgICAgICAgICAgIDwvdGV4dD4KICAgICAgICAgICAgPHRleHQgeD0iMTYiIHk9IjE0Ij4KICAgICAgICAgICAgICAgIERPSQogICAgICAgICAgICA8L3RleHQ+CiAgICAgICAgICAgIDx0ZXh0IHg9IjEwOCIKICAgICAgICAgICAgeT0iMTUiIGZpbGw9IiMwMTAxMDEiIGZpbGwtb3BhY2l0eT0iLjMiPgogICAgICAgICAgICAgICAgMTAuNTI4MS96ZW5vZG8uNzQ2MDE5MwogICAgICAgICAgICA8L3RleHQ+CiAgICAgICAgICAgIDx0ZXh0IHg9IjEwOCIgeT0iMTQiPgogICAgICAgICAgICAgICAgMTAuNTI4MS96ZW5vZG8uNzQ2MDE5MwogICAgICAgICAgICA8L3RleHQ+CiAgICAgICAgPC9nPgogICAgPC9zdmc+ alt=DOI /></a> <a href=https://archive.softwareheritage.org/browse/origin/directory/?origin_url=https://github.com/sebastien-plutniak/archeoviz><img src=data:image/svg+xml;base64,PHN2ZyBoZWlnaHQ9IjIwIiB3aWR0aD0iMTQwLjM5OTk5OTk5OTk5OTk4IiB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHhtbG5zOnhsaW5rPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5L3hsaW5rIj48dGl0bGU+QXJjaGl2ZWQgc29mdHdhcmUgcmVwb3NpdG9yeTwvdGl0bGU+PGxpbmVhckdyYWRpZW50IGlkPSJzbW9vdGgiIHgyPSIwIiB5Mj0iMTAwJSI+PHN0b3Agb2Zmc2V0PSIwIiBzdG9wLWNvbG9yPSIjYmJiIiBzdG9wLW9wYWNpdHk9Ii4xIi8+PHN0b3Agb2Zmc2V0PSIxIiBzdG9wLW9wYWNpdHk9Ii4xIi8+PC9saW5lYXJHcmFkaWVudD48Y2xpcFBhdGggaWQ9InJvdW5kIj48cmVjdCBmaWxsPSIjZmZmIiBoZWlnaHQ9IjIwIiByeD0iMyIgd2lkdGg9IjE0MC4zOTk5OTk5OTk5OTk5OCIvPjwvY2xpcFBhdGg+PGcgY2xpcC1wYXRoPSJ1cmwoI3JvdW5kKSI+PHJlY3QgZmlsbD0iIzU1NSIgaGVpZ2h0PSIyMCIgd2lkdGg9Ijc0LjYiLz48cmVjdCBmaWxsPSIjZjM2YTI0IiBoZWlnaHQ9IjIwIiB3aWR0aD0iNjUuOCIgeD0iNzQuNiIvPjxyZWN0IGZpbGw9InVybCgjc21vb3RoKSIgaGVpZ2h0PSIyMCIgd2lkdGg9IjE0MC4zOTk5OTk5OTk5OTk5OCIvPjwvZz48ZyBmaWxsPSIjZmZmIiBmb250LWZhbWlseT0iRGVqYVZ1IFNhbnMsVmVyZGFuYSxHZW5ldmEsc2Fucy1zZXJpZiIgZm9udC1zaXplPSIxMTAiIHRleHQtYW5jaG9yPSJtaWRkbGUiPjxpbWFnZSBoZWlnaHQ9IjE0IiB3aWR0aD0iMTQiIHg9IjUiIHhsaW5rOmhyZWY9ImRhdGE6aW1hZ2Uvc3ZnK3htbDtiYXNlNjQsUEQ5NGJXd2dkbVZ5YzJsdmJqMGlNUzR3SWlCbGJtTnZaR2x1WnowaVZWUkdMVGdpSUhOMFlXNWtZV3h2Ym1VOUltNXZJajgrQ2p3aExTMGdRM0psWVhSbFpDQjNhWFJvSUVsdWEzTmpZWEJsSUNob2RIUndPaTh2ZDNkM0xtbHVhM05qWVhCbExtOXlaeThwSUMwdFBnb0tQSE4yWndvZ0lDQjRiV3h1Y3pwa1l6MGlhSFIwY0RvdkwzQjFjbXd1YjNKbkwyUmpMMlZzWlcxbGJuUnpMekV1TVM4aUNpQWdJSGh0Ykc1ek9tTmpQU0pvZEhSd09pOHZZM0psWVhScGRtVmpiMjF0YjI1ekxtOXlaeTl1Y3lNaUNpQWdJSGh0Ykc1ek9uSmtaajBpYUhSMGNEb3ZMM2QzZHk1M015NXZjbWN2TVRrNU9TOHdNaTh5TWkxeVpHWXRjM2x1ZEdGNExXNXpJeUlLSUNBZ2VHMXNibk02YzNablBTSm9kSFJ3T2k4dmQzZDNMbmN6TG05eVp5OHlNREF3TDNOMlp5SUtJQ0FnZUcxc2JuTTlJbWgwZEhBNkx5OTNkM2N1ZHpNdWIzSm5Mekl3TURBdmMzWm5JZ29nSUNCNGJXeHVjenB6YjJScGNHOWthVDBpYUhSMGNEb3ZMM052Wkdsd2IyUnBMbk52ZFhKalpXWnZjbWRsTG01bGRDOUVWRVF2YzI5a2FYQnZaR2t0TUM1a2RHUWlDaUFnSUhodGJHNXpPbWx1YTNOallYQmxQU0pvZEhSd09pOHZkM2QzTG1sdWEzTmpZWEJsTG05eVp5OXVZVzFsYzNCaFkyVnpMMmx1YTNOallYQmxJZ29nSUNCcFpEMGljM1puTWlJS0lDQWdkbVZ5YzJsdmJqMGlNUzR4SWdvZ0lDQnBibXR6WTJGd1pUcDJaWEp6YVc5dVBTSXdMamt5TGpRZ0tEVmtZVFk0T1dNek1UTXNJREl3TVRrdE1ERXRNVFFwSWdvZ0lDQjRiV3c2YzNCaFkyVTlJbkJ5WlhObGNuWmxJZ29nSUNCM2FXUjBhRDBpTnpndU1qY3dNalE0SWdvZ0lDQm9aV2xuYUhROUlqYzNMak01TkRrNU55SUtJQ0FnZG1sbGQwSnZlRDBpTUNBd0lEYzRMakkzTURJMUlEYzNMak01TkRrNU55SUtJQ0FnYzI5a2FYQnZaR2s2Wkc5amJtRnRaVDBpYzNkb0xXeHZaMjh0ZDJocGRHVXVjM1puSWdvZ0lDQnBibXR6WTJGd1pUcGxlSEJ2Y25RdFptbHNaVzVoYldVOUluTjNhQzFzYjJkdkxuQnVaeUlLSUNBZ2FXNXJjMk5oY0dVNlpYaHdiM0owTFhoa2NHazlJall6TUM0eE5UTTROeUlLSUNBZ2FXNXJjMk5oY0dVNlpYaHdiM0owTFhsa2NHazlJall6TUM0eE5UTTROeUkrUEcxbGRHRmtZWFJoQ2lBZ0lDQWdhV1E5SW0xbGRHRmtZWFJoT0NJK1BISmtaanBTUkVZK1BHTmpPbGR2Y21zS0lDQWdJQ0FnSUNBZ2NtUm1PbUZpYjNWMFBTSWlQanhrWXpwbWIzSnRZWFErYVcxaFoyVXZjM1puSzNodGJEd3ZaR002Wm05eWJXRjBQanhrWXpwMGVYQmxDaUFnSUNBZ0lDQWdJQ0FnY21SbU9uSmxjMjkxY21ObFBTSm9kSFJ3T2k4dmNIVnliQzV2Y21jdlpHTXZaR050YVhSNWNHVXZVM1JwYkd4SmJXRm5aU0lnTHo0OFpHTTZkR2wwYkdVK1BDOWtZenAwYVhSc1pUNDhMMk5qT2xkdmNtcytQQzl5WkdZNlVrUkdQand2YldWMFlXUmhkR0UrUEdSbFpuTUtJQ0FnSUNCcFpEMGlaR1ZtY3pZaVBqeGpiR2x3VUdGMGFBb2dJQ0FnSUNBZ1kyeHBjRkJoZEdoVmJtbDBjejBpZFhObGNsTndZV05sVDI1VmMyVWlDaUFnSUNBZ0lDQnBaRDBpWTJ4cGNGQmhkR2d4TmlJK1BIQmhkR2dLSUNBZ0lDQWdJQ0FnWkQwaWJTQXpNQzR3TWpjc05qZ3VPVGczSURFdU16TTNMQzB4TGpNME15QTBMamd5Tml3eExqWXdOeUF0TVM0Mk1Td3ROQzQ0TWpNZ01TNHpOQ3d0TVM0ek5DQXlMamsxTERndU9EUTBJSG9nYlNBdE15NHpPRGNzTFRFdU1EY3pJRFV1TnpRMkxDMHhNQzQyTnpVZ01TNHlOVElzTVM0eU5USWdMVFV1TnpRM0xERXdMalkzTkNCNklHMGdMVEl1TlRVeUxDMHhNQzQzTmpJZ01TNDJNRGdzTkM0NE1qTWdMVEV1TXpRc01TNHpOQ0F0TWk0NU5Ea3NMVGd1T0RRMklEZ3VPRFF5TERJdU9UUTVJQzB4TGpNek9Dd3hMak0wTXlCNklHMGdNVGt1TXpjMkxEZ3VOekl5SURJdU1qYzBMQzAxTGpFME5DQm9JREV1T0RrMElHd2dMVFF1TVRZM0xEZ3VPVE0xSUMwMExqRTNMQzA0TGpBek9DQXhMamc1TlN3dE1DNHhOVFFnZWlCdElDMDFMamM1Tnl3dE55NHhNRE1nTVRJc0xUTXVORGcxSUhZZ01TNDNOeUJzSUMweE1pd3pMalE0TkNCNklHMGdOUzQzT1Rjc0xUa3VOVEF5SUMweUxqSTNNeXcwTGpRMk1TQm9JQzB4TGpnNU5TQnNJRFF1TVRZNUxDMDRMakkxTWlBMExqRTJOeXc0TGpNM09TQXRNUzQ0T1RZc0xUQXVNREU0SUhvZ2JTQXhNeTR5TnpZc01qQXVNVEE0SUMwNExqZzBNeXd5TGprMUlESXVPVFExTEMwNExqZzBOQ0F4TGpNME1pd3hMak16T0NBdE1TNDJNRGNzTkM0NE1qVWdOQzQ0TWpNc0xURXVOakE1SUhvZ2JTQTBMalU1Tnl3dE1pNHlPRElnTFRFd0xqWTNOQ3d0TlM0M05EZ2dNUzR5TlRFc0xURXVNalVnTVRBdU5qYzFMRFV1TnpRMklIb2diU0F0TUM0eU5qa3NMVFF1TnpJNElERXVOakE1TEMwMExqZ3lNaUF0TkM0NE1qSXNNUzQyTURjZ0xURXVNelFzTFRFdU16UWdPQzQ0TkRNc0xUSXVPVFE0SUMweUxqazBPQ3c0TGpnME1pQjZJRzBnTFRNdU5EQXhMREU0TGpjeU1pQXRPQzR5TVRrc0xUUXVNVFk0SURndU16azJMQzAwTGpFM0lEQXVNRE16TERFdU9EazJJQzAwTGpZMU15d3lMakkzTkNBMExqUTBNeXd5TGpJM015QjZJRzBnTXk0ek9URXNMVEV3TGpNMU9TQXpMalE0Tml3eE1pQm9JQzB4TGpjM01TQnNJQzB6TGpRNE5Dd3RNVElnZWlCdElEVXVOakE1TERJdU1ESXlJRGN1T1RZM0xEUXVNVFk1SUMwNExqVXlNaXcwTGpFMk9DQXRNQzR3T1RVc0xURXVPRGsySURRdU9EY3pMQzB5TGpJM01pQXROQzR5TWpNc0xUSXVNamMwSUhvZ2JTQXRNVEF1TXpJeExERXhMalUwTnlBdE1TNHpNemtzTVM0ek5ESWdMVFF1T0RJMExDMHhMall3T0NBeExqWXdPQ3cwTGpneU15QXRNUzR6TkN3eExqTTBNU0F0TWk0NU5EZ3NMVGd1T0RRMElIb2diU0F6TGpNNE55d3hMakEzTWlBdE5TNDNORFlzTVRBdU5qYzFJQzB4TGpJMU15d3RNUzR5TlRNZ05TNDNORGdzTFRFd0xqWTNNeUI2SUcwZ01pNDFOVEVzTVRBdU56WXpJQzB4TGpZd09Dd3ROQzQ0TWpNZ01TNHpOREVzTFRFdU16TTVJREl1T1RRM0xEZ3VPRFF6SUMwNExqZzBNaXd0TWk0NU5Ea2dNUzR6TXprc0xURXVNelF4SUhvZ1RTQTBOUzR4T0RJc09URXVNelkwSURReUxqa3dPQ3c0Tmk0NU9Ua2dOREF1TmpNMExEa3hMamN6SUVnZ016Z3VOelFnYkNBMExqRTJPQ3d0T0M0MU1qRWdOQzR4Tnl3NExqSTBOU0I2SUcwZ05DNDBPRFVzTXk0eE5URWdMVEV5TERNdU5EZzFJSFlnTFRFdU56Y2diQ0F4TWl3dE15NDBPRFVnZWlCdElDMDJMamMxT1N3NUxqQTRPQ0F5TGpJM05Dd3ROQzQ0TnpNZ2FDQXhMamc1TlNCc0lDMDBMakUyT1N3NExqWTJOQ0F0TkM0eE5qa3NMVGd1TVRjMUlERXVPRGsyTEMwd0xqQTRNeUI2SUcwZ0xUY3VNemM1TEMweE15NDRJQzB4TGpNME1Td3RNUzR6TkNBeExqWXdPQ3d0TkM0NE1qTWdMVFF1T0RJekxERXVOakE0SUMweExqTTBMQzB4TGpNMElEZ3VPRFEwTEMweUxqazBPU0I2SUcwZ0xURXdMalE1TkN3dE15NDJNVEVnTVRBdU5qYzBMRFV1TnpRMklDMHhMakkxTVN3eExqSTFNU0F0TVRBdU5qYzFMQzAxTGpjME5pQjZJRzBnTUM0eU5qZ3NOQzQzTWpZZ0xURXVOakE0TERRdU9ESXpJRFF1T0RJMExDMHhMall3T0NBeExqTXpPU3d4TGpNME1TQXRPQzQ0TkRRc01pNDVORGdnTWk0NU5Ea3NMVGd1T0RRMElIb2diU0F6TGpNMk5Dd3RNVGd1TnpJeUlEZ3VNek00TERRdU1UWTVJQzA0TGpNek9DdzBMakUyT1NCMklDMHhMamc1TmlCc0lEUXVOVFEzTEMweUxqSTNNeUF0TkM0MU5EY3NMVEl1TWpjMElIb2diU0F0TlM0d05qa3NMVEV1TkRZMklETXVORGcxTERFeElHZ2dMVEV1TnpZNUlHd2dMVE11TkRnMUxDMHhNU0I2SUcwZ0xURXdMakkyT1N3MUxqWXpOU0E0TGpNek9DdzBMakUyT1NCMklDMHhMamc1TmlCc0lDMDBMalUwTnl3dE1pNHlOek1nTkM0MU5EY3NMVEl1TWpjMElIWWdMVEV1T0RrMUlIb2lDaUFnSUNBZ0lDQWdJR2xrUFNKd1lYUm9NVGdpQ2lBZ0lDQWdJQ0FnSUdsdWEzTmpZWEJsT21OdmJtNWxZM1J2Y2kxamRYSjJZWFIxY21VOUlqQWlJQzgrUEM5amJHbHdVR0YwYUQ0OGJHbHVaV0Z5UjNKaFpHbGxiblFLSUNBZ0lDQWdJSGd4UFNJd0lnb2dJQ0FnSUNBZ2VURTlJakFpQ2lBZ0lDQWdJQ0I0TWowaU1TSUtJQ0FnSUNBZ0lIa3lQU0l3SWdvZ0lDQWdJQ0FnWjNKaFpHbGxiblJWYm1sMGN6MGlkWE5sY2xOd1lXTmxUMjVWYzJVaUNpQWdJQ0FnSUNCbmNtRmthV1Z1ZEZSeVlXNXpabTl5YlQwaWJXRjBjbWw0S0RZeExqTXdOVE0yTml3d0xEQXNMVFl4TGpNd05UTTJOaXd4TXk0NE56WXpNeXczTmk0ME16WXhNVGtwSWdvZ0lDQWdJQ0FnYzNCeVpXRmtUV1YwYUc5a1BTSndZV1FpQ2lBZ0lDQWdJQ0JwWkQwaWJHbHVaV0Z5UjNKaFpHbGxiblF5TkNJK1BITjBiM0FLSUNBZ0lDQWdJQ0FnYzNSNWJHVTlJbk4wYjNBdGIzQmhZMmwwZVRveE8zTjBiM0F0WTI5c2IzSTZJMlZqTVdNeU9DSUtJQ0FnSUNBZ0lDQWdiMlptYzJWMFBTSXdJZ29nSUNBZ0lDQWdJQ0JwWkQwaWMzUnZjREkySWlBdlBqeHpkRzl3Q2lBZ0lDQWdJQ0FnSUhOMGVXeGxQU0p6ZEc5d0xXOXdZV05wZEhrNk1UdHpkRzl3TFdOdmJHOXlPaU5sWXpGak1qZ2lDaUFnSUNBZ0lDQWdJRzltWm5ObGREMGlNQzR6TXpFNU56RWlDaUFnSUNBZ0lDQWdJR2xrUFNKemRHOXdNamdpSUM4K1BITjBiM0FLSUNBZ0lDQWdJQ0FnYzNSNWJHVTlJbk4wYjNBdGIzQmhZMmwwZVRveE8zTjBiM0F0WTI5c2IzSTZJMlppWXpneFppSUtJQ0FnSUNBZ0lDQWdiMlptYzJWMFBTSXhJZ29nSUNBZ0lDQWdJQ0JwWkQwaWMzUnZjRE13SWlBdlBqd3ZiR2x1WldGeVIzSmhaR2xsYm5RK1BDOWtaV1p6UGp4emIyUnBjRzlrYVRwdVlXMWxaSFpwWlhjS0lDQWdJQ0J3WVdkbFkyOXNiM0k5SWlObVptWm1abVlpQ2lBZ0lDQWdZbTl5WkdWeVkyOXNiM0k5SWlNMk5qWTJOallpQ2lBZ0lDQWdZbTl5WkdWeWIzQmhZMmwwZVQwaU1TSUtJQ0FnSUNCdlltcGxZM1IwYjJ4bGNtRnVZMlU5SWpFd0lnb2dJQ0FnSUdkeWFXUjBiMnhsY21GdVkyVTlJakV3SWdvZ0lDQWdJR2QxYVdSbGRHOXNaWEpoYm1ObFBTSXhNQ0lLSUNBZ0lDQnBibXR6WTJGd1pUcHdZV2RsYjNCaFkybDBlVDBpTUNJS0lDQWdJQ0JwYm10elkyRndaVHB3WVdkbGMyaGhaRzkzUFNJeUlnb2dJQ0FnSUdsdWEzTmpZWEJsT25kcGJtUnZkeTEzYVdSMGFEMGlNVGt4T0NJS0lDQWdJQ0JwYm10elkyRndaVHAzYVc1a2IzY3RhR1ZwWjJoMFBTSXhNREUySWdvZ0lDQWdJR2xrUFNKdVlXMWxaSFpwWlhjMElnb2dJQ0FnSUhOb2IzZG5jbWxrUFNKbVlXeHpaU0lLSUNBZ0lDQm1hWFF0YldGeVoybHVMWFJ2Y0QwaU1DSUtJQ0FnSUNCbWFYUXRiV0Z5WjJsdUxXeGxablE5SWpBaUNpQWdJQ0FnWm1sMExXMWhjbWRwYmkxeWFXZG9kRDBpTUNJS0lDQWdJQ0JtYVhRdGJXRnlaMmx1TFdKdmRIUnZiVDBpTUNJS0lDQWdJQ0JwYm10elkyRndaVHA2YjI5dFBTSTBMamd6TkRJMU5EZ2lDaUFnSUNBZ2FXNXJjMk5oY0dVNlkzZzlJakkyTGpVMU5qYzNOQ0lLSUNBZ0lDQnBibXR6WTJGd1pUcGplVDBpTkRBdU5qTTJNall4SWdvZ0lDQWdJR2x1YTNOallYQmxPbmRwYm1SdmR5MTRQU0l3SWdvZ0lDQWdJR2x1YTNOallYQmxPbmRwYm1SdmR5MTVQU0l6TmlJS0lDQWdJQ0JwYm10elkyRndaVHAzYVc1a2IzY3RiV0Y0YVcxcGVtVmtQU0l3SWdvZ0lDQWdJR2x1YTNOallYQmxPbU4xY25KbGJuUXRiR0Y1WlhJOUltY3hNQ0lnTHo0OFp3b2dJQ0FnSUdsa1BTSm5NVEFpQ2lBZ0lDQWdhVzVyYzJOaGNHVTZaM0p2ZFhCdGIyUmxQU0pzWVhsbGNpSUtJQ0FnSUNCcGJtdHpZMkZ3WlRwc1lXSmxiRDBpVTFkSUxXeHZaMjhpQ2lBZ0lDQWdkSEpoYm5ObWIzSnRQU0p0WVhSeWFYZ29NUzR5TlN3d0xEQXNMVEV1TWpVc0xURTFMamN3TmpZeU5Td3hNelF1TWpReU5Ta2lDaUFnSUNBZ2MzUjViR1U5SW1ScGMzQnNZWGs2YVc1c2FXNWxJajQ4Y0dGMGFBb2dJQ0J6ZEhsc1pUMGlabWxzYkRvalptWm1abVptTzNOMGNtOXJaVHB1YjI1bE8yWnBiR3d0YjNCaFkybDBlVG94SWdvZ0lDQmtQU0p0SURNd0xqVTNORFVzTmpndU9UZzNJREV1TXpNM0xDMHhMak0wTXlBMExqZ3lOaXd4TGpZd055QXRNUzQyTVN3dE5DNDRNak1nTVM0ek5Dd3RNUzR6TkNBeUxqazFMRGd1T0RRMElIb2lDaUFnSUdsa1BTSndZWFJvT1RReElnb2dJQ0JwYm10elkyRndaVHBqYjI1dVpXTjBiM0l0WTNWeWRtRjBkWEpsUFNJd0lpQXZQanh3WVhSb0NpQWdJSE4wZVd4bFBTSm1hV3hzT2lObVptWm1abVk3YzNSeWIydGxPbTV2Ym1VN1ptbHNiQzF2Y0dGamFYUjVPakVpQ2lBZ0lHUTlJbTBnTWpjdU1UZzNOU3cyTnk0NU1UUWdOUzQzTkRZc0xURXdMalkzTlNBeExqSTFNaXd4TGpJMU1pQXROUzQzTkRjc01UQXVOamMwSUhvaUNpQWdJR2xrUFNKd1lYUm9PVE01SWdvZ0lDQnBibXR6WTJGd1pUcGpiMjV1WldOMGIzSXRZM1Z5ZG1GMGRYSmxQU0l3SWlBdlBqeHdZWFJvQ2lBZ0lITjBlV3hsUFNKbWFXeHNPaU5tWm1abVptWTdjM1J5YjJ0bE9tNXZibVU3Wm1sc2JDMXZjR0ZqYVhSNU9qRWlDaUFnSUdROUltMGdNalF1TmpNMU5TdzFOeTR4TlRJZ01TNDJNRGdzTkM0NE1qTWdMVEV1TXpRc01TNHpOQ0F0TWk0NU5Ea3NMVGd1T0RRMklEZ3VPRFF5TERJdU9UUTVJQzB4TGpNek9Dd3hMak0wTXlCNklnb2dJQ0JwWkQwaWNHRjBhRGt6TnlJS0lDQWdhVzVyYzJOaGNHVTZZMjl1Ym1WamRHOXlMV04xY25aaGRIVnlaVDBpTUNJZ0x6NDhjR0YwYUFvZ0lDQnpkSGxzWlQwaVptbHNiRG9qWm1abVptWm1PM04wY205clpUcHViMjVsTzJacGJHd3RiM0JoWTJsMGVUb3hJZ29nSUNCa1BTSnRJRFEwTGpBeE1UVXNOalV1T0RjMElESXVNamMwTEMwMUxqRTBOQ0JvSURFdU9EazBJR3dnTFRRdU1UWTNMRGd1T1RNMUlDMDBMakUzTEMwNExqQXpPQ0F4TGpnNU5Td3RNQzR4TlRRZ2VpSUtJQ0FnYVdROUluQmhkR2c1TXpVaUNpQWdJR2x1YTNOallYQmxPbU52Ym01bFkzUnZjaTFqZFhKMllYUjFjbVU5SWpBaUlDOCtQSEJoZEdnS0lDQWdjM1I1YkdVOUltWnBiR3c2STJabVptWm1aanR6ZEhKdmEyVTZibTl1WlR0bWFXeHNMVzl3WVdOcGRIazZNU0lLSUNBZ1pEMGliU0F6T0M0eU1UUTFMRFU0TGpjM01TQXhNaXd0TXk0ME9EVWdkaUF4TGpjM0lHd2dMVEV5TERNdU5EZzBJSG9pQ2lBZ0lHbGtQU0p3WVhSb09UTXpJZ29nSUNCcGJtdHpZMkZ3WlRwamIyNXVaV04wYjNJdFkzVnlkbUYwZFhKbFBTSXdJaUF2UGp4d1lYUm9DaUFnSUhOMGVXeGxQU0ptYVd4c09pTm1abVptWm1ZN2MzUnliMnRsT201dmJtVTdabWxzYkMxdmNHRmphWFI1T2pFaUNpQWdJR1E5SW0wZ05EUXVNREV4TlN3ME9TNHlOamtnTFRJdU1qY3pMRFF1TkRZeElHZ2dMVEV1T0RrMUlHd2dOQzR4Tmprc0xUZ3VNalV5SURRdU1UWTNMRGd1TXpjNUlDMHhMamc1Tml3dE1DNHdNVGdnZWlJS0lDQWdhV1E5SW5CaGRHZzVNekVpQ2lBZ0lHbHVhM05qWVhCbE9tTnZibTVsWTNSdmNpMWpkWEoyWVhSMWNtVTlJakFpSUM4K1BIQmhkR2dLSUNBZ2MzUjViR1U5SW1acGJHdzZJMlptWm1abVpqdHpkSEp2YTJVNmJtOXVaVHRtYVd4c0xXOXdZV05wZEhrNk1TSUtJQ0FnWkQwaWJTQTFOeTR5T0RjMUxEWTVMak0zTnlBdE9DNDRORE1zTWk0NU5TQXlMamswTlN3dE9DNDRORFFnTVM0ek5ESXNNUzR6TXpnZ0xURXVOakEzTERRdU9ESTFJRFF1T0RJekxDMHhMall3T1NCNklnb2dJQ0JwWkQwaWNHRjBhRGt5T1NJS0lDQWdhVzVyYzJOaGNHVTZZMjl1Ym1WamRHOXlMV04xY25aaGRIVnlaVDBpTUNJZ0x6NDhjR0YwYUFvZ0lDQnpkSGxzWlQwaVptbHNiRG9qWm1abVptWm1PM04wY205clpUcHViMjVsTzJacGJHd3RiM0JoWTJsMGVUb3hJZ29nSUNCa1BTSnRJRFl4TGpnNE5EVXNOamN1TURrMUlDMHhNQzQyTnpRc0xUVXVOelE0SURFdU1qVXhMQzB4TGpJMUlERXdMalkzTlN3MUxqYzBOaUI2SWdvZ0lDQnBaRDBpY0dGMGFEa3lOeUlLSUNBZ2FXNXJjMk5oY0dVNlkyOXVibVZqZEc5eUxXTjFjblpoZEhWeVpUMGlNQ0lnTHo0OGNHRjBhQW9nSUNCemRIbHNaVDBpWm1sc2JEb2pabVptWm1abU8zTjBjbTlyWlRwdWIyNWxPMlpwYkd3dGIzQmhZMmwwZVRveElnb2dJQ0JrUFNKdElEWXhMall4TlRVc05qSXVNelkzSURFdU5qQTVMQzAwTGpneU1pQXROQzQ0TWpJc01TNDJNRGNnTFRFdU16UXNMVEV1TXpRZ09DNDRORE1zTFRJdU9UUTRJQzB5TGprME9DdzRMamcwTWlCNklnb2dJQ0JwWkQwaWNHRjBhRGt5TlNJS0lDQWdhVzVyYzJOaGNHVTZZMjl1Ym1WamRHOXlMV04xY25aaGRIVnlaVDBpTUNJZ0x6NDhjR0YwYUFvZ0lDQnpkSGxzWlQwaVptbHNiRG9qWm1abVptWm1PM04wY205clpUcHViMjVsTzJacGJHd3RiM0JoWTJsMGVUb3hJZ29nSUNCa1BTSnRJRFU0TGpJeE5EVXNPREV1TURnNUlDMDRMakl4T1N3dE5DNHhOamdnT0M0ek9UWXNMVFF1TVRjZ01DNHdNek1zTVM0NE9UWWdMVFF1TmpVekxESXVNamMwSURRdU5EUXpMREl1TWpjeklIb2lDaUFnSUdsa1BTSndZWFJvT1RJeklnb2dJQ0JwYm10elkyRndaVHBqYjI1dVpXTjBiM0l0WTNWeWRtRjBkWEpsUFNJd0lpQXZQanh3WVhSb0NpQWdJSE4wZVd4bFBTSm1hV3hzT2lObVptWm1abVk3YzNSeWIydGxPbTV2Ym1VN1ptbHNiQzF2Y0dGamFYUjVPakVpQ2lBZ0lHUTlJbTBnTmpFdU5qQTFOU3czTUM0M015QXpMalE0Tml3eE1pQm9JQzB4TGpjM01TQnNJQzB6TGpRNE5Dd3RNVElnZWlJS0lDQWdhV1E5SW5CaGRHZzVNakVpQ2lBZ0lHbHVhM05qWVhCbE9tTnZibTVsWTNSdmNpMWpkWEoyWVhSMWNtVTlJakFpSUM4K1BIQmhkR2dLSUNBZ2MzUjViR1U5SW1acGJHdzZJMlptWm1abVpqdHpkSEp2YTJVNmJtOXVaVHRtYVd4c0xXOXdZV05wZEhrNk1TSUtJQ0FnWkQwaWJTQTJOeTR5TVRRMUxEY3lMamMxTWlBM0xqazJOeXcwTGpFMk9TQXRPQzQxTWpJc05DNHhOamdnTFRBdU1EazFMQzB4TGpnNU5pQTBMamczTXl3dE1pNHlOeklnTFRRdU1qSXpMQzB5TGpJM05DQjZJZ29nSUNCcFpEMGljR0YwYURreE9TSUtJQ0FnYVc1cmMyTmhjR1U2WTI5dWJtVmpkRzl5TFdOMWNuWmhkSFZ5WlQwaU1DSWdMejQ4Y0dGMGFBb2dJQ0J6ZEhsc1pUMGlabWxzYkRvalptWm1abVptTzNOMGNtOXJaVHB1YjI1bE8yWnBiR3d0YjNCaFkybDBlVG94SWdvZ0lDQmtQU0p0SURVMkxqZzVNelVzT0RRdU1qazVJQzB4TGpNek9Td3hMak0wTWlBdE5DNDRNalFzTFRFdU5qQTRJREV1TmpBNExEUXVPREl6SUMweExqTTBMREV1TXpReElDMHlMamswT0N3dE9DNDRORFFnZWlJS0lDQWdhV1E5SW5CaGRHZzVNVGNpQ2lBZ0lHbHVhM05qWVhCbE9tTnZibTVsWTNSdmNpMWpkWEoyWVhSMWNtVTlJakFpSUM4K1BIQmhkR2dLSUNBZ2MzUjViR1U5SW1acGJHdzZJMlptWm1abVpqdHpkSEp2YTJVNmJtOXVaVHRtYVd4c0xXOXdZV05wZEhrNk1TSUtJQ0FnWkQwaWJTQTJNQzR5T0RBMUxEZzFMak0zTVNBdE5TNDNORFlzTVRBdU5qYzFJQzB4TGpJMU15d3RNUzR5TlRNZ05TNDNORGdzTFRFd0xqWTNNeUI2SWdvZ0lDQnBaRDBpY0dGMGFEa3hOU0lLSUNBZ2FXNXJjMk5oY0dVNlkyOXVibVZqZEc5eUxXTjFjblpoZEhWeVpUMGlNQ0lnTHo0OGNHRjBhQW9nSUNCemRIbHNaVDBpWm1sc2JEb2pabVptWm1abU8zTjBjbTlyWlRwdWIyNWxPMlpwYkd3dGIzQmhZMmwwZVRveElnb2dJQ0JrUFNKdElEWXlMamd6TVRVc09UWXVNVE0wSUMweExqWXdPQ3d0TkM0NE1qTWdNUzR6TkRFc0xURXVNek01SURJdU9UUTNMRGd1T0RReklDMDRMamcwTWl3dE1pNDVORGtnTVM0ek16a3NMVEV1TXpReElIb2lDaUFnSUdsa1BTSndZWFJvT1RFeklnb2dJQ0JwYm10elkyRndaVHBqYjI1dVpXTjBiM0l0WTNWeWRtRjBkWEpsUFNJd0lpQXZQanh3WVhSb0NpQWdJSE4wZVd4bFBTSm1hV3hzT2lObVptWm1abVk3YzNSeWIydGxPbTV2Ym1VN1ptbHNiQzF2Y0dGamFYUjVPakVpQ2lBZ0lHUTlJbTBnTkRVdU56STVOU3c1TVM0ek5qUWdMVEl1TWpjMExDMDBMak0yTlNBdE1pNHlOelFzTkM0M016RWdhQ0F0TVM0NE9UUWdiQ0EwTGpFMk9Dd3RPQzQxTWpFZ05DNHhOeXc0TGpJME5TQjZJZ29nSUNCcFpEMGljR0YwYURreE1TSUtJQ0FnYVc1cmMyTmhjR1U2WTI5dWJtVmpkRzl5TFdOMWNuWmhkSFZ5WlQwaU1DSWdMejQ4Y0dGMGFBb2dJQ0J6ZEhsc1pUMGlabWxzYkRvalptWm1abVptTzNOMGNtOXJaVHB1YjI1bE8yWnBiR3d0YjNCaFkybDBlVG94SWdvZ0lDQmtQU0p0SURVd0xqSXhORFVzT1RRdU5URTFJQzB4TWl3ekxqUTROU0IySUMweExqYzNJR3dnTVRJc0xUTXVORGcxSUhvaUNpQWdJR2xrUFNKd1lYUm9PVEE1SWdvZ0lDQnBibXR6WTJGd1pUcGpiMjV1WldOMGIzSXRZM1Z5ZG1GMGRYSmxQU0l3SWlBdlBqeHdZWFJvQ2lBZ0lITjBlV3hsUFNKbWFXeHNPaU5tWm1abVptWTdjM1J5YjJ0bE9tNXZibVU3Wm1sc2JDMXZjR0ZqYVhSNU9qRWlDaUFnSUdROUltMGdORE11TkRVMU5Td3hNRE11TmpBeklESXVNamMwTEMwMExqZzNNeUJvSURFdU9EazFJR3dnTFRRdU1UWTVMRGd1TmpZMElDMDBMakUyT1N3dE9DNHhOelVnTVM0NE9UWXNMVEF1TURneklIb2lDaUFnSUdsa1BTSndZWFJvT1RBM0lnb2dJQ0JwYm10elkyRndaVHBqYjI1dVpXTjBiM0l0WTNWeWRtRjBkWEpsUFNJd0lpQXZQanh3WVhSb0NpQWdJSE4wZVd4bFBTSm1hV3hzT2lObVptWm1abVk3YzNSeWIydGxPbTV2Ym1VN1ptbHNiQzF2Y0dGamFYUjVPakVpQ2lBZ0lHUTlJbTBnTXpZdU1EYzJOU3c0T1M0NE1ETWdMVEV1TXpReExDMHhMak0wSURFdU5qQTRMQzAwTGpneU15QXROQzQ0TWpNc01TNDJNRGdnTFRFdU16UXNMVEV1TXpRZ09DNDRORFFzTFRJdU9UUTVJSG9pQ2lBZ0lHbGtQU0p3WVhSb09UQTFJZ29nSUNCcGJtdHpZMkZ3WlRwamIyNXVaV04wYjNJdFkzVnlkbUYwZFhKbFBTSXdJaUF2UGp4d1lYUm9DaUFnSUhOMGVXeGxQU0ptYVd4c09pTm1abVptWm1ZN2MzUnliMnRsT201dmJtVTdabWxzYkMxdmNHRmphWFI1T2pFaUNpQWdJR1E5SW0wZ01qVXVOVGd5TlN3NE5pNHhPVElnTVRBdU5qYzBMRFV1TnpRMklDMHhMakkxTVN3eExqSTFNU0F0TVRBdU5qYzFMQzAxTGpjME5pQjZJZ29nSUNCcFpEMGljR0YwYURrd015SUtJQ0FnYVc1cmMyTmhjR1U2WTI5dWJtVmpkRzl5TFdOMWNuWmhkSFZ5WlQwaU1DSWdMejQ4Y0dGMGFBb2dJQ0J6ZEhsc1pUMGlabWxzYkRvalptWm1abVptTzNOMGNtOXJaVHB1YjI1bE8yWnBiR3d0YjNCaFkybDBlVG94SWdvZ0lDQmtQU0p0SURJMUxqZzFNRFVzT1RBdU9URTRJQzB4TGpZd09DdzBMamd5TXlBMExqZ3lOQ3d0TVM0Mk1EZ2dNUzR6TXprc01TNHpOREVnTFRndU9EUTBMREl1T1RRNElESXVPVFE1TEMwNExqZzBOQ0I2SWdvZ0lDQnBaRDBpY0dGMGFEa3dNU0lLSUNBZ2FXNXJjMk5oY0dVNlkyOXVibVZqZEc5eUxXTjFjblpoZEhWeVpUMGlNQ0lnTHo0OGNHRjBhQW9nSUNCemRIbHNaVDBpWm1sc2JEb2pabVptWm1abU8zTjBjbTlyWlRwdWIyNWxPMlpwYkd3dGIzQmhZMmwwZVRveElnb2dJQ0JrUFNKdElESTVMakl4TkRVc056SXVNVGsySURndU16TTRMRFF1TVRZNUlDMDRMak16T0N3MExqRTJPU0IySUMweExqZzVOaUJzSURRdU5UUTNMQzB5TGpJM015QXROQzQxTkRjc0xUSXVNamMwSUhvaUNpQWdJR2xrUFNKd1lYUm9PRGs1SWdvZ0lDQnBibXR6WTJGd1pUcGpiMjV1WldOMGIzSXRZM1Z5ZG1GMGRYSmxQU0l3SWlBdlBqeHdZWFJvQ2lBZ0lITjBlV3hsUFNKbWFXeHNPaU5tWm1abVptWTdjM1J5YjJ0bE9tNXZibVU3Wm1sc2JDMXZjR0ZqYVhSNU9qRWlDaUFnSUdROUltMGdNalF1TVRRMU5TdzNNQzQzTXlBekxqUTROU3d4TVNCb0lDMHhMamMyT1NCc0lDMHpMalE0TlN3dE1URWdlaUlLSUNBZ2FXUTlJbkJoZEdnNE9UY2lDaUFnSUdsdWEzTmpZWEJsT21OdmJtNWxZM1J2Y2kxamRYSjJZWFIxY21VOUlqQWlJQzgrUEhCaGRHZ0tJQ0FnYzNSNWJHVTlJbVpwYkd3NkkyWm1abVptWmp0emRISnZhMlU2Ym05dVpUdHpkSEp2YTJVdGQybGtkR2c2TVM0d01EQXdNak01Tmp0bWFXeHNMVzl3WVdOcGRIazZNU0lLSUNBZ1pEMGliU0F4TWk0MU5qVXpMRGMyTGpNMk5TQTRMak16T0RRc05DNHhOamtnVmlBM09DNDJNemdnVENBeE5pNHpOVFkwT0RJc056WXVNelkxSURJd0xqa3dNemNzTnpRdU1Ea3hJSFlnTFRFdU9EazFJSG9pQ2lBZ0lHbGtQU0p3WVhSb016SWlDaUFnSUdsdWEzTmpZWEJsT21OdmJtNWxZM1J2Y2kxamRYSjJZWFIxY21VOUlqQWlJQzgrUEhSbGVIUUtJQ0FnZUcxc09uTndZV05sUFNKd2NtVnpaWEoyWlNJS0lDQWdjM1I1YkdVOUltWnZiblF0YzNSNWJHVTZibTl5YldGc08yWnZiblF0ZG1GeWFXRnVkRHB1YjNKdFlXdzdabTl1ZEMxM1pXbG5hSFE2Ym05eWJXRnNPMlp2Ym5RdGMzUnlaWFJqYURwdWIzSnRZV3c3Wm05dWRDMXphWHBsT2pFekxqazVPVGs1T1RBMWNIZzdiR2x1WlMxb1pXbG5hSFE2TVRndU56VndlRHRtYjI1MExXWmhiV2xzZVRvblFXeGxaM0psZVdFZ1UwTW5PeTFwYm10elkyRndaUzFtYjI1MExYTndaV05wWm1sallYUnBiMjQ2SjBGc1pXZHlaWGxoSUZOREp6dHNaWFIwWlhJdGMzQmhZMmx1Wnpvd2NIZzdkMjl5WkMxemNHRmphVzVuT2pCd2VEdG1hV3hzT2lObVptWm1abVk3Wm1sc2JDMXZjR0ZqYVhSNU9qRTdjM1J5YjJ0bE9tNXZibVU3YzNSeWIydGxMWGRwWkhSb09qQXVOelZ3ZUR0emRISnZhMlV0YkdsdVpXTmhjRHBpZFhSME8zTjBjbTlyWlMxc2FXNWxhbTlwYmpwdGFYUmxjanR6ZEhKdmEyVXRiM0JoWTJsMGVUb3hPeUlLSUNBZ2VEMGlNakV1TnpBMk56RXpJZ29nSUNCNVBTSXRORGt1TWpBeE5ESTNJZ29nSUNCcFpEMGlkR1Y0ZERJMElnb2dJQ0IwY21GdWMyWnZjbTA5SW5OallXeGxLREVzTFRFcElqNDhkSE53WVc0S0lDQWdJQ0J6YjJScGNHOWthVHB5YjJ4bFBTSnNhVzVsSWdvZ0lDQWdJR2xrUFNKMGMzQmhiakl5SWdvZ0lDQWdJSGc5SWpJeExqY3dOamN4TXlJS0lDQWdJQ0I1UFNJdE16WXVNemMxTWpraUNpQWdJQ0FnYzNSNWJHVTlJbVp2Ym5RdGMzUjViR1U2Ym05eWJXRnNPMlp2Ym5RdGRtRnlhV0Z1ZERwdWIzSnRZV3c3Wm05dWRDMTNaV2xuYUhRNmJtOXliV0ZzTzJadmJuUXRjM1J5WlhSamFEcHViM0p0WVd3N1ptOXVkQzFtWVcxcGJIazZKMEZzWldkeVpYbGhJRk5ESnpzdGFXNXJjMk5oY0dVdFptOXVkQzF6Y0dWamFXWnBZMkYwYVc5dU9pZEJiR1ZuY21WNVlTQlRReWM3YzNSeWIydGxMWGRwWkhSb09qQXVOelZ3ZUR0bWFXeHNPaU5tWm1abVptWTdabWxzYkMxdmNHRmphWFI1T2pFN0lpQXZQand2ZEdWNGRENEtDangwWlhoMENpQWdJSGh0YkRwemNHRmpaVDBpY0hKbGMyVnlkbVVpQ2lBZ0lITjBlV3hsUFNKbWIyNTBMWE4wZVd4bE9tNXZjbTFoYkR0bWIyNTBMWFpoY21saGJuUTZibTl5YldGc08yWnZiblF0ZDJWcFoyaDBPbTV2Y20xaGJEdG1iMjUwTFhOMGNtVjBZMmc2Ym05eWJXRnNPMlp2Ym5RdGMybDZaVG94TXk0NU9UazVPVGt3TlhCNE8yeHBibVV0YUdWcFoyaDBPakU0TGpjMWNIZzdabTl1ZEMxbVlXMXBiSGs2SjBGc1pXZHlaWGxoSUZOREp6c3RhVzVyYzJOaGNHVXRabTl1ZEMxemNHVmphV1pwWTJGMGFXOXVPaWRCYkdWbmNtVjVZU0JUUXljN2JHVjBkR1Z5TFhOd1lXTnBibWM2TUhCNE8zZHZjbVF0YzNCaFkybHVaem93Y0hnN1ptbHNiRG9qWm1abVptWm1PMlpwYkd3dGIzQmhZMmwwZVRveE8zTjBjbTlyWlRwdWIyNWxPM04wY205clpTMTNhV1IwYURvd0xqYzFjSGc3YzNSeWIydGxMV3hwYm1WallYQTZZblYwZER0emRISnZhMlV0YkdsdVpXcHZhVzQ2YldsMFpYSTdjM1J5YjJ0bExXOXdZV05wZEhrNk1Uc2lDaUFnSUhnOUlqRTNMams0TXpJNE5DSUtJQ0FnZVQwaUxUUTJMamN4T1RFME15SUtJQ0FnYVdROUluUmxlSFF5T0NJS0lDQWdkSEpoYm5ObWIzSnRQU0p6WTJGc1pTZ3hMQzB4S1NJK1BIUnpjR0Z1Q2lBZ0lDQWdjMjlrYVhCdlpHazZjbTlzWlQwaWJHbHVaU0lLSUNBZ0lDQnBaRDBpZEhOd1lXNHlOaUlLSUNBZ0lDQjRQU0l4Tnk0NU9ETXlPRFFpQ2lBZ0lDQWdlVDBpTFRNekxqZzVNekF3TlNJS0lDQWdJQ0J6ZEhsc1pUMGlabTl1ZEMxemRIbHNaVHB1YjNKdFlXdzdabTl1ZEMxMllYSnBZVzUwT201dmNtMWhiRHRtYjI1MExYZGxhV2RvZERwdWIzSnRZV3c3Wm05dWRDMXpkSEpsZEdOb09tNXZjbTFoYkR0bWIyNTBMWE5wZW1VNk1UWndlRHRtYjI1MExXWmhiV2xzZVRvblFXeGxaM0psZVdFZ1UwTW5PeTFwYm10elkyRndaUzFtYjI1MExYTndaV05wWm1sallYUnBiMjQ2SjBGc1pXZHlaWGxoSUZOREp6dG1hV3hzT2lObVptWm1abVk3Wm1sc2JDMXZjR0ZqYVhSNU9qRTdjM1J5YjJ0bExYZHBaSFJvT2pBdU56VndlRHNpSUM4K1BDOTBaWGgwUGdvS1BIUmxlSFFLSUNBZ2VHMXNPbk53WVdObFBTSndjbVZ6WlhKMlpTSUtJQ0FnYzNSNWJHVTlJbVp2Ym5RdGMzUjViR1U2Ym05eWJXRnNPMlp2Ym5RdGRtRnlhV0Z1ZERwdWIzSnRZV3c3Wm05dWRDMTNaV2xuYUhRNmJtOXliV0ZzTzJadmJuUXRjM1J5WlhSamFEcHViM0p0WVd3N1ptOXVkQzF6YVhwbE9qRTJjSGc3YkdsdVpTMW9aV2xuYUhRNk1UZ3VOelZ3ZUR0bWIyNTBMV1poYldsc2VUb25RV3hsWjNKbGVXRWdVME1uT3kxcGJtdHpZMkZ3WlMxbWIyNTBMWE53WldOcFptbGpZWFJwYjI0NkowRnNaV2R5WlhsaElGTkRKenRzWlhSMFpYSXRjM0JoWTJsdVp6b3djSGc3ZDI5eVpDMXpjR0ZqYVc1bk9qQndlRHRtYVd4c09pTm1abVptWm1ZN1ptbHNiQzF2Y0dGamFYUjVPakU3YzNSeWIydGxPbTV2Ym1VN2MzUnliMnRsTFhkcFpIUm9PakF1TnpWd2VEdHpkSEp2YTJVdGJHbHVaV05oY0RwaWRYUjBPM04wY205clpTMXNhVzVsYW05cGJqcHRhWFJsY2p0emRISnZhMlV0YjNCaFkybDBlVG94T3lJS0lDQWdlRDBpTVRZdU1USXhOVGN4SWdvZ0lDQjVQU0l0TkRjdU9UWXdNamc1SWdvZ0lDQnBaRDBpZEdWNGREUTFNallpQ2lBZ0lIUnlZVzV6Wm05eWJUMGljMk5oYkdVb01Td3RNU2tpUGp4MGMzQmhiZ29nSUNBZ0lITnZaR2x3YjJScE9uSnZiR1U5SW14cGJtVWlDaUFnSUNBZ2FXUTlJblJ6Y0dGdU5EVXlOQ0lLSUNBZ0lDQjRQU0l4Tmk0eE1qRTFOekVpQ2lBZ0lDQWdlVDBpTFRNMExqWTBNVEV5T1NJS0lDQWdJQ0J6ZEhsc1pUMGlabTl1ZEMxemRIbHNaVHB1YjNKdFlXdzdabTl1ZEMxMllYSnBZVzUwT201dmNtMWhiRHRtYjI1MExYZGxhV2RvZERwdWIzSnRZV3c3Wm05dWRDMXpkSEpsZEdOb09tNXZjbTFoYkR0bWIyNTBMWE5wZW1VNk1UWndlRHRtYjI1MExXWmhiV2xzZVRvblFXeGxaM0psZVdFZ1UwTW5PeTFwYm10elkyRndaUzFtYjI1MExYTndaV05wWm1sallYUnBiMjQ2SjBGc1pXZHlaWGxoSUZOREp6dG1hV3hzT2lObVptWm1abVk3Wm1sc2JDMXZjR0ZqYVhSNU9qRTdjM1J5YjJ0bExYZHBaSFJvT2pBdU56VndlRHNpSUM4K1BDOTBaWGgwUGdvS1BIUmxlSFFLSUNBZ2VHMXNPbk53WVdObFBTSndjbVZ6WlhKMlpTSUtJQ0FnYzNSNWJHVTlJbVp2Ym5RdGMzUjViR1U2Ym05eWJXRnNPMlp2Ym5RdGRtRnlhV0Z1ZERwdWIzSnRZV3c3Wm05dWRDMTNaV2xuYUhRNmJtOXliV0ZzTzJadmJuUXRjM1J5WlhSamFEcHViM0p0WVd3N1ptOXVkQzF6YVhwbE9qRTJjSGc3YkdsdVpTMW9aV2xuYUhRNk1UZ3VOelZ3ZUR0bWIyNTBMV1poYldsc2VUb25RV3hsWjNKbGVXRWdVME1uT3kxcGJtdHpZMkZ3WlMxbWIyNTBMWE53WldOcFptbGpZWFJwYjI0NkowRnNaV2R5WlhsaElGTkRKenRzWlhSMFpYSXRjM0JoWTJsdVp6b3djSGc3ZDI5eVpDMXpjR0ZqYVc1bk9qQndlRHRtYVd4c09pTm1abVptWm1ZN1ptbHNiQzF2Y0dGamFYUjVPakU3YzNSeWIydGxPbTV2Ym1VN2MzUnliMnRsTFhkcFpIUm9PakF1TnpWd2VEdHpkSEp2YTJVdGJHbHVaV05oY0RwaWRYUjBPM04wY205clpTMXNhVzVsYW05cGJqcHRhWFJsY2p0emRISnZhMlV0YjNCaFkybDBlVG94T3lJS0lDQWdlRDBpTVRZdU5ETXhPRFUySWdvZ0lDQjVQU0l0TkRndU1qY3dOVGN6SWdvZ0lDQnBaRDBpZEdWNGREUTFNekFpQ2lBZ0lIUnlZVzV6Wm05eWJUMGljMk5oYkdVb01Td3RNU2tpUGp4MGMzQmhiZ29nSUNBZ0lITnZaR2x3YjJScE9uSnZiR1U5SW14cGJtVWlDaUFnSUNBZ2FXUTlJblJ6Y0dGdU5EVXlPQ0lLSUNBZ0lDQjRQU0l4Tmk0ME16RTROVFlpQ2lBZ0lDQWdlVDBpTFRNMExqazFNVFF4TWlJS0lDQWdJQ0J6ZEhsc1pUMGlabTl1ZEMxemRIbHNaVHB1YjNKdFlXdzdabTl1ZEMxMllYSnBZVzUwT201dmNtMWhiRHRtYjI1MExYZGxhV2RvZERwdWIzSnRZV3c3Wm05dWRDMXpkSEpsZEdOb09tNXZjbTFoYkR0bWIyNTBMWE5wZW1VNk1UWndlRHRtYjI1MExXWmhiV2xzZVRvblFXeGxaM0psZVdFZ1UwTW5PeTFwYm10elkyRndaUzFtYjI1MExYTndaV05wWm1sallYUnBiMjQ2SjBGc1pXZHlaWGxoSUZOREp6dG1hV3hzT2lObVptWm1abVk3Wm1sc2JDMXZjR0ZqYVhSNU9qRTdjM1J5YjJ0bExYZHBaSFJvT2pBdU56VndlRHNpSUM4K1BDOTBaWGgwUGdvS1BIUmxlSFFLSUNBZ2VHMXNPbk53WVdObFBTSndjbVZ6WlhKMlpTSUtJQ0FnYzNSNWJHVTlJbVp2Ym5RdGMzUjViR1U2Ym05eWJXRnNPMlp2Ym5RdGRtRnlhV0Z1ZERwdWIzSnRZV3c3Wm05dWRDMTNaV2xuYUhRNmJtOXliV0ZzTzJadmJuUXRjM1J5WlhSamFEcHViM0p0WVd3N1ptOXVkQzF6YVhwbE9qRXpMams1T1RrNU9UQTFjSGc3YkdsdVpTMW9aV2xuYUhRNk1UZ3VOelZ3ZUR0bWIyNTBMV1poYldsc2VUb25RV3hsWjNKbGVXRWdVME1uT3kxcGJtdHpZMkZ3WlMxbWIyNTBMWE53WldOcFptbGpZWFJwYjI0NkowRnNaV2R5WlhsaElGTkRKenRzWlhSMFpYSXRjM0JoWTJsdVp6b3djSGc3ZDI5eVpDMXpjR0ZqYVc1bk9qQndlRHRtYVd4c09pTm1abVptWm1ZN1ptbHNiQzF2Y0dGamFYUjVPakU3YzNSeWIydGxPbTV2Ym1VN2MzUnliMnRsTFhkcFpIUm9PakF1TnpWd2VEdHpkSEp2YTJVdGJHbHVaV05oY0RwaWRYUjBPM04wY205clpTMXNhVzVsYW05cGJqcHRhWFJsY2p0emRISnZhMlV0YjNCaFkybDBlVG94T3lJS0lDQWdlRDBpTVRRdU5UY3dNVFF6SWdvZ0lDQjVQU0l0TkRZdU56RTVNVFF6SWdvZ0lDQnBaRDBpZEdWNGREUTFOVGNpQ2lBZ0lIUnlZVzV6Wm05eWJUMGljMk5oYkdVb01Td3RNU2tpUGp4MGMzQmhiZ29nSUNBZ0lITnZaR2x3YjJScE9uSnZiR1U5SW14cGJtVWlDaUFnSUNBZ2FXUTlJblJ6Y0dGdU5EVTFOU0lLSUNBZ0lDQjRQU0l4TkM0MU56QXhORE1pQ2lBZ0lDQWdlVDBpTFRNekxqZzVNekF3TlNJS0lDQWdJQ0J6ZEhsc1pUMGlabTl1ZEMxemRIbHNaVHB1YjNKdFlXdzdabTl1ZEMxMllYSnBZVzUwT201dmNtMWhiRHRtYjI1MExYZGxhV2RvZERwaWIyeGtPMlp2Ym5RdGMzUnlaWFJqYURwdWIzSnRZV3c3Wm05dWRDMXphWHBsT2pFMmNIZzdabTl1ZEMxbVlXMXBiSGs2SjBGc1pXZHlaWGxoSUZOREp6c3RhVzVyYzJOaGNHVXRabTl1ZEMxemNHVmphV1pwWTJGMGFXOXVPaWRCYkdWbmNtVjVZU0JUUXlCQ2IyeGtKenRtYVd4c09pTm1abVptWm1ZN1ptbHNiQzF2Y0dGamFYUjVPakU3YzNSeWIydGxMWGRwWkhSb09qQXVOelZ3ZURzaUlDOCtQQzkwWlhoMFBnb0tQQzluUGp3dmMzWm5QZz09IiB5PSIzIi8+PHRleHQgZmlsbD0iIzAxMDEwMSIgZmlsbC1vcGFjaXR5PSIuMyIgbGVuZ3RoQWRqdXN0PSJzcGFjaW5nIiB0ZXh0TGVuZ3RoPSI0NzUuOTk5OTk5OTk5OTk5OTQiIHRyYW5zZm9ybT0ic2NhbGUoMC4xKSIgeD0iNDY4LjAiIHk9IjE1MCI+YXJjaGl2ZWQ8L3RleHQ+PHRleHQgbGVuZ3RoQWRqdXN0PSJzcGFjaW5nIiB0ZXh0TGVuZ3RoPSI0NzUuOTk5OTk5OTk5OTk5OTQiIHRyYW5zZm9ybT0ic2NhbGUoMC4xKSIgeD0iNDY4LjAiIHk9IjE0MCI+YXJjaGl2ZWQ8L3RleHQ+PHRleHQgZmlsbD0iIzAxMDEwMSIgZmlsbC1vcGFjaXR5PSIuMyIgbGVuZ3RoQWRqdXN0PSJzcGFjaW5nIiB0ZXh0TGVuZ3RoPSI1NTguMCIgdHJhbnNmb3JtPSJzY2FsZSgwLjEpIiB4PSIxMDY1LjAiIHk9IjE1MCI+cmVwb3NpdG9yeTwvdGV4dD48dGV4dCBsZW5ndGhBZGp1c3Q9InNwYWNpbmciIHRleHRMZW5ndGg9IjU1OC4wIiB0cmFuc2Zvcm09InNjYWxlKDAuMSkiIHg9IjEwNjUuMCIgeT0iMTQwIj5yZXBvc2l0b3J5PC90ZXh0PjxhIHhsaW5rOmhyZWY9IiI+PHJlY3QgZmlsbD0icmdiYSgwLDAsMCwwKSIgaGVpZ2h0PSIyMCIgd2lkdGg9Ijc0LjYiLz48L2E+PGEgeGxpbms6aHJlZj0iaHR0cHM6Ly9hcmNoaXZlLnNvZnR3YXJlaGVyaXRhZ2Uub3JnL2Jyb3dzZS9vcmlnaW4vP29yaWdpbl91cmw9aHR0cHM6Ly9naXRodWIuY29tL3NlYmFzdGllbi1wbHV0bmlhay9hcmNoZW92aXoiPjxyZWN0IGZpbGw9InJnYmEoMCwwLDAsMCkiIGhlaWdodD0iMjAiIHdpZHRoPSI2NS44IiB4PSI3NC42Ii8+PC9hPjwvZz48L3N2Zz4= alt=SWH /></a> <a href=https://cran.r-project.org/package=archeoViz><img src=data:image/svg+xml; charset=utf-8;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSI4NSIgaGVpZ2h0PSIyMCIgYXJpYS1sYWJlbD0iQ1JBTiAxLjIuMCI+CiAgPGxpbmVhckdyYWRpZW50IGlkPSJiIiB4Mj0iMCIgeTI9IjEwMCUiPgogICAgPHN0b3Agb2Zmc2V0PSIwIiBzdG9wLWNvbG9yPSIjYmJiIiBzdG9wLW9wYWNpdHk9Ii4xIi8+CiAgICA8c3RvcCBvZmZzZXQ9IjEiIHN0b3Atb3BhY2l0eT0iLjEiLz4KICA8L2xpbmVhckdyYWRpZW50PgogIDxtYXNrIGlkPSJhIj4KICAgIDxyZWN0IHdpZHRoPSI4NSIgaGVpZ2h0PSIyMCIgcng9IjMiIGZpbGw9IiNmZmYiLz4KICA8L21hc2s+CiAgPGcgbWFzaz0idXJsKCNhKSI+CiAgICA8cGF0aCBmaWxsPSIjNTU1IiBkPSJNMCAwaDQzdjIwSDB6Ii8+CiAgICA8cGF0aCBmaWxsPSIjNGMxIiBkPSJNNDMgMGg2M3YyMEg0M3oiLz4KICAgIDxwYXRoIGZpbGw9InVybCgjYikiIGQ9Ik0wIDBoODV2MjBIMHoiLz4KICA8L2c+CiAgPGcgZmlsbD0iI2ZmZiIgdGV4dC1hbmNob3I9Im1pZGRsZSIKICAgICBmb250LWZhbWlseT0iRGVqYVZ1IFNhbnMsVmVyZGFuYSxHZW5ldmEsc2Fucy1zZXJpZiIgZm9udC1zaXplPSIxMSI+CiAgICA8dGV4dCB4PSIyMS41IiB5PSIxNSIgZmlsbD0iIzAxMDEwMSIgZmlsbC1vcGFjaXR5PSIuMyI+CiAgICAgIENSQU4KICAgIDwvdGV4dD4KICAgIDx0ZXh0IHg9IjIxLjUiIHk9IjE0Ij4KICAgICAgQ1JBTgogICAgPC90ZXh0PgogICAgPHRleHQgeD0iNjMiIHk9IjE1IiBmaWxsPSIjMDEwMTAxIiBmaWxsLW9wYWNpdHk9Ii4zIj4KICAgICAgMS4yLjAKICAgIDwvdGV4dD4KICAgIDx0ZXh0IHg9IjYzIiB5PSIxNCI+CiAgICAgIDEuMi4wCiAgICA8L3RleHQ+CiAgPC9nPgo8L3N2Zz4= alt=CRAN Version /></a> <a href=https://cran.r-project.org/package=archeoViz><img src=data:image/svg+xml; charset=utf-8;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxNDkiIGhlaWdodD0iMjAiIGFyaWEtbGFiZWw9IkNSQU4gZG93bmxvYWRzIDQxMi9tb250aCI+CiAgPGxpbmVhckdyYWRpZW50IGlkPSJiIiB4Mj0iMCIgeTI9IjEwMCUiPgogICAgPHN0b3Agb2Zmc2V0PSIwIiBzdG9wLWNvbG9yPSIjYmJiIiBzdG9wLW9wYWNpdHk9Ii4xIi8+CiAgICA8c3RvcCBvZmZzZXQ9IjEiIHN0b3Atb3BhY2l0eT0iLjEiLz4KICA8L2xpbmVhckdyYWRpZW50PgogIDxtYXNrIGlkPSJhIj4KICAgIDxyZWN0IHdpZHRoPSIxNDkiIGhlaWdodD0iMjAiIHJ4PSIzIiBmaWxsPSIjZmZmIi8+CiAgPC9tYXNrPgogIDxnIG1hc2s9InVybCgjYSkiPjxwYXRoIGZpbGw9IiM1NTUiIGQ9Ik0wIDBoNzB2MjBIMHoiLz4KICAgIDxwYXRoIGZpbGw9IiMwMDdlYzYiIGQ9Ik03MCAwaDc5djIwSDcweiIvPgogICAgPHBhdGggZmlsbD0idXJsKCNiKSIgZD0iTTAgMGgxNDl2MjBIMHoiLz4KICA8L2c+CiAgPGcgZmlsbD0iI2ZmZiIgdGV4dC1hbmNob3I9Im1pZGRsZSIKICAgICBmb250LWZhbWlseT0iRGVqYVZ1IFNhbnMsVmVyZGFuYSxHZW5ldmEsc2Fucy1zZXJpZiIgZm9udC1zaXplPSIxMSI+CiAgICA8dGV4dCB4PSIzNiIgeT0iMTUiIGZpbGw9IiMwMTAxMDEiIGZpbGwtb3BhY2l0eT0iLjMiPgogICAgICBkb3dubG9hZHMKICAgIDwvdGV4dD4KICAgIDx0ZXh0IHg9IjM2IiB5PSIxNCI+CiAgICAgIGRvd25sb2FkcwogICAgPC90ZXh0PgogICAgPHRleHQgeD0iMTA4LjUiIHk9IjE1IiBmaWxsPSIjMDEwMTAxIiBmaWxsLW9wYWNpdHk9Ii4zIj4KICAgICAgNDEyL21vbnRoCiAgICA8L3RleHQ+CiAgICA8dGV4dCB4PSIxMDguNSIgeT0iMTQiPgogICAgICA0MTIvbW9udGgKICAgIDwvdGV4dD4KICA8L2c+Cjwvc3ZnPg== alt=CRAN Downloads /></a></p>
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
</ul></li>
<li><a href=#use><strong>Use</strong></a>
<ul>
<li><a href=#spatial-information-in-archeoviz>Spatial Information in archeoViz</a>
<ul>
<li><a href=#exact-location-plotted-objects>Exact Location: Plotted Objects</a></li>
<li><a href=#vague-location-spits-buckets-sieved-objects-and-recording-errors>Vague Location: Spits, Buckets, Sieved Objects, and Recording Errors</a></li>
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
<li><a href=#advanced-parameters><strong>Advanced Parameters</strong></a>
<ul>
<li><a href=#square-grid>Square Grid</a></li>
<li><a href=#parameter-presetting>Parameter Presetting</a></li>
<li><a href=#reactive-plot-display>Reactive Plot Display</a></li>
<li><a href=#url-parameters>URL parameters</a></li>
</ul></li>
<li><a href=#acknowledgments><strong>Acknowledgments</strong></a></li>
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
<a class=sourceLine id=cb5-6 data-line-number=6>          <span class=dt>lang =</span> <span class=st>&quot;en&quot;</span>          <span class=co># interface language (&quot;en&quot;: English, &quot;fr&quot;: French, &quot;it&quot;: Italian, &quot;pt&quot;: Portuguese)</span></a>
<a class=sourceLine id=cb5-7 data-line-number=7>          <span class=dt>set.theme =</span> <span class=st>&quot;cosmo&quot;</span>) <span class=co># graphic theme for the Shiny interface</span></a></code></pre></div>
<p>The possible values for the <code>set.theme</code> parameter are illustrated on <a href=https://rstudio.github.io/shinythemes/>this page</a>. The language of the application can be set with the <code>lang</code> parameter.</p>
<h2 id=demonstration>Demonstration</h2>
<p>Demonstration instances of the application are deployed on the <em>Huma Num</em> Shiny server:</p>
<ul>
<li><a href=https://analytics.huma-num.fr/archeoviz/de><code>archeoViz</code> in German</a>.</li>
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
<h3 id=exact-location-plotted-objects>Exact Location: Plotted Objects</h3>
<p>Using grid coordinates or electronic “total station” enables recording the individual location of objects on the field. In that case, the location are represented as points in <code>archeoViz</code> (triplets of x, y and z coordinates).</p>
<h3 id=vague-location-spits-buckets-sieved-objects-and-recording-errors>Vague Location: Spits, Buckets, Sieved Objects, and Recording Errors</h3>
<p>However, it is also common that x, y, z, coordinates by object are not available, for different reasons due to:</p>
<ul>
<li>recording errors, loss of information, resulting in the need to replace one of several coordinates values by ranges (e.g., a X value is missing for an object and is replaced by the minimal and maximal X values of the square where this object was found);</li>
<li>choice of method (e.g., excavation made and recorded using spits of arbitrary depth, sieved objects, etc.).</li>
</ul>
<p>In all these cases, we have to deal with vague location, when objects cannot be located as points but are somewhere between ranges of coordinates. Vague location can concern one, two, or the three spatial dimensions (the x, y, z coordinates, respectively).</p>
<h2 id=refittings-and-fabric-measurements>Refittings and Fabric Measurements</h2>
<h3 id=refittings>Refittings</h3>
<p>Refittings are usually recorded by archaeologists in two ways:</p>
<ol>
<li>by sets of refitting objects: using a two columns table, where a row corresponds to an <strong>object</strong>. The first column stores the object’s unique id and the second column stores the id of the set of refitting objects this object belongs to.</li>
<li>by refitting relationships: using a two columns table, where a row corresponds to a <strong>relationship</strong>. The first column stores the first object’s unique id and the second column stores the second object’s unique id.</li>
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
<li>an “objects” table (mandatory), with data about the objects;</li>
<li>a “refits” table (optional), with data about the refitting objects;</li>
<li>a “timeline” table (optional), with data about when each square of the site was excavated or surveyed.</li>
</ul>
<h3 id=formatting-data>Formatting Data</h3>
<p>The tables must be CSV files with the first row containing the column labels. Contents in HTML are allowed. This makes it possible, in particular, to add links to external resources (e.g., to objects permanent identifier in other databases, or to concepts identifiers in standard ontologies / thesauri, etc.).</p>
<p>Formatting your data can be done:</p>
<ul>
<li>either using a spreadsheet editor on your machine to generate CSV files;</li>
<li>or, for the <code>objects table,</code> using the <a href=https://aurelienroyer.shinyapps.io/Seahors/><em>SEAHORS</em></a> application to load your data, define the variables (in the “Load data” tab), and export it to the <code>archeoViz</code> format (in the “Table” / “archeoViz exports” tab). It is also possible to directly send the data to an online <code>archeoViz</code> instance.</li>
</ul>
<h3 id=objects-table>Objects Table</h3>
<p>A row describes a single object with the following mandatory fields:</p>
<ul>
<li><strong>id</strong>: <em>alphanumerical value</em>, unique identifier of the object</li>
<li><strong>xmin</strong>: <em>numerical value</em>, coordinate of the object on the X axis (in cm)</li>
<li><strong>ymin</strong>: <em>numerical value</em>, coordinate of the object on the Y axis (in cm)</li>
<li><strong>zmin</strong>: <em>numerical value</em>, coordinate of the object on the Z axis (positive depth value in cm)</li>
<li><strong>layer</strong>: <em>alphanumerical value</em>, identifier of the object’s layer</li>
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
<li>uploading data tables through the “Input data” tab,</li>
<li>generating random data in the “Input data” tab;</li>
<li>loading data tables through the <code>archeoViz</code> function’s parameters, in the R interface;</li>
<li>uploading data tables through URL parameters, when using an online instance of <code>archeoViz</code>.</li>
</ol>
<h3 id=through-the-application-interface>Through the Application Interface</h3>
<p>The three types of tables can be loaded in the “Input data” tab. The CSV separator (one of: comma, semicolon, tabulation) and the character used for decimal points (period or comma).</p>
<h3 id=generating-random-data>Generating Random Data</h3>
<p>Using randomly generated data is made possible for demonstration purposes. To activate this feature, set the slider in “Input data” to a value higher than 0 (setting the value back to 0 deactivates the feature). An “objects” data set, a “refits” data set, and a “timeline” data set are generated, making it possible to test all the <code>archeoViz</code> functionalities.</p>
<h3 id=through-the-r-function-parameters>Through the R function parameters</h3>
<p><code>archeoViz</code>’s launching function (<code>archeoViz()</code>) can be run without parameter</p>
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
<p>The data can be grouped in two ways: either based on their layer or on the selected “object_” variable. This option determines the colours of the points in the 3D and 2D plots and how to group points when computing convex hulls and 3D regression surfaces. Sub-sets can be defined by object categories, using the “variable” and “values” fields. Once one of the “object_type” (or other possible “object_” variables) is selected, its values appear below and can be selected using the tick boxes. The selection must be validated by clicking on the “Validate” button. This selection determines the data to be displayed in the plots and tables.</p>
<h2 id=interactive-visualisation>Interactive visualisation</h2>
<h3 id=general-features>General features</h3>
<p>The plots in the “3D plot”, “Map”, “Section X”, and “Section Y” tabs are generated using the <a href=https://CRAN.R-project.org/package=plotly><code>plotly</code></a> library. All the plots are dynamic and include a menu bar above the plot with several options (generating an image file, zooming, moving the view, etc). See details on the <a href=http://plotly.github.io/getting-to-know-the-plotly-modebar/><code>plotly</code> website</a>.</p>
<p>Clicking on a legend’s item modifies the display:</p>
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
<li>The plots in the “3D plot”, “Map”, “Section X”, and “Section Y” tabs can be exported:
<ul>
<li>in SVG format (by clicking on the “camera” icon in the menu bar above the plot),</li>
<li>as interactive plots in HTML format, by clicking on the “Export” button.</li>
</ul></li>
<li>The small map in the “Section X” and “Section Y” tabs can be exported in SVG by clicking on the “Download Map” link.</li>
<li>The plan of the excavation chronology can be exported in SVG format by clicking on the “Download” button.</li>
</ul>
<h2 id=spatial-statistics>Spatial statistics</h2>
<p><code>archeoViz</code> includes some spatial analysis functionalities, intended for basic and exploratory use.</p>
<h3 id=regression-surfaces>Regression surfaces</h3>
<p>In the “3D plot” tab, clicking on “Compute surfaces” and “Validate” displays the regression surface associated with each layer (with at least 100 points). The surfaces are computed using the generalized additive model implemented in the <a href=https://CRAN.R-project.org/package=mgcv><code>mgcv</code></a> package.</p>
<h3 id=convex-hulls>Convex hulls</h3>
<p>In the “3D plot” tab, clicking on “Compute hulls” and “Validate” displays the convex hull associated with each layer (with at least 20 points). The convex hulls are computed using the <a href=https://CRAN.R-project.org/package=cxhull><code>cxhull</code></a> package.</p>
<h3 id=2d-kernel-density>2D kernel density</h3>
<p>In the “Map” tab, ticking the “Compute density” box and clicking on “Validate” generates a map with contour lines showing the points’ density. Density can be computed for all the points together or by layer (with at least 30 points). The 2D kernel density is computed with the <code>kde2d</code> function of the <a href=https://CRAN.R-project.org/package=MASS><code>MASS</code></a> package (through <a href=https://CRAN.R-project.org/package=ggplot2><code>ggplot2</code></a>).</p>
<h2 id=reproducibility>Reproducibility</h2>
<p><code>archeoViz</code> is, by definition, an interactive application. However, several features guarantee the reproducibility and communicability of the result of interactions with the application.</p>
<ul>
<li>The 3D visualisation can be exported in an interactive HTML standalone format, considering the data selection made by the user.</li>
<li>In the “Reproducibility” tab, an R command is dynamically generated, considering the current application settings made by the user.</li>
<li>In a more advanced use, the URL parameters makes it possible to set an online instance of the application parameters of interest and to communicate it by sending the URL.</li>
</ul>
<h2 id=advanced-parameters>Advanced parameters</h2>
<p>The <code>archeoViz()</code> function can be set with multiple optional parameters, related to:</p>
<ul>
<li>the input data (already detailed <a href=#through-function-parameters>above</a>),</li>
<li>the contents of the home page (already detailed <a href=#deployed-use>above</a>),</li>
<li>the <a href=#square-grid>square grid</a>,</li>
<li>the <a href=#parameters-presetting>presetting</a> of the parameters that can be set through the application’s interface,</li>
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
<a class=sourceLine id=cb8-8 data-line-number=8>          <span class=dt>plot3d.ratio =</span> <span class=dv>1</span>, <span class=dt>plot3d.hulls =</span> <span class=ot>NULL</span>, <span class=dt>plot3d.surfaces =</span> <span class=ot>NULL</span>, <span class=dt>plot3d.refits =</span> <span class=ot>NULL</span>,</a>
<a class=sourceLine id=cb8-9 data-line-number=9>          <span class=dt>sectionX.x.val =</span> <span class=ot>NULL</span>, <span class=dt>sectionX.y.val =</span> <span class=ot>NULL</span>, <span class=dt>sectionX.refits =</span> <span class=ot>NULL</span>, </a>
<a class=sourceLine id=cb8-10 data-line-number=10>          <span class=dt>sectionY.x.val =</span> <span class=ot>NULL</span>, <span class=dt>sectionY.y.val =</span> <span class=ot>NULL</span>, <span class=dt>sectionY.refits =</span> <span class=ot>NULL</span>,</a>
<a class=sourceLine id=cb8-11 data-line-number=11>          <span class=dt>camera.center =</span> <span class=kw>c</span>(<span class=dv>0</span>, <span class=dv>0</span>, <span class=dv>0</span>), <span class=dt>camera.eye =</span> <span class=kw>c</span>(<span class=fl>1.25</span>, <span class=fl>1.25</span>, <span class=fl>1.25</span>),</a>
<a class=sourceLine id=cb8-12 data-line-number=12>          <span class=dt>run.plots =</span> <span class=ot>FALSE</span>, <span class=dt>html.export =</span> <span class=ot>TRUE</span></a>
<a class=sourceLine id=cb8-13 data-line-number=13>          )</a></code></pre></div>
<h3 id=square-grid>Square grid</h3>
<div class=sourceCode id=cb9><pre class=sourceCode r><code class=sourceCode r><a class=sourceLine id=cb9-1 data-line-number=1><span class=kw>archeoViz</span>(<span class=dt>square.size =</span> <span class=dv>100</span>,</a>
<a class=sourceLine id=cb9-2 data-line-number=2>          <span class=dt>reverse.axis.values =</span> <span class=ot>NULL</span>, <span class=dt>reverse.square.names =</span> <span class=ot>NULL</span>,</a>
<a class=sourceLine id=cb9-3 data-line-number=3>          <span class=dt>add.x.square.labels =</span> <span class=ot>NULL</span>, <span class=dt>add.y.square.labels =</span> <span class=ot>NULL</span></a>
<a class=sourceLine id=cb9-4 data-line-number=4>          )</a></code></pre></div>
<ul>
<li><strong>square.size</strong>: numerical. Size (width and height) in centimeter of the squares in the grid system. Default value is 100 cm.</li>
<li><strong>reverse.axis.values</strong>: character. Name of the axis or axes to be reversed (any combination of “x”, “y”, “z”).</li>
<li><strong>reverse.square.names</strong>: character. Name of the axis or axes for which to reverse the order of the square labels (any combination of “x”, “y”, “z”).</li>
<li><strong>add.x.square.labels</strong>: character. Additional square labels for the “x” axis.</li>
<li><strong>add.y.square.labels</strong>: character. Additional square labels for the “y” axis.</li>
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
<li><strong>default.group</strong>: character. At the launch of the app, preset of the variable used to group data (one of “by.layer” or “by.variable”).</li>
<li><strong>location.mode</strong>: character. At the launch of the app, preset of the location methods (any combination of “exact”, “fuzzy”, “show.uncertainty”).</li>
<li><strong>map.z.val</strong>: numerical. Minimal and maximal Z coordinates values to display in the map plot.</li>
<li><strong>map.density</strong>: character. At the launch of the app, whether to compute and show density contours in the map plot (one of “no”, “overall”, “by.variable”).</li>
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
<li><strong>camera.eye</strong>: numerical. In 3D plot, coordinates of the camera’s position (default values: x=1.25, y=1.25, z=1.25).</li>
</ul>
<h3 id=reactive-plot-display>Reactive plot display</h3>
<div class=sourceCode id=cb11><pre class=sourceCode r><code class=sourceCode r><a class=sourceLine id=cb11-1 data-line-number=1><span class=kw>archeoViz</span>(<span class=dt>run.plots =</span> <span class=ot>FALSE</span>)</a></code></pre></div>
<ul>
<li><strong>run.plots</strong>: TRUE or FALSE. Whether to immediately compute and show plots (without requiring the user to click on the buttons in the interface).</li>
</ul>
<h3 id=html-export>HTML export</h3>
<ul>
<li><strong>html.export</strong> : TRUE or FALSE. Whether or not to allow figures to be exported as interactive HTML widgets.</li>
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
<p>(The following parameters are not supported in the current version: <code>map.z.val</code>, <code>sectionX.x.val</code>, <code>sectionX.y.val</code>, <code>sectionY.x.val</code>, <code>sectionY.y.val</code>, <code>lang</code>, <code>set.theme</code>, <code>camera.center</code>, <code>camera.eye</code>, <code>html.export</code>.)</p>
<p>The parameters must be written using the URL syntax (?param1=value&amp;param2=value2) and have the same type of values than when used in the R interface. For example, the following URL launches an <code>archeoViz</code> instance using the <a href=https://zenodo.org/record/8003880>Bilzingsleben</a> dataset:</p>
<p><a href=https://analytics.huma-num.fr/archeoviz/en/?objects.df=https://zenodo.org/record/8003880/files/bilzingsleben.csv class=uri>https://analytics.huma-num.fr/archeoviz/en/?objects.df=https://zenodo.org/record/8003880/files/bilzingsleben.csv</a></p>
<p>This URL does the same, but also includes the refitting table (parameter <code>&amp;refits.df=</code>) and set the activate the display of the refitting relationships in the 3D and map plots:</p>
<p><a href=https://analytics.huma-num.fr/archeoviz/en/?map.refits=TRUE&amp;plot3d.refits=TRUE&amp;objects.df=https://zenodo.org/record/8003880/files/bilzingsleben.csv&amp;refits.df=https://zenodo.org/record/8003880/files/bilzingsleben-antlers-refits.csv class=uri>https://analytics.huma-num.fr/archeoviz/en/?map.refits=TRUE&amp;plot3d.refits=TRUE&amp;objects.df=https://zenodo.org/record/8003880/files/bilzingsleben.csv&amp;refits.df=https://zenodo.org/record/8003880/files/bilzingsleben-antlers-refits.csv</a></p>
<p>The following URL launches the Bilzingsleben dataset, pre-setting the app to:</p>
<ol>
<li>groups the points by variable (parameter <code>default.group</code>, with walue <code>by.variable</code> instead of <code>by.layer</code>)</li>
<li>selects only the “Antlers” (parameter <code>class.values</code>)</li>
<li>redefines the size of the square grid (parameter <code>square.size</code>, 500 cm instead of the 100 cm default value)</li>
<li>enable the immediate display of the plots (parameter <code>run.plots</code>)</li>
<li>modifies the title of the page (parameter <code>title</code>)</li>
<li>modifies the content of the home page with basic html contents (parameter <code>home.txt</code>)</li>
</ol>
<p><a href=https://analytics.huma-num.fr/archeoviz/en/?default.group=by.variable&amp;class.values=Antler&amp;square.size=500&amp;run.plots=TRUE&amp;title=Anters%20at%20Bilzingsleben&amp;home.text=Many%20%3Cb%3Eantlers%3C/b%3E&amp;objects.df=https://zenodo.org/record/8003880/files/bilzingsleben.csv>https://analytics.huma-num.fr/archeoviz/en/?default.group=by.variable&amp;class.values=Antler&amp;square.size=500&amp;run.plots=TRUE&amp;title=Antlers%20at%20Bilzingsleben&amp;home.text=Many%20<b>antlers</b>&amp;objects.df=https://zenodo.org/record/8003880/files/bilzingsleben.csv</a></p>
<p>Note that the parameters <code>add.x.square.labels</code>, <code>add.y.square.labels</code>, <code>location.mode</code>, and <code>class.values</code>, which accept simple or multiple values in the R interface (e.g., c(“value1”, “value2”)) only accept one value when set as URL parameters (this is a restriction due to the URL syntax).</p>
<h1 id=acknowledgments>Acknowledgments</h1>
<p>The <code>archeoViz</code> application and package is developed and maintained by Sébastien Plutniak. Arthur Coulon, Solène Denis, Olivier Marlet, and Thomas Perrin tested and supported the project in its early stage. Renata Araujo, Sara Giardino, and Julian Laabs translated the application into Portuguese, Italian, and German respectively.</p>
<h1 id=references>References</h1>
<h2 id=software>Software</h2>
<ul>
<li>Plutniak, Sébastien, Renata Araujo, Sara Giardino, Julian Laabs. 2023. “archeoViz. Visualisation, Exploration, and Web Communication of Archaeological Spatial Data”. v1.2.1, DOI: <a href=https://doi.org/10.5281/zenodo.7460193>10.5281/zenodo.7460193</a>.</li>
<li>Plutniak, Sébastien, Anaïs Vignoles. 2023. “<a href=https://hal.science/hal-04156271>The archeoViz Portal: Dissemination of Spatial Archaeological Datasets</a>”, web portal, <a href=https://analytics.huma-num.fr/archeoviz/home class=uri>https://analytics.huma-num.fr/archeoviz/home</a>.</li>
</ul>
<h2 id=papers>Papers</h2>
<ul>
<li>Plutniak, Sébastien. Submitted. “archeoViz: an R package for the Visualisation, Exploration, and Web Communication of Archaeological Spatial Data”. <em>Journal of Open Source Software</em>.</li>
<li>Plutniak, Sébastien. 2023. “<a href=https://www.prehistoire.org/offres/doc_inline_src/515/0-BSPF_2023_1_2e_partie_Correspondance_PLUTNIAK.pdf>Visualiser et explorer la distribution spatiale du mobilier archéologique : l’application archeoViz et son portail web</a>”. <em>Bulletin de la Société préhistorique française</em>, 120(1), p. 70-74.</li>
</ul>
<h2 id=presentations>Presentations</h2>
<ul>
<li>Plutniak, Sébastien. 2023. “<a href=https://hal.science/hal-04146410>Fostering the Publication of Spatial Archaeological Data: a Decentralized Approach. The archeoViz Web Application and its Portal</a>”, support d’une présentation à l’University of Florida, Gainesville.</li>
<li>Plutniak, Sébastien, Anaïs Vignoles. 2023. “<a href=https://hal.science/hal-04070444>L’application web / package archeoViz et son portail web. Une solution décentralisée d’éditorialisation de données archéologiques spatialisées</a>, support d’une présentation à l’atelier SITRADA, Paris.</li>
</ul>"
  
  
#  : fr ----
guidelines.fr <- "

<h1 id=archeoviz>archeoViz</h1>
<p><code>archeoViz</code> est une application dédiée à l’archéologie. Elle permet de <em>visualiser</em>, d’<em>explorer</em> interactivement, et d’exposer et <em>communiquer</em> rapidement sur le web des données archéologiques spatialisées. Elle propose des <em>visualisations</em> en 3D et 2D, génère des <em>coupes</em> et des <em>cartes</em> des restes archéologiques, permet de réaliser des <em>statistiques spatiales</em> simples (enveloppes convexes, surfaces de régression, estimation de densité par noyau en 2D), et de visualiser une <em>chronologie</em> interactive des fouilles d’un site. <code>archeoViz</code> peut être utilisée localement ou déployée sur un serveur, soit en chargeant des données via l’interface, soit en lançant l’application avec un jeu de donnée spécifique. L’interface est disponible en français, anglais, allemand, italien, et portugais.</p>
<p><a href=https://www.repostatus.org/#active><img src=data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHhtbG5zOnhsaW5rPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5L3hsaW5rIiB3aWR0aD0iMTE2IiBoZWlnaHQ9IjIwIiByb2xlPSJpbWciIGFyaWEtbGFiZWw9InJlcG8gc3RhdHVzOiBBY3RpdmUiPjx0aXRsZT5yZXBvIHN0YXR1czogQWN0aXZlPC90aXRsZT48bGluZWFyR3JhZGllbnQgaWQ9InMiIHgyPSIwIiB5Mj0iMTAwJSI+PHN0b3Agb2Zmc2V0PSIwIiBzdG9wLWNvbG9yPSIjYmJiIiBzdG9wLW9wYWNpdHk9Ii4xIi8+PHN0b3Agb2Zmc2V0PSIxIiBzdG9wLW9wYWNpdHk9Ii4xIi8+PC9saW5lYXJHcmFkaWVudD48Y2xpcFBhdGggaWQ9InIiPjxyZWN0IHdpZHRoPSIxMTYiIGhlaWdodD0iMjAiIHJ4PSIzIiBmaWxsPSIjZmZmIi8+PC9jbGlwUGF0aD48ZyBjbGlwLXBhdGg9InVybCgjcikiPjxyZWN0IHdpZHRoPSI3MyIgaGVpZ2h0PSIyMCIgZmlsbD0iIzU1NSIvPjxyZWN0IHg9IjczIiB3aWR0aD0iNDMiIGhlaWdodD0iMjAiIGZpbGw9IiM0YzEiLz48cmVjdCB3aWR0aD0iMTE2IiBoZWlnaHQ9IjIwIiBmaWxsPSJ1cmwoI3MpIi8+PC9nPjxnIGZpbGw9IiNmZmYiIHRleHQtYW5jaG9yPSJtaWRkbGUiIGZvbnQtZmFtaWx5PSJWZXJkYW5hLEdlbmV2YSxEZWphVnUgU2FucyxzYW5zLXNlcmlmIiB0ZXh0LXJlbmRlcmluZz0iZ2VvbWV0cmljUHJlY2lzaW9uIiBmb250LXNpemU9IjExMCI+PHRleHQgYXJpYS1oaWRkZW49InRydWUiIHg9IjM3NSIgeT0iMTUwIiBmaWxsPSIjMDEwMTAxIiBmaWxsLW9wYWNpdHk9Ii4zIiB0cmFuc2Zvcm09InNjYWxlKC4xKSIgdGV4dExlbmd0aD0iNjMwIj5yZXBvIHN0YXR1czwvdGV4dD48dGV4dCB4PSIzNzUiIHk9IjE0MCIgdHJhbnNmb3JtPSJzY2FsZSguMSkiIGZpbGw9IiNmZmYiIHRleHRMZW5ndGg9IjYzMCI+cmVwbyBzdGF0dXM8L3RleHQ+PHRleHQgYXJpYS1oaWRkZW49InRydWUiIHg9IjkzNSIgeT0iMTUwIiBmaWxsPSIjMDEwMTAxIiBmaWxsLW9wYWNpdHk9Ii4zIiB0cmFuc2Zvcm09InNjYWxlKC4xKSIgdGV4dExlbmd0aD0iMzMwIj5BY3RpdmU8L3RleHQ+PHRleHQgeD0iOTM1IiB5PSIxNDAiIHRyYW5zZm9ybT0ic2NhbGUoLjEpIiBmaWxsPSIjZmZmIiB0ZXh0TGVuZ3RoPSIzMzAiPkFjdGl2ZTwvdGV4dD48L2c+PC9zdmc+ alt=Project Status: Active – The project has reached a stable, usable state and is being actively developed. /></a> <a href=https://lifecycle.r-lib.org/articles/stages.html#stable><img src=data:image/svg+xml;charset=utf-8;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHhtbG5zOnhsaW5rPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5L3hsaW5rIiB3aWR0aD0iOTgiIGhlaWdodD0iMjAiIHJvbGU9ImltZyIgYXJpYS1sYWJlbD0ibGlmZWN5Y2xlOiBzdGFibGUiPjx0aXRsZT5saWZlY3ljbGU6IHN0YWJsZTwvdGl0bGU+PGxpbmVhckdyYWRpZW50IGlkPSJzIiB4Mj0iMCIgeTI9IjEwMCUiPjxzdG9wIG9mZnNldD0iMCIgc3RvcC1jb2xvcj0iI2JiYiIgc3RvcC1vcGFjaXR5PSIuMSIvPjxzdG9wIG9mZnNldD0iMSIgc3RvcC1vcGFjaXR5PSIuMSIvPjwvbGluZWFyR3JhZGllbnQ+PGNsaXBQYXRoIGlkPSJyIj48cmVjdCB3aWR0aD0iOTgiIGhlaWdodD0iMjAiIHJ4PSIzIiBmaWxsPSIjZmZmIi8+PC9jbGlwUGF0aD48ZyBjbGlwLXBhdGg9InVybCgjcikiPjxyZWN0IHdpZHRoPSI1NSIgaGVpZ2h0PSIyMCIgZmlsbD0iIzU1NSIvPjxyZWN0IHg9IjU1IiB3aWR0aD0iNDMiIGhlaWdodD0iMjAiIGZpbGw9IiMwMDdlYzYiLz48cmVjdCB3aWR0aD0iOTgiIGhlaWdodD0iMjAiIGZpbGw9InVybCgjcykiLz48L2c+PGcgZmlsbD0iI2ZmZiIgdGV4dC1hbmNob3I9Im1pZGRsZSIgZm9udC1mYW1pbHk9IlZlcmRhbmEsR2VuZXZhLERlamFWdSBTYW5zLHNhbnMtc2VyaWYiIHRleHQtcmVuZGVyaW5nPSJnZW9tZXRyaWNQcmVjaXNpb24iIGZvbnQtc2l6ZT0iMTEwIj48dGV4dCBhcmlhLWhpZGRlbj0idHJ1ZSIgeD0iMjg1IiB5PSIxNTAiIGZpbGw9IiMwMTAxMDEiIGZpbGwtb3BhY2l0eT0iLjMiIHRyYW5zZm9ybT0ic2NhbGUoLjEpIiB0ZXh0TGVuZ3RoPSI0NTAiPmxpZmVjeWNsZTwvdGV4dD48dGV4dCB4PSIyODUiIHk9IjE0MCIgdHJhbnNmb3JtPSJzY2FsZSguMSkiIGZpbGw9IiNmZmYiIHRleHRMZW5ndGg9IjQ1MCI+bGlmZWN5Y2xlPC90ZXh0Pjx0ZXh0IGFyaWEtaGlkZGVuPSJ0cnVlIiB4PSI3NTUiIHk9IjE1MCIgZmlsbD0iIzAxMDEwMSIgZmlsbC1vcGFjaXR5PSIuMyIgdHJhbnNmb3JtPSJzY2FsZSguMSkiIHRleHRMZW5ndGg9IjMzMCI+c3RhYmxlPC90ZXh0Pjx0ZXh0IHg9Ijc1NSIgeT0iMTQwIiB0cmFuc2Zvcm09InNjYWxlKC4xKSIgZmlsbD0iI2ZmZiIgdGV4dExlbmd0aD0iMzMwIj5zdGFibGU8L3RleHQ+PC9nPjwvc3ZnPg== alt=Lifecycle: stable /></a> <a href=https://github.com/sebastien-plutniak/archeoviz/actions/workflows/r.yml><img src=data:image/svg+xml; charset=utf-8;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSI4NSIgaGVpZ2h0PSIyMCI+CiAgPHRpdGxlPlIgLSBwYXNzaW5nPC90aXRsZT4KICA8ZGVmcz4KICAgIDxsaW5lYXJHcmFkaWVudCBpZD0id29ya2Zsb3ctZmlsbCIgeDE9IjUwJSIgeTE9IjAlIiB4Mj0iNTAlIiB5Mj0iMTAwJSI+CiAgICAgIDxzdG9wIHN0b3AtY29sb3I9IiM0NDRENTYiIG9mZnNldD0iMCUiPjwvc3RvcD4KICAgICAgPHN0b3Agc3RvcC1jb2xvcj0iIzI0MjkyRSIgb2Zmc2V0PSIxMDAlIj48L3N0b3A+CiAgICA8L2xpbmVhckdyYWRpZW50PgogICAgPGxpbmVhckdyYWRpZW50IGlkPSJzdGF0ZS1maWxsIiB4MT0iNTAlIiB5MT0iMCUiIHgyPSI1MCUiIHkyPSIxMDAlIj4KICAgICAgPHN0b3Agc3RvcC1jb2xvcj0iIzM0RDA1OCIgb2Zmc2V0PSIwJSI+PC9zdG9wPgogICAgICA8c3RvcCBzdG9wLWNvbG9yPSIjMjhBNzQ1IiBvZmZzZXQ9IjEwMCUiPjwvc3RvcD4KICAgIDwvbGluZWFyR3JhZGllbnQ+CiAgPC9kZWZzPgogIDxnIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCI+CiAgICA8ZyBmb250LWZhbWlseT0iJiMzOTtEZWphVnUgU2FucyYjMzk7LFZlcmRhbmEsR2VuZXZhLHNhbnMtc2VyaWYiIGZvbnQtc2l6ZT0iMTEiPgogICAgICA8cGF0aCBpZD0id29ya2Zsb3ctYmciIGQ9Ik0wLDMgQzAsMS4zNDMxIDEuMzU1MiwwIDMuMDI3MDI3MDMsMCBMMzUsMCBMMzUsMjAgTDMuMDI3MDI3MDMsMjAgQzEuMzU1MiwyMCAwLDE4LjY1NjkgMCwxNyBMMCwzIFoiIGZpbGw9InVybCgjd29ya2Zsb3ctZmlsbCkiIGZpbGwtcnVsZT0ibm9uemVybyI+PC9wYXRoPgogICAgICA8dGV4dCBmaWxsPSIjMDEwMTAxIiBmaWxsLW9wYWNpdHk9Ii4zIj4KICAgICAgICA8dHNwYW4geD0iMjIuMTk4MTk4MiIgeT0iMTUiIGFyaWEtaGlkZGVuPSJ0cnVlIj5SPC90c3Bhbj4KICAgICAgPC90ZXh0PgogICAgICA8dGV4dCBmaWxsPSIjRkZGRkZGIj4KICAgICAgICA8dHNwYW4geD0iMjIuMTk4MTk4MiIgeT0iMTQiPlI8L3RzcGFuPgogICAgICA8L3RleHQ+CiAgICA8L2c+CiAgICA8ZyB0cmFuc2Zvcm09InRyYW5zbGF0ZSgzNSkiIGZvbnQtZmFtaWx5PSImIzM5O0RlamFWdSBTYW5zJiMzOTssVmVyZGFuYSxHZW5ldmEsc2Fucy1zZXJpZiIgZm9udC1zaXplPSIxMSI+CiAgICAgIDxwYXRoIGQ9Ik0wIDBoNDYuOTM5QzQ4LjYyOSAwIDUwIDEuMzQzIDUwIDN2MTRjMCAxLjY1Ny0xLjM3IDMtMy4wNjEgM0gwVjB6IiBpZD0ic3RhdGUtYmciIGZpbGw9InVybCgjc3RhdGUtZmlsbCkiIGZpbGwtcnVsZT0ibm9uemVybyI+PC9wYXRoPgogICAgICA8dGV4dCBmaWxsPSIjMDEwMTAxIiBmaWxsLW9wYWNpdHk9Ii4zIiBhcmlhLWhpZGRlbj0idHJ1ZSI+CiAgICAgICAgPHRzcGFuIHg9IjQiIHk9IjE1Ij5wYXNzaW5nPC90c3Bhbj4KICAgICAgPC90ZXh0PgogICAgICA8dGV4dCBmaWxsPSIjRkZGRkZGIj4KICAgICAgICA8dHNwYW4geD0iNCIgeT0iMTQiPnBhc3Npbmc8L3RzcGFuPgogICAgICA8L3RleHQ+CiAgICA8L2c+CiAgICA8cGF0aCBmaWxsPSIjOTU5REE1IiBkPSJNMTEgM2MtMy44NjggMC03IDMuMTMyLTcgN2E2Ljk5NiA2Ljk5NiAwIDAgMCA0Ljc4NiA2LjY0MWMuMzUuMDYyLjQ4Mi0uMTQ4LjQ4Mi0uMzMyIDAtLjE2Ni0uMDEtLjcxOC0uMDEtMS4zMDQtMS43NTguMzI0LTIuMjEzLS40MjktMi4zNTMtLjgyMi0uMDc5LS4yMDItLjQyLS44MjMtLjcxNy0uOTktLjI0NS0uMTMtLjU5NS0uNDU0LS4wMS0uNDYzLjU1Mi0uMDA5Ljk0Ni41MDggMS4wNzcuNzE4LjYzIDEuMDU4IDEuNjM2Ljc2IDIuMDM5LjU3Ny4wNjEtLjQ1NS4yNDUtLjc2MS40NDYtLjkzNi0xLjU1Ny0uMTc1LTMuMTg1LS43NzktMy4xODUtMy40NTYgMC0uNzYyLjI3MS0xLjM5Mi43MTgtMS44ODItLjA3LS4xNzUtLjMxNS0uODkyLjA3LTEuODU1IDAgMCAuNTg2LS4xODMgMS45MjUuNzE4YTYuNSA2LjUgMCAwIDEgMS43NS0uMjM2IDYuNSA2LjUgMCAwIDEgMS43NS4yMzZjMS4zMzgtLjkxIDEuOTI1LS43MTggMS45MjUtLjcxOC4zODUuOTYzLjE0IDEuNjguMDcgMS44NTUuNDQ2LjQ5LjcxNyAxLjExMi43MTcgMS44ODIgMCAyLjY4Ni0xLjYzNiAzLjI4LTMuMTk0IDMuNDU2LjI1NC4yMTkuNDczLjYzOS40NzMgMS4yOTUgMCAuOTM2LS4wMDkgMS42ODktLjAwOSAxLjkyNSAwIC4xODQuMTMxLjQwMi40ODEuMzMyQTcuMDExIDcuMDExIDAgMCAwIDE4IDEwYzAtMy44NjctMy4xMzMtNy03LTd6Ij48L3BhdGg+CiAgPC9nPgo8L3N2Zz4KCg== alt=R /></a> <a href=https://app.codecov.io/gh/sebastien-plutniak/archeoviz><img src=data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxMTIiIGhlaWdodD0iMjAiPgogICAgPGxpbmVhckdyYWRpZW50IGlkPSJiIiB4Mj0iMCIgeTI9IjEwMCUiPgogICAgICAgIDxzdG9wIG9mZnNldD0iMCIgc3RvcC1jb2xvcj0iI2JiYiIgc3RvcC1vcGFjaXR5PSIuMSIgLz4KICAgICAgICA8c3RvcCBvZmZzZXQ9IjEiIHN0b3Atb3BhY2l0eT0iLjEiIC8+CiAgICA8L2xpbmVhckdyYWRpZW50PgogICAgPG1hc2sgaWQ9ImEiPgogICAgICAgIDxyZWN0IHdpZHRoPSIxMTIiIGhlaWdodD0iMjAiIHJ4PSIzIiBmaWxsPSIjZmZmIiAvPgogICAgPC9tYXNrPgogICAgPGcgbWFzaz0idXJsKCNhKSI+CiAgICAgICAgPHBhdGggZmlsbD0iIzU1NSIgZD0iTTAgMGg3NnYyMEgweiIgLz4KICAgICAgICA8cGF0aCBmaWxsPSIjZTA1ZDQ0IiBkPSJNNzYgMGgzNnYyMEg3NnoiIC8+CiAgICAgICAgPHBhdGggZmlsbD0idXJsKCNiKSIgZD0iTTAgMGgxMTJ2MjBIMHoiIC8+CiAgICA8L2c+CiAgICA8ZyBmaWxsPSIjZmZmIiB0ZXh0LWFuY2hvcj0ibWlkZGxlIiBmb250LWZhbWlseT0iRGVqYVZ1IFNhbnMsVmVyZGFuYSxHZW5ldmEsc2Fucy1zZXJpZiIgZm9udC1zaXplPSIxMSI+CiAgICAgICAgPHRleHQgeD0iNDYiIHk9IjE1IiBmaWxsPSIjMDEwMTAxIiBmaWxsLW9wYWNpdHk9Ii4zIj5jb2RlY292PC90ZXh0PgogICAgICAgIDx0ZXh0IHg9IjQ2IiB5PSIxNCI+Y29kZWNvdjwvdGV4dD4KICAgICAgICA8dGV4dCB4PSI5MyIgeT0iMTUiIGZpbGw9IiMwMTAxMDEiIGZpbGwtb3BhY2l0eT0iLjMiPjU2JTwvdGV4dD4KICAgICAgICA8dGV4dCB4PSI5MyIgeT0iMTQiPjU2JTwvdGV4dD4KICAgIDwvZz4KICAgIDxzdmcgdmlld0JveD0iMTIwIC04IDYwIDYwIj4KICAgICAgICA8cGF0aCBkPSJNMjMuMDEzIDBDMTAuMzMzLjAwOS4wMSAxMC4yMiAwIDIyLjc2MnYuMDU4bDMuOTE0IDIuMjc1LjA1My0uMDM2YTExLjI5MSAxMS4yOTEgMCAwIDEgOC4zNTItMS43NjcgMTAuOTExIDEwLjkxMSAwIDAgMSA1LjUgMi43MjZsLjY3My42MjQuMzgtLjgyOGMuMzY4LS44MDIuNzkzLTEuNTU2IDEuMjY0LTIuMjQuMTktLjI3Ni4zOTgtLjU1NC42MzctLjg1MWwuMzkzLS40OS0uNDg0LS40MDRhMTYuMDggMTYuMDggMCAwIDAtNy40NTMtMy40NjYgMTYuNDgyIDE2LjQ4MiAwIDAgMC03LjcwNS40NDlDNy4zODYgMTAuNjgzIDE0LjU2IDUuMDE2IDIzLjAzIDUuMDFjNC43NzkgMCA5LjI3MiAxLjg0IDEyLjY1MSA1LjE4IDIuNDEgMi4zODIgNC4wNjkgNS4zNSA0LjgwNyA4LjU5MWExNi41MyAxNi41MyAwIDAgMC00Ljc5Mi0uNzIzbC0uMjkyLS4wMDJhMTYuNzA3IDE2LjcwNyAwIDAgMC0xLjkwMi4xNGwtLjA4LjAxMmMtLjI4LjAzNy0uNTI0LjA3NC0uNzQ4LjExNS0uMTEuMDE5LS4yMTguMDQxLS4zMjcuMDYzLS4yNTcuMDUyLS41MS4xMDgtLjc1LjE2OWwtLjI2NS4wNjdhMTYuMzkgMTYuMzkgMCAwIDAtLjkyNi4yNzZsLS4wNTYuMDE4Yy0uNjgyLjIzLTEuMzYuNTExLTIuMDE2LjgzOGwtLjA1Mi4wMjZjLS4yOS4xNDUtLjU4NC4zMDUtLjg5OS40OWwtLjA2OS4wNGExNS41OTYgMTUuNTk2IDAgMCAwLTQuMDYxIDMuNDY2bC0uMTQ1LjE3NWMtLjI5LjM2LS41MjEuNjY2LS43MjMuOTYtLjE3LjI0Ny0uMzQuNTEzLS41NTIuODY0bC0uMTE2LjE5OWMtLjE3LjI5Mi0uMzIuNTctLjQ0OS44MjRsLS4wMy4wNTdhMTYuMTE2IDE2LjExNiAwIDAgMC0uODQzIDIuMDI5bC0uMDM0LjEwMmExNS42NSAxNS42NSAwIDAgMC0uNzg2IDUuMTc0bC4wMDMuMjE0YTIxLjUyMyAyMS41MjMgMCAwIDAgLjA0Ljc1NGMuMDA5LjExOS4wMi4yMzcuMDMyLjM1NS4wMTQuMTQ1LjAzMi4yOS4wNDkuNDMybC4wMS4wOGMuMDEuMDY3LjAxNy4xMzMuMDI2LjE5Ny4wMzQuMjQyLjA3NC40OC4xMTkuNzIuNDYzIDIuNDE5IDEuNjIgNC44MzYgMy4zNDUgNi45OWwuMDc4LjA5OC4wOC0uMDk1Yy42ODgtLjgxIDIuMzk1LTMuMzggMi41MzktNC45MjJsLjAwMy0uMDI5LS4wMTQtLjAyNWExMC43MjcgMTAuNzI3IDAgMCAxLTEuMjI2LTQuOTU2YzAtNS43NiA0LjU0NS0xMC41NDQgMTAuMzQzLTEwLjg5bC4zODEtLjAxNGExMS40MDMgMTEuNDAzIDAgMCAxIDYuNjUxIDEuOTU3bC4wNTQuMDM2IDMuODYyLTIuMjM3LjA1LS4wM3YtLjA1NmMuMDA2LTYuMDgtMi4zODQtMTEuNzkzLTYuNzI5LTE2LjA4OUMzNC45MzIgMi4zNjEgMjkuMTYgMCAyMy4wMTMgMCIgZmlsbD0iI0YwMUY3QSIgZmlsbC1ydWxlPSJldmVub2RkIi8+CiAgICA8L3N2Zz4KPC9zdmc+ alt=codecov /></a> <a href=https://sebastien-plutniak.r-universe.dev/archeoViz><img src=data:image/svg+xml; charset=utf-8;base64,PHN2ZyB3aWR0aD0iMTA1LjgiIGhlaWdodD0iMjAiIHZpZXdCb3g9IjAgMCAxMDU4IDIwMCIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiByb2xlPSJpbWciIGFyaWEtbGFiZWw9InItdW5pdmVyc2U6IDEuMi4xIj4KICA8YSBocmVmPSJodHRwczovL3NlYmFzdGllbi1wbHV0bmlhay5yLXVuaXZlcnNlLmRldi9hcmNoZW9WaXoiIGFsdD0ici11bml2ZXJzZSI+CiAgPHRpdGxlPnItdW5pdmVyc2U6IDEuMi4xPC90aXRsZT4KICA8bGluZWFyR3JhZGllbnQgaWQ9ImEiIHgyPSIwIiB5Mj0iMTAwJSI+CiAgICA8c3RvcCBvZmZzZXQ9IjAiIHN0b3Atb3BhY2l0eT0iLjEiIHN0b3AtY29sb3I9IiNFRUUiLz4KICAgIDxzdG9wIG9mZnNldD0iMSIgc3RvcC1vcGFjaXR5PSIuMSIvPgogIDwvbGluZWFyR3JhZGllbnQ+CiAgPG1hc2sgaWQ9Im0iPjxyZWN0IHdpZHRoPSIxMDU4IiBoZWlnaHQ9IjIwMCIgcng9IjMwIiBmaWxsPSIjRkZGIi8+PC9tYXNrPgogIDxnIG1hc2s9InVybCgjbSkiPgogICAgPHJlY3Qgd2lkdGg9IjY2OCIgaGVpZ2h0PSIyMDAiIGZpbGw9IiM1NTUiLz4KICAgIDxyZWN0IHdpZHRoPSIzOTAiIGhlaWdodD0iMjAwIiBmaWxsPSIjM0MxIiB4PSI2NjgiLz4KICAgIDxyZWN0IHdpZHRoPSIxMDU4IiBoZWlnaHQ9IjIwMCIgZmlsbD0idXJsKCNhKSIvPgogIDwvZz4KICA8ZyBhcmlhLWhpZGRlbj0idHJ1ZSIgZmlsbD0iI2ZmZiIgdGV4dC1hbmNob3I9InN0YXJ0IiBmb250LWZhbWlseT0iVmVyZGFuYSxEZWphVnUgU2FucyxzYW5zLXNlcmlmIiBmb250LXNpemU9IjExMCI+CiAgICA8dGV4dCB4PSI2MCIgeT0iMTQ4IiB0ZXh0TGVuZ3RoPSI1NjgiIGZpbGw9IiMwMDAiIG9wYWNpdHk9IjAuMjUiPnItdW5pdmVyc2U8L3RleHQ+CiAgICA8dGV4dCB4PSI1MCIgeT0iMTM4IiB0ZXh0TGVuZ3RoPSI1NjgiPnItdW5pdmVyc2U8L3RleHQ+CiAgICA8dGV4dCB4PSI3MjMiIHk9IjE0OCIgdGV4dExlbmd0aD0iMjkwIiBmaWxsPSIjMDAwIiBvcGFjaXR5PSIwLjI1Ij4xLjIuMTwvdGV4dD4KICAgIDx0ZXh0IHg9IjcxMyIgeT0iMTM4IiB0ZXh0TGVuZ3RoPSIyOTAiPjEuMi4xPC90ZXh0PgogIDwvZz4KICAKICA8L2E+Cjwvc3ZnPg== alt=archeoViz status badge /></a> <a href=https://joss.theoj.org/papers/ec7d14809161bb21d0e258742e64f131><img src=data:image/svg+xml; charset=utf-8;base64,PHN2ZyB4bWxucz0naHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmcnIHdpZHRoPScxMDgnIGhlaWdodD0nMjAnPjxsaW5lYXJHcmFkaWVudCBpZD0nYicgeDI9JzAnIHkyPScxMDAlJz48c3RvcCBvZmZzZXQ9JzAnIHN0b3AtY29sb3I9JyNiYmInIHN0b3Atb3BhY2l0eT0nLjEnLz48c3RvcCBvZmZzZXQ9JzEnIHN0b3Atb3BhY2l0eT0nLjEnLz48L2xpbmVhckdyYWRpZW50PjxtYXNrIGlkPSdhJz48cmVjdCB3aWR0aD0nMTA4JyBoZWlnaHQ9JzIwJyByeD0nMycgZmlsbD0nI2ZmZicvPjwvbWFzaz48ZyBtYXNrPSd1cmwoI2EpJz48cGF0aCBmaWxsPScjNTU1JyBkPSdNMCAwaDQwdjIwSDB6Jy8+PHBhdGggZmlsbD0nIzAwN2VjNicgZD0nTTQwIDBoNjh2MjBINDB6Jy8+PHBhdGggZmlsbD0ndXJsKCNiKScgZD0nTTAgMGgxMDh2MjBIMHonLz48L2c+PGcgZmlsbD0nI2ZmZicgdGV4dC1hbmNob3I9J21pZGRsZScgZm9udC1mYW1pbHk9J0RlamFWdSBTYW5zLFZlcmRhbmEsR2VuZXZhLHNhbnMtc2VyaWYnIGZvbnQtc2l6ZT0nMTEnPjx0ZXh0IHg9JzIwJyB5PScxNScgZmlsbD0nIzAxMDEwMScgZmlsbC1vcGFjaXR5PScuMyc+Sk9TUzwvdGV4dD48dGV4dCB4PScyMCcgeT0nMTQnPkpPU1M8L3RleHQ+PHRleHQgeD0nNzMnIHk9JzE1JyBmaWxsPScjMDEwMTAxJyBmaWxsLW9wYWNpdHk9Jy4zJz5TdWJtaXR0ZWQ8L3RleHQ+PHRleHQgeD0nNzMnIHk9JzE0Jz5TdWJtaXR0ZWQ8L3RleHQ+PC9nPjwvc3ZnPg== alt=status /></a> <a href=https://www.r-project.org/Licenses/GPL-3><img src=data:image/svg+xml;charset=utf-8;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHhtbG5zOnhsaW5rPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5L3hsaW5rIiB3aWR0aD0iMTAwIiBoZWlnaHQ9IjIwIiByb2xlPSJpbWciIGFyaWEtbGFiZWw9IkxpY2Vuc2U6IEdQTCB2MyI+PHRpdGxlPkxpY2Vuc2U6IEdQTCB2MzwvdGl0bGU+PGxpbmVhckdyYWRpZW50IGlkPSJzIiB4Mj0iMCIgeTI9IjEwMCUiPjxzdG9wIG9mZnNldD0iMCIgc3RvcC1jb2xvcj0iI2JiYiIgc3RvcC1vcGFjaXR5PSIuMSIvPjxzdG9wIG9mZnNldD0iMSIgc3RvcC1vcGFjaXR5PSIuMSIvPjwvbGluZWFyR3JhZGllbnQ+PGNsaXBQYXRoIGlkPSJyIj48cmVjdCB3aWR0aD0iMTAwIiBoZWlnaHQ9IjIwIiByeD0iMyIgZmlsbD0iI2ZmZiIvPjwvY2xpcFBhdGg+PGcgY2xpcC1wYXRoPSJ1cmwoI3IpIj48cmVjdCB3aWR0aD0iNTEiIGhlaWdodD0iMjAiIGZpbGw9IiM1NTUiLz48cmVjdCB4PSI1MSIgd2lkdGg9IjQ5IiBoZWlnaHQ9IjIwIiBmaWxsPSIjMDA3ZWM2Ii8+PHJlY3Qgd2lkdGg9IjEwMCIgaGVpZ2h0PSIyMCIgZmlsbD0idXJsKCNzKSIvPjwvZz48ZyBmaWxsPSIjZmZmIiB0ZXh0LWFuY2hvcj0ibWlkZGxlIiBmb250LWZhbWlseT0iVmVyZGFuYSxHZW5ldmEsRGVqYVZ1IFNhbnMsc2Fucy1zZXJpZiIgdGV4dC1yZW5kZXJpbmc9Imdlb21ldHJpY1ByZWNpc2lvbiIgZm9udC1zaXplPSIxMTAiPjx0ZXh0IGFyaWEtaGlkZGVuPSJ0cnVlIiB4PSIyNjUiIHk9IjE1MCIgZmlsbD0iIzAxMDEwMSIgZmlsbC1vcGFjaXR5PSIuMyIgdHJhbnNmb3JtPSJzY2FsZSguMSkiIHRleHRMZW5ndGg9IjQxMCI+TGljZW5zZTwvdGV4dD48dGV4dCB4PSIyNjUiIHk9IjE0MCIgdHJhbnNmb3JtPSJzY2FsZSguMSkiIGZpbGw9IiNmZmYiIHRleHRMZW5ndGg9IjQxMCI+TGljZW5zZTwvdGV4dD48dGV4dCBhcmlhLWhpZGRlbj0idHJ1ZSIgeD0iNzQ1IiB5PSIxNTAiIGZpbGw9IiMwMTAxMDEiIGZpbGwtb3BhY2l0eT0iLjMiIHRyYW5zZm9ybT0ic2NhbGUoLjEpIiB0ZXh0TGVuZ3RoPSIzOTAiPkdQTCB2MzwvdGV4dD48dGV4dCB4PSI3NDUiIHk9IjE0MCIgdHJhbnNmb3JtPSJzY2FsZSguMSkiIGZpbGw9IiNmZmYiIHRleHRMZW5ndGg9IjM5MCI+R1BMIHYzPC90ZXh0PjwvZz48L3N2Zz4= alt=license /></a> <a href=https://doi.org/10.5281/zenodo.7460193><img src=data:image/svg+xml; charset=utf-8;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciCiAgICAgd2lkdGg9IjE4NiIgaGVpZ2h0PSIyMCI+CiAgICAgICAgPGxpbmVhckdyYWRpZW50IGlkPSJiIiB4Mj0iMCIgeTI9IjEwMCUiPgogICAgICAgICAgICA8c3RvcCBvZmZzZXQ9IjAiIHN0b3AtY29sb3I9IiNiYmIiIHN0b3Atb3BhY2l0eT0iLjEiLz4KICAgICAgICAgICAgPHN0b3Agb2Zmc2V0PSIxIiBzdG9wLW9wYWNpdHk9Ii4xIi8+CiAgICAgICAgPC9saW5lYXJHcmFkaWVudD4KICAgICAgICA8bWFzayBpZD0iYSIgd2lkdGg9IjE4NiIgaGVpZ2h0PSIyMCI+CiAgICAgICAgICAgIDxyZWN0IHdpZHRoPSIxODYiIGhlaWdodD0iMjAiIHJ4PSIzIgogICAgICAgICAgICBmaWxsPSIjZmZmIi8+CiAgICAgICAgPC9tYXNrPgogICAgICAgIDxnIG1hc2s9InVybCgjYSkiPgogICAgICAgICAgICA8cGF0aCBmaWxsPSIjNTU1IiBkPSJNMCAwaDMxdjIwSDB6IiAvPgogICAgICAgICAgICA8cGF0aCBmaWxsPSIjMDA3ZWM2IgogICAgICAgICAgICBkPSJNMzEgMGgxNTV2MjBIMzF6IgogICAgICAgICAgICAvPgogICAgICAgICAgICA8cGF0aCBmaWxsPSJ1cmwoI2IpIiBkPSJNMCAwaDE4NnYyMEgweiIgLz4KICAgICAgICA8L2c+CiAgICAgICAgPGcgZmlsbD0iI2ZmZiIgdGV4dC1hbmNob3I9Im1pZGRsZSIgZm9udC1mYW1pbHk9IkRlamFWdSBTYW5zLAogICAgICAgIFZlcmRhbmEsR2VuZXZhLHNhbnMtc2VyaWYiIGZvbnQtc2l6ZT0iMTEiPgogICAgICAgICAgICA8dGV4dCB4PSIxNiIgeT0iMTUiIGZpbGw9IiMwMTAxMDEiCiAgICAgICAgICAgIGZpbGwtb3BhY2l0eT0iLjMiPgogICAgICAgICAgICAgICAgRE9JCiAgICAgICAgICAgIDwvdGV4dD4KICAgICAgICAgICAgPHRleHQgeD0iMTYiIHk9IjE0Ij4KICAgICAgICAgICAgICAgIERPSQogICAgICAgICAgICA8L3RleHQ+CiAgICAgICAgICAgIDx0ZXh0IHg9IjEwOCIKICAgICAgICAgICAgeT0iMTUiIGZpbGw9IiMwMTAxMDEiIGZpbGwtb3BhY2l0eT0iLjMiPgogICAgICAgICAgICAgICAgMTAuNTI4MS96ZW5vZG8uNzQ2MDE5MwogICAgICAgICAgICA8L3RleHQ+CiAgICAgICAgICAgIDx0ZXh0IHg9IjEwOCIgeT0iMTQiPgogICAgICAgICAgICAgICAgMTAuNTI4MS96ZW5vZG8uNzQ2MDE5MwogICAgICAgICAgICA8L3RleHQ+CiAgICAgICAgPC9nPgogICAgPC9zdmc+ alt=DOI /></a> <a href=https://archive.softwareheritage.org/browse/origin/directory/?origin_url=https://github.com/sebastien-plutniak/archeoviz><img src=data:image/svg+xml;base64,PHN2ZyBoZWlnaHQ9IjIwIiB3aWR0aD0iMTQwLjM5OTk5OTk5OTk5OTk4IiB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHhtbG5zOnhsaW5rPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5L3hsaW5rIj48dGl0bGU+QXJjaGl2ZWQgc29mdHdhcmUgcmVwb3NpdG9yeTwvdGl0bGU+PGxpbmVhckdyYWRpZW50IGlkPSJzbW9vdGgiIHgyPSIwIiB5Mj0iMTAwJSI+PHN0b3Agb2Zmc2V0PSIwIiBzdG9wLWNvbG9yPSIjYmJiIiBzdG9wLW9wYWNpdHk9Ii4xIi8+PHN0b3Agb2Zmc2V0PSIxIiBzdG9wLW9wYWNpdHk9Ii4xIi8+PC9saW5lYXJHcmFkaWVudD48Y2xpcFBhdGggaWQ9InJvdW5kIj48cmVjdCBmaWxsPSIjZmZmIiBoZWlnaHQ9IjIwIiByeD0iMyIgd2lkdGg9IjE0MC4zOTk5OTk5OTk5OTk5OCIvPjwvY2xpcFBhdGg+PGcgY2xpcC1wYXRoPSJ1cmwoI3JvdW5kKSI+PHJlY3QgZmlsbD0iIzU1NSIgaGVpZ2h0PSIyMCIgd2lkdGg9Ijc0LjYiLz48cmVjdCBmaWxsPSIjZjM2YTI0IiBoZWlnaHQ9IjIwIiB3aWR0aD0iNjUuOCIgeD0iNzQuNiIvPjxyZWN0IGZpbGw9InVybCgjc21vb3RoKSIgaGVpZ2h0PSIyMCIgd2lkdGg9IjE0MC4zOTk5OTk5OTk5OTk5OCIvPjwvZz48ZyBmaWxsPSIjZmZmIiBmb250LWZhbWlseT0iRGVqYVZ1IFNhbnMsVmVyZGFuYSxHZW5ldmEsc2Fucy1zZXJpZiIgZm9udC1zaXplPSIxMTAiIHRleHQtYW5jaG9yPSJtaWRkbGUiPjxpbWFnZSBoZWlnaHQ9IjE0IiB3aWR0aD0iMTQiIHg9IjUiIHhsaW5rOmhyZWY9ImRhdGE6aW1hZ2Uvc3ZnK3htbDtiYXNlNjQsUEQ5NGJXd2dkbVZ5YzJsdmJqMGlNUzR3SWlCbGJtTnZaR2x1WnowaVZWUkdMVGdpSUhOMFlXNWtZV3h2Ym1VOUltNXZJajgrQ2p3aExTMGdRM0psWVhSbFpDQjNhWFJvSUVsdWEzTmpZWEJsSUNob2RIUndPaTh2ZDNkM0xtbHVhM05qWVhCbExtOXlaeThwSUMwdFBnb0tQSE4yWndvZ0lDQjRiV3h1Y3pwa1l6MGlhSFIwY0RvdkwzQjFjbXd1YjNKbkwyUmpMMlZzWlcxbGJuUnpMekV1TVM4aUNpQWdJSGh0Ykc1ek9tTmpQU0pvZEhSd09pOHZZM0psWVhScGRtVmpiMjF0YjI1ekxtOXlaeTl1Y3lNaUNpQWdJSGh0Ykc1ek9uSmtaajBpYUhSMGNEb3ZMM2QzZHk1M015NXZjbWN2TVRrNU9TOHdNaTh5TWkxeVpHWXRjM2x1ZEdGNExXNXpJeUlLSUNBZ2VHMXNibk02YzNablBTSm9kSFJ3T2k4dmQzZDNMbmN6TG05eVp5OHlNREF3TDNOMlp5SUtJQ0FnZUcxc2JuTTlJbWgwZEhBNkx5OTNkM2N1ZHpNdWIzSm5Mekl3TURBdmMzWm5JZ29nSUNCNGJXeHVjenB6YjJScGNHOWthVDBpYUhSMGNEb3ZMM052Wkdsd2IyUnBMbk52ZFhKalpXWnZjbWRsTG01bGRDOUVWRVF2YzI5a2FYQnZaR2t0TUM1a2RHUWlDaUFnSUhodGJHNXpPbWx1YTNOallYQmxQU0pvZEhSd09pOHZkM2QzTG1sdWEzTmpZWEJsTG05eVp5OXVZVzFsYzNCaFkyVnpMMmx1YTNOallYQmxJZ29nSUNCcFpEMGljM1puTWlJS0lDQWdkbVZ5YzJsdmJqMGlNUzR4SWdvZ0lDQnBibXR6WTJGd1pUcDJaWEp6YVc5dVBTSXdMamt5TGpRZ0tEVmtZVFk0T1dNek1UTXNJREl3TVRrdE1ERXRNVFFwSWdvZ0lDQjRiV3c2YzNCaFkyVTlJbkJ5WlhObGNuWmxJZ29nSUNCM2FXUjBhRDBpTnpndU1qY3dNalE0SWdvZ0lDQm9aV2xuYUhROUlqYzNMak01TkRrNU55SUtJQ0FnZG1sbGQwSnZlRDBpTUNBd0lEYzRMakkzTURJMUlEYzNMak01TkRrNU55SUtJQ0FnYzI5a2FYQnZaR2s2Wkc5amJtRnRaVDBpYzNkb0xXeHZaMjh0ZDJocGRHVXVjM1puSWdvZ0lDQnBibXR6WTJGd1pUcGxlSEJ2Y25RdFptbHNaVzVoYldVOUluTjNhQzFzYjJkdkxuQnVaeUlLSUNBZ2FXNXJjMk5oY0dVNlpYaHdiM0owTFhoa2NHazlJall6TUM0eE5UTTROeUlLSUNBZ2FXNXJjMk5oY0dVNlpYaHdiM0owTFhsa2NHazlJall6TUM0eE5UTTROeUkrUEcxbGRHRmtZWFJoQ2lBZ0lDQWdhV1E5SW0xbGRHRmtZWFJoT0NJK1BISmtaanBTUkVZK1BHTmpPbGR2Y21zS0lDQWdJQ0FnSUNBZ2NtUm1PbUZpYjNWMFBTSWlQanhrWXpwbWIzSnRZWFErYVcxaFoyVXZjM1puSzNodGJEd3ZaR002Wm05eWJXRjBQanhrWXpwMGVYQmxDaUFnSUNBZ0lDQWdJQ0FnY21SbU9uSmxjMjkxY21ObFBTSm9kSFJ3T2k4dmNIVnliQzV2Y21jdlpHTXZaR050YVhSNWNHVXZVM1JwYkd4SmJXRm5aU0lnTHo0OFpHTTZkR2wwYkdVK1BDOWtZenAwYVhSc1pUNDhMMk5qT2xkdmNtcytQQzl5WkdZNlVrUkdQand2YldWMFlXUmhkR0UrUEdSbFpuTUtJQ0FnSUNCcFpEMGlaR1ZtY3pZaVBqeGpiR2x3VUdGMGFBb2dJQ0FnSUNBZ1kyeHBjRkJoZEdoVmJtbDBjejBpZFhObGNsTndZV05sVDI1VmMyVWlDaUFnSUNBZ0lDQnBaRDBpWTJ4cGNGQmhkR2d4TmlJK1BIQmhkR2dLSUNBZ0lDQWdJQ0FnWkQwaWJTQXpNQzR3TWpjc05qZ3VPVGczSURFdU16TTNMQzB4TGpNME15QTBMamd5Tml3eExqWXdOeUF0TVM0Mk1Td3ROQzQ0TWpNZ01TNHpOQ3d0TVM0ek5DQXlMamsxTERndU9EUTBJSG9nYlNBdE15NHpPRGNzTFRFdU1EY3pJRFV1TnpRMkxDMHhNQzQyTnpVZ01TNHlOVElzTVM0eU5USWdMVFV1TnpRM0xERXdMalkzTkNCNklHMGdMVEl1TlRVeUxDMHhNQzQzTmpJZ01TNDJNRGdzTkM0NE1qTWdMVEV1TXpRc01TNHpOQ0F0TWk0NU5Ea3NMVGd1T0RRMklEZ3VPRFF5TERJdU9UUTVJQzB4TGpNek9Dd3hMak0wTXlCNklHMGdNVGt1TXpjMkxEZ3VOekl5SURJdU1qYzBMQzAxTGpFME5DQm9JREV1T0RrMElHd2dMVFF1TVRZM0xEZ3VPVE0xSUMwMExqRTNMQzA0TGpBek9DQXhMamc1TlN3dE1DNHhOVFFnZWlCdElDMDFMamM1Tnl3dE55NHhNRE1nTVRJc0xUTXVORGcxSUhZZ01TNDNOeUJzSUMweE1pd3pMalE0TkNCNklHMGdOUzQzT1Rjc0xUa3VOVEF5SUMweUxqSTNNeXcwTGpRMk1TQm9JQzB4TGpnNU5TQnNJRFF1TVRZNUxDMDRMakkxTWlBMExqRTJOeXc0TGpNM09TQXRNUzQ0T1RZc0xUQXVNREU0SUhvZ2JTQXhNeTR5TnpZc01qQXVNVEE0SUMwNExqZzBNeXd5TGprMUlESXVPVFExTEMwNExqZzBOQ0F4TGpNME1pd3hMak16T0NBdE1TNDJNRGNzTkM0NE1qVWdOQzQ0TWpNc0xURXVOakE1SUhvZ2JTQTBMalU1Tnl3dE1pNHlPRElnTFRFd0xqWTNOQ3d0TlM0M05EZ2dNUzR5TlRFc0xURXVNalVnTVRBdU5qYzFMRFV1TnpRMklIb2diU0F0TUM0eU5qa3NMVFF1TnpJNElERXVOakE1TEMwMExqZ3lNaUF0TkM0NE1qSXNNUzQyTURjZ0xURXVNelFzTFRFdU16UWdPQzQ0TkRNc0xUSXVPVFE0SUMweUxqazBPQ3c0TGpnME1pQjZJRzBnTFRNdU5EQXhMREU0TGpjeU1pQXRPQzR5TVRrc0xUUXVNVFk0SURndU16azJMQzAwTGpFM0lEQXVNRE16TERFdU9EazJJQzAwTGpZMU15d3lMakkzTkNBMExqUTBNeXd5TGpJM015QjZJRzBnTXk0ek9URXNMVEV3TGpNMU9TQXpMalE0Tml3eE1pQm9JQzB4TGpjM01TQnNJQzB6TGpRNE5Dd3RNVElnZWlCdElEVXVOakE1TERJdU1ESXlJRGN1T1RZM0xEUXVNVFk1SUMwNExqVXlNaXcwTGpFMk9DQXRNQzR3T1RVc0xURXVPRGsySURRdU9EY3pMQzB5TGpJM01pQXROQzR5TWpNc0xUSXVNamMwSUhvZ2JTQXRNVEF1TXpJeExERXhMalUwTnlBdE1TNHpNemtzTVM0ek5ESWdMVFF1T0RJMExDMHhMall3T0NBeExqWXdPQ3cwTGpneU15QXRNUzR6TkN3eExqTTBNU0F0TWk0NU5EZ3NMVGd1T0RRMElIb2diU0F6TGpNNE55d3hMakEzTWlBdE5TNDNORFlzTVRBdU5qYzFJQzB4TGpJMU15d3RNUzR5TlRNZ05TNDNORGdzTFRFd0xqWTNNeUI2SUcwZ01pNDFOVEVzTVRBdU56WXpJQzB4TGpZd09Dd3ROQzQ0TWpNZ01TNHpOREVzTFRFdU16TTVJREl1T1RRM0xEZ3VPRFF6SUMwNExqZzBNaXd0TWk0NU5Ea2dNUzR6TXprc0xURXVNelF4SUhvZ1RTQTBOUzR4T0RJc09URXVNelkwSURReUxqa3dPQ3c0Tmk0NU9Ua2dOREF1TmpNMExEa3hMamN6SUVnZ016Z3VOelFnYkNBMExqRTJPQ3d0T0M0MU1qRWdOQzR4Tnl3NExqSTBOU0I2SUcwZ05DNDBPRFVzTXk0eE5URWdMVEV5TERNdU5EZzFJSFlnTFRFdU56Y2diQ0F4TWl3dE15NDBPRFVnZWlCdElDMDJMamMxT1N3NUxqQTRPQ0F5TGpJM05Dd3ROQzQ0TnpNZ2FDQXhMamc1TlNCc0lDMDBMakUyT1N3NExqWTJOQ0F0TkM0eE5qa3NMVGd1TVRjMUlERXVPRGsyTEMwd0xqQTRNeUI2SUcwZ0xUY3VNemM1TEMweE15NDRJQzB4TGpNME1Td3RNUzR6TkNBeExqWXdPQ3d0TkM0NE1qTWdMVFF1T0RJekxERXVOakE0SUMweExqTTBMQzB4TGpNMElEZ3VPRFEwTEMweUxqazBPU0I2SUcwZ0xURXdMalE1TkN3dE15NDJNVEVnTVRBdU5qYzBMRFV1TnpRMklDMHhMakkxTVN3eExqSTFNU0F0TVRBdU5qYzFMQzAxTGpjME5pQjZJRzBnTUM0eU5qZ3NOQzQzTWpZZ0xURXVOakE0TERRdU9ESXpJRFF1T0RJMExDMHhMall3T0NBeExqTXpPU3d4TGpNME1TQXRPQzQ0TkRRc01pNDVORGdnTWk0NU5Ea3NMVGd1T0RRMElIb2diU0F6TGpNMk5Dd3RNVGd1TnpJeUlEZ3VNek00TERRdU1UWTVJQzA0TGpNek9DdzBMakUyT1NCMklDMHhMamc1TmlCc0lEUXVOVFEzTEMweUxqSTNNeUF0TkM0MU5EY3NMVEl1TWpjMElIb2diU0F0TlM0d05qa3NMVEV1TkRZMklETXVORGcxTERFeElHZ2dMVEV1TnpZNUlHd2dMVE11TkRnMUxDMHhNU0I2SUcwZ0xURXdMakkyT1N3MUxqWXpOU0E0TGpNek9DdzBMakUyT1NCMklDMHhMamc1TmlCc0lDMDBMalUwTnl3dE1pNHlOek1nTkM0MU5EY3NMVEl1TWpjMElIWWdMVEV1T0RrMUlIb2lDaUFnSUNBZ0lDQWdJR2xrUFNKd1lYUm9NVGdpQ2lBZ0lDQWdJQ0FnSUdsdWEzTmpZWEJsT21OdmJtNWxZM1J2Y2kxamRYSjJZWFIxY21VOUlqQWlJQzgrUEM5amJHbHdVR0YwYUQ0OGJHbHVaV0Z5UjNKaFpHbGxiblFLSUNBZ0lDQWdJSGd4UFNJd0lnb2dJQ0FnSUNBZ2VURTlJakFpQ2lBZ0lDQWdJQ0I0TWowaU1TSUtJQ0FnSUNBZ0lIa3lQU0l3SWdvZ0lDQWdJQ0FnWjNKaFpHbGxiblJWYm1sMGN6MGlkWE5sY2xOd1lXTmxUMjVWYzJVaUNpQWdJQ0FnSUNCbmNtRmthV1Z1ZEZSeVlXNXpabTl5YlQwaWJXRjBjbWw0S0RZeExqTXdOVE0yTml3d0xEQXNMVFl4TGpNd05UTTJOaXd4TXk0NE56WXpNeXczTmk0ME16WXhNVGtwSWdvZ0lDQWdJQ0FnYzNCeVpXRmtUV1YwYUc5a1BTSndZV1FpQ2lBZ0lDQWdJQ0JwWkQwaWJHbHVaV0Z5UjNKaFpHbGxiblF5TkNJK1BITjBiM0FLSUNBZ0lDQWdJQ0FnYzNSNWJHVTlJbk4wYjNBdGIzQmhZMmwwZVRveE8zTjBiM0F0WTI5c2IzSTZJMlZqTVdNeU9DSUtJQ0FnSUNBZ0lDQWdiMlptYzJWMFBTSXdJZ29nSUNBZ0lDQWdJQ0JwWkQwaWMzUnZjREkySWlBdlBqeHpkRzl3Q2lBZ0lDQWdJQ0FnSUhOMGVXeGxQU0p6ZEc5d0xXOXdZV05wZEhrNk1UdHpkRzl3TFdOdmJHOXlPaU5sWXpGak1qZ2lDaUFnSUNBZ0lDQWdJRzltWm5ObGREMGlNQzR6TXpFNU56RWlDaUFnSUNBZ0lDQWdJR2xrUFNKemRHOXdNamdpSUM4K1BITjBiM0FLSUNBZ0lDQWdJQ0FnYzNSNWJHVTlJbk4wYjNBdGIzQmhZMmwwZVRveE8zTjBiM0F0WTI5c2IzSTZJMlppWXpneFppSUtJQ0FnSUNBZ0lDQWdiMlptYzJWMFBTSXhJZ29nSUNBZ0lDQWdJQ0JwWkQwaWMzUnZjRE13SWlBdlBqd3ZiR2x1WldGeVIzSmhaR2xsYm5RK1BDOWtaV1p6UGp4emIyUnBjRzlrYVRwdVlXMWxaSFpwWlhjS0lDQWdJQ0J3WVdkbFkyOXNiM0k5SWlObVptWm1abVlpQ2lBZ0lDQWdZbTl5WkdWeVkyOXNiM0k5SWlNMk5qWTJOallpQ2lBZ0lDQWdZbTl5WkdWeWIzQmhZMmwwZVQwaU1TSUtJQ0FnSUNCdlltcGxZM1IwYjJ4bGNtRnVZMlU5SWpFd0lnb2dJQ0FnSUdkeWFXUjBiMnhsY21GdVkyVTlJakV3SWdvZ0lDQWdJR2QxYVdSbGRHOXNaWEpoYm1ObFBTSXhNQ0lLSUNBZ0lDQnBibXR6WTJGd1pUcHdZV2RsYjNCaFkybDBlVDBpTUNJS0lDQWdJQ0JwYm10elkyRndaVHB3WVdkbGMyaGhaRzkzUFNJeUlnb2dJQ0FnSUdsdWEzTmpZWEJsT25kcGJtUnZkeTEzYVdSMGFEMGlNVGt4T0NJS0lDQWdJQ0JwYm10elkyRndaVHAzYVc1a2IzY3RhR1ZwWjJoMFBTSXhNREUySWdvZ0lDQWdJR2xrUFNKdVlXMWxaSFpwWlhjMElnb2dJQ0FnSUhOb2IzZG5jbWxrUFNKbVlXeHpaU0lLSUNBZ0lDQm1hWFF0YldGeVoybHVMWFJ2Y0QwaU1DSUtJQ0FnSUNCbWFYUXRiV0Z5WjJsdUxXeGxablE5SWpBaUNpQWdJQ0FnWm1sMExXMWhjbWRwYmkxeWFXZG9kRDBpTUNJS0lDQWdJQ0JtYVhRdGJXRnlaMmx1TFdKdmRIUnZiVDBpTUNJS0lDQWdJQ0JwYm10elkyRndaVHA2YjI5dFBTSTBMamd6TkRJMU5EZ2lDaUFnSUNBZ2FXNXJjMk5oY0dVNlkzZzlJakkyTGpVMU5qYzNOQ0lLSUNBZ0lDQnBibXR6WTJGd1pUcGplVDBpTkRBdU5qTTJNall4SWdvZ0lDQWdJR2x1YTNOallYQmxPbmRwYm1SdmR5MTRQU0l3SWdvZ0lDQWdJR2x1YTNOallYQmxPbmRwYm1SdmR5MTVQU0l6TmlJS0lDQWdJQ0JwYm10elkyRndaVHAzYVc1a2IzY3RiV0Y0YVcxcGVtVmtQU0l3SWdvZ0lDQWdJR2x1YTNOallYQmxPbU4xY25KbGJuUXRiR0Y1WlhJOUltY3hNQ0lnTHo0OFp3b2dJQ0FnSUdsa1BTSm5NVEFpQ2lBZ0lDQWdhVzVyYzJOaGNHVTZaM0p2ZFhCdGIyUmxQU0pzWVhsbGNpSUtJQ0FnSUNCcGJtdHpZMkZ3WlRwc1lXSmxiRDBpVTFkSUxXeHZaMjhpQ2lBZ0lDQWdkSEpoYm5ObWIzSnRQU0p0WVhSeWFYZ29NUzR5TlN3d0xEQXNMVEV1TWpVc0xURTFMamN3TmpZeU5Td3hNelF1TWpReU5Ta2lDaUFnSUNBZ2MzUjViR1U5SW1ScGMzQnNZWGs2YVc1c2FXNWxJajQ4Y0dGMGFBb2dJQ0J6ZEhsc1pUMGlabWxzYkRvalptWm1abVptTzNOMGNtOXJaVHB1YjI1bE8yWnBiR3d0YjNCaFkybDBlVG94SWdvZ0lDQmtQU0p0SURNd0xqVTNORFVzTmpndU9UZzNJREV1TXpNM0xDMHhMak0wTXlBMExqZ3lOaXd4TGpZd055QXRNUzQyTVN3dE5DNDRNak1nTVM0ek5Dd3RNUzR6TkNBeUxqazFMRGd1T0RRMElIb2lDaUFnSUdsa1BTSndZWFJvT1RReElnb2dJQ0JwYm10elkyRndaVHBqYjI1dVpXTjBiM0l0WTNWeWRtRjBkWEpsUFNJd0lpQXZQanh3WVhSb0NpQWdJSE4wZVd4bFBTSm1hV3hzT2lObVptWm1abVk3YzNSeWIydGxPbTV2Ym1VN1ptbHNiQzF2Y0dGamFYUjVPakVpQ2lBZ0lHUTlJbTBnTWpjdU1UZzNOU3cyTnk0NU1UUWdOUzQzTkRZc0xURXdMalkzTlNBeExqSTFNaXd4TGpJMU1pQXROUzQzTkRjc01UQXVOamMwSUhvaUNpQWdJR2xrUFNKd1lYUm9PVE01SWdvZ0lDQnBibXR6WTJGd1pUcGpiMjV1WldOMGIzSXRZM1Z5ZG1GMGRYSmxQU0l3SWlBdlBqeHdZWFJvQ2lBZ0lITjBlV3hsUFNKbWFXeHNPaU5tWm1abVptWTdjM1J5YjJ0bE9tNXZibVU3Wm1sc2JDMXZjR0ZqYVhSNU9qRWlDaUFnSUdROUltMGdNalF1TmpNMU5TdzFOeTR4TlRJZ01TNDJNRGdzTkM0NE1qTWdMVEV1TXpRc01TNHpOQ0F0TWk0NU5Ea3NMVGd1T0RRMklEZ3VPRFF5TERJdU9UUTVJQzB4TGpNek9Dd3hMak0wTXlCNklnb2dJQ0JwWkQwaWNHRjBhRGt6TnlJS0lDQWdhVzVyYzJOaGNHVTZZMjl1Ym1WamRHOXlMV04xY25aaGRIVnlaVDBpTUNJZ0x6NDhjR0YwYUFvZ0lDQnpkSGxzWlQwaVptbHNiRG9qWm1abVptWm1PM04wY205clpUcHViMjVsTzJacGJHd3RiM0JoWTJsMGVUb3hJZ29nSUNCa1BTSnRJRFEwTGpBeE1UVXNOalV1T0RjMElESXVNamMwTEMwMUxqRTBOQ0JvSURFdU9EazBJR3dnTFRRdU1UWTNMRGd1T1RNMUlDMDBMakUzTEMwNExqQXpPQ0F4TGpnNU5Td3RNQzR4TlRRZ2VpSUtJQ0FnYVdROUluQmhkR2c1TXpVaUNpQWdJR2x1YTNOallYQmxPbU52Ym01bFkzUnZjaTFqZFhKMllYUjFjbVU5SWpBaUlDOCtQSEJoZEdnS0lDQWdjM1I1YkdVOUltWnBiR3c2STJabVptWm1aanR6ZEhKdmEyVTZibTl1WlR0bWFXeHNMVzl3WVdOcGRIazZNU0lLSUNBZ1pEMGliU0F6T0M0eU1UUTFMRFU0TGpjM01TQXhNaXd0TXk0ME9EVWdkaUF4TGpjM0lHd2dMVEV5TERNdU5EZzBJSG9pQ2lBZ0lHbGtQU0p3WVhSb09UTXpJZ29nSUNCcGJtdHpZMkZ3WlRwamIyNXVaV04wYjNJdFkzVnlkbUYwZFhKbFBTSXdJaUF2UGp4d1lYUm9DaUFnSUhOMGVXeGxQU0ptYVd4c09pTm1abVptWm1ZN2MzUnliMnRsT201dmJtVTdabWxzYkMxdmNHRmphWFI1T2pFaUNpQWdJR1E5SW0wZ05EUXVNREV4TlN3ME9TNHlOamtnTFRJdU1qY3pMRFF1TkRZeElHZ2dMVEV1T0RrMUlHd2dOQzR4Tmprc0xUZ3VNalV5SURRdU1UWTNMRGd1TXpjNUlDMHhMamc1Tml3dE1DNHdNVGdnZWlJS0lDQWdhV1E5SW5CaGRHZzVNekVpQ2lBZ0lHbHVhM05qWVhCbE9tTnZibTVsWTNSdmNpMWpkWEoyWVhSMWNtVTlJakFpSUM4K1BIQmhkR2dLSUNBZ2MzUjViR1U5SW1acGJHdzZJMlptWm1abVpqdHpkSEp2YTJVNmJtOXVaVHRtYVd4c0xXOXdZV05wZEhrNk1TSUtJQ0FnWkQwaWJTQTFOeTR5T0RjMUxEWTVMak0zTnlBdE9DNDRORE1zTWk0NU5TQXlMamswTlN3dE9DNDRORFFnTVM0ek5ESXNNUzR6TXpnZ0xURXVOakEzTERRdU9ESTFJRFF1T0RJekxDMHhMall3T1NCNklnb2dJQ0JwWkQwaWNHRjBhRGt5T1NJS0lDQWdhVzVyYzJOaGNHVTZZMjl1Ym1WamRHOXlMV04xY25aaGRIVnlaVDBpTUNJZ0x6NDhjR0YwYUFvZ0lDQnpkSGxzWlQwaVptbHNiRG9qWm1abVptWm1PM04wY205clpUcHViMjVsTzJacGJHd3RiM0JoWTJsMGVUb3hJZ29nSUNCa1BTSnRJRFl4TGpnNE5EVXNOamN1TURrMUlDMHhNQzQyTnpRc0xUVXVOelE0SURFdU1qVXhMQzB4TGpJMUlERXdMalkzTlN3MUxqYzBOaUI2SWdvZ0lDQnBaRDBpY0dGMGFEa3lOeUlLSUNBZ2FXNXJjMk5oY0dVNlkyOXVibVZqZEc5eUxXTjFjblpoZEhWeVpUMGlNQ0lnTHo0OGNHRjBhQW9nSUNCemRIbHNaVDBpWm1sc2JEb2pabVptWm1abU8zTjBjbTlyWlRwdWIyNWxPMlpwYkd3dGIzQmhZMmwwZVRveElnb2dJQ0JrUFNKdElEWXhMall4TlRVc05qSXVNelkzSURFdU5qQTVMQzAwTGpneU1pQXROQzQ0TWpJc01TNDJNRGNnTFRFdU16UXNMVEV1TXpRZ09DNDRORE1zTFRJdU9UUTRJQzB5TGprME9DdzRMamcwTWlCNklnb2dJQ0JwWkQwaWNHRjBhRGt5TlNJS0lDQWdhVzVyYzJOaGNHVTZZMjl1Ym1WamRHOXlMV04xY25aaGRIVnlaVDBpTUNJZ0x6NDhjR0YwYUFvZ0lDQnpkSGxzWlQwaVptbHNiRG9qWm1abVptWm1PM04wY205clpUcHViMjVsTzJacGJHd3RiM0JoWTJsMGVUb3hJZ29nSUNCa1BTSnRJRFU0TGpJeE5EVXNPREV1TURnNUlDMDRMakl4T1N3dE5DNHhOamdnT0M0ek9UWXNMVFF1TVRjZ01DNHdNek1zTVM0NE9UWWdMVFF1TmpVekxESXVNamMwSURRdU5EUXpMREl1TWpjeklIb2lDaUFnSUdsa1BTSndZWFJvT1RJeklnb2dJQ0JwYm10elkyRndaVHBqYjI1dVpXTjBiM0l0WTNWeWRtRjBkWEpsUFNJd0lpQXZQanh3WVhSb0NpQWdJSE4wZVd4bFBTSm1hV3hzT2lObVptWm1abVk3YzNSeWIydGxPbTV2Ym1VN1ptbHNiQzF2Y0dGamFYUjVPakVpQ2lBZ0lHUTlJbTBnTmpFdU5qQTFOU3czTUM0M015QXpMalE0Tml3eE1pQm9JQzB4TGpjM01TQnNJQzB6TGpRNE5Dd3RNVElnZWlJS0lDQWdhV1E5SW5CaGRHZzVNakVpQ2lBZ0lHbHVhM05qWVhCbE9tTnZibTVsWTNSdmNpMWpkWEoyWVhSMWNtVTlJakFpSUM4K1BIQmhkR2dLSUNBZ2MzUjViR1U5SW1acGJHdzZJMlptWm1abVpqdHpkSEp2YTJVNmJtOXVaVHRtYVd4c0xXOXdZV05wZEhrNk1TSUtJQ0FnWkQwaWJTQTJOeTR5TVRRMUxEY3lMamMxTWlBM0xqazJOeXcwTGpFMk9TQXRPQzQxTWpJc05DNHhOamdnTFRBdU1EazFMQzB4TGpnNU5pQTBMamczTXl3dE1pNHlOeklnTFRRdU1qSXpMQzB5TGpJM05DQjZJZ29nSUNCcFpEMGljR0YwYURreE9TSUtJQ0FnYVc1cmMyTmhjR1U2WTI5dWJtVmpkRzl5TFdOMWNuWmhkSFZ5WlQwaU1DSWdMejQ4Y0dGMGFBb2dJQ0J6ZEhsc1pUMGlabWxzYkRvalptWm1abVptTzNOMGNtOXJaVHB1YjI1bE8yWnBiR3d0YjNCaFkybDBlVG94SWdvZ0lDQmtQU0p0SURVMkxqZzVNelVzT0RRdU1qazVJQzB4TGpNek9Td3hMak0wTWlBdE5DNDRNalFzTFRFdU5qQTRJREV1TmpBNExEUXVPREl6SUMweExqTTBMREV1TXpReElDMHlMamswT0N3dE9DNDRORFFnZWlJS0lDQWdhV1E5SW5CaGRHZzVNVGNpQ2lBZ0lHbHVhM05qWVhCbE9tTnZibTVsWTNSdmNpMWpkWEoyWVhSMWNtVTlJakFpSUM4K1BIQmhkR2dLSUNBZ2MzUjViR1U5SW1acGJHdzZJMlptWm1abVpqdHpkSEp2YTJVNmJtOXVaVHRtYVd4c0xXOXdZV05wZEhrNk1TSUtJQ0FnWkQwaWJTQTJNQzR5T0RBMUxEZzFMak0zTVNBdE5TNDNORFlzTVRBdU5qYzFJQzB4TGpJMU15d3RNUzR5TlRNZ05TNDNORGdzTFRFd0xqWTNNeUI2SWdvZ0lDQnBaRDBpY0dGMGFEa3hOU0lLSUNBZ2FXNXJjMk5oY0dVNlkyOXVibVZqZEc5eUxXTjFjblpoZEhWeVpUMGlNQ0lnTHo0OGNHRjBhQW9nSUNCemRIbHNaVDBpWm1sc2JEb2pabVptWm1abU8zTjBjbTlyWlRwdWIyNWxPMlpwYkd3dGIzQmhZMmwwZVRveElnb2dJQ0JrUFNKdElEWXlMamd6TVRVc09UWXVNVE0wSUMweExqWXdPQ3d0TkM0NE1qTWdNUzR6TkRFc0xURXVNek01SURJdU9UUTNMRGd1T0RReklDMDRMamcwTWl3dE1pNDVORGtnTVM0ek16a3NMVEV1TXpReElIb2lDaUFnSUdsa1BTSndZWFJvT1RFeklnb2dJQ0JwYm10elkyRndaVHBqYjI1dVpXTjBiM0l0WTNWeWRtRjBkWEpsUFNJd0lpQXZQanh3WVhSb0NpQWdJSE4wZVd4bFBTSm1hV3hzT2lObVptWm1abVk3YzNSeWIydGxPbTV2Ym1VN1ptbHNiQzF2Y0dGamFYUjVPakVpQ2lBZ0lHUTlJbTBnTkRVdU56STVOU3c1TVM0ek5qUWdMVEl1TWpjMExDMDBMak0yTlNBdE1pNHlOelFzTkM0M016RWdhQ0F0TVM0NE9UUWdiQ0EwTGpFMk9Dd3RPQzQxTWpFZ05DNHhOeXc0TGpJME5TQjZJZ29nSUNCcFpEMGljR0YwYURreE1TSUtJQ0FnYVc1cmMyTmhjR1U2WTI5dWJtVmpkRzl5TFdOMWNuWmhkSFZ5WlQwaU1DSWdMejQ4Y0dGMGFBb2dJQ0J6ZEhsc1pUMGlabWxzYkRvalptWm1abVptTzNOMGNtOXJaVHB1YjI1bE8yWnBiR3d0YjNCaFkybDBlVG94SWdvZ0lDQmtQU0p0SURVd0xqSXhORFVzT1RRdU5URTFJQzB4TWl3ekxqUTROU0IySUMweExqYzNJR3dnTVRJc0xUTXVORGcxSUhvaUNpQWdJR2xrUFNKd1lYUm9PVEE1SWdvZ0lDQnBibXR6WTJGd1pUcGpiMjV1WldOMGIzSXRZM1Z5ZG1GMGRYSmxQU0l3SWlBdlBqeHdZWFJvQ2lBZ0lITjBlV3hsUFNKbWFXeHNPaU5tWm1abVptWTdjM1J5YjJ0bE9tNXZibVU3Wm1sc2JDMXZjR0ZqYVhSNU9qRWlDaUFnSUdROUltMGdORE11TkRVMU5Td3hNRE11TmpBeklESXVNamMwTEMwMExqZzNNeUJvSURFdU9EazFJR3dnTFRRdU1UWTVMRGd1TmpZMElDMDBMakUyT1N3dE9DNHhOelVnTVM0NE9UWXNMVEF1TURneklIb2lDaUFnSUdsa1BTSndZWFJvT1RBM0lnb2dJQ0JwYm10elkyRndaVHBqYjI1dVpXTjBiM0l0WTNWeWRtRjBkWEpsUFNJd0lpQXZQanh3WVhSb0NpQWdJSE4wZVd4bFBTSm1hV3hzT2lObVptWm1abVk3YzNSeWIydGxPbTV2Ym1VN1ptbHNiQzF2Y0dGamFYUjVPakVpQ2lBZ0lHUTlJbTBnTXpZdU1EYzJOU3c0T1M0NE1ETWdMVEV1TXpReExDMHhMak0wSURFdU5qQTRMQzAwTGpneU15QXROQzQ0TWpNc01TNDJNRGdnTFRFdU16UXNMVEV1TXpRZ09DNDRORFFzTFRJdU9UUTVJSG9pQ2lBZ0lHbGtQU0p3WVhSb09UQTFJZ29nSUNCcGJtdHpZMkZ3WlRwamIyNXVaV04wYjNJdFkzVnlkbUYwZFhKbFBTSXdJaUF2UGp4d1lYUm9DaUFnSUhOMGVXeGxQU0ptYVd4c09pTm1abVptWm1ZN2MzUnliMnRsT201dmJtVTdabWxzYkMxdmNHRmphWFI1T2pFaUNpQWdJR1E5SW0wZ01qVXVOVGd5TlN3NE5pNHhPVElnTVRBdU5qYzBMRFV1TnpRMklDMHhMakkxTVN3eExqSTFNU0F0TVRBdU5qYzFMQzAxTGpjME5pQjZJZ29nSUNCcFpEMGljR0YwYURrd015SUtJQ0FnYVc1cmMyTmhjR1U2WTI5dWJtVmpkRzl5TFdOMWNuWmhkSFZ5WlQwaU1DSWdMejQ4Y0dGMGFBb2dJQ0J6ZEhsc1pUMGlabWxzYkRvalptWm1abVptTzNOMGNtOXJaVHB1YjI1bE8yWnBiR3d0YjNCaFkybDBlVG94SWdvZ0lDQmtQU0p0SURJMUxqZzFNRFVzT1RBdU9URTRJQzB4TGpZd09DdzBMamd5TXlBMExqZ3lOQ3d0TVM0Mk1EZ2dNUzR6TXprc01TNHpOREVnTFRndU9EUTBMREl1T1RRNElESXVPVFE1TEMwNExqZzBOQ0I2SWdvZ0lDQnBaRDBpY0dGMGFEa3dNU0lLSUNBZ2FXNXJjMk5oY0dVNlkyOXVibVZqZEc5eUxXTjFjblpoZEhWeVpUMGlNQ0lnTHo0OGNHRjBhQW9nSUNCemRIbHNaVDBpWm1sc2JEb2pabVptWm1abU8zTjBjbTlyWlRwdWIyNWxPMlpwYkd3dGIzQmhZMmwwZVRveElnb2dJQ0JrUFNKdElESTVMakl4TkRVc056SXVNVGsySURndU16TTRMRFF1TVRZNUlDMDRMak16T0N3MExqRTJPU0IySUMweExqZzVOaUJzSURRdU5UUTNMQzB5TGpJM015QXROQzQxTkRjc0xUSXVNamMwSUhvaUNpQWdJR2xrUFNKd1lYUm9PRGs1SWdvZ0lDQnBibXR6WTJGd1pUcGpiMjV1WldOMGIzSXRZM1Z5ZG1GMGRYSmxQU0l3SWlBdlBqeHdZWFJvQ2lBZ0lITjBlV3hsUFNKbWFXeHNPaU5tWm1abVptWTdjM1J5YjJ0bE9tNXZibVU3Wm1sc2JDMXZjR0ZqYVhSNU9qRWlDaUFnSUdROUltMGdNalF1TVRRMU5TdzNNQzQzTXlBekxqUTROU3d4TVNCb0lDMHhMamMyT1NCc0lDMHpMalE0TlN3dE1URWdlaUlLSUNBZ2FXUTlJbkJoZEdnNE9UY2lDaUFnSUdsdWEzTmpZWEJsT21OdmJtNWxZM1J2Y2kxamRYSjJZWFIxY21VOUlqQWlJQzgrUEhCaGRHZ0tJQ0FnYzNSNWJHVTlJbVpwYkd3NkkyWm1abVptWmp0emRISnZhMlU2Ym05dVpUdHpkSEp2YTJVdGQybGtkR2c2TVM0d01EQXdNak01Tmp0bWFXeHNMVzl3WVdOcGRIazZNU0lLSUNBZ1pEMGliU0F4TWk0MU5qVXpMRGMyTGpNMk5TQTRMak16T0RRc05DNHhOamtnVmlBM09DNDJNemdnVENBeE5pNHpOVFkwT0RJc056WXVNelkxSURJd0xqa3dNemNzTnpRdU1Ea3hJSFlnTFRFdU9EazFJSG9pQ2lBZ0lHbGtQU0p3WVhSb016SWlDaUFnSUdsdWEzTmpZWEJsT21OdmJtNWxZM1J2Y2kxamRYSjJZWFIxY21VOUlqQWlJQzgrUEhSbGVIUUtJQ0FnZUcxc09uTndZV05sUFNKd2NtVnpaWEoyWlNJS0lDQWdjM1I1YkdVOUltWnZiblF0YzNSNWJHVTZibTl5YldGc08yWnZiblF0ZG1GeWFXRnVkRHB1YjNKdFlXdzdabTl1ZEMxM1pXbG5hSFE2Ym05eWJXRnNPMlp2Ym5RdGMzUnlaWFJqYURwdWIzSnRZV3c3Wm05dWRDMXphWHBsT2pFekxqazVPVGs1T1RBMWNIZzdiR2x1WlMxb1pXbG5hSFE2TVRndU56VndlRHRtYjI1MExXWmhiV2xzZVRvblFXeGxaM0psZVdFZ1UwTW5PeTFwYm10elkyRndaUzFtYjI1MExYTndaV05wWm1sallYUnBiMjQ2SjBGc1pXZHlaWGxoSUZOREp6dHNaWFIwWlhJdGMzQmhZMmx1Wnpvd2NIZzdkMjl5WkMxemNHRmphVzVuT2pCd2VEdG1hV3hzT2lObVptWm1abVk3Wm1sc2JDMXZjR0ZqYVhSNU9qRTdjM1J5YjJ0bE9tNXZibVU3YzNSeWIydGxMWGRwWkhSb09qQXVOelZ3ZUR0emRISnZhMlV0YkdsdVpXTmhjRHBpZFhSME8zTjBjbTlyWlMxc2FXNWxhbTlwYmpwdGFYUmxjanR6ZEhKdmEyVXRiM0JoWTJsMGVUb3hPeUlLSUNBZ2VEMGlNakV1TnpBMk56RXpJZ29nSUNCNVBTSXRORGt1TWpBeE5ESTNJZ29nSUNCcFpEMGlkR1Y0ZERJMElnb2dJQ0IwY21GdWMyWnZjbTA5SW5OallXeGxLREVzTFRFcElqNDhkSE53WVc0S0lDQWdJQ0J6YjJScGNHOWthVHB5YjJ4bFBTSnNhVzVsSWdvZ0lDQWdJR2xrUFNKMGMzQmhiakl5SWdvZ0lDQWdJSGc5SWpJeExqY3dOamN4TXlJS0lDQWdJQ0I1UFNJdE16WXVNemMxTWpraUNpQWdJQ0FnYzNSNWJHVTlJbVp2Ym5RdGMzUjViR1U2Ym05eWJXRnNPMlp2Ym5RdGRtRnlhV0Z1ZERwdWIzSnRZV3c3Wm05dWRDMTNaV2xuYUhRNmJtOXliV0ZzTzJadmJuUXRjM1J5WlhSamFEcHViM0p0WVd3N1ptOXVkQzFtWVcxcGJIazZKMEZzWldkeVpYbGhJRk5ESnpzdGFXNXJjMk5oY0dVdFptOXVkQzF6Y0dWamFXWnBZMkYwYVc5dU9pZEJiR1ZuY21WNVlTQlRReWM3YzNSeWIydGxMWGRwWkhSb09qQXVOelZ3ZUR0bWFXeHNPaU5tWm1abVptWTdabWxzYkMxdmNHRmphWFI1T2pFN0lpQXZQand2ZEdWNGRENEtDangwWlhoMENpQWdJSGh0YkRwemNHRmpaVDBpY0hKbGMyVnlkbVVpQ2lBZ0lITjBlV3hsUFNKbWIyNTBMWE4wZVd4bE9tNXZjbTFoYkR0bWIyNTBMWFpoY21saGJuUTZibTl5YldGc08yWnZiblF0ZDJWcFoyaDBPbTV2Y20xaGJEdG1iMjUwTFhOMGNtVjBZMmc2Ym05eWJXRnNPMlp2Ym5RdGMybDZaVG94TXk0NU9UazVPVGt3TlhCNE8yeHBibVV0YUdWcFoyaDBPakU0TGpjMWNIZzdabTl1ZEMxbVlXMXBiSGs2SjBGc1pXZHlaWGxoSUZOREp6c3RhVzVyYzJOaGNHVXRabTl1ZEMxemNHVmphV1pwWTJGMGFXOXVPaWRCYkdWbmNtVjVZU0JUUXljN2JHVjBkR1Z5TFhOd1lXTnBibWM2TUhCNE8zZHZjbVF0YzNCaFkybHVaem93Y0hnN1ptbHNiRG9qWm1abVptWm1PMlpwYkd3dGIzQmhZMmwwZVRveE8zTjBjbTlyWlRwdWIyNWxPM04wY205clpTMTNhV1IwYURvd0xqYzFjSGc3YzNSeWIydGxMV3hwYm1WallYQTZZblYwZER0emRISnZhMlV0YkdsdVpXcHZhVzQ2YldsMFpYSTdjM1J5YjJ0bExXOXdZV05wZEhrNk1Uc2lDaUFnSUhnOUlqRTNMams0TXpJNE5DSUtJQ0FnZVQwaUxUUTJMamN4T1RFME15SUtJQ0FnYVdROUluUmxlSFF5T0NJS0lDQWdkSEpoYm5ObWIzSnRQU0p6WTJGc1pTZ3hMQzB4S1NJK1BIUnpjR0Z1Q2lBZ0lDQWdjMjlrYVhCdlpHazZjbTlzWlQwaWJHbHVaU0lLSUNBZ0lDQnBaRDBpZEhOd1lXNHlOaUlLSUNBZ0lDQjRQU0l4Tnk0NU9ETXlPRFFpQ2lBZ0lDQWdlVDBpTFRNekxqZzVNekF3TlNJS0lDQWdJQ0J6ZEhsc1pUMGlabTl1ZEMxemRIbHNaVHB1YjNKdFlXdzdabTl1ZEMxMllYSnBZVzUwT201dmNtMWhiRHRtYjI1MExYZGxhV2RvZERwdWIzSnRZV3c3Wm05dWRDMXpkSEpsZEdOb09tNXZjbTFoYkR0bWIyNTBMWE5wZW1VNk1UWndlRHRtYjI1MExXWmhiV2xzZVRvblFXeGxaM0psZVdFZ1UwTW5PeTFwYm10elkyRndaUzFtYjI1MExYTndaV05wWm1sallYUnBiMjQ2SjBGc1pXZHlaWGxoSUZOREp6dG1hV3hzT2lObVptWm1abVk3Wm1sc2JDMXZjR0ZqYVhSNU9qRTdjM1J5YjJ0bExYZHBaSFJvT2pBdU56VndlRHNpSUM4K1BDOTBaWGgwUGdvS1BIUmxlSFFLSUNBZ2VHMXNPbk53WVdObFBTSndjbVZ6WlhKMlpTSUtJQ0FnYzNSNWJHVTlJbVp2Ym5RdGMzUjViR1U2Ym05eWJXRnNPMlp2Ym5RdGRtRnlhV0Z1ZERwdWIzSnRZV3c3Wm05dWRDMTNaV2xuYUhRNmJtOXliV0ZzTzJadmJuUXRjM1J5WlhSamFEcHViM0p0WVd3N1ptOXVkQzF6YVhwbE9qRTJjSGc3YkdsdVpTMW9aV2xuYUhRNk1UZ3VOelZ3ZUR0bWIyNTBMV1poYldsc2VUb25RV3hsWjNKbGVXRWdVME1uT3kxcGJtdHpZMkZ3WlMxbWIyNTBMWE53WldOcFptbGpZWFJwYjI0NkowRnNaV2R5WlhsaElGTkRKenRzWlhSMFpYSXRjM0JoWTJsdVp6b3djSGc3ZDI5eVpDMXpjR0ZqYVc1bk9qQndlRHRtYVd4c09pTm1abVptWm1ZN1ptbHNiQzF2Y0dGamFYUjVPakU3YzNSeWIydGxPbTV2Ym1VN2MzUnliMnRsTFhkcFpIUm9PakF1TnpWd2VEdHpkSEp2YTJVdGJHbHVaV05oY0RwaWRYUjBPM04wY205clpTMXNhVzVsYW05cGJqcHRhWFJsY2p0emRISnZhMlV0YjNCaFkybDBlVG94T3lJS0lDQWdlRDBpTVRZdU1USXhOVGN4SWdvZ0lDQjVQU0l0TkRjdU9UWXdNamc1SWdvZ0lDQnBaRDBpZEdWNGREUTFNallpQ2lBZ0lIUnlZVzV6Wm05eWJUMGljMk5oYkdVb01Td3RNU2tpUGp4MGMzQmhiZ29nSUNBZ0lITnZaR2x3YjJScE9uSnZiR1U5SW14cGJtVWlDaUFnSUNBZ2FXUTlJblJ6Y0dGdU5EVXlOQ0lLSUNBZ0lDQjRQU0l4Tmk0eE1qRTFOekVpQ2lBZ0lDQWdlVDBpTFRNMExqWTBNVEV5T1NJS0lDQWdJQ0J6ZEhsc1pUMGlabTl1ZEMxemRIbHNaVHB1YjNKdFlXdzdabTl1ZEMxMllYSnBZVzUwT201dmNtMWhiRHRtYjI1MExYZGxhV2RvZERwdWIzSnRZV3c3Wm05dWRDMXpkSEpsZEdOb09tNXZjbTFoYkR0bWIyNTBMWE5wZW1VNk1UWndlRHRtYjI1MExXWmhiV2xzZVRvblFXeGxaM0psZVdFZ1UwTW5PeTFwYm10elkyRndaUzFtYjI1MExYTndaV05wWm1sallYUnBiMjQ2SjBGc1pXZHlaWGxoSUZOREp6dG1hV3hzT2lObVptWm1abVk3Wm1sc2JDMXZjR0ZqYVhSNU9qRTdjM1J5YjJ0bExYZHBaSFJvT2pBdU56VndlRHNpSUM4K1BDOTBaWGgwUGdvS1BIUmxlSFFLSUNBZ2VHMXNPbk53WVdObFBTSndjbVZ6WlhKMlpTSUtJQ0FnYzNSNWJHVTlJbVp2Ym5RdGMzUjViR1U2Ym05eWJXRnNPMlp2Ym5RdGRtRnlhV0Z1ZERwdWIzSnRZV3c3Wm05dWRDMTNaV2xuYUhRNmJtOXliV0ZzTzJadmJuUXRjM1J5WlhSamFEcHViM0p0WVd3N1ptOXVkQzF6YVhwbE9qRTJjSGc3YkdsdVpTMW9aV2xuYUhRNk1UZ3VOelZ3ZUR0bWIyNTBMV1poYldsc2VUb25RV3hsWjNKbGVXRWdVME1uT3kxcGJtdHpZMkZ3WlMxbWIyNTBMWE53WldOcFptbGpZWFJwYjI0NkowRnNaV2R5WlhsaElGTkRKenRzWlhSMFpYSXRjM0JoWTJsdVp6b3djSGc3ZDI5eVpDMXpjR0ZqYVc1bk9qQndlRHRtYVd4c09pTm1abVptWm1ZN1ptbHNiQzF2Y0dGamFYUjVPakU3YzNSeWIydGxPbTV2Ym1VN2MzUnliMnRsTFhkcFpIUm9PakF1TnpWd2VEdHpkSEp2YTJVdGJHbHVaV05oY0RwaWRYUjBPM04wY205clpTMXNhVzVsYW05cGJqcHRhWFJsY2p0emRISnZhMlV0YjNCaFkybDBlVG94T3lJS0lDQWdlRDBpTVRZdU5ETXhPRFUySWdvZ0lDQjVQU0l0TkRndU1qY3dOVGN6SWdvZ0lDQnBaRDBpZEdWNGREUTFNekFpQ2lBZ0lIUnlZVzV6Wm05eWJUMGljMk5oYkdVb01Td3RNU2tpUGp4MGMzQmhiZ29nSUNBZ0lITnZaR2x3YjJScE9uSnZiR1U5SW14cGJtVWlDaUFnSUNBZ2FXUTlJblJ6Y0dGdU5EVXlPQ0lLSUNBZ0lDQjRQU0l4Tmk0ME16RTROVFlpQ2lBZ0lDQWdlVDBpTFRNMExqazFNVFF4TWlJS0lDQWdJQ0J6ZEhsc1pUMGlabTl1ZEMxemRIbHNaVHB1YjNKdFlXdzdabTl1ZEMxMllYSnBZVzUwT201dmNtMWhiRHRtYjI1MExYZGxhV2RvZERwdWIzSnRZV3c3Wm05dWRDMXpkSEpsZEdOb09tNXZjbTFoYkR0bWIyNTBMWE5wZW1VNk1UWndlRHRtYjI1MExXWmhiV2xzZVRvblFXeGxaM0psZVdFZ1UwTW5PeTFwYm10elkyRndaUzFtYjI1MExYTndaV05wWm1sallYUnBiMjQ2SjBGc1pXZHlaWGxoSUZOREp6dG1hV3hzT2lObVptWm1abVk3Wm1sc2JDMXZjR0ZqYVhSNU9qRTdjM1J5YjJ0bExYZHBaSFJvT2pBdU56VndlRHNpSUM4K1BDOTBaWGgwUGdvS1BIUmxlSFFLSUNBZ2VHMXNPbk53WVdObFBTSndjbVZ6WlhKMlpTSUtJQ0FnYzNSNWJHVTlJbVp2Ym5RdGMzUjViR1U2Ym05eWJXRnNPMlp2Ym5RdGRtRnlhV0Z1ZERwdWIzSnRZV3c3Wm05dWRDMTNaV2xuYUhRNmJtOXliV0ZzTzJadmJuUXRjM1J5WlhSamFEcHViM0p0WVd3N1ptOXVkQzF6YVhwbE9qRXpMams1T1RrNU9UQTFjSGc3YkdsdVpTMW9aV2xuYUhRNk1UZ3VOelZ3ZUR0bWIyNTBMV1poYldsc2VUb25RV3hsWjNKbGVXRWdVME1uT3kxcGJtdHpZMkZ3WlMxbWIyNTBMWE53WldOcFptbGpZWFJwYjI0NkowRnNaV2R5WlhsaElGTkRKenRzWlhSMFpYSXRjM0JoWTJsdVp6b3djSGc3ZDI5eVpDMXpjR0ZqYVc1bk9qQndlRHRtYVd4c09pTm1abVptWm1ZN1ptbHNiQzF2Y0dGamFYUjVPakU3YzNSeWIydGxPbTV2Ym1VN2MzUnliMnRsTFhkcFpIUm9PakF1TnpWd2VEdHpkSEp2YTJVdGJHbHVaV05oY0RwaWRYUjBPM04wY205clpTMXNhVzVsYW05cGJqcHRhWFJsY2p0emRISnZhMlV0YjNCaFkybDBlVG94T3lJS0lDQWdlRDBpTVRRdU5UY3dNVFF6SWdvZ0lDQjVQU0l0TkRZdU56RTVNVFF6SWdvZ0lDQnBaRDBpZEdWNGREUTFOVGNpQ2lBZ0lIUnlZVzV6Wm05eWJUMGljMk5oYkdVb01Td3RNU2tpUGp4MGMzQmhiZ29nSUNBZ0lITnZaR2x3YjJScE9uSnZiR1U5SW14cGJtVWlDaUFnSUNBZ2FXUTlJblJ6Y0dGdU5EVTFOU0lLSUNBZ0lDQjRQU0l4TkM0MU56QXhORE1pQ2lBZ0lDQWdlVDBpTFRNekxqZzVNekF3TlNJS0lDQWdJQ0J6ZEhsc1pUMGlabTl1ZEMxemRIbHNaVHB1YjNKdFlXdzdabTl1ZEMxMllYSnBZVzUwT201dmNtMWhiRHRtYjI1MExYZGxhV2RvZERwaWIyeGtPMlp2Ym5RdGMzUnlaWFJqYURwdWIzSnRZV3c3Wm05dWRDMXphWHBsT2pFMmNIZzdabTl1ZEMxbVlXMXBiSGs2SjBGc1pXZHlaWGxoSUZOREp6c3RhVzVyYzJOaGNHVXRabTl1ZEMxemNHVmphV1pwWTJGMGFXOXVPaWRCYkdWbmNtVjVZU0JUUXlCQ2IyeGtKenRtYVd4c09pTm1abVptWm1ZN1ptbHNiQzF2Y0dGamFYUjVPakU3YzNSeWIydGxMWGRwWkhSb09qQXVOelZ3ZURzaUlDOCtQQzkwWlhoMFBnb0tQQzluUGp3dmMzWm5QZz09IiB5PSIzIi8+PHRleHQgZmlsbD0iIzAxMDEwMSIgZmlsbC1vcGFjaXR5PSIuMyIgbGVuZ3RoQWRqdXN0PSJzcGFjaW5nIiB0ZXh0TGVuZ3RoPSI0NzUuOTk5OTk5OTk5OTk5OTQiIHRyYW5zZm9ybT0ic2NhbGUoMC4xKSIgeD0iNDY4LjAiIHk9IjE1MCI+YXJjaGl2ZWQ8L3RleHQ+PHRleHQgbGVuZ3RoQWRqdXN0PSJzcGFjaW5nIiB0ZXh0TGVuZ3RoPSI0NzUuOTk5OTk5OTk5OTk5OTQiIHRyYW5zZm9ybT0ic2NhbGUoMC4xKSIgeD0iNDY4LjAiIHk9IjE0MCI+YXJjaGl2ZWQ8L3RleHQ+PHRleHQgZmlsbD0iIzAxMDEwMSIgZmlsbC1vcGFjaXR5PSIuMyIgbGVuZ3RoQWRqdXN0PSJzcGFjaW5nIiB0ZXh0TGVuZ3RoPSI1NTguMCIgdHJhbnNmb3JtPSJzY2FsZSgwLjEpIiB4PSIxMDY1LjAiIHk9IjE1MCI+cmVwb3NpdG9yeTwvdGV4dD48dGV4dCBsZW5ndGhBZGp1c3Q9InNwYWNpbmciIHRleHRMZW5ndGg9IjU1OC4wIiB0cmFuc2Zvcm09InNjYWxlKDAuMSkiIHg9IjEwNjUuMCIgeT0iMTQwIj5yZXBvc2l0b3J5PC90ZXh0PjxhIHhsaW5rOmhyZWY9IiI+PHJlY3QgZmlsbD0icmdiYSgwLDAsMCwwKSIgaGVpZ2h0PSIyMCIgd2lkdGg9Ijc0LjYiLz48L2E+PGEgeGxpbms6aHJlZj0iaHR0cHM6Ly9hcmNoaXZlLnNvZnR3YXJlaGVyaXRhZ2Uub3JnL2Jyb3dzZS9vcmlnaW4vP29yaWdpbl91cmw9aHR0cHM6Ly9naXRodWIuY29tL3NlYmFzdGllbi1wbHV0bmlhay9hcmNoZW92aXoiPjxyZWN0IGZpbGw9InJnYmEoMCwwLDAsMCkiIGhlaWdodD0iMjAiIHdpZHRoPSI2NS44IiB4PSI3NC42Ii8+PC9hPjwvZz48L3N2Zz4= alt=SWH /></a> <a href=https://cran.r-project.org/package=archeoViz><img src=data:image/svg+xml; charset=utf-8;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSI4NSIgaGVpZ2h0PSIyMCIgYXJpYS1sYWJlbD0iQ1JBTiAxLjIuMCI+CiAgPGxpbmVhckdyYWRpZW50IGlkPSJiIiB4Mj0iMCIgeTI9IjEwMCUiPgogICAgPHN0b3Agb2Zmc2V0PSIwIiBzdG9wLWNvbG9yPSIjYmJiIiBzdG9wLW9wYWNpdHk9Ii4xIi8+CiAgICA8c3RvcCBvZmZzZXQ9IjEiIHN0b3Atb3BhY2l0eT0iLjEiLz4KICA8L2xpbmVhckdyYWRpZW50PgogIDxtYXNrIGlkPSJhIj4KICAgIDxyZWN0IHdpZHRoPSI4NSIgaGVpZ2h0PSIyMCIgcng9IjMiIGZpbGw9IiNmZmYiLz4KICA8L21hc2s+CiAgPGcgbWFzaz0idXJsKCNhKSI+CiAgICA8cGF0aCBmaWxsPSIjNTU1IiBkPSJNMCAwaDQzdjIwSDB6Ii8+CiAgICA8cGF0aCBmaWxsPSIjNGMxIiBkPSJNNDMgMGg2M3YyMEg0M3oiLz4KICAgIDxwYXRoIGZpbGw9InVybCgjYikiIGQ9Ik0wIDBoODV2MjBIMHoiLz4KICA8L2c+CiAgPGcgZmlsbD0iI2ZmZiIgdGV4dC1hbmNob3I9Im1pZGRsZSIKICAgICBmb250LWZhbWlseT0iRGVqYVZ1IFNhbnMsVmVyZGFuYSxHZW5ldmEsc2Fucy1zZXJpZiIgZm9udC1zaXplPSIxMSI+CiAgICA8dGV4dCB4PSIyMS41IiB5PSIxNSIgZmlsbD0iIzAxMDEwMSIgZmlsbC1vcGFjaXR5PSIuMyI+CiAgICAgIENSQU4KICAgIDwvdGV4dD4KICAgIDx0ZXh0IHg9IjIxLjUiIHk9IjE0Ij4KICAgICAgQ1JBTgogICAgPC90ZXh0PgogICAgPHRleHQgeD0iNjMiIHk9IjE1IiBmaWxsPSIjMDEwMTAxIiBmaWxsLW9wYWNpdHk9Ii4zIj4KICAgICAgMS4yLjAKICAgIDwvdGV4dD4KICAgIDx0ZXh0IHg9IjYzIiB5PSIxNCI+CiAgICAgIDEuMi4wCiAgICA8L3RleHQ+CiAgPC9nPgo8L3N2Zz4= alt=CRAN Version /></a> <a href=https://cran.r-project.org/package=archeoViz><img src=data:image/svg+xml; charset=utf-8;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxNDkiIGhlaWdodD0iMjAiIGFyaWEtbGFiZWw9IkNSQU4gZG93bmxvYWRzIDQxMi9tb250aCI+CiAgPGxpbmVhckdyYWRpZW50IGlkPSJiIiB4Mj0iMCIgeTI9IjEwMCUiPgogICAgPHN0b3Agb2Zmc2V0PSIwIiBzdG9wLWNvbG9yPSIjYmJiIiBzdG9wLW9wYWNpdHk9Ii4xIi8+CiAgICA8c3RvcCBvZmZzZXQ9IjEiIHN0b3Atb3BhY2l0eT0iLjEiLz4KICA8L2xpbmVhckdyYWRpZW50PgogIDxtYXNrIGlkPSJhIj4KICAgIDxyZWN0IHdpZHRoPSIxNDkiIGhlaWdodD0iMjAiIHJ4PSIzIiBmaWxsPSIjZmZmIi8+CiAgPC9tYXNrPgogIDxnIG1hc2s9InVybCgjYSkiPjxwYXRoIGZpbGw9IiM1NTUiIGQ9Ik0wIDBoNzB2MjBIMHoiLz4KICAgIDxwYXRoIGZpbGw9IiMwMDdlYzYiIGQ9Ik03MCAwaDc5djIwSDcweiIvPgogICAgPHBhdGggZmlsbD0idXJsKCNiKSIgZD0iTTAgMGgxNDl2MjBIMHoiLz4KICA8L2c+CiAgPGcgZmlsbD0iI2ZmZiIgdGV4dC1hbmNob3I9Im1pZGRsZSIKICAgICBmb250LWZhbWlseT0iRGVqYVZ1IFNhbnMsVmVyZGFuYSxHZW5ldmEsc2Fucy1zZXJpZiIgZm9udC1zaXplPSIxMSI+CiAgICA8dGV4dCB4PSIzNiIgeT0iMTUiIGZpbGw9IiMwMTAxMDEiIGZpbGwtb3BhY2l0eT0iLjMiPgogICAgICBkb3dubG9hZHMKICAgIDwvdGV4dD4KICAgIDx0ZXh0IHg9IjM2IiB5PSIxNCI+CiAgICAgIGRvd25sb2FkcwogICAgPC90ZXh0PgogICAgPHRleHQgeD0iMTA4LjUiIHk9IjE1IiBmaWxsPSIjMDEwMTAxIiBmaWxsLW9wYWNpdHk9Ii4zIj4KICAgICAgNDEyL21vbnRoCiAgICA8L3RleHQ+CiAgICA8dGV4dCB4PSIxMDguNSIgeT0iMTQiPgogICAgICA0MTIvbW9udGgKICAgIDwvdGV4dD4KICA8L2c+Cjwvc3ZnPg== alt=CRAN Downloads /></a></p>
<ul>
<li><a href=#installation><strong>Installation</strong></a>
<ul>
<li><a href=#locale>Locale</a></li>
<li><a href=#distante>Distante</a></li>
<li><a href=#démonstration>Démonstration</a></li>
</ul></li>
<li><a href=#recommandations-communautaires><strong>Recommandations communautaires</strong></a>
<ul>
<li><a href=#signaler-un-bug>Signaler un bug</a></li>
<li><a href=#soumettre-une-modification>Soumettre une modification</a></li>
</ul></li>
<li><a href=#utilisation><strong>Utilisation</strong></a>
<ul>
<li><a href=#spatial-information-in-archeoviz>L’information spatiale dans archeoViz</a>
<ul>
<li><a href=#localisation-exacte--les-objets-relevés>Localisation exacte : les objets relevés</a></li>
<li><a href=#localisations-vagues--passes-seaux-tamis-et-erreurs-d-enregistrement>Localisations vagues : passes, seaux, tamis et erreurs d’enregistement</a></li>
</ul></li>
<li><a href=#remontages-et-mesures-de-fabrique>Remontages et mesures de fabrique</a>
<ul>
<li><a href=#remontages>Remontages</a></li>
<li><a href=#mesures-de-fabrique>Mesures de fabrique</a></li>
</ul></li>
<li><a href=#formater-des-données>Format de données</a>
<ul>
<li><a href=#formater-des-données>Formater des données</a></li>
<li><a href=#tableau-des-objets>Tableau des objets</a></li>
<li><a href=#tableau-des-remontages>Tableau des remontages</a></li>
<li><a href=#tableau-de-la-chronologie>Tableau de la chronologie</a></li>
</ul></li>
<li><a href=#charger-des-données>Charger des données</a>
<ul>
<li><a href=#via-linterface-de-lapplication>Via l’interface de l’application</a></li>
<li><a href=#par-génération-de-données-aléatoires>Par génération de données aléatoires</a></li>
<li><a href=#via-les-paramètres-de-la-fonction-r>Via les paramètres de la fonction R</a></li>
<li><a href=#via-les-paramètres-dune-url>Via les paramètres d’une URL</a></li>
</ul></li>
<li><a href=#sous-sélection-de-données>Sous-sélection de données</a>
<ul>
<li><a href=#par-mode-de-localisation>Par mode de localisation</a></li>
<li><a href=#par-couche-ou-catégorie-dobjet>Par couche ou catégorie d’objet</a></li>
</ul></li>
<li><a href=#visualisations-interactives>Visualisations interactives</a>
<ul>
<li><a href=#généralités>Généralités</a></li>
<li><a href=#sorties-graphiques>Sorties graphiques</a></li>
<li><a href=#visualisation-de-l-incertitude%20spatiale>Visualisation de l’incertitude spatiale</a></li>
</ul></li>
<li><a href=#statistiques-spatiales>Statistiques spatiales</a>
<ul>
<li><a href=#surfaces-de-régression>Surfaces de régression</a></li>
<li><a href=#enveloppes-convexes>Enveloppes convexes</a></li>
<li><a href=#estimation-2d-de-densité-par-noyau>Estimation 2D de densité par noyau</a></li>
</ul></li>
</ul></li>
<li><a href=#reproductibilité><strong>Reproductibilité</strong></a></li>
<li><a href=#paramètres-avancés><strong>Paramètres avancés</strong></a>
<ul>
<li><a href=#carroyage>Carroyage</a></li>
<li><a href=#pré-sélection-des-paramètres>Pré-sélection des paramètres</a></li>
<li><a href=#affichage-réactif-des-visualisations>Affichage réactif des visualisations</a></li>
<li><a href=#paramètres-url>Paramètres URL</a></li>
</ul></li>
<li><a href=#remerciements><strong>Remerciements</strong></a></li>
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
<p>La version de développement peut être téléchargée depuis <em>GitHub</em>:</p>
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
<p>Pour paramétrer l’application avec vos données et préférences, éditez le fichier <code>app.R</code> situé à la racine du répertoire de l’application:</p>
<div class=sourceCode id=cb5><pre class=sourceCode r><code class=sourceCode r><a class=sourceLine id=cb5-1 data-line-number=1><span class=kw>archeoViz</span>(<span class=dt>objects.df =</span> <span class=ot>NULL</span>,   <span class=co># data.frame pour les objets</span></a>
<a class=sourceLine id=cb5-2 data-line-number=2>          <span class=dt>refits.df =</span> <span class=ot>NULL</span>,    <span class=co># data.frame optionnel pour les remontages</span></a>
<a class=sourceLine id=cb5-3 data-line-number=3>          <span class=dt>timeline.df =</span> <span class=ot>NULL</span>,  <span class=co># data.frame optionnel pour la chronologie des fouilles</span></a>
<a class=sourceLine id=cb5-4 data-line-number=4>          <span class=dt>default.group =</span><span class=ot>NULL</span>, <span class=co># méthode de groupement des données,</span></a>
<a class=sourceLine id=cb5-5 data-line-number=5>                               <span class=co># par couche (&quot;by.layer&quot;) ou &quot;by.variable&quot;</span></a>
<a class=sourceLine id=cb5-6 data-line-number=6>          <span class=dt>title =</span> <span class=ot>NULL</span>,        <span class=co># titre du site / du jeu de données</span></a>
<a class=sourceLine id=cb5-7 data-line-number=7>          <span class=dt>home.text =</span> <span class=ot>NULL</span>,    <span class=co># contenu HTML à afficher sur la page d'accueil</span></a>
<a class=sourceLine id=cb5-8 data-line-number=8>          <span class=dt>lang =</span> <span class=st>&quot;fr&quot;</span>          <span class=co># langue de l'interface (&quot;en&quot;: Anglais, &quot;fr&quot;: Français, &quot;it&quot;: Italien &quot;pt&quot;: Portugais)</span></a>
<a class=sourceLine id=cb5-9 data-line-number=9>          <span class=dt>set.theme =</span> <span class=st>&quot;cosmo&quot;</span>) <span class=co># thème graphique de l'interface Shiny</span></a></code></pre></div>
<p>Les valeurs possibles pour le paramètre <code>set.theme</code> sont illustrées sur <a href=https://rstudio.github.io/shinythemes/>cette page</a>. La langue de l’application peut être définie avec le paramètre <code>lang</code>.</p>
<h2 id=démonstration>Démonstration</h2>
<p>Des instances de démonstration de l’application sont déployées sur le Shiny server d’<em>Huma Num</em>:</p>
<ul>
<li><a href=https://analytics.huma-num.fr/archeoviz/fr><code>archeoViz</code> en français</a>.</li>
<li><a href=https://analytics.huma-num.fr/archeoviz/en><code>archeoViz</code> en anglais</a>.</li>
<li><a href=https://analytics.huma-num.fr/archeoviz/de><code>archeoViz</code> en allemand</a>.</li>
<li><a href=https://analytics.huma-num.fr/archeoviz/it><code>archeoViz</code> en italien</a>.</li>
<li><a href=https://analytics.huma-num.fr/archeoviz/pt><code>archeoViz</code> en portugais</a>.</li>
</ul>
<p>Des cas d’applications à divers sites archéologiques sont rassemblés sur le <a href=https://analytics.huma-num.fr/archeoviz/home><em>Portail archeoViz</em></a>.</p>
<h1 id=recommandations-communautaires>Recommandations communautaires</h1>
<h2 id=signaler-un-bug>Signaler un bug</h2>
<p>Si vous rencontrez un bug, ouvrez une <a href=https://github.com/sebastien-plutniak/archeoviz/issues><em>issue</em></a> en indiquant tous les détails nécessaires pour le reproduire.</p>
<h2 id=suggérer-un-changement>Suggérer un changement</h2>
<p>Les suggestions de modifications sont bienvenues. Les demandes peuvent concerner des fonctions additionnelles, des modifications dans la documentation, des exemples additionnels, de nouvelles fonctionnalités, etc. Elles peuvent être faites en ouvrant une <a href=https://github.com/sebastien-plutniak/archeoviz/issues>issue</a> ou, mieux encore, en employant une <em>pull requests</em> et le modèle GitHub <a href=https://docs.github.com/articles/about-pull-requests>Fork and Pull</a>.</p>
<h1 id=utilisation>Utilisation</h1>
<p>Considérant les objets archéologiques d’un site de fouille ou de prospection, <code>archeoViz</code> est conçu pour réduire les freins techniques à la réalisation de trois objectifs:</p>
<ul>
<li>l’exploration spatiale basique et la production de documents graphiques analytiques;</li>
<li>la pré-publication rapide de données archéologiques, à destination de la communauté scientifique;</li>
<li>le déploiement aisé d’un outil d’exposition et de communication, à destination d’un plus large public.</li>
</ul>
<p>En outre, <code>archeoViz</code> constitue une ressource pédagogique adaptée à l’enseignement des notions d’analyse spatiale en archéologie, de structuration de données, de science ouverte et de reproductibilité.</p>
<p>N.B.: par conséquent, <code>archeoViz</code> n’est pas destiné à se substituer à des outils d’analyse plus sophistiqués (e.g., SIG, packages de statistiques spatiales, etc.)</p>
<h2 id=linformation-spatiale-dans-archeoviz>L’information spatiale dans archeoViz</h2>
<p>Les archéologues enregistrent la localisation des objets archéologique à différentes échelles et granularité. En fonction de cela, ils utilisent différentes concepts géométriques pour représenter ces localisations.</p>
<h3 id=localisation-exacte--les-objets-relevés>Localisation exacte : les objets relevés</h3>
<p>L’utilisation d’un carroyage ou d’une “station totale” permet d’enregistrer la localisation individuelle des objets sur le terrain. Dans ce cas, dans <code>archeoViz</code>, localisation de ces objets sera visualisée par des points (des triplets de valeurs de coordonnées x, y, z).</p>
<h3 id=localisations-vagues--passes-seaux-tamis-et-erreurs-denregistement>Localisations vagues : passes, seaux, tamis et erreurs d’enregistement</h3>
<p>Toutefois, il est fréquent que les coordonnées x, y, z des objets ne soit pas disponible, pour différentes raisons:</p>
<ul>
<li>des erreurs d’enregistrement, des pertes d’information, entraînant la nécessité de remplacer une ou plusieurs valeurs de coordonnées par des intervalles de valeurs (par exemple, une valeur X est manquante pour un objet et est remplacée par les valeurs X minimale et maximale du carré où cet objet a été trouvé) ;</li>
<li>le choix de la méthode (par exemple, lors d’une fouille réalisée et enregistrée à l’aide de passes de profondeur arbitraire ou, encore, des objets issus de refus de tamis, etc.)</li>
</ul>
<p>Dans tous ces cas, les localisations à traiter sont vagues, lorsque la localisation des objets n’est pas connue univoquement mais se situe quelque part au sein d’intervalles de coordonnées. La localisation vague peut concerner une, deux, ou trois dimensions spatiales (respectivement les coordonnées x, y et z).</p>
<h2 id=remontages-et-mesures-de-fabrique>Remontages et mesures de fabrique</h2>
<h3 id=remontages>Remontages</h3>
<p>Les remontages sont généralement enregistrés de deux manières par les archéologues:</p>
<ol>
<li>par ensemble d’objets remontant entre eux: en employant alors un tableau à deux colonnes où une ligne correspond à un <strong>objet</strong>. La première colonne contient l’identifiant unique de l’objet et la deuxième colonne contient l’identifiant unique de l’ensemble d’objets remontant entre eux auquel l’objet considéré appartient.</li>
<li>par relation de remontage: en employant alors un tableau à deux colonnes où une ligne correspond à une <strong>relation de remontage</strong>. La première colonne contient l’identifiant unique du premier objet et la deuxième colonne contient l’identifiant unique du deuxième objet.</li>
</ol>
<p>Bien que la seconde structure de donnée soit plus précise, c’est la première qui est le plus fréquemment employée.</p>
<p>Ces deux structures de données sont traitées différemment dans <code>archeoViz</code>:</p>
<ul>
<li>les ensembles d’objets remontant entre eux doivent être décrits dans une colonne spécifique dans le tableau <code>objects.df</code> table (nommée par ex. <code>object_refits</code>) et sont représentés par la couleur des points dans les visualisations (comme pour tout autre variable);</li>
<li>les relations de remontage doivent être décrits dans un tableau <code>refits.df</code> et sont visualisés par des segments reliant les objets liés par des relations de remontage.</li>
</ul>
<h3 id=mesures-de-fabrique>Mesures de fabrique</h3>
<p>Pour l’heure, <code>archeoViz</code> ne gère pas les mesures de fabrique à proprement dit. Néanmoins, la procédure employée pour représenter les remontages peut être adaptée et employée pour représenter les mesures de fabriques. Cela suppose toutefois de tordre la logique de la structure des données de la manière suivante:</p>
<ul>
<li>en supposant que les mesures de fabriques ont été enregistrées en prenant deux mesures de localisation par objet (au contraire, donc, de mesure d’orientation et de pendage),</li>
<li>des valeurs d’identifiants uniques <code>id</code> doivent être attribuées aux deux points, et</li>
<li>les deux localisations sont traitées comme s’il s’agissait d’une relation de remontage entre deux objets.</li>
</ul>
<p>Un exemple de cette méthode est visible <a href=https://analytics.huma-num.fr/archeoviz/shuidonggou2>ici</a>.</p>
<h2 id=formater-des-données>Formater des données</h2>
<p>Trois types de données peuvent être chargées dans <code>archeoViz</code>:</p>
<ul>
<li>un tableau “objects” (requis), à propos des objets;</li>
<li>un tableau “refits” (optionnel), à propos des relations de remontage;</li>
<li>un tableau “timeline” (optionnel), à propos des carrés du site et des années où ils ont été fouillés ou prospectés.</li>
</ul>
<p>Les tableaux doivent être au format CSV et la première ligne doit contenir les noms des variables (le symbole séparateur du CSV peut être défini dans l’interface). Les contenus au format HTML sont autorisés. Cela permet notamment d’introduire références vers des ressources complémentaires du jeu de données (par exemple l’identifiant unique de l’objets dans une autre base de données, ou ceux de concepts d’ontologies employés pour décrire l’objet, etc.).</p>
<p>Le formatage des données peut être réalisé :</p>
<ul>
<li>soit en utilisant un tableur sur votre machine permettant d’exporter des fichiers CSV;</li>
<li>ou, pour le tableau des objets, en utilisant l’interface de l’application <a href=https://aurelienroyer.shinyapps.io/Seahors/><em>SEAHORS</em></a> en chargeant vos données, définissant les variables (onglet “Load data”), puis en les exportant au format <code>archeoViz</code> (onglet “Table” / “archeoViz exports”). Il est également possible de les transférer directement à une instance <code>archeoViz</code> en ligne.</li>
</ul>
<h3 id=tableau-des-objets>Tableau des objets</h3>
<p>Chaque ligne décrit un objet et doit comporter les variables obligatoires suivantes:</p>
<ul>
<li><strong>id</strong>: <em>valeur alphanumérique</em>, identifiant unique de l’objet</li>
<li><strong>xmin</strong>: <em>valeur numérique</em>, coordonnée de l’objet en axe X (en cm)</li>
<li><strong>ymin</strong>: <em>valeur numérique</em>, coordonnée de l’objet en axe Y (en cm)</li>
<li><strong>zmin</strong>: <em>valeur numérique</em>, coordonnée de l’objet en axe Z (valeur positive de profondeur en cm)</li>
<li><strong>layer</strong>: <em>valeur alphanumérique</em>, identifiant de la couche de l’objet</li>
<li><strong>object_type</strong>: <em>valeur alphanumérique</em>, catégorie de l’objet</li>
</ul>
<p>De plus, des variables optionnelles sont possibles:</p>
<ul>
<li><strong>square_x</strong>: <em>valeur alphanumérique</em>, identifiant du carré de l’objet en axe X</li>
<li><strong>square_y</strong>: <em>valeur alphanumérique</em>, identifiant du carré de l’objet en axe Y</li>
<li><strong>year</strong>: <em>valeur numérique</em>, année de fouille de l’objet</li>
<li><strong>xmax</strong>: <em>valeur numérique</em>, lorsque la localisation de l’objet en X est comprise dans un intervalle de coordonnées</li>
<li><strong>ymax</strong>: <em>valeur numérique</em>, lorsque la localisation de l’objet en Y est comprise dans un intervalle de coordonnées</li>
<li><strong>zmax</strong>: <em>valeur numérique</em>, lorsque la localisation de l’objet en Z est comprise dans un intervalle de coordonnées</li>
<li><strong>object_edit</strong>: nombre non limité de variables additionnelles décrivant l’objet (les noms de colonnes doivent commencer par <em>object_</em> et avoir des suffixes différents</li>
</ul>
<p>Les labels des carrés du carroyage:</p>
<ul>
<li>sont ordonnés alpha-numériquement;</li>
<li>ne sont pas affichés, afin d’éviter des affichages erronés, si le nombre de labels ne correspond pas exactement au nombre total de carrés de 100cm pouvant être définis dans l’intervalle des coordonnées minimales et maximales contenues dans les variables xmin et ymin;</li>
<li>peuvent être complétés avec les paramètres <code>add.x.square.labels</code> et <code>add.y.square.labels</code> de la fonction <code>archeoViz()</code> afin d’ajouter les labels manquants (respectivement, sur les axes X et Y du carroyage).</li>
</ul>
<h3 id=tableau-des-remontages>Tableau des remontages</h3>
<p>Un tableau à deux colonnes peut être chargé pour les remontages entre objets (format CSV). Chaque ligne doit contenir les identifiants uniques des deux objets liés à une relation de remontage (en correspondance avec les valeurs de la colonne <code>id</code> du tableau des objets).</p>
<h3 id=tableau-de-la-chronologie>Tableau de la chronologie</h3>
<p>Optionnellement, un tableau (CSV) peut être chargé à propos du déroulé de la fouille. Chaque ligne est relative à un carré de fouille et indique quand ce carré a été fouillé ou prospecté. Le tableau doit comporter les variables suivantes:</p>
<ul>
<li><strong>year</strong>: valeur numérique, année de fouille</li>
<li><strong>square_x</strong>: valeur alphanumérique, identifiant du carré en axe X</li>
<li><strong>square_y</strong>: valeur alphanumérique, identifiant du carré en axe Y</li>
</ul>
<h2 id=charger-des-données>Charger des données</h2>
<p>Quatre manières permettent de charger des données dans <code>archeoViz</code>:</p>
<ol>
<li>en téléchargeant des tableaux à partir de l’onglet “Données”;</li>
<li>en générant des données aléatoires dans l’onglet “Données”;</li>
<li>en chargeant des tableaux à travers les paramètres de la fonction <code>archeoViz</code>, dans un environnement R;</li>
<li>en téléchargeant des tableaux via les paramètres d’URL, lors de l’utilisation d’une instance <code>archeoViz</code> en ligne.</li>
</ol>
<h3 id=via-linterface-de-lapplication>Via l’interface de l’application</h3>
<p>Des tableaux pour trois types de données peuvent être chargés à partir de l’onglet “Données”. Le séparateur CSV (la virgule, le point-virgule ou la tabulation) et le caractère distinguant les décimales dans les nombres (point ou virgule) peuvent être paramétrés.</p>
<h3 id=par-génération-de-données-aléatoires>Par génération de données aléatoires</h3>
<p>À des fins de démonstration, il est possible d’employer des données générées aléatoirement. Déplacer le curseur sur une valeur supérieure à 0, dans l’onglet “Données”, active cette fonctionnalité (replacer le curseur sur 0 la désactive). Des données d’objets, de remontage, et de chronologie de la fouille sont alors générés, permettant de tester toutes les fonctionnalités d’<code>archeoViz</code>.</p>
<h3 id=via-les-paramètres-de-la-fonction-r>Via les paramètres de la fonction R</h3>
<p>La fonction de lancement d’<code>archeoViz()</code> peut être exécutée sans définir de paramètres:</p>
<div class=sourceCode id=cb6><pre class=sourceCode r><code class=sourceCode r><a class=sourceLine id=cb6-1 data-line-number=1><span class=kw>archeoViz</span>()</a></code></pre></div>
<p>ou en employant les paramètres <code>objects.df</code>, <code>refits.df</code>, <code>timeline.df</code> afin de charger des données relatives, respectivement, aux objets, aux remontages, et à la chronologie.</p>
<div class=sourceCode id=cb7><pre class=sourceCode r><code class=sourceCode r><a class=sourceLine id=cb7-1 data-line-number=1><span class=kw>archeoViz</span>(<span class=dt>objects.df =</span> <span class=ot>NULL</span>,  <span class=co># data.frame pour les objets</span></a>
<a class=sourceLine id=cb7-2 data-line-number=2>          <span class=dt>refits.df =</span> <span class=ot>NULL</span>,   <span class=co># data.frame optionnel pour les remontages</span></a>
<a class=sourceLine id=cb7-3 data-line-number=3>          <span class=dt>timeline.df =</span> <span class=ot>NULL</span>) <span class=co># data.frame optionnel pour la chronologie</span></a></code></pre></div>
<h3 id=via-les-paramètres-dune-url>Via les paramètres d’une URL</h3>
<p>L’URL d’une instance <code>archeoViz</code> en ligne peut être complétée avec les paramètres:</p>
<ul>
<li><code>objects.df=</code></li>
<li>`refits.df=``</li>
<li><code>timeline.df=</code></li>
</ul>
<p>prenant pour valeurs l’URL d’un fichier CSV respectant le format <code>archeoViz</code> décrit ci-dessus. Par exemple: <a href=https://analytics.huma-num.fr/archeoviz/fr/?objects.df=https://zenodo.org/record/8003880/files/bilzingsleben.csv class=uri>https://analytics.huma-num.fr/archeoviz/fr/?objects.df=https://zenodo.org/record/8003880/files/bilzingsleben.csv</a></p>
<h2 id=sous-sélection-de-données>Sous-sélection de données</h2>
<p>Après que les données soient chargées, des sous-sélections peuvent être réalisées en employant les options du menu gauche de l’interface. Plusieurs paramètres sont possibles: le mode de localisation, les catégories des objets, et la définition de sous-groupes de données.</p>
<h3 id=par-mode-de-localisation>Par mode de localisation</h3>
<p>Si tous les objets ont des localisation soit exactes soit vagues, aucune option n’est proposée. Par contre, le jeu de données comprend des localisations des deux types, alors il est possible de n’en sélectionner qu’un type ou les deux.</p>
<h3 id=par-couche-ou-catégorie-dobjet>Par couche ou catégorie d’objet</h3>
<p>Des sous-groupes de données peuvent être définies de deux manières: soit par couche ou en fonction de la variable “object_” sélectionnée. Cette option détermine l’application des couleurs dans les graphiques 3D et 2D et les sous-groupes de données auxquels sont appliqués les calculs de surface de régression et d’enveloppes convexes. Des sous-ensembles de données peuvent être définis à partir des catégories des objets, en employant les champs “Variable” et “Valeurs”. Après que l’une des variables ait été sélectionnée (“object_type” ou une autre “object_” variable possible), ses valeurs apparaissent en dessous et peuvent être sélectionnées en cochant les items. La sélection doit être validée en cliquant sur le bouton “Valider”. Cette sélection détermine les données qui seront présentées dans les graphiques et tableaux.</p>
<h2 id=visualisations-interactives>Visualisations interactives</h2>
<h3 id=généralités>Généralités</h3>
<p>Les visualisations dans les onglets “Vue 3D”, “Carte”, “Section X” et “Section Y” sont générées à l’aide de la librairie <a href=https://CRAN.R-project.org/package=plotly/><code>plotly</code></a>. Toutes ces visualisations sont dynamiques et sont surmontées d’une barre de menu comportant plusieurs options (générer un fichier image, zoomer, déplacer le point de vue, etc.). Davantage de détails sont disponibles sur le <a href=http://plotly.github.io/getting-to-know-the-plotly-modebar/>site de <code>plotly</code></a>.</p>
<p>Cliquer sur un item de la légende modifie l’affichage:</p>
<ul>
<li>un simple clic sur un item active/désactive son affichage;</li>
<li>un double clic sur un item limite l’affichage à cet item seul (un autre double clic annule cette sélection).</li>
</ul>
<p>Cette fonctionnalité permet de définir les couches devant être affichées. De plus, la taille des points peut être ajustée, ainsi que l’affichage ou non des relations de remontage.</p>
<p>Enfin, cliquer sur un point active l’affichage d’informations à son sujet dans le tableau présent sous les visualisations.</p>
<h3 id=visualisation-de-lincertitude-spatiale>Visualisation de l’incertitude spatiale</h3>
<p>Dans <code>archeoViz</code>, une distinction est faite entre les localisations exactes (données sous la forme de coordonnées x, y, z) et les localisations vagues (données sous la forme d’intervalles de coordonnées). Il est possible d’afficher Les deux types de localisations peuvent être visualisées. Les incertitudes des localisations peuvent être rendues en représentant les objets non pas comme des points mais comme des lignes, des plans, ou des volumes (si des intervalles de coordonnées sont précisés pour, respectivement, une, deux ou trois dimensions spatiales). Cette dernière option est gourmande en ressources, l’appliquer à un nombre important d’objets peut ralentir considérablement l’application.</p>
<h3 id=sorties-graphiques>Sorties graphiques</h3>
<p>Plusieurs sorties graphiques peuvent être générées dans <code>archeoViz</code>.</p>
<ul>
<li>Les visualisations en 3D, en plan et en sections peuvent être exportées:
<ul>
<li>au format SVG, en cliquant sur l’icône “appareil photo” de la barre de menu s’affichant au-dessus des visualisations;</li>
<li>en format HTML interactif, en cliquant sur le bouton “Exporter” dans la colonne droite de l’interface.</li>
</ul></li>
<li>Le plan miniature dans les onglets “Section X” et “Section Y” peut être exporté au format SVG en cliquant sur le lien “Télécharger plan”.</li>
<li>Le plan de la chronologie des fouilles peut être téléchargé au format SVG en cliquant sur le bouton “Télécharger”.</li>
</ul>
<h2 id=statistiques-spatiales>Statistiques spatiales</h2>
<p><code>archeoViz</code> comporte quelques fonctionnalités d’analyse spatiale, destinées à usage simple et exploratoire.</p>
<h3 id=surfaces-de-régression>Surfaces de régression</h3>
<p>Dans l’onglet “Vue 3D”, cliquer sur “Calculer les surfaces” puis “Valider” affiche les surfaces de régression associées à chaque sous-ensemble de points (couche), comportant au moins 100 points. Les surfaces sont calculées grâce au modèle additif généralisé implémenté dans le package <a href=https://CRAN.R-project.org/package=mgcv><code>mgcv</code></a>.</p>
<h3 id=enveloppes-convexes>Enveloppes convexes</h3>
<p>Cliquer sur “Calculer les enveloppes” puis “Valider”, dans l’onglet “Vue 3D”, affiche les enveloppes convexes associées à chaque sous-ensemble de points (couches), comportant au moins 20 points. Les enveloppes sont calculées en employant le package <a href=https://CRAN.R-project.org/package=cxhull><code>cxhull</code></a>.</p>
<h3 id=estimation-2d-de-densité-par-noyau>Estimation 2D de densité par noyau</h3>
<p>Dans l’onglet “Plan”, cocher la case “Calculer la densité” et cliquer sur “Valider” génère un plan comportant des lignes de contour représentant la densité des points. La densité peut être calculée pour l’ensemble des points ou par couche (comportant au moins 30 points). L’estimation bidimensionnelle de densité par noyau est calculée avec la fonction <code>kde2d</code> du package <a href=https://CRAN.R-project.org/package=MASS><code>MASS</code></a> (à travers le package <a href=https://CRAN.R-project.org/package=ggplot2><code>ggplot2</code></a>).</p>
<h2 id=reproductibilité>Reproductibilité</h2>
<p><code>archeoViz</code> est, par définition, une application interactive. Toutefois, plusieurs fonctionnalités permettent de satisfaire les besoins de reproductibilité et de communicabilité des résultats d’interactions avec l’application.</p>
<ul>
<li>La visualisation 3D est exportable dans un format interactif HTML <em>standalone</em>, tenant compte de la sous-sélection de données effectuée par l’utilisateur (dans le menu latéral gauche).</li>
<li>Dans l’onglet “Reproductibilité”, une commande R est générée dynamiquement, tenant compte du paramétrage de l’application réalisé par l’utilisateur en agissant avec l’interface graphique.</li>
<li>Dans un usage plus avancé, les paramètres d’URL permettent de paramétrer une instance en ligne de l’application avec des paramètres d’intérêt et de la communiquer l’ensemble en envoyant l’URL à un tiers.</li>
</ul>
<h2 id=paramètres-avancés>Paramètres avancés</h2>
<p>La fonction <code>archeoViz()</code> admet de nombreux paramètres optionnels, relatifs aux:</p>
<ul>
<li>données à charger (traité <a href=#par-paramétrage-de-la-fonction>ci-dessus</a>),</li>
<li>contenu de la page d’accueil (traité <a href=#déployée>ci-dessus</a>),</li>
<li><a href=#carroyage>carroyage</a>,</li>
<li><a href=#pré-sélection-des-paramètres>pré-paramètrage</a> des paramètres pouvant être définis dans l’interface graphique,</li>
<li><a href=#affichage-réactif-des-visualisations>comportement réactif</a> de l’application à propos du calcul et de l’affichage des visualisations.</li>
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
<a class=sourceLine id=cb8-8 data-line-number=8>          <span class=dt>plot3d.ratio =</span> <span class=dv>1</span>, <span class=dt>plot3d.hulls =</span> <span class=ot>NULL</span>, <span class=dt>plot3d.surfaces =</span> <span class=ot>NULL</span>, <span class=dt>plot3d.refits =</span> <span class=ot>NULL</span>,</a>
<a class=sourceLine id=cb8-9 data-line-number=9>          <span class=dt>sectionX.x.val =</span> <span class=ot>NULL</span>, <span class=dt>sectionX.y.val =</span> <span class=ot>NULL</span>, <span class=dt>sectionX.refits =</span> <span class=ot>NULL</span>, </a>
<a class=sourceLine id=cb8-10 data-line-number=10>          <span class=dt>sectionY.x.val =</span> <span class=ot>NULL</span>, <span class=dt>sectionY.y.val =</span> <span class=ot>NULL</span>, <span class=dt>sectionY.refits =</span> <span class=ot>NULL</span>,</a>
<a class=sourceLine id=cb8-11 data-line-number=11>          <span class=dt>camera.center =</span> <span class=kw>c</span>(<span class=dv>0</span>, <span class=dv>0</span>, <span class=dv>0</span>), <span class=dt>camera.eye =</span> <span class=kw>c</span>(<span class=fl>1.25</span>, <span class=fl>1.25</span>, <span class=fl>1.25</span>),</a>
<a class=sourceLine id=cb8-12 data-line-number=12>          <span class=dt>run.plots =</span> <span class=ot>FALSE</span>, <span class=dt>html.export =</span> <span class=ot>TRUE</span></a>
<a class=sourceLine id=cb8-13 data-line-number=13>          )</a></code></pre></div>
<h3 id=carroyage>Carroyage</h3>
<div class=sourceCode id=cb9><pre class=sourceCode r><code class=sourceCode r><a class=sourceLine id=cb9-1 data-line-number=1><span class=kw>archeoViz</span>(<span class=dt>square.size =</span> <span class=dv>100</span>,</a>
<a class=sourceLine id=cb9-2 data-line-number=2>          <span class=dt>reverse.axis.values =</span> <span class=ot>NULL</span>, <span class=dt>reverse.square.names =</span> <span class=ot>NULL</span>,</a>
<a class=sourceLine id=cb9-3 data-line-number=3>          <span class=dt>add.x.square.labels =</span> <span class=ot>NULL</span>, <span class=dt>add.y.square.labels =</span> <span class=ot>NULL</span></a>
<a class=sourceLine id=cb9-4 data-line-number=4>          )</a></code></pre></div>
<ul>
<li><strong>square.size</strong> : numérique. Taille (longueur et largeur) en centimètre des carrés du carroyage. La valeur par défaut est 100 cm.</li>
<li><strong>reverse.axis.values</strong> : caractères. Nom de l’axe ou des axes à inverser (une combinaison de ‘x’, ‘y’, ‘z’).</li>
<li><strong>reverse.square.names</strong> : caractères. Nom de l’axe ou des axes pour lesquels inverser l’ordre des labels de carrés (une combinaison de ‘x’, ‘y’, ‘z’).</li>
<li><strong>add.x.square.labels</strong> : caractères. Labels de carrés additionnels pour l’axe ‘x’.</li>
<li><strong>add.y.square.labels</strong> : caractères. Labels de carrés additionnels pour l’axe ‘y’.</li>
</ul>
<h3 id=pré-sélection-des-paramètres>Pré-sélection des paramètres</h3>
<div class=sourceCode id=cb10><pre class=sourceCode r><code class=sourceCode r><a class=sourceLine id=cb10-1 data-line-number=1><span class=kw>archeoViz</span>(<span class=dt>class.variable =</span> <span class=ot>NULL</span>, <span class=dt>class.values =</span> <span class=ot>NULL</span>,</a>
<a class=sourceLine id=cb10-2 data-line-number=2>          <span class=dt>default.group =</span> <span class=st>&quot;by.layer&quot;</span>, <span class=dt>location.mode =</span> <span class=ot>NULL</span>,</a>
<a class=sourceLine id=cb10-3 data-line-number=3>          <span class=dt>map.z.val =</span> <span class=ot>NULL</span>, <span class=dt>map.density =</span> <span class=st>&quot;no&quot;</span>, <span class=dt>map.refits =</span> <span class=ot>NULL</span>,</a>
<a class=sourceLine id=cb10-4 data-line-number=4>          <span class=dt>plot3d.hulls =</span> <span class=ot>NULL</span>, <span class=dt>plot3d.surfaces =</span> <span class=ot>NULL</span>, <span class=dt>plot3d.refits =</span> <span class=ot>NULL</span>,</a>
<a class=sourceLine id=cb10-5 data-line-number=5>          <span class=dt>sectionX.x.val =</span> <span class=ot>NULL</span>, <span class=dt>sectionX.y.val =</span> <span class=ot>NULL</span>, <span class=dt>sectionX.refits =</span> <span class=ot>NULL</span>, </a>
<a class=sourceLine id=cb10-6 data-line-number=6>          <span class=dt>sectionY.x.val =</span> <span class=ot>NULL</span>, <span class=dt>sectionY.y.val =</span> <span class=ot>NULL</span>, <span class=dt>sectionY.refits =</span> <span class=ot>NULL</span>,</a>
<a class=sourceLine id=cb10-7 data-line-number=7>          <span class=dt>camera.center =</span> <span class=ot>NULL</span>, <span class=dt>camera.eye =</span> <span class=ot>NULL</span></a>
<a class=sourceLine id=cb10-8 data-line-number=8>          )</a></code></pre></div>
<ul>
<li><strong>class.variable</strong>: caractères. Au lancement de l’application, nom de la variable à pré-sélectionner.</li>
<li><strong>class.values</strong>: caractères. Au lancement de l’application, nom des valeurs à pré-sélectionner.</li>
<li><strong>default.group</strong>: caractères. Au lancement de l’application, pré-sélection de la variable à employer pour grouper les données (soit “by.layer” ou “by.variable”).</li>
<li><strong>location.mode</strong>: caractères. Au lancement de l’application, pré-sélection du ou des modes de localisation à afficher (une combinaison des valeurs possibles “exact”, “fuzzy”, “show.uncertainty”).</li>
<li><strong>map.z.val</strong>: numérique. Au lancement de l’application, valeurs minimale et maximale des coordonnées Z à présélectionner dans la visualisation en plan.</li>
<li><strong>map.density</strong>: caractères. Au lancement de l’application, calculer et afficher ou non les courbes de densité dans la visualisation en plan (soit “no”, “overall”, ou “by.variable”).</li>
<li><strong>map.refits</strong>: TRUE ou FALSE. Afficher ou non les remontages dans la visualisation en plan.</li>
<li><strong>plot3d.hulls</strong>: TRUE ou FALSE. Au lancement de l’application, calculer et afficher ou non les enveloppes convexes dans la visualisation 3D.</li>
<li><strong>plot3d.surfaces</strong>: TRUE ou FALSE. Au lancement de l’application, calculer et afficher ou non les surfaces de régression dans la visualisation 3D.</li>
<li><strong>plot3d.refits</strong>: TRUE ou FALSE. Au lancement de l’application, afficher ou non les remontages dans la visualisation 3D.</li>
<li><strong>sectionX.x.val</strong>: numérique. Au lancement de l’application, valeurs minimale et maximale des coordonnées X à présélectionner dans la visualisation en section X.</li>
<li><strong>sectionX.y.val</strong>: numérique. Au lancement de l’application, valeurs minimale et maximale des coordonnées Y à présélectionner dans la visualisation en section X.</li>
<li><strong>sectionX.refits</strong>: TRUE ou FALSE. Au lancement de l’application, afficher ou non les remontages dans la visualisation en section X.</li>
<li><strong>sectionY.x.val</strong>: numérique. Au lancement de l’application, valeurs minimale et maximale des coordonnées X à présélectionner dans la visualisation en section Y.</li>
<li><strong>sectionY.y.val</strong>: numérique. Au lancement de l’application, valeurs minimale et maximale des coordonnées Y à présélectionner dans la visualisation en section Y.</li>
<li><strong>sectionY.refits</strong>: TRUE ou FALSE. Au lancement de l’application, afficher ou non les remontages dans la visualisation en section Y.</li>
<li><strong>camera.center</strong>: numérique. Au lancement de l’application, coordonnées du point vers lequel la caméra est orientée dans la visualisation 3D (valeurs par défaut: x=0, y=0, z=0).</li>
<li><strong>camera.eye</strong>: numérique. Au lancement de l’application, coordonnées de la position de la caméra dans la visualisation 3D (valeurs par défaut: x=1.25, y=1.25, z=1.25).</li>
</ul>
<h3 id=affichage-réactif-des-visualisations>Affichage réactif des visualisations</h3>
<div class=sourceCode id=cb11><pre class=sourceCode r><code class=sourceCode r><a class=sourceLine id=cb11-1 data-line-number=1><span class=kw>archeoViz</span>(<span class=dt>run.plots =</span> <span class=ot>FALSE</span>)</a></code></pre></div>
<ul>
<li><strong>run.plots</strong>: TRUE ou FALSE. Si les visualisations doivent, ou non, être immédiatement calculées et affichées (sans nécessiter un clic sur les boutons de l’interface).</li>
</ul>
<h3 id=export-html>Export HTML</h3>
<ul>
<li><strong>html.export</strong>: TRUE ou FALSE. Afficher ou non les boutons permettant d’exporter les visualisations en format HTML interactif.</li>
</ul>
<h3 id=paramètres-url>Paramètres URL</h3>
<p>Une instance <code>archeoViz</code> deployée en ligne sur un serveur peut être paramétrée en ajustant les paramètres de l’URL. Les paramètres acceptés supportés:</p>
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
<p>(Les paramètres suivants ne sont pas supportés dans la version actuelle de l’application: <code>map.z.val</code>, <code>sectionX.x.val</code>, <code>sectionX.y.val</code>, <code>sectionY.x.val</code>, <code>sectionY.y.val</code>, <code>lang</code>, <code>set.theme</code>, <code>camera.center</code>, <code>camera.eye</code>, <code>html.export</code>.)</p>
<p>Les paramètres doivent être écris en respectant la syntaxe URL (?param1=value&amp;param2=value2) et avoir le même type de valeurs que dans leur usage dans l’interface R. Par exemple, l’URL suivante lance une instance <code>archeoViz</code> à partir du tableau principal du jeu de données <a href=https://zenodo.org/record/8003880>Bilzingsleben</a>:</p>
<p><a href=https://analytics.huma-num.fr/archeoviz/en/?objects.df=https://zenodo.org/record/8003880/files/bilzingsleben.csv class=uri>https://analytics.huma-num.fr/archeoviz/en/?objects.df=https://zenodo.org/record/8003880/files/bilzingsleben.csv</a></p>
<p>Cette URL fait de même, mais inclut également le tableau des remontages (paramètre <code>&amp;refits.df=</code>) et active l’affichage immédiat des relations de remontage dans le graphique 3D et le plan:</p>
<p><a href=https://analytics.huma-num.fr/archeoviz/en/?map.refits=TRUE&amp;plot3d.refits=TRUE&amp;objects.df=https://zenodo.org/record/8003880/files/bilzingsleben.csv&amp;refits.df=https://zenodo.org/record/8003880/files/bilzingsleben-antlers-refits.csv class=uri>https://analytics.huma-num.fr/archeoviz/en/?map.refits=TRUE&amp;plot3d.refits=TRUE&amp;objects.df=https://zenodo.org/record/8003880/files/bilzingsleben.csv&amp;refits.df=https://zenodo.org/record/8003880/files/bilzingsleben-antlers-refits.csv</a></p>
<p>L’URL suivante lance le jeu de données Bilzingsleben, en pré-réglant l’application telle que:</p>
<ol>
<li>les points sont groupés par variable (paramètre <code>default.group</code>, avec la valeur <code>by.variable</code> plutôt que <code>by.layer</code>)</li>
<li>ne sélectionne que les “Antlers” (paramètre <code>class.values</code>)</li>
<li>redéfini la taille des carrés du carroyage (paramètre <code>square.size</code> 500 cm au lieu de la valeur par défaut 100cm)</li>
<li>active l’affichage immédiat des graphiques (paramètre <code>run.plots</code>)</li>
<li>modifie le titre de la page (paramètre <code>title</code>)</li>
<li>modifie le contenu de la page d’accueil, illustrant l’usage d’un simple balisage HTML (paramètre <code>home.txt</code>)</li>
</ol>
<p><a href=https://analytics.huma-num.fr/archeoviz/en/?default.group=by.variable&amp;class.values=Antler&amp;square.size=500&amp;run.plots=TRUE&amp;title=Anters%20at%20Bilzingsleben&amp;home.text=Many%20%3Cb%3Eantlers%3C/b%3E&amp;objects.df=https://zenodo.org/record/8003880/files/bilzingsleben.csv>https://analytics.huma-num.fr/archeoviz/en/?default.group=by.variable&amp;class.values=Antler&amp;square.size=500&amp;run.plots=TRUE&amp;title=Antlers%20at%20Bilzingsleben&amp;home.text=Many%20<b>antlers</b>&amp;objects.df=https://zenodo.org/record/8003880/files/bilzingsleben.csv</a></p>
<p>À noter que les paramètres <code>add.x.square.labels</code>, <code>add.y.square.labels</code>, <code>location.mode</code>, et <code>class.values</code>, qui admettent des valeurs simples ou multiples dans l’interface R (par ex. c(“value1”, “value2”)) n’admettent qu’une seule valeur lorsqu’employé comme paramètre d’URL (il s’agit d’une restriction liée à la syntaxe URL).</p>
<h1 id=remerciements>Remerciements</h1>
<p>L’application et le package <code>archeoViz</code> sont développés et maintenus par Sébastien Plutniak. Arthur Coulon, Solène Denis, Olivier Marlet, et Thomas Perrin ont testé et soutenu ce projet durant ses premières étapes. Renata Araujo, Sara Giardino et Julian Laabs ont traduit l’application respectivement en portugais, italien et allemand.</p>
<h1 id=références>Références</h1>
<h2 id=logiciels>Logiciels</h2>
<ul>
<li>Plutniak, Sébastien, Renata Araujo, Sara Giardino, Julian Laabs. 2023. “archeoViz. Visualisation, Exploration, and Web Communication of Archaeological Spatial Data”. v1.2.2, DOI: <a href=https://doi.org/10.5281/zenodo.7460193>10.5281/zenodo.7460193</a>.</li>
<li>Plutniak, Sébastien, Anaïs Vignoles. 2023. “<a href=https://hal.science/hal-04156271>The archeoViz Portal: Dissemination of Spatial Archaeological Datasets</a>”, portail web, <a href=https://analytics.huma-num.fr/archeoviz/home class=uri>https://analytics.huma-num.fr/archeoviz/home</a>.</li>
</ul>
<h2 id=articles>Articles</h2>
<ul>
<li>Plutniak, Sébastien. Submitted. “archeoViz: an R package for the Visualisation, Exploration, and Web Communication of Archaeological Spatial Data”. <em>Journal of Open Source Software</em>.</li>
<li>Plutniak, Sébastien. 2023. “<a href=https://www.prehistoire.org/offres/doc_inline_src/515/0-BSPF_2023_1_2e_partie_Correspondance_PLUTNIAK.pdf>Visualiser et explorer la distribution spatiale du mobilier archéologique : l’application archeoViz et son portail web</a>”. <em>Bulletin de la Société préhistorique française</em>, 120(1), p. 70-74.</li>
</ul>
<h2 id=présentations>Présentations</h2>
<ul>
<li>Plutniak, Sébastien. 2023. “<a href=https://hal.science/hal-04146410>Fostering the Publication of Spatial Archaeological Data: a Decentralized Approach. The archeoViz Web Application and its Portal</a>”, Slides of a presentation at the University of Florida, Gainesville.</li>
<li>Plutniak, Sébastien, Anaïs Vignoles. 2023. “<a href=https://hal.science/hal-04070444>L’application web / package archeoViz et son portail web. Une solution décentralisée d’éditorialisation de données archéologiques spatialisées</a>, slides of a presentation at the SITRADA workshop, Paris.</li>
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
    tab.tables = "Tableaux",
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
    total = "Total",
    objects = "objets",
    year = "Année",
    variable = "Variable",
    show.uncertainty = "Montrer les incertitudes",
    linear.uncertainty = "incertitude linéaire",
    planar.uncertainty = "incertitude planaire",
    volume.uncertainty = "incertitude volumétrique",
    linear = "Linéaire",
    planar = "Planaire",
    volume = "Volumétrique",
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
    year = "year",
    variable = "Variable",
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
    tab.home = "Início",
    tab.input = "Dados",
    tab.plot3d ="Visualização 3D",
    tab.map = "Mapa",
    tab.tables = "Tabelas",
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
    show.uncertainty = "Mostrar incerteza",
    linear.uncertainty = "incerteza linear",
    planar.uncertainty = "incerteza plana",
    volume.uncertainty = "incerteza volumétrica",
    linear = "Lineare",
    planar = "Planare",
    volume = "Volumetrica",
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
    tab.tables = "Tabelle",
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
    show.uncertainty = "Mostra l'incertezza",
    linear.uncertainty = "incertezza lineare",
    planar.uncertainty = "incertezza planare",
    volume.uncertainty = "incertezza volumetrica",
    linear = "Lineare",
    planar = "Planare",
    volume = "Volumetrica",
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
    tab.tables = "Tabellen",
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
    year = "Jahr",
    variable = "Variable",
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

  
  # SWITCH ----
  if(length(grep("en", lang, ignore.case = T)) == 1){ ui.terms <- en }
  if(length(grep("fr", lang, ignore.case = T)) == 1){ ui.terms <- fr }
  if(length(grep("it", lang, ignore.case = T)) == 1){ ui.terms <- it }
  if(length(grep("port", lang, ignore.case = T)) == 1 | lang == "pt"){ ui.terms <- pt}
  if(length(grep("de", lang, ignore.case = T)) == 1){ ui.terms <- de }
  
  
  ui.terms
}


