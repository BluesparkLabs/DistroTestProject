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
        $ drush make project.make --working-copy

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

*How to enable custom modules during installation* - Do not modify the distro's
own `.info` file.  Instead, add the following line to the `.info` files of your
custom modules and features so they may be detected and automatically enabled
during installation:

    distrotest_enable_on_install = yes

Since you cannot modify contrib modules info files, you should at the very least
have one custom module or feature that has all of the required contrib modules
not in the distro listed as dependencies.

E.g.

    //myproject_system.info
    name = My Project System
    description = System-wide configurations and settings for My Project.
    core = 7.x
    package = My Project
    distrotest_enable_on_install = yes
    dependencies[] = contrib_module_name
    dependencies[] = another_contrib_module_name

The distro will enable this module/feature along with all of its dependencies.
