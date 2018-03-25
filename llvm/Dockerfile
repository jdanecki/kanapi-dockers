FROM kanapi/kanapi-cli
MAINTAINER Jacek Danecki <jacek.m.danecki@gmail.com>
RUN mkdir -p ${HOME}/ci_src
COPY kanapi /kanapi_build/kanapi
COPY kanapi/kanapi_system/test_system/docker/configure /configure
ENV CI="true"
RUN /configure; cd /kanapi_build/kanapi/kanapi_system/x86_64 && ./install llvm verbose
CMD ["/bin/bash"]
