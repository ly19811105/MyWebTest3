# Dockerfile
#
# Version: 1.3.0
FROM debian:latest

RUN apt-get update && apt-get install -q -y git curl unzip daemon
RUN mkdir -p /usr/internet/
#RUN cat /etc/ssh/sshd_config
#RUN sed -i 's/#*Port 22/Port 22748/g' /etc/ssh/sshd_config
#RUN sed -i 's/#*PermitRootLogin prohibit-password/PermitRootLogin yes/g' /etc/ssh/sshd_config
# SSH login fix. Otherwise user is kicked off after login
#RUN sed -i 's@session\s*required\s*pam_loginuid.so@session optional pam_loginuid.so@g' /etc/pam.d/sshd
#RUN cat /etc/ssh/sshd_config
#RUN cat /etc/pam.d/sshd
#ENV NOTVISIBLE="in users profile"
#RUN echo "export VISIBLE=now" >> /etc/profile
# Open Port
EXPOSE 22122
ADD MyWebtest-install.sh /usr/internet/MyWebtest-install.sh
RUN chmod +x /usr/internet/MyWebtest-install.sh
#Run Script
CMD ["bash", "/usr/internet/MyWebtest-install.sh"]
RUN ls /usr/bin/nginx/
RUN ls /usr/local/lib/
