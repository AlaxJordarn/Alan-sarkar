# Firejail profile for celluloid
# Description: Simple GTK+ frontend for mpv
# This file is overwritten after every install/update
# Persistent local customizations
include celluloid.local
# Persistent global definitions
include globals.local

noblacklist ${HOME}/.config/gnome-mpv
noblacklist ${HOME}/.config/celluloid
noblacklist ${MUSIC}
noblacklist ${VIDEOS}

# Allow python (blacklisted by disable-interpreters.inc)
noblacklist ${PATH}/python2*
noblacklist ${PATH}/python3*
noblacklist /usr/lib/python2*
noblacklist /usr/lib/python3*
noblacklist /usr/local/lib/python2*
noblacklist /usr/local/lib/python3*

include disable-common.inc
include disable-devel.inc
include disable-exec.inc
include disable-interpreters.inc
include disable-passwdmgr.inc
include disable-programs.inc
include disable-xdg.inc

include whitelist-var-common.inc

apparmor
caps.drop all
netfilter
nodbus
nogroups
nonewprivs
noroot
nou2f
protocol unix,inet,inet6
seccomp
shell none
tracelog

private-bin celluloid,gnome-mpv,youtube-dl,python*,env
#private-cache
private-etc hosts,ssl,ca-certificates
private-dev
private-tmp

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
