; site_template make file for d.o. usage
core = "7.x"
api = "2"

; Core
; TODO Can I download core from my own repo?
projects[drupal][version] = "7.56"

; Git clone of Drupal 7.x. Requires the `core` property to be set to 7.x.
;projects[drupal][type] = "core"
;projects[drupal][download][type] = git
;projects[drupal][download][url] = http://git.drupal.org/project/drupal.git

; +++++ Modules +++++

projects[ctools][version] = "1.12"
projects[ctools][subdir] = "contrib"

projects[devel][version] = "1.5"
projects[devel][subdir] = "contrib"

projects[profiler_builder][version] = "1.2"
projects[profiler_builder][subdir] = "contrib"

projects[token][version] = "1.7"
projects[token][subdir] = "contrib"

projects[ckeditor][version] = "1.18"
projects[ckeditor][subdir] = "contrib"

projects[views][version] = "3.18"
projects[views][subdir] = "contrib"

projects[module_filter][version] = "2.1"
projects[module_filter][subdir] = "contrib"

projects[admin_menu][subdir] = "contrib"

projects[features][version] = "2.10"
projects[features][subdir] = "contrib"

projects[media_ckeditor][version] = "2.5"
projects[media_ckeditor][subdir] = "contrib"

projects[webform][subdir] = "4.16"
projects[webform][subdir] = "contrib"

;Features
projects[site_features][type] = "module"
projects[site_features][download][type] = "git"
projects[site_features][download][url] = "git@github.com:arkjoseph/custom-features.git"

; CKEditor
libraries[ckeditor][download][type]= "get"
libraries[ckeditor][download][url] = "http://download.cksource.com/CKEditor/CKEditor/CKEditor%203.4/ckeditor_3.4.zip"
libraries[ckeditor][directory_name] = "ckeditor"
libraries[ckeditor][destination] = "libraries"

; Development modules.
projects[devel][subdir] = "development"

; +++++ Themes +++++

; basic
projects[basic][type] = "theme"
projects[basic][version] = "4.3"
projects[basic][subdir] = "contrib"

; tao
projects[tao][type] = "theme"
projects[tao][version] = "3.1"
projects[tao][subdir] = "contrib"


; rubik
projects[rubik][type] = "theme"
projects[rubik][version] = "4.4"
projects[rubik][subdir] = "contrib"

