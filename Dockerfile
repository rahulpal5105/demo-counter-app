FROM ubuntu
RUN sudo apt install openjdk-11-jre -y
RUN sudo apt update -y
WORKDIR /opt
copy target/Uber.jar .
CMD ["java","-jar","Uber.jar"]
