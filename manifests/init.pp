# == Class: groups
#
# A small class managing groups
#
# === Parameters
#
# users hash must be defined in hiera, see README.
#
# [*merge*]
#   Depending on this parameter a simple hiera lookup or
#   hash lookup is done, merging the users in the hierarchy.
#   *Optional* (defaults to true)
#
# === Examples
#
# include groups
#
# In hiera a users hash should be defined. See README.
#
# === Authors
#
# Frederik Wagner <wagner@wagit.de>
#
# === Copyright
#
# Copyright 2014 Frederik Wagner
#
class groups (
  $merge=true,
) {

  validate_bool(str2bool($merge))

  # TODO: deeper merge?
  if str2bool($merge) {
    $hash=hiera_hash('groups', false)
  } else {
    $hash=hiera('groups', false)
  }

  if $hash {

    $groups=keys($hash)

    groups::manage{ $groups: }

  }

}
