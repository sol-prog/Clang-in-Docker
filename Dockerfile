# Use the latest stable Ubuntu version (currently 16.04)
FROM ubuntu:16.04

# Make sure the image is updated, install some prerequisites,
# Download the latest version of Clang (official binary) for Ubuntu
# Extract the archive and add Clang to the PATH
RUN apt update && apt install -y \
  xz-utils \
  build-essential \
  curl \
  && rm -rf /var/lib/apt/lists/* \
  && curl -SL http://releases.llvm.org/5.0.1/clang+llvm-5.0.1-x86_64-linux-gnu-ubuntu-16.04.tar.xz \
  | tar -xJC . && \
  mv clang+llvm-5.0.1-x86_64-linux-gnu-ubuntu-16.04 clang_5.0.1 && \
  echo 'export PATH=/clang_5.0.1/bin:$PATH' >> ~/.bashrc && \
  echo 'export LD_LIBRARY_PATH=/clang_5.0.1/lib:LD_LIBRARY_PATH' >> ~/.bashrc

# Start from a Bash prompt
CMD [ "/bin/bash" ]
