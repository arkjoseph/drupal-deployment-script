#!/bin/bash

drush make mymake.make jpg

cd jpg

echo deploying minimal site... 

drush si minimal --site-name=jpgarrido --db-url=mysql://root:root@localhost/drupal-make -y

drush upwd admin --password="welcome1" -y

drush vset theme_default basic 

drush cc all -y