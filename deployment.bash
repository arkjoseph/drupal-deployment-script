#!/bin/bash

buildithere="/Users/josephgarrido/Documents/sites/jpg"
script="/Users/josephgarrido/Documents/personal-git/drupal-deployment-script/site_template"
dbname="jpg-12-6-17.sql"

say building your site

drush make $script/site_template.make $buildithere

cp -R $script $buildithere/profiles
cd $buildithere

drush si site_template --site-name=bootstrap --db-url=mysql://root:root@localhost/drupal-make -y
drush upwd admin --password="welcome1"

cd $buildithere/profiles/site_template/assets
drush sql-drop -y
drush sql-cli < $dbname
say build complete

drush user-login --uri=http://jpg --redirect-port=8888 -y


drush si minimal --site-name=bootstrap --db-url=mysql://jpgio387_1a:Athlon101@localhost/jpgio387_1a -y

#drush rsync --exclude-conf @jpgio.local @jpgio.dev
#drush @jpgio.dev fua -y
#drush @jpgio.dev fra -y