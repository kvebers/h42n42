FROM ocaml/opam:debian-ocaml-4.14
USER root
RUN apt-get update && apt-get install -y \
    m4 \
    git \
    curl \
    pkg-config \
    libssl-dev \
    nodejs \
    npm \
    sudo \
    libgmp-dev \
    zlib1g-dev

RUN opam install -y js_of_ocaml
RUN opam install -y lwt
RUN opam install -y eliom
RUN opam install -y ocsigen-start
USER opam
WORKDIR /home/opam/app
COPY src/ .
#RUN make
EXPOSE 8080
#CMD ["ocsigenserver", "-c", "ocsigenserver.conf"]
CMD ["tail", "-f", "/dev/null"]
