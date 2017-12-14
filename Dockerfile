# Use the latest stable Ubuntu version (currently 16.04)
FROM ubuntu:latest

# Make sure the image is updated and install some prerequisites
RUN apt update && apt upgrade -y && \
  apt install -y \
  xz-utils \
  build-essential

# Download the latest version of Clang (official binary)
ADD http://releases.llvm.org/5.0.0/clang+llvm-5.0.0-linux-x86_64-ubuntu16.04.tar.xz /

# Extract the archive and add Clang to the PATH
RUN tar xf clang+llvm-5.0.0-linux-x86_64-ubuntu16.04.tar.xz && \
  rm clang+llvm-5.0.0-linux-x86_64-ubuntu16.04.tar.xz && \
  mv clang+llvm-5.0.0-linux-x86_64-ubuntu16.04 clang_5.0.0 && \
  echo 'export PATH=/clang_5.0.0/bin:$PATH' >> ~/.bashrc && \
  echo 'export LD_LIBRARY_PATH=/clang_5.0.0/lib:LD_LIBRARY_PATH' >> ~/.bashrc

# Start from a Bash prompt
CMD [ "/bin/bash" ]
