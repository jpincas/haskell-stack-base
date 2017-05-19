FROM haskell

RUN apt-get update
RUN apt-get install -y entr

WORKDIR /home/docker/workspace

RUN stack update
RUN stack new hs-server

WORKDIR /home/docker/workspace/hs-server
RUN stack install scotty
RUN stack install aeson
RUN stack install hedis
RUN stack install uuid
RUN stack install http-conduit
RUN stack install warp

CMD ghc -v
