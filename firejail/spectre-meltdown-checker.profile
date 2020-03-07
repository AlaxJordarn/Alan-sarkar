# Firejail profile for spectre-meltdown-checker
# This file is overwritten after every install/update
quiet
# Persistent local customizations
include spectre-meltdown-checker.local
# Persistent global definitions
include globals.local

# sudo firejail --allow-debuggers spectre-meltdown-checker

noblacklist ${PATH}/mount
noblacklist ${PATH}/umount

# Allow access to perl
noblacklist ${PATH}/cpan*
noblacklist ${PATH}/core_perl
noblacklist ${PATH}/perl
noblacklist /usr/lib/perl*
noblacklist /usr/share/perl*

include disable-common.inc
include disable-devel.inc
include disable-exec.inc
include disable-interpreters.inc
include disable-passwdmgr.inc
include disable-programs.inc
include disable-xdg.inc

include whitelist-var-common.inc

caps.keep sys_rawio
ipc-namespace
net none
no3d
nodbus
nodvd
nogroups
nonewprivs
nosound
notv
novideo
protocol unix
seccomp.drop @clock,@cpu-emulation,@module,@obsolete,@reboot,@resources,@swap
shell none

disable-mnt
private
private-bin awk,bzip2,cat,coreos-install,cpucontrol,cut,dd,dirname,dmesg,dnf,echo,grep,gunzip,gz,gzip,head,id,kldload,kldstat,liblz4-tool,lzop,mktemp,modinfo,modprobe,mount,nm,objdump,od,perl,printf,readelf,rm,sed,seq,sh,sort,spectre-meltdown-checker,spectre-meltdown-checker.sh,stat,strings,sysctl,tail,test,toolbox,tr,uname,which,xz-utils
#private-cache
private-tmp

memory-deny-write-execute
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
