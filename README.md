# NiN-oversetter

Automatisk oversettelse av NiN kartleggingsenheter fra versjon 2.3 til 3.0. Startet 2025-09-11 av Eva Lieungh.

For å bruke oversetteren, trengs en liste over kartleggingsenheter i lik skala i en tekstfil hvor det er én kartleggingsenhet per rad. Se Eksempeldata.csv for hvordan formatteringen burde være. For å bruke koden trenger du R (og evt. RStudio). Last ned (klon) dette prosjektet, legg inndataene dine i samme mappe, og bruk skriptet NiN-oversetter.R til å kjøre koden. 

Oversetteren skal oversette kartleggingsenheter fra NiN versjon 2.3 til 3.0 via oversettelsesnøkkelen publisert av Artsdatabanken. Koden konverterer kartleggingsenheter til NiN2.3-grunntyper, finner matchende NiN30.-grunntyper og usikkerhet, og konverterer NiN3.0-grunntypene og usikkerheten til samme skala som inndataene. Skalaen må oppgis for å kjøre funksjonen.

NB! Oversettingen er automatisk og bør sjekkes manuelt for faglig logikk. Du kan stole på at det ikke skjer skrivefeil, men du kan ikke stole på at alle typer oversettes like godt. Eventuelle feil er i det minste reproduserbare.

- Halvorsen, R. 2025. Oversettelse mellom natursystem-typesystemene i NiN (Natur i Norge) versjonene 2.0 (2015), 2.1 (2016), 2.3 (2021) og 3.0 (2023). ‒ Natur i Norge Systemdokumentasjon 2: 1-232.
- 
