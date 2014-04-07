#puppet-groups

####Table of Contents

1. [Overview](#overview)
2. [Module Description](#module-description)
3. [Setup](#setup)
    * [What groups affects](#what-groups-affects)
    * [Setup requirements](#setup-requirements)
4. [Usage](#usage)
5. [Limitations](#limitations)
6. [TODOs](#todos)

##Overview

This small groups module manages users defined in hashes through hiera.

Written for Puppet >= 3.4.0.

##Module Description

See [Overview](#overview) for now.

##Setup

###What groups affects

* All in hiera defined groups.
* Passwords, Homes, ...

###Setup Requirements

Hiera has to used to define the groups.
	
##Usage

In hiera (yaml) the key `groups` key is defined holding a hash of all the users, e.g.:

```yaml
groups:
  vmail:
    ensure: present
    gid: 10000

With this yaml definition, a simple
```puppet
include groups
```
takes care of everything.

##Limitations:

Debian and RedHat like systems.
Tested on:

* Debian 7

Puppet Version >= 3.4.0, due to specific hiera usage.

##TODOs:

* ...
