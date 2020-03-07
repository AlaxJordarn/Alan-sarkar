# Firejail profile for dillo
# Description: Small and fast web browser
# This file is overwritten after every install/update
# Persistent local customizations
include dillo.local
# Persistent global definitions
include globals.local

noblacklist ${HOME}/.dillo

include disable-common.inc
include disable-devel.inc
include disable-interpreters.inc
include disable-passwdmgr.inc
include disable-programs.inc

mkdir ${HOME}/.dillo
mkdir ${HOME}/.fltk
whitelist ${DOWNLOADS}
whitelist ${HOME}/.dillo
whitelist ${HOME}/.fltk
include whitelist-common.inc
include whitelist-var-common.inc

caps.drop all
netfilter
nodvd
nonewprivs
noroot
notv
nou2f
protocol unix,inet,inet6
seccomp
tracelog

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
