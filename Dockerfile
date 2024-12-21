FROM ocaml/opam:debian-11-ocaml-4.14
USER root
RUN apt-get update 
RUN apt-get install -y bubblewrap 
RUN apt-get install -y openssh-server 
RUN apt-get install -y libgdbm-dev 
RUN apt-get install -y pkg-config 
RUN apt-get install -y libsqlite3-dev 
RUN apt-get install -y zlib1g-dev 
RUN apt-get install -y gcc 
RUN apt-get install -y git 
RUN apt-get install -y m4 
RUN apt-get install -y make 
RUN apt-get install -y unzip 
RUN apt-get install -y libgmp-dev 
RUN apt-get install -y inotify-tools 
RUN apt-get install -y libssl-dev 
RUN apt-get install -y libpcre3-dev 
RUN apt-get install -y curl 
RUN rm -rf /var/lib/apt/lists/*

RUN opam install -y js_of_ocaml
RUN opam install -y lwt
RUN opam install -y eliom
RUN opam install -y ocsigen-start
RUN opam install -y ppx_deriving
RUN opam install -y js_of_ocaml-ppx
RUN opam install bigstringaf
RUN opam install ocsipersist-sqlite
RUN opam install dbm
RUN opam install ocsipersist-dbm
RUN opam install ocsipersist-dbm-config
USER opam
WORKDIR /app
EXPOSE 8080
ENV PATH="/home/opam/.opam/4.14/bin:${PATH}" \
    LD_LIBRARY_PATH="/home/opam/.opam/4.14/lib/stublibs:${LD_LIBRARY_PATH}"
RUN eval $(opam env)
CMD ["/bin/bash", "-c", "make test.byte"]
