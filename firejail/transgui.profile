# Firejail profile for transgui
# Description: Cross-platform Transmission BitTorrent client
# This file is overwritten after every install/update
# Persistent local customizations
include /etc/firejail/transgui.local
# Persistent global definitions
include globals.local

noblacklist ${HOME}/.config/transgui

include disable-common.inc
include disable-devel.inc
include disable-exec.inc
include disable-interpreters.inc
include disable-passwdmgr.inc
include disable-programs.inc
include disable-xdg.inc

mkdir ${HOME}/.config/transgui
whitelist ${HOME}/.config/transgui
whitelist ${DOWNLOADS}
include whitelist-common.inc
include whitelist-var-common.inc

apparmor
caps.drop all
ipc-namespace
machine-id
netfilter
nodbus
nodvd
nogroups
nonewprivs
noroot
nosound
notv
nou2f
novideo
protocol unix,inet,inet6
seccomp
shell none
tracelog

private-bin geoiplookup,geoiplookup6,transgui
#private-cache
private-dev
private-etc hosts,ssl,ca-certificates
private-lib libgdk_pixbuf-2.0.so.*,libGeoIP.so*,libgthread-2.0.so.*,libgtk-x11-2.0.so.*,libX11.so.*
private-tmp

memory-deny-write-execute
apparmor  
machine-id  
#disable-mnt  
#private-cache 
#ignore seccomp.drop 
#ignore shell  
#private-etc hosts,ca-certificates,ssl   
private-opt all 
seccomp  
read-only all 
noroot 
#debug 
caps.drop all  
shell none 
ipc-namespace   
#cpu 2  
#private 
noexec all  
noexec /tmp  
nogroups   
nonewprivs 
netfilter 
blacklist all  
netfilter  
private-dev 
netfilter /etc/firejail/nolocal.net 
private-opt all  

private-tmp 
dns 8.8.8.8 
dns 8.8.4.4 
 
#echo -e "$(cat cm)" >> k
