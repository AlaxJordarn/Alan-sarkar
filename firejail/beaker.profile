# Firejail profile for beaker
# This file is overwritten after every install/update
# Persistent local customizations
include beaker.local
# Persistent global definitions
include globals.local

noblacklist ${HOME}/.config/Beaker Browser

include disable-devel.inc
include disable-interpreters.inc

mkdir ${HOME}/.config/Beaker Browser
whitelist ${HOME}/.config/Beaker Browser
whitelist ${DOWNLOADS}
include whitelist-common.inc

# Redirect
include electron.profile
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
