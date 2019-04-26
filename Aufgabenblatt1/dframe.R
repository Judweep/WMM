## a) Einlesen der Daten
# Aufgabe noch nicht korrekt bearbeitet
load(file = "C:/Users/Judith/Documents/Studium/1. Master/WMM/dframe.rda", verbose = T)
x = dafra 

## b) Funktionen ausprobieren
# Handbuchseiten konsultieren?!
print(x)
str(x)
summary(x)
class(x)
dim(x)
length(x)
colnames(x)
rownames(x)

## c) Boxplot
boxplot(x)

## d) Reduzierter Plot
redX = x[1:100,]
plot(redX)

## e) Oster Hase Plot
osterhase = x[,c(4,2)]
plot(osterhase)
