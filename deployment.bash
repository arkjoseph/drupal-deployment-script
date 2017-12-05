#!/bin/bash

buildithere="/Users/josephgarrido/Documents/sites/jpg"
script="/Users/josephgarrido/Documents/personal-git/drupal-deployment-script/site_template"

say building your site

drush make $script/site_template.make $buildithere

cp -R $script $buildithere/profiles
cd $buildithere

drush si site_template --site-name=bootstrap --db-url=mysql://root:root@localhost/drupal-make -y
drush upwd admin --password="welcome1"

# drush sql-drop
# drush sql-cli < ~ existing db w content.sql