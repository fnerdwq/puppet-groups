# this define actually manages the groups (private)
define groups::manage {

  create_resources('group', $name, $groups::hash[$name])

}
