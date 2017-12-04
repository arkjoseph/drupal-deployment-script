#!/bin/bash
echo Building site with drush make
 
drush make mymake.make jpg

# message
echo change directory into root and run drush site install minimal. 
 
cd jpg

# message
echo deploying minimal site... 

drush si minimal --site-name=jpgarrido --db-url=mysql://root:root@localhost/drupal-make -y

drush upwd admin --password="welcome1" -y

# Lets move this to the install profile
# drush vset theme_default basic 

drush cc all -y