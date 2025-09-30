#'###################
#'  NiN-oversetter  #
#'###################

# startet 2025-09-11
# av Eva Lieungh

#' Dette skriptet skal oversette kartleggingsenheter fra 
#' NiN versjon 2.3 til 3.0 via oversettelsesnøkkelen 
#' publisert av Artsdatabanken:
#' Halvorsen, R. 2025. Oversettelse mellom natursystem-typesystemene 
#' i NiN (Natur i Norge) versjonene 2.0 (2015), 2.1 (2016), 2.3 (2021) 
#' og 3.0 (2023). ‒ Natur i Norge Systemdokumentasjon 2: 1-232.

#' For å bruke oversetteren, trengs en liste over kartleggingsenheter
#' i lik skala i en tekstfil hvor det er én kartleggingsenhet per rad.

#' Oversetteren...
#' konverterer kartleggingsenheter til NiN2.3-grunntyper,
#' finner matchende NiN30.-grunntyper og usikkerhet,
#' og konverterer NiN3.0-grunntypene og usikkerheten til samme
#' skala som inndataene. Skalaen må oppgis for å kjøre funksjonen.

#' To do:
#' - formattering av oversettelsesnøkkelen til csv
#' - lage eksmpeldatasett for inn-data
#' - lage konvertering fra KE til GT for 2.3
#' - lage funksjon for å matche GT til hverandre (husk å få med usikkerheter)
#' - lage konvertering fra GT til KE for 3.0, inkl summering av usikkerhet

library(dplyr)

# Les inn egne data (inndata)
inndata <- read.csv("Eksempeldata.csv", 
                    sep = ";")

# Hvilken skala er dataene i?
skala = "5000"

# Hvilken kolonne er kartleggingsenhetene i?
kolonne = 2

# last inn funksjonen
source("oversettingsfunksjoner.R")

# kjør funksjonen
oversett_nin_2_til_3(
  inndata = inndata,
  skala = skala,
  kolonne = kolonne
)

# resultatet skal lagres som utdata.csv i samme format som inndataene.

