# NiN-oversetter

NB! Denne kodebasen er under arbeid og er **ikke klar til bruk**.

Automatisk oversettelse av NiN kartleggingsenheter fra versjon 2.3 til 3.0. Startet 2025-09-11.

For å bruke oversetteren, trengs en liste over kartleggingsenheter i lik skala i en tekstfil hvor det er én kartleggingsenhet per rad. Se Eksempeldata.csv for hvordan formatteringen burde være. For å bruke koden trenger du R (og evt. RStudio). Last ned (klon) dette prosjektet, legg inndataene dine i samme mappe, og bruk skriptet NiN-oversetter.R til å kjøre koden. 

Oversetteren skal oversette kartleggingsenheter fra NiN versjon 2.3 til 3.0 via oversettelsesnøkkelen publisert av Artsdatabanken. Koden konverterer kartleggingsenheter til NiN2.3-grunntyper, finner matchende NiN30.-grunntyper og usikkerhet, og konverterer NiN3.0-grunntypene og usikkerheten til samme skala som inndataene. Skalaen må oppgis for å kjøre funksjonen.

NB! Oversettingen er automatisk og bør sjekkes manuelt for faglig logikk. Du kan stole på at det ikke skjer skrivefeil, men du kan ikke stole på at alle typer oversettes like godt.

Viktigste kilder:
- [Halvorsen, R. 2025. Oversettelse mellom natursystem-typesystemene i NiN (Natur i Norge) versjonene 2.0 (2015), 2.1 (2016), 2.3 (2021) og 3.0 (2023). ‒ Natur i Norge Systemdokumentasjon 2: 1-232.](https://artsdatabanken.no/Files/63295)
- Artsdatabankens kodebase [API](https://nin-kode-api.artsdatabanken.no/swagger/index.html)

### Usikkerhet

Grunntypene og hvordan de er slått sammen til kartleggingsenheter er ulikt mellom NiN versjon 2.3 og 3.0. I oversettelsesartikkelen (Halvorsen 2025) er det spesifisert to mål på usikkerhet. Se artikkelen for figur og tabell som illustrerer to typer A og B. Definisjonene er: 

- følsomhetspresisjon eller bare **følsomhet (FP)** = (A∩B)/A; det vil si hvor stor andel av det samlete arealet av arealenheter typifisert som enheten a i systemet det oversettes FRA som blir typifisert som enheten eller enhetene b i systemet det oversettes TIL
- spesifiseringspresisjon eller **spesifiseringsevne (SP)** = (A∩B)/B; det vil si hvor stor andel av det samlete arealet av arealenheter typifisert som enheten eller enhetene b i systemet det oversettes TIL som utgjøres av arealenheter som er typifisert som enheten a i systemet det oversettes FRA

I tillegg kommer det usikkerhet knyttet til oversetting fra kartleggingsenhet til grunntype og så tilbake til kartleggingsenhet. Følsomhet og spesifiseringsevne må også slås sammen i denne prosessen for å kunne gi ett enkelt tall ut i resultatfila.
