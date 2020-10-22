################################################################
#Author:    Zeyad Azima                                        #
#Github:    https://github.com/Zeyad-Azima                     #
#Facebook:  https://www.facebook.com/elkingzeyad.azeem         #
#Version:   0.2                                                #
# There is more updates soon..                                 #
################################################################
#
class Shodan
  def attack(target)
    system("sudo chmod+x core/shodan.py")
    system("python3 core/shodan.py #{target}")
  end
end