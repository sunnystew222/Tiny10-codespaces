echo "Installing packages..."
sudo apt update
sudo apt install qemu-kvm virtinst libvirt-clients bridge-utils libvirt-daemon-system tigervnc-standalone-server dwm aqemu -y > installlogs.txt
echo "Packages installed. Now downloading Tiny10 image..."
cd /
sudo wget -O Tiny10_x64_HDA.img https://files.mollomm1.dev/api/public/dl/eHWIyWhJ
echo "Tiny10 image downloaded. Now downloading NoVNC..."
sudo git clone https://github.com/novnc/noVNC
echo "NoVNC downloaded. Now downloading Tiny10 config..."
sudo mkdir /root/.aqemu
sudo wget -O /root/.aqemu/Tiny_10_x64.aqemu https://files.mollomm1.dev/api/public/dl/fCJ-7xlS
echo "Tiny10 config downloaded. Now running VNC server..."
sudo vncserver -SecurityType None -xstartup "dwm" -rfbport 5900 && sudo /noVNC/utils/novnc_proxy --vnc 127.0.0.1:5900 --listen localhost:6080
echo "VNC server is running."
echo "After opening the NoVNC client, hit Alt+P and type aqemu."
echo "AQEMU will warn you that you are running it as root, just click no and ignore."
echo "In the Find QEMU setup step be sure to click the search button or else it will break."
echo "You can now start the VM."