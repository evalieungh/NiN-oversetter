#'##############################################
#'  Støtteskript: formattering av NiN kodebase #
#'##############################################

# startet 2025-09-12
# av Eva Lieungh

#' Dette skriptet laster ned siste versjon (sist: 2025-09-12)
#' av NiN kodebase fra Artsdatabanken, og trekker ut det som trengs
#' for å lage datasettet for konvertering fra grunntyper til kartleggingsenheter

# last ned fila
download.file(url = "https://nin-kode-api.artsdatabanken.no/v3.0/rapporter/kodeoversikt",
              destfile = "kodeoversikt.csv")

# les inn som R-objekt
nin_kodebase <- read.csv("kodeoversikt.csv", sep = ";")

# lag subset med kartleggingsenheter og grunntyper
kodedata <- subset(nin_kodebase,
                   Klasse %in% c("Grunntype", "Kartleggingsenhet"))

# splitt langkoden i flere kolonner
temp <- strsplit(kodedata$Langkode, split = "-")

temp2 <- do.call(rbind.data.frame, temp)
df <- data.frame(matrix(unlist(temp), nrow=length(temp), byrow=TRUE), stringsAsFactors=FALSE)
library(plyr)


write.csv(kodedata, "kodeoversikt_KE.csv")