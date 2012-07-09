![http://www.xdams.org](http://www.xdams.org/wp-content/uploads/2012/07/logo3.jpg)

## xDams Platform

xDams � una piattaforma di gestione documentale XML interamente web-based che permette di conservare, organizzare, condividere e valorizzare i patrimoni archivistici attraverso l�applicazione di modelli dati elaborati sulla base di standard di descrizione archivistica nazionali ed internazionali. L�utilizzo del formato XML garantisce interoperabilit� e condivisione delle risorse.
E� attualmente disponbile nella versione server **1.0.0**


## Requisiti hardware minimi

* Processore Intel Xeon 2.00 Ghz compatibile
* 2 GB di RAM
* Spazio disco minimo: 100 GB

Sono comunque consigliati:

*	Processore multi Core
*	RAM 4-8GB
*	Spazio disco minimo: 300 GB (in funzione del volume archivi)

## Ambienti software del server

xDams � un sistema multipiattaforma funzionanante sui sistemi operativi GNU/Linux, Windows XP e superiori. Attualmente viene rilasciato con documentazione di installazione per la sola versione Windows.I requisiti software per l�installazione della piattaforma sono:

*	Java 2 SDK
*	Apache Tomcat ver. 6.x o superiori
*	ImageMagick (per la gestione di oggetti digitali)
*	Extraway Open Platform (per la gestione del repository XML)
*	Webserver (opzionale)

## Requisiti del client

Le istruzioni di configurazione riportate in questa pagina riguardano il setup del browser necessarie per accedere al sistema di backoffice di xDams, denominta "Workspace".

L�interfaccia dell�applicazione � fruibile ad una risoluzione minima di 1024x768 o superiore ed il Workspace di xDams � stato testato con Internet Explorer, Google Chrome e Firefox  (IE versione 8.0 o successive, Chrome versione 16.x o superiori, Firefox versione 3.0 o successive). Il Workspace fa utilizzo di JavaScript, con utilizzo di finestre popup e di cookie.

Ci� significa che per accedere al Workspace di xDams � necessario:

*	Abilitare JavaScript
*	Consentire l�utilizzo di Popups
*	Abilitare Cookies
*	Flash Player installato


## Installazione

Per la versione Windows, procedere al download dell�ultima versione di **xDams Open Source** scaricabile dal sito [http://www.xdams.org/download/] (http://www.xdams.org/download/)
Scaricare poi l�ultima versione della piattaforma Extraway Open Platform dalla pagina di [source forge] (http://sourceforge.net/projects/extraway/files/eXtraWay%20OpenPlatform/1.0/), selezionando la versione corretta per il proprio sistema operativo.
Verificare i requisiti client.

Seguire le indicazioni riportate nel paragrafo �Installazione su Server Windows� del [documento di installazione] (https://github.com/downloads/xdamsorg/xDams-core/xDamsOSS_1.0.0_installation_guidelines.pdf)


## Accesso al sistema 

Ora il sistema xDams � pronto per l�utilizzo! Seguire i seguenti passi per avviare correttamente la web application di xDams.

*	Riavviare il servizio extraway
*	Riavviare Apache Tomcat
*	Aprire un browser internet e digitare l�indirizzo: [http://localhost:8080/xDams/login.html] (http://localhost:8080/xDams/login.html)
*	Nel campo �Nome utente� digitare admin e nel campo Password il valore xdams.org


## Compilazione del sorgente 


1. Clonare il repository xdams-core sul tuo sistema locale, utilizzando il pulsante "Clone a Git Repository.." nell'interfaccia di Eclipse "Git Repository Explorer Perspective "
2. Usa il comando "mvn install" per la risoluzione delle dipendenze e la compilazione del progetto
3. Genera la nuova distribuzione con il comando "mvn package" 


## Autore

[http://www.xdams.org](http://www.xdams.org)


## Licenza

Il codice sorgente di xDams viene rilasciato sotto licenza [GNU GPL3] (http://www.gnu.org/licenses/gpl-3.0.html), che prevede la modifica, la copia, la ridistribuzione e l�utilizzo del software anche a fini commerciali e non esclude la realizzazione di prodotti derivati a patto che ogni copia, modifica o prodotto derivato da questo software sia rilasciato sotto gli stessi termini d�uso. L�installazione e l�utilizzo della piattaforma comportano l�accettazione della licenza, si raccomanda perci� di leggerne il testo prima di effettuare il download.