FROM ubuntu:18.04

RUN apt-get -y update
RUN apt-get -y install apt-utils software-properties-common
RUN apt-add-repository ppa:nnstreamer
RUN apt-add-repository ppa:nnstreamer/ppa-build-test
RUN apt-get -y update
RUN apt-get -y install git meson ninja-build tensorflow* edgetpu libedgetpu1-std libedgetpu-dev
RUN apt-get -y install gcc g++ pkg-config libglib2.0-dev libgtest-dev
RUN apt-get -y install libgstreamer1.0-0 gstreamer1.0-plugins-base gstreamer1.0-plugins-good gstreamer1.0-plugins-bad gstreamer1.0-plugins-ugly gstreamer1.0-libav gstreamer1.0-doc gstreamer1.0-tools gstreamer1.0-x gstreamer1.0-alsa gstreamer1.0-gl gstreamer1.0-gtk3 gstreamer1.0-qt5 gstreamer1.0-pulseaudio libgstreamer-plugins-base1.0-dev
RUN git clone https://github.com/nnstreamer/nnstreamer.git /home/nnstreamer
COPY .bashrc /root/.bashrc

WORKDIR /home
