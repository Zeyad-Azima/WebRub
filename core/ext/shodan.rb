################################################################
#Author:    Zeyad Azima                                        #
#Github:    https://github.com/Zeyad-Azima                     #
#Facebook:  https://www.facebook.com/elkingzeyad.azeem         #
#Version:   0.3                                                #
# There is more updates soon..                                 #
################################################################
#
class Shodan
  def attack(target)
    system("sudo chmod+x core/ext/shodan.py")
    system("python3 core/shodan.py #{target}")
  end
end