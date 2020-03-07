# Firejail profile for emacs
# Description: GNU Emacs editor
# This file is overwritten after every install/update
# Persistent local customizations
include emacs.local
# Persistent global definitions
include globals.local

noblacklist ${HOME}/.emacs
noblacklist ${HOME}/.emacs.d
# if you need gpg uncomment the following line
# or put it into your emacs.local
#noblacklist ${HOME}/.gnupg
noblacklist ${HOME}/.python-history

include disable-common.inc
include disable-passwdmgr.inc
include disable-programs.inc

caps.drop all
netfilter
nodvd
nogroups
nonewprivs
noroot
notv
protocol unix,inet,inet6
seccomp
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
