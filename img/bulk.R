library(xml2)
library(rvest)
library(stringr)
library(tidyverse)
library(sf)
library(leaflet)
library(RColorBrewer)
##escrutado$Hora <- dmy_hms(escrutado$Hora)

## DESCARGA CSVs

escrutado <- read.csv("https://www.dropbox.com/s/pvs1t9cecjmvqzd/escrutado.csv?dl=1", sep = ";")
escrutado_progpba <- read.csv("https://www.dropbox.com/s/stztiqsdzmz57dx/escrutado_progpba.csv?dl=1", sep = ";")
escrutado_progcaba <- read.csv("https://www.dropbox.com/s/b5ziihgxwghsbea/escrutado_progcaba.csv?dl=1", sep = ";")
escrutado_nac <- read.csv("https://www.dropbox.com/s/cs4ilp3kfly7rfh/escrutado_nac.csv?dl=1", sep = ";")
escrutado_caba <- read.csv("https://www.dropbox.com/s/6g0kbgkmvj4znq2/escrutado_caba.csv?dl=1", sep = ";")
escrutado_pba <- read.csv("https://www.dropbox.com/s/3uiadjsk6pxht1h/escrutado_pba.csv?dl=1", sep = ";")
progresion_nac <- read.csv("https://www.dropbox.com/s/wrygdpvgpyse4sl/progresion.csv?dl=1", sep = ";")
progresion_pba <- read.csv("https://www.dropbox.com/s/grypshtutxt75j9/progresion_pba.csv?dl=1", sep = ";")
progresion_caba <- read.csv("https://www.dropbox.com/s/w1skqlwvchjykoo/progresion_caba.csv?dl=1", sep = ";")
compjxc <- read.csv("https://www.dropbox.com/s/0z6adj9v4ksqqak/comparativajxc.csv?dl=1", sep = ";")
comptodos <- read.csv("https://www.dropbox.com/s/5pb38vm0ikg9f47/comparativatodos.csv?dl=1", sep = ";")
cortespba <- read.csv("https://www.dropbox.com/s/1qpn662pmpx6uo0/cortes.csv?dl=1", sep = ";")
cortescaba <- read.csv("https://www.dropbox.com/s/atkb7vv3ukn73b6/cortescaba.csv?dl=1", sep = ";")

escrutado$Hora <- as.POSIXct(escrutado$Hora, tz = "GMT-3")
escrutado$Escrutado <- as.numeric(as.character(escrutado$Escrutado))
escrutado_progcaba$Hora <- as.POSIXct(escrutado_progcaba$Hora, tz = "GMT-3")
escrutado_progcaba$Escrutado <- as.numeric(as.character(escrutado_progcaba$Escrutado))
escrutado_progpba$Hora <- as.POSIXct(escrutado_progpba$Hora, tz = "GMT-3")
escrutado_progpba$Escrutado <- as.numeric(as.character(escrutado_progpba$Escrutado))
progresion_nac$Hora <- as.POSIXct(progresion_nac$Hora, tz = "GMT-3")
progresion_nac$MM <- as.numeric(as.character(progresion_nac$MM))
progresion_nac$AF <- as.numeric(as.character(progresion_nac$AF))
progresion_pba$Hora <- as.POSIXct(progresion_pba$Hora, tz = "GMT-3")
progresion_pba$MEV <- as.numeric(as.character(progresion_pba$MEV))
progresion_pba$AK <- as.numeric(as.character(progresion_pba$AK))
progresion_caba$Hora <- as.POSIXct(progresion_caba$Hora, tz = "GMT-3")
progresion_caba$HRL <- as.numeric(as.character(progresion_caba$HRL))
progresion_caba$ML <- as.numeric(as.character(progresion_caba$ML))

## DESCARGA SITIOS

################## CODIGO DE BASE ##################

################## CODIGO DE BASE ##################