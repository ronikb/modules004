# This will install uncomplicated firewall (ufw)

class secureserver::ufw_install {
	package { [ "ufw" ]:
    	ensure => installed,
}
}
class secureserver {
	include secureserver::ufw_install
}

