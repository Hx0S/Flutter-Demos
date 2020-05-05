FROM gitpod/workspace-full
                    
USER gitpod

RUN sudo apt -q update && sudo apt install libglu1-mesa
RUN cd / && sudo git clone https://github.com/flutter/flutter.git -b stable && sudo export PATH="$PATH:`pwd`/flutter/bin"
# Install custom tools, runtime, etc. using apt-get
# For example, the command below would install "bastet" - a command line tetris clone:
#
# RUN sudo apt-get -q update && #     sudo apt-get install -yq bastet && #     sudo rm -rf /var/lib/apt/lists/*
#
# More information: https://www.gitpod.io/docs/config-docker/
