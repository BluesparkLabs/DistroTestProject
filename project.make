core = 7.x
api = 2

; Install Drupal.
projects[drupal][version] = "7.x"

; Installation profile & platform modules.
projects[distrotest][type] = "profile"
projects[distrotest][download][type] = "git"
projects[distrotest][download][url] = "https://github.com/BluesparkLabs/DistroTest.git"

; Site-specific contrib modules.
projects[logintoboggan][subdir] = "contrib"

; Site-specific custom modules are mentioned here, but commented out
; because they are already included in this repository.
;projects[] = distrotestproject_system
