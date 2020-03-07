# Firejail profile for 0ad
# Description: Real-time strategy game of ancient warfare
# This file is overwritten after every install/update
# Persistent local customizations
include 0ad.local
# Persistent global definitions
include globals.local

noblacklist ${HOME}/.cache/0ad
noblacklist ${HOME}/.config/0ad
noblacklist ${HOME}/.local/share/0ad

include disable-common.inc
include disable-devel.inc
include disable-exec.inc
include disable-interpreters.inc
include disable-passwdmgr.inc
include disable-programs.inc

mkdir ${HOME}/.cache/0ad
mkdir ${HOME}/.config/0ad
mkdir ${HOME}/.local/share/0ad
whitelist ${HOME}/.cache/0ad
whitelist ${HOME}/.config/0ad
whitelist ${HOME}/.local/share/0ad
include whitelist-common.inc

caps.drop all
netfilter
nodbus
nodvd
nogroups
nonewprivs
noroot
notv
nou2f
novideo
protocol unix,inet,inet6
seccomp
shell none
tracelog

disable-mnt
private-bin 0ad,pyrogenesis,sh,which
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
