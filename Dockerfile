FROM quay.io/mocaccino/extra

RUN luet upgrade
RUN luet install shells/bash utils/curl utils/yq utils/jq

RUN mkdir /opt
ADD assets/ /opt/resource/
RUN chmod +x /opt/resource/check
RUN chmod +x /opt/resource/in
RUN chmod +x /opt/resource/out
