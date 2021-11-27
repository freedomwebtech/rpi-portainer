curl -sSL https://get.docker.com | sh
sudo usermod -aG docker pi
sudo docker pull portainer/portainer-ce:linux-arm
sudo docker run --restart always -d -p 9000:9000 -v /var/run/docker.sock:/var/run/docker.sock -v portainer_data:/data portainer/portainer-ce:linux-arm

