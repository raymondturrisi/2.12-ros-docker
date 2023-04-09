# This is an auto generated Dockerfile for ros:desktop-full
# generated from docker_images/create_ros_image.Dockerfile.em
FROM --platform=$BUILDPLATFORM raymondturrisi/ros-full-desktop:v0

# install ros packages
RUN apt-get update && apt-get install -y --no-install-recommends \
    ros-noetic-desktop-full=1.5.0-1* \
    && rm -rf /var/lib/apt/lists/* \
    && apt-get install -y xserver-xephyr x11-apps

USER friyay

WORKDIR /home/friyay
