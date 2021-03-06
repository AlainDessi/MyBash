#!/bin/bash

# 
# Sauvegarde de base de données
# 
# author  : Alain Dessi
# web     : alain-dessi.com
#


# -------------------------------
# Paramètres
# -------------------------------

# Utilisateur Mysql
DB_USER=dbuser
DB_PSWD=password

# noms des bases de données
dbnames=("dbname1" "dbname2" "dbname3")

# definition date
CURRENT_DATE=$(date +"%Y%m%d")

# Chemin de destination des sauvegardes
DST_PATH=/path_ to_save

# -------------------------------
# sauvegarde des bases de données
# -------------------------------
for DB_NAME  in ${dbnames[*]}
do

  # definition du fichier
  FICHIER=$CURRENT_DATE.save.$DB_NAME.sql

  echo -- Début de la sauvegarde de la base $DB_NAME vers $FICHIER
  
  mysqldump -u $DB_USER -p$DB_PSWD --databases $DB_NAME > $DST_PATH/$FICHIER
  
  echo -- Fin de la sauvegarde

done
