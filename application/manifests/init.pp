# This is a core file of application module
class application {
	include application::config, application::gitcloneapp, application::dbcreate, application::dbrestore, application::phpmemory, application::symlink, application::editfor_cleanurl, application::editfor_documentroot
}
