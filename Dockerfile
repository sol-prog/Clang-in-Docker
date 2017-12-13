FROM ubuntu:latest

RUN apt update && apt upgrade -y && \
  apt install -y \
  xz-utils \
  build-essential

ADD http://releases.llvm.org/5.0.0/clang+llvm-5.0.0-linux-x86_64-ubuntu16.04.tar.xz /

RUN tar xf clang+llvm-5.0.0-linux-x86_64-ubuntu16.04.tar.xz && \
  rm clang+llvm-5.0.0-linux-x86_64-ubuntu16.04.tar.xz && \
  mv clang+llvm-5.0.0-linux-x86_64-ubuntu16.04 clang_5.0.0 && \
  echo 'export PATH=/clang_5.0.0/bin:$PATH' >> ~/.bashrc && \
  echo 'export LD_LIBRARY_PATH=/clang_5.0.0/lib:LD_LIBRARY_PATH' >> ~/.bashrc

CMD [ "/bin/bash" ]
