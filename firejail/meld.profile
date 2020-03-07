# Firejail profile for meld
# Description: Graphical tool to diff and merge files
# This file is overwritten after every install/update
# Persistent local customizations
include meld.local
# Persistent global definitions
include globals.local

noblacklist ${HOME}/.local/share/meld

# Allow python (blacklisted by disable-interpreters.inc)
noblacklist ${PATH}/python2*
noblacklist ${PATH}/python3*
noblacklist /usr/lib/python2*
noblacklist /usr/lib/python3*
noblacklist /usr/local/lib/python2*
noblacklist /usr/local/lib/python3*

noblacklist ${HOME}/.config/git
noblacklist ${HOME}/.gitconfig
noblacklist ${HOME}/.git-credentials
noblacklist ${HOME}/.ssh
noblacklist ${HOME}/.subversion

# Uncomment the next line (or put it into your meld.local) if you don't need to compare files in disable-common.inc.
#include disable-common.inc
include disable-devel.inc
include disable-exec.inc
include disable-interpreters.inc
include disable-passwdmgr.inc
# Uncomment the next line (or put it into your meld.local) if you don't need to compare files in disable-programs.inc.
#include disable-programs.inc

include whitelist-var-common.inc

apparmor
caps.drop all
ipc-namespace
machine-id
netfilter
no3d
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

private-bin bzr,cvs,git,hg,meld,python*,svn
#private-cache
private-dev
# Uncomment the next line (or put it into your meld.local) if you don't need to compare in /etc.
#private-etc hosts,ssl,ca-certificates
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
