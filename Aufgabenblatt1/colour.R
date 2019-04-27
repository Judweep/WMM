## Einlesen der Daten
load(file = "C:/Users/Judith/Documents/Studium/1. Master/WMM/colour.rda")
plot.array(rlogo)

## Erstellen eines leeren 3D-Arrays:
# [49 Zeilen][49 Spalten][Rot Grün Blau]
emptyArray = array(0, dim=c(49,49,3))
intWerte = seq(0,1,length.out = 49)

## a) Graustufenbild
grauArray = array(0, dim=c(49,49,3))
for (j in 1:dim(emptyArray)[2]) {
  for (i in 1:dim(emptyArray)[1]) {
      grauArray[i,j,1] = intWerte[j]
      grauArray[i,j,2] = intWerte[j]
      grauArray[i,j,3] = intWerte[j]
  }
}

plot.array(grauArray)

## b) Blaustufenbild

blauArray = array(0, dim=c(49,49,3))
for (i in 1:dim(emptyArray)[1]) {
  for (j in 1:dim(emptyArray)[2]) {
      blauArray[i,j,3] = intWerte[i]
  }
}

plot.array(blauArray)

## c) Blau-Grün-Bild

bgArray = array(0, dim=c(49,49,3))
for (i in 1:dim(emptyArray)[1]) {
  for (j in 1:dim(emptyArray)[2]) {
      bgArray[i,j,2] = intWerte[j]
      bgArray[i,j,3] = intWerte[i]
    } 
}

plot.array(bgArray)

## d) Blau-Grün + Rot

rotArray = array(0, dim=c(49,49,3))
for (i in 1:dim(emptyArray)[1]) {
  for (j in 1:dim(emptyArray)[2]) {
    if ((intWerte[i] + intWerte[j]) <= 1 ) {
      rotArray[i,j,1] = 1 - intWerte[i] - intWerte[j]
      rotArray[i,j,2] = intWerte[j]
      rotArray[i,j,3] = intWerte[i]
    }
  } 
}

plot.array(rotArray)

## e) multiplikativ

multiArray = array(0, dim=c(49,49,3))
for (i in 1:dim(emptyArray)[1]) {
  for (j in 1:dim(emptyArray)[2]) {
    if ((intWerte[i] + intWerte[j]) <= 1 ) {
      multiArray[i,j,1] = 1 - intWerte[i] - intWerte[j]
      multiArray[i,j,2] = intWerte[j]
      multiArray[i,j,3] = intWerte[i]
      r = max(multiArray[i,j,1],multiArray[i,j,2],multiArray[i,j,3])
      multiArray[i,j,1] =  multiArray[i,j,1]/r
      multiArray[i,j,2] = multiArray[i,j,2]/r
      multiArray[i,j,3] = multiArray[i,j,3]/r
      
    }
  } 
}

plot.array(multiArray)


## f) additiv 

addArray = array(0, dim=c(49,49,3))
for (i in 1:dim(emptyArray)[1]) {
  for (j in 1:dim(emptyArray)[2]) {
    if ((intWerte[i] + intWerte[j]) <= 1 ) {
      addArray[i,j,1] = 1 - intWerte[i] - intWerte[j]
      addArray[i,j,2] = intWerte[j]
      addArray[i,j,3] = intWerte[i]
      r = 1 - max(addArray[i,j,1],addArray[i,j,2],addArray[i,j,3])
      addArray[i,j,1] =  addArray[i,j,1] + r
      addArray[i,j,2] = addArray[i,j,2] + r
      addArray[i,j,3] = addArray[i,j,3] + r
      
    }
  } 
}

plot.array(addArray)
