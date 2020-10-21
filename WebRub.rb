################################################################
#Author:    Zeyad Azima                                        #
#Github:    https://github.com/Zeyad-Azima                     #
#Facebook:  https://www.facebook.com/elkingzeyad.azeem         #
#Version:   0.1                                                #
# There is more updates soon..                                 #
################################################################
#
load 'core/live.rb'
load 'core/resolver.rb'
load 'core/subdomain.rb'
load 'core/brute.rb'

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
===================================================
|                    WebRub                       |
===================================================
| 1-Subdomain BruteForce (Fast)                   |
| 2-live domain checker (Fast)                    |
| 3-Resolve domains to ips (Fast)                 |
| 4-Directory BruteForce (Fast)                   |
===================================================
|                     V0.1                        |
|       there is more updates coming soon         |
===================================================

"""
    puts "Enter Your Choice(ex: 1,2,3,4):"
    $choice=gets.chomp.to_i
  end
  def main


    if $choice==1
      puts "Subdomain BruteForce:>"
      puts "Enter your Target (ex: 'google.com'): "
      domain=gets.chomp.to_s
      sub=Subs.new
      sub.brute(domain)
      puts ""
      puts "[+] Press Enter to Continue: "
      cont=gets.chomp
      system('clear') || system('cls')


    elsif $choice==2
      puts "live domain checker:>"
      puts "Enter subdomains list directory(ex: /home/root/subdomains.txt):"
      list=gets.chomp
      live=Domain.new
      live.checker(list)
      puts ""
      puts "[+] Press Enter to Continue: "
      cont=gets.chomp
      system('clear') || system('cls')


    elsif $choice==3
      puts "Resolve domains to ips:>"
      puts "Enter subdomains list directory(ex: /home/root/subdomains.txt):"
      s_list=gets.chomp
      resolve=Resolver.new
      resolve.hosts(s_list)
      puts ""
      puts "[+] Press Enter to Continue: "
      cont=gets.chomp
      system('clear') || system('cls')


    elsif $choice==4
      puts "Directory BruteForce:>"
      puts "Enter your Target Domain or Domain with Directory(ex: 'google.com' or a directory 'google.com/profiles'): "
      host=gets.chomp.to_s
      puts"Enter Target Protocol(ex: 'http' or 'https'): "
      protocol=gets.chomp.to_s
      puts "Enter Wordlist file(ex: php.txt): "
      file=gets.chomp.to_s
      brute=Direr.new
      brute.attack(host,protocol,file)
      puts ""
      puts "[+] Press Enter to Continue: "
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