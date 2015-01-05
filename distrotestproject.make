core = 7.x
api = 2

; Install Drupal.
projects[drupal][version] = "7.x"

; Platform modules.
includes[] = "https://raw.githubusercontent.com/BluesparkLabs/DistroTest/master/distrotest.make"

; Site-specific contrib modules.
projects[] = logintoboggan

; Site-specific custom modules (commented out because they are included here)
;projects[] = distrotestproject_system
