#!/bin/bash

buildithere="/home/jpgio387/public_html/development"
script="site_template"
dbname="jpg-12-6-17.sql"

#say building your site

drush make $script/site_template.make $buildithere

cp -R $script $buildithere/profiles
cd $buildithere

drush si site_template --site-name=bootstrap --db-url=mysql://jpgio387_develop:Athlon101@localhost/jpgio387_develop -y

cd $buildithere/profiles/site_template/assets
drush sql-drop -y
drush sql-cli < $dbname

# Specific server requirements for application.
drush vset file_temporary_path /tmp
drush upwd admin --password="welcome1"

#say build complete

#drush user-login --uri=http://jpg --redirect-port=8888 -y
#drush make /home/jpgio387/public_html/drupal-deployment-script/site_template/site_template.make /home/jpgio387/public_html/development
#drush si minimal --site-name=bootstrap --db-url=mysql://jpgio387_1a:Athlon101@localhost/jpgio387_1a -y

## Remote Drush Alias
# drush @jpg.dev si site_template --site-name=bootstrap --db-url=mysql://jpgio387_develop:Athlon101@localhost/jpgio387_develop -y







