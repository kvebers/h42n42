FROM ocaml/opam:debian-11-ocaml-4.14
USER root
RUN apt-get update && apt-get install -y \
    git curl build-essential libssl-dev m4 unzip \
    libgmp-dev zlib1g-dev pkg-config && \
    rm -rf /var/lib/apt/lists/*

RUN opam install -y js_of_ocaml
RUN opam install -y lwt
RUN opam install -y eliom
RUN opam install -y ocsigen-start
RUN opam install -y ppx_deriving
RUN opam install -y js_of_ocaml-ppx
USER opam
WORKDIR /app
EXPOSE 8080
#CMD ["eliom-distillery"]
ENV PATH="/home/opam/.opam/4.14/bin:${PATH}"
CMD ["tail", "-f", "/dev/null"]
