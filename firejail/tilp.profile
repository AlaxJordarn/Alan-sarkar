# Firejail profile for tilp
# This file is overwritten after every install/update
# Persistent local customizations
include tilp.local
# Persistent global definitions
include globals.local

noblacklist ${HOME}/.tilp

include disable-common.inc
include disable-devel.inc
include disable-exec.inc
include disable-interpreters.inc
include disable-passwdmgr.inc
include disable-programs.inc

caps.drop all
net none
nodvd
nogroups
nonewprivs
noroot
notv
novideo
protocol unix,netlink
seccomp
shell none
tracelog

disable-mnt
private-bin tilp
#private-cache
private-etc hosts,ssl,ca-certificates
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
