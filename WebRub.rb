################################################################
#Author:    Zeyad Azima                                        #
#Github:    https://github.com/Zeyad-Azima                     #
#Facebook:  https://www.facebook.com/elkingzeyad.azeem         #
#Version:   0.3                                                #
# There is more updates soon..                                 #
################################################################
#
require 'colorize'
load 'core/live_resolve/live.rb'
load 'core/live_resolve/resolver.rb'
load 'core/live_resolve/Domin_ip.rb'
load 'core/sub_enum/subdomain.rb'
load 'core/sub_enum/subenum.rb'
load 'core/dirbrute/brute.rb'
load 'core/ext/wtweb.rb'
load 'core/ext/shodan.rb'

$choice
class Start

  def webrub

    puts """

        ██╗    ██╗███████╗██████╗ ██████╗ ██╗   ██╗██████╗
        ██║    ██║██╔════╝██╔══██╗██╔══██╗██║   ██║██╔══██╗
        ██║ █╗ ██║█████╗  ██████╔╝██████╔╝██║   ██║██████╔╝
        ██║███╗██║██╔══╝  ██╔══██╗██╔══██╗██║   ██║██╔══██╗
        ╚███╔███╔╝███████╗██████╔╝██║  ██║╚██████╔╝██████╔╝
        ╚══╝╚══╝ ╚══════╝╚═════╝ ╚═╝  ╚═╝ ╚═════╝ ╚═════╝
                           ZeyadAzima
                 https://github.com/Zeyad-Azima
=====================================================================
|                            WebRub                                 |
=====================================================================
| 1-Subdomain Enumeration (Very Fast)  7-Extract Web Headers (Fast) |
| 2-Subdomain BruteForce (Fast)        8-Shodan Searcher (Fast)     |
| 3-live domain checker (Fast)                                      |
| 4-Resolve domains to ips (Fast)                                   |
| 5-Resolve ips to domains (Fast)                                   |
| 6-Directory BruteForce (Fast)                                     |
=====================================================================
|                              V0.3                                 |
=====================================================================

""".red

    puts "Enter Your Choice(ex: 1,2,3,4,5,6):".red
    $choice=gets.chomp.to_i
  end

  def main


    if $choice==1
      puts "Subdomain Enumeration:>".green
      puts "Enter your Target (ex: 'google.com'): ".green
      target=gets.chomp.to_s
      subenum=Subenum.new
      subenum.attack(target)
      puts ""
      puts "[+] Results saved to #{target}.txt"
      puts "[+] Press Enter to Continue: ".blue
      cont=gets.chomp
      system('clear') || system('cls')

    elsif $choice==2
      puts "Subdomain BruteForce:>".green
      puts "Enter your Target (ex: 'google.com'): ".green
      domain=gets.chomp.to_s
      sub=Subs.new
      sub.brute(domain)
      puts ""
      puts "[+] Press Enter to Continue: ".blue
      cont=gets.chomp
      system('clear') || system('cls')


    elsif $choice==3
      puts "live domain checker:>".green
      puts "Enter subdomains list directory(ex: /home/root/subdomains.txt):".green
      list=gets.chomp
      live=Domain.new
      live.checker(list)
      puts ""
      puts "[+] Press Enter to Continue: ".blue
      cont=gets.chomp
      system('clear') || system('cls')


    elsif $choice==4
      puts "Resolve domains to ips:>".green
      puts "Enter subdomains list directory(ex: /home/root/subdomains.txt):".green
      s_list=gets.chomp
      resolve=Resolver.new
      resolve.hosts(s_list)
      puts ""
      puts "[+] Press Enter to Continue: ".blue
      cont=gets.chomp
      system('clear') || system('cls')

    elsif $choice==5
      puts "Resolve ips to domains:>".green
      puts "Enter IPS list directory(ex: /home/root/IPS.txt):".green
      i_list=gets.chomp.to_s
      ip=Domain.new
      ip.ips(i_list)
      puts ""
      puts "[+] Press Enter to Continue: ".blue
      cont=gets.chomp
      system('clear') || system('cls')

    elsif $choice==6
      puts "Directory BruteForce:>".green
      puts "Enter your Target Domain or Domain with Directory(ex: 'google.com' or a directory 'google.com/profiles'): ".green
      host=gets.chomp.to_s
      puts"Enter Target Protocol(ex: 'http' or 'https'): ".green
      protocol=gets.chomp.to_s
      puts "Enter Wordlist file(ex: php.txt): ".green
      file=gets.chomp.to_s
      brute=Direr.new
      brute.attack(host,protocol,file)
      puts ""
      puts "[+] Press Enter to Continue: ".blue
      cont=gets.chomp
      system('clear') || system('cls')

    elsif $choice==7
      puts ""
      puts "Extract Web Headers:>".green
      puts "Enter subdomains list(ex: subdomains.txt): ".green
      sublist=gets.chomp.to_s
      puts ""
      header=Web.new
      puts header.grab(sublist)
      puts ""
      puts "[+] Press Enter to Continue: ".blue
      cont=gets.chomp
      system('clear') || system('cls')

    elsif $choice==8
      puts ""
      puts "Shodan Searcher:>".green
      puts "Enter Your target doamin(ex: google.com):".green
      target=gets.chomp.to_s
      shod=Shodan.new
      puts shod.attack(target)
      puts ""
      puts "[+] Press Enter to Continue: ".blue
      cont=gets.chomp
      system('clear') || system('cls')


    end
  end
end

while TRUE
  run=Start.new
  run.webrub
  run.main
end
