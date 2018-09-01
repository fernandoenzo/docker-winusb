FROM fernandoenzo/debian:10s-min
MAINTAINER Fernando Enzo Guarini (fernandoenzo@gmail.com)

ENV DISPLAY :0

COPY scripts/basics /tmp
COPY static/webupd8.list /etc/apt/sources.list.d/

RUN bash /tmp/basics

CMD ["woeusbgui"]
