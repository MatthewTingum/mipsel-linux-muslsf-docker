FROM matthewtingum/dockerbuild:0.3-rc2

RUN wget -P /tmp/ https://musl.cc/mipsel-linux-muslsf-cross.tgz \
 && tar -xvf /tmp/mipsel-linux-muslsf-cross.tgz -C /tmp/ \
 && mv /tmp/mipsel-linux-muslsf-cross /opt/cross/ \
 && rm /tmp/mipsel-linux-muslsf-cross.tgz

ENV PATH="/opt/cross/bin/:$PATH"
