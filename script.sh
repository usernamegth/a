
echo "Script Starting."
echo "Installing latest updates."
apt-get update
apt-get upgrade
echo "Editing the /etc/login.defs file."
sed -i 's/PASS_MAX_DAYS.*/PASS_MAX_DAYS\\t30/' /etc/login.defs
sed -i 's/PASS_MIN_DAYS.*/PASS_MIN_DAYS\\t3/' /etc/login.defs
sed -i 's/PASS_WARN_AGE.*/PASS_WARN_AGE\\t7/' /etc/login.defs
echo "Disabling IPv6"
sed -i "s/IPv6=yes/IPv6=no/" /etc/default/ufw
