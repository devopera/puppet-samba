# Class: samba::params
#
class samba::params {

  case $operatingsystem {
    centos, redhat, fedora: {
      $service = [ 'smb', 'nmb' ]
    }
    ubuntu: {
      $service = [ 'smbd', 'nmbd' ]
    }
    default, debian: {
      $service = [ 'samba' ]
    }
  }

}

