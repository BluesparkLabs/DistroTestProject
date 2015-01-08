DistroTestProject
=================

An example site that leverages the [DistroTest](https://github.com/BluesparkLabs/DistroTest)
installation profile, relying on Drush Make as the mechanism for building
and deploying the codebase.

Installation
============

1. Clone the repo:

        $ git clone https://github.com/BluesparkLabs/DistroTestProject.git

2. Build the site using Drush make:

        $ cd DistroTestProject
        $ drush make distrotestproject.make

    This will download Drupal 7, the DistroTest profile and all of the module
    and library dependencies.

3. Install the site using the DistroTest intsallation profile:

        $ drush site-install distrotest --db-url=mysql://dbuser:pass@localhost:port/dbname

4. Revert all enabled features.

        $ drush features-revert-all -y

Usage
=====

*What to commit* - The only modules you should add to this repository should
be custom modules, themes and features, placed in `sites/all/modules/custom/`,
`sites/all/themes/custom/`, and `sites/all/modules/custom_features/` respectively.
