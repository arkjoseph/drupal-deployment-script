#!/bin/bash
say building your site
cd deploy-site
 
drush make drupal-org.make /Users/josephgarrido/Documents/sites/jpg

drush si site_template --site-name=bootstrap --db-url=mysql://root:root@localhost/drupal-make -y

