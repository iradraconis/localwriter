#!/bin/bash

# Lösche die OXT Datei, falls sie bereits existiert

if [ -f localwriter.oxt ]; then
    rm localwriter.oxt
fi

# Wechsel in den Ordner localwriter
cd localwriter

# Erstelle ein Zip Archiv
zip -r localwriter.zip *

# Ändere die Endung in .oxt
mv localwriter.zip localwriter.oxt

# Kopiere die OXT Datei in den Ordner, in dem sich das build_and_deploy.sh script befindet
mv localwriter.oxt ../

# Wechsel zurück in den Ordner, in dem sich das build_and_deploy.sh script befindet
cd ..

# Ausgabe, dass das Script erfolgreich durchgelaufen ist
echo "Das Script wurde erfolgreich durchgelaufen"
