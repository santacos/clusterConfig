sudo docker rm -f $(sudo docker ps -aq)
sudo docker build -t=jobserver /home/santacos/config
sudo docker run -d -p 8090:8090 -p 32456-32472:32456-32472 --net=host jobserver
