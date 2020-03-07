# Firejail profile for psi-plus
# Description: Qt-based XMPP/Jabber client
# This file is overwritten after every install/update
# Persistent local customizations
include psi-plus.local
# Persistent global definitions
include globals.local

noblacklist ${HOME}/.config/psi+
noblacklist ${HOME}/.local/share/psi+

include disable-common.inc
include disable-devel.inc
include disable-exec.inc
include disable-interpreters.inc
include disable-passwdmgr.inc
include disable-programs.inc

mkdir ${HOME}/.cache/psi+
mkdir ${HOME}/.config/psi+
mkdir ${HOME}/.local/share/psi+
whitelist ${DOWNLOADS}
whitelist ${HOME}/.cache/psi+
whitelist ${HOME}/.config/psi+
whitelist ${HOME}/.local/share/psi+
include whitelist-common.inc

caps.drop all
netfilter
no3d
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

disable-mnt
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
