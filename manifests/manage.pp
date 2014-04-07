# this define actually manages the groups (private)
define groups::manage {

  ensure_resource('group', $name, $groups::hash[$name])

}
