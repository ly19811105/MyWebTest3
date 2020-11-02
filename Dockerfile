# Dockerfile
#
# Version: 1.3.0
FROM debian:latest

# RUN apt-get update && apt-get install -y openssh-server
RUN apt-get update && apt-get install -q -y git curl unzip daemon
# RUN ls /var/run/
# RUN ls /run/
# RUN mkdir -p /var/run/sshd
# RUN mkdir -p /run/sshd
# RUN chmod 0755 /run/sshd
# RUN chmod 0755 /var/run/sshd
# RUN ls /var/run/
# RUN ls /run/
# RUN echo 'root:56InL2s0KyqWYLVeP323' | chpasswd

RUN mkdir -p /usr/internet/
#RUN cat /etc/ssh/sshd_config
#RUN sed -i 's/#*Port 22/Port 22748/g' /etc/ssh/sshd_config
#RUN sed -i 's/#*PermitRootLogin prohibit-password/PermitRootLogin yes/g' /etc/ssh/sshd_config
# SSH login fix. Otherwise user is kicked off after login
RUN sed -i 's@session\s*required\s*pam_loginuid.so@session optional pam_loginuid.so@g' /etc/pam.d/sshd
RUN cat /etc/ssh/sshd_config
RUN cat /etc/pam.d/sshd
ENV NOTVISIBLE="in users profile"
RUN echo "export VISIBLE=now" >> /etc/profile
EXPOSE 22748
EXPOSE 22112
RUN ls /var/run/
RUN ls /run/
CMD ["/usr/sbin/sshd", "-D"]
