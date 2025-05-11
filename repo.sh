echo welcome to charge repo for KALI for Russian PC
echo starting sudo...
sudo echo done!
wget http://grigorylushov.github.io/kalisources.list -o sources.list
sudo rm /etc/apt/sources.list 
sudo cp sources.list /etc/apt
echo Finishing...
rm sources.list
echo done!
exit
