FROM osrf/ros:jazzy-desktop-full

# Example of installing programs
RUN apt-get update \
    && apt-get install -y \
    python3-pip \
    git \
    vim \
    && rm -rf /var/lib/apt/lists/*

RUN pip install mujoco --break-system-packages

RUN git clone https://github.com/google-deepmind/mujoco_menagerie.git /root/mujoco_menagerie

