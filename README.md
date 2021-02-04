# SEU-as-code Dillinger Hütte


### Willkommen zu ideaConfig


ideaConfig ist ein im Rahmen von SEU-as-code DH notwendiges Verzeichnis, dass die Globale Configuration der IDEA beinhaltet.

## Inhalt
Dieses Verzeichnis beinhaltet für die Nutzung von IntelliJ, die Notwendigen DH Konfigurationen:
* Plugins
* JDK Lokalisation
* Settings.xml Lokalisation
* Code Convention

 [Anleitung zum Bereitstellen neuer Konfigurationen](http://confluence.int.shsservices.de/pages/viewpage.action?pageId=90124606)


## Nützliche Links:

* [Übersichtsfolie](http://confluence.dillinger.de/display/tistw/seu-as-code) - Folie zur Übersicht verschiedener Anleitungen bezüglich SEU-as-code DH

## Manuelle Einstellungen beim auschecken eines Projektes
* #### Anlegen eines neuen Teamscale-Servers
    1. In Intellij unter File-->Settings-->Tools-->Teamscale auf das rechte + Zeichen klicken
    2. Dort alle benötigten Daten zum neuen Server eingeben 
    3. Danach auf apply drücken und mit ok abschließen die Einstellung
* #### Umstellen des SQL-Dialect in einem Projekt
    1. In Intellij unter File--> Settings --> Languages & Frameworks -->Spring --> SQl Dialects auf Project SQL-Dialects klicken und Generic SQL auswählen
    2. Auf apply klicken und mit ok die Einstellung abschließen
## Autoren

* **Mesut Özcan** - *Initial work* - [di39216](https://gitlab.dillinger.de/di39216)
* **Roland Daidone** - [di39249](https://gitlab.dillinger.de/di39249)

