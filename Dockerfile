# We use Ubuntu 16.04 because there are already build binaries for this version of Ubuntu
# Check http://releases.llvm.org/7.0.0/ or http://releases.llvm.org/download.html#7.0.0 for the latest available binaries
FROM ubuntu:16.04

# Make sure the image is updated, install some prerequisites,
# Download the latest version of Clang (official binary) for Ubuntu
# Extract the archive and add Clang to the PATH
RUN apt update && apt install -y \
  xz-utils \
  build-essential \
  curl \
  && rm -rf /var/lib/apt/lists/* \
  && curl -SL http://releases.llvm.org/7.0.0/clang+llvm-7.0.0-x86_64-linux-gnu-ubuntu-16.04.tar.xz \
  | tar -xJC . && \
  mv clang+llvm-7.0.0-x86_64-linux-gnu-ubuntu-16.04 clang_7.0.0 && \
  echo 'export PATH=/clang_7.0.0/bin:$PATH' >> ~/.bashrc && \
  echo 'export LD_LIBRARY_PATH=/clang_7.0.0/lib:LD_LIBRARY_PATH' >> ~/.bashrc

# Start from a Bash prompt
CMD [ "/bin/bash" ]
