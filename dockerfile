FROM kasmweb/terminal:1.10.0
USER root

ENV HOME /home/kasm-default-profile
ENV STARTUPDIR /dockerstartup
ENV INST_SCRIPTS $STARTUPDIR/install
WORKDIR $HOME

######### Customize Container Here ###########

COPY ["./tools.sh", "/root/"]
RUN apt upgrade -y ; apt update -y ; bash /root/tools.sh
######### End Customizations ##########
