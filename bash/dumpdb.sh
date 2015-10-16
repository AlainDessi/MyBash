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

# definition date
CURRENT_DATE=$(date +"%Y%m%d")

# noms des bases de données
dbnames=(dbname1 dbname2 dbname3)


# -------------------------------
# sauvegarde des bases de données
# -------------------------------
for DB_NAME  in ${dbnames[*]}
do

  # definition du fichier
  FICHIER=$CURRENT_DATE.save.$DB_NAME.sql
  PATH=/path_to_save

  echo -- Début de la sauvegarde de la base $DB_NAME vers $FICHIER
  
  /usr/bin/mysqldump -u $DB_USER -p$DB_PSWD --databases $DB_NAME > $PATH/$FICHIER
  
  echo -- Fin de la sauvegarde

done
