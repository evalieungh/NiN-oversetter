#'###############################
#'  Funksjoner for oversetteren #
#'###############################

# startet 2025-09-12
# av Eva Lieungh

# Konvertering ----------------------------------------------------------------
# Funksjon for å konvertere fra kartleggingsenhet til grunntype for versjon 2.3
konverter_ke_gt_2 <- function(
    inndata, 
    skala, 
    kolonne) {
  # last inn kartleggingsenhet(KE)-oversikt
  ke_oversikt <- read.csv("kodeoversikt_KE.csv")
  
  # sjekk hvor mange rader det er i inndatasettet, og hvor mange som har
  # riktig format for oversetting
  message(paste("Antall rader i inndata:", nrow(inndata)))
  kan_oversettes <- inner_join(inndata,
                               ke_oversikt[])
  message(paste(length(kan_oversettes), 
                "rader kan oversettes"))
  
  # lag ny kolonne for grunntyper
  inndata$gt <- full_join()
  
  return(inndata)
}

# oversetting -----------------------------------------------------------------
oversett_nin_2_til_3(
  inndata,
  skala,
  kolonne) {
  # les inn oversettelsesnøkkel
  noekkel <- read.csv("oversettelsesnoekkel.csv")
  
  
}