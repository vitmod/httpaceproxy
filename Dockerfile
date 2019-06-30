FROM ubuntu:18.10

# set ports
EXPOSE 8081 62062 6878

# update apt and install
RUN \
apt-get update && apt-get upgrade -y && \
apt-get install -y --no-install-recommends \
python3 \
python-pkg-resources \
python-setuptools \
python3-setuptools \
python-libxslt1 \
python-m2crypto \
python-minimal \
build-essential \
libpython2.7 \
python3-venv \
python-wheel \
python3-dev \
python-apsw  \
python-lxml \
libssl1.0.0 \
python3-pip \
sudo \
nano \
mc \
tar \
unzip \
wget \
gcc && \
apt autoremove -y && \
pip3 install --upgrade psutil && \
pip3 install --upgrade gevent && \

# install acestream
wget -o - https://www.dropbox.com/s/kz4ov7f0om260jp/acestream_3.1.35_ubuntu_18.04_x86_64.tar.gz && \
tar -zxvf acestream_3.1.35_ubuntu_18.04_x86_64.tar.gz && \
mv acestream.engine/ /opt/ && \

# install aceproxy
wget -o - https://github.com/pepsik-kiev/HTTPAceProxy/archive/master.zip && \
unzip master.zip -d /opt/ && \

# clean up
rm -rf acestream_3.1.35_ubuntu_18.04_x86_64.tar.gz master.zip

# add local files
ADD add/torrenttv.py /opt/HTTPAceProxy-master/plugins/config/torrenttv.py
ADD add/aceconfig.py /opt/HTTPAceProxy-master/aceconfig.py
ADD add/playlist.py /opt/HTTPAceProxy-master/modules/playlist.py
ADD start.sh /bash/start.sh
RUN chmod +x /bash/start.sh
CMD ["/bash/start.sh"]
