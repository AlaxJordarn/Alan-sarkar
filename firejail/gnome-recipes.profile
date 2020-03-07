# Firejail profile for gnome-recipes
# Description: Recipe application for GNOME
# This file is overwritten after every install/update
# Persistent local customizations
include gnome-recipes.local
# Persistent global definitions
include globals.local


noblacklist ${HOME}/.cache/gnome-recipes
noblacklist ${HOME}/.local/share/gnome-recipes

include disable-common.inc
include disable-devel.inc
include disable-exec.inc
include disable-interpreters.inc
include disable-passwdmgr.inc
include disable-programs.inc

mkdir ${HOME}/.cache/gnome-recipes
mkdir ${HOME}/.local/share/gnome-recipes
whitelist ${HOME}/.cache/gnome-recipes
whitelist ${HOME}/.local/share/gnome-recipes
include whitelist-common.inc
include whitelist-var-common.inc

caps.drop all
ipc-namespace
machine-id
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

disable-mnt
private-bin gnome-recipes,tar
private-dev
private-etc hosts,ssl,ca-certificates
private-lib gdk-pixbuf-2.0,gio,gvfs/libgvfscommon.so,libgconf-2.so.*,libgnutls.so.*,libjpeg.so.*,libp11-kit.so.*,libproxy.so.*,librsvg-2.so.*
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
