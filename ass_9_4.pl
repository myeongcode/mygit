#!/usr/bin/perl

chomp($ip =  <STDIN>);
if ($ip =~ /^(?:[0-9]{1,3}\.){3}[0-9]{1,3}$/)
{
	printf "IP주소 형식입니다\n";
}
else
{
	printf "IP주소 형식이 아닙니다\n";
}

