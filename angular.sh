echo "This is a script to install NPM and Angular";
echo "======================================================================================";

starttime="$(date)";
printf "Start date and time %s\n" "$starttime";
echo "======================================================================================";
echo "Start declaring repository URLs variables...";
NODEJS_SRC="https://deb.nodesource.com/setup_8.x";
echo "Declaring repository URLs variables finishes successfully.";
echo "======================================================================================";
echo "Start updating and upgrading the existing packages...";
sudo apt-get update -y; sudo apt-get upgrade -y; sudo apt-get full-upgrade -y; sudo apt-get dist-upgrade -y; sudo apt-get autoremove -y;
echo "Updating and upgrading the existing packages finishes successfully.";
echo "======================================================================================";
echo "Start installing the pre-requisites packages...";
sudo apt-get install -y curl wget apt-transport-https apt-utils build-essential ca-certificates libpq-dev libssl-dev zip openssl libgconf-2-4 gcc g++ make;
sudo apt-get install -y libffi-dev zlib1g-dev python-software-properties software-properties-common unzip libgtk-3-dev libxss1 nano;
echo "Installing the pre-requisites packages finishes successfully.";
echo "======================================================================================";
echo "Start installing THE packages...";
echo "Install NodeJS 8 LTS version";
curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -;
sudo apt-get update -y;
sudo apt-get install -y nodejs;
echo "===========================================";

echo "Install NPM 5.6";
sudo npm --global config set user root;
sudo npm install --global npm@5.6.0;
echo "===========================================";
echo "Install Angular CLI latest";
sudo npm install --global @angular/cli;
echo "===========================================";
echo "Installing ALL packages finishes successfully.";
echo "======================================================================================";
sudo apt-get autoremove -y;
echo "Start cleaning all the package installer files..."
echo "Cleaning all the package installer files finishes successfully."
echo "======================================================================================";

echo "The execution of this script finishes successfully.";
echo "======================================================================================";
echo "===========================================";
echo "The installed packages versions are:";
echo "===========================================";
echo "NodeJS and NPM:";
node -v;
npm -v;
echo "Angular CLI:";
ng -v;
echo "===========================================";

finishtime="$(date)";
printf "Start date and time %s\n" "$starttime";
printf "Finish date and time %s\n" "$finishtime";
echo "======================================================================================";



