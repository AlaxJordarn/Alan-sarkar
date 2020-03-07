# Firejail profile for quiterss
# Description: RSS/Atom news feeds reader
# This file is overwritten after every install/update
# Persistent local customizations
include quiterss.local
# Persistent global definitions
include globals.local

noblacklist ${HOME}/.cache/QuiteRss
noblacklist ${HOME}/.config/QuiteRss
noblacklist ${HOME}/.config/QuiteRssrc
noblacklist ${HOME}/.local/share/QuiteRss

include disable-common.inc
include disable-devel.inc
include disable-exec.inc
include disable-interpreters.inc
include disable-passwdmgr.inc
include disable-programs.inc

mkdir ${HOME}/.cache/QuiteRss
mkdir ${HOME}/.config/QuiteRss
mkdir ${HOME}/.local/share/data
mkdir ${HOME}/.local/share/data/QuiteRss
whitelist ${HOME}/.cache/QuiteRss
whitelist ${HOME}/.config/QuiteRss/
whitelist ${HOME}/.config/QuiteRssrc
whitelist ${HOME}/.local/share/data/QuiteRss
whitelist ${HOME}/.local/share/QuiteRss
whitelist ${HOME}/quiterssfeeds.opml
include whitelist-common.inc

caps.drop all
netfilter
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

disable-mnt
private-bin quiterss
private-dev
# private-etc hosts,ssl,ca-certificates

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
