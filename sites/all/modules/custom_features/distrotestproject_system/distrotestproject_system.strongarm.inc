<?php
/**
 * @file
 * distrotestproject_system.strongarm.inc
 */

/**
 * Implements hook_strongarm().
 */
function distrotestproject_system_strongarm() {
  $export = array();

  $strongarm = new stdClass();
  $strongarm->disabled = FALSE; /* Edit this to true to make a default strongarm disabled initially */
  $strongarm->api_version = 1;
  $strongarm->name = 'site_name';
  $strongarm->value = 'Distro Test Project';
  $export['site_name'] = $strongarm;

  return $export;
}
