FROM openjdk:11.0
WORKDIR /app
COPY /target/Uber.jar .
RUN echo "jenkins ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers
RUN echo "alias docker='sudo docker '" >> /home/jenkins/.bashrc
EXPOSE 9091
CMD ["java","jar","Uber.jar"]
