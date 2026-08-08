# Single-port QuakeJS (HTTP + WebSocket multiplexed on 8080).
# Base image: free arena content + ioquake3/QuakeJS (OpenArena-class).
FROM awakenedpower/quakejs-rootless:latest

USER root
COPY server.cfg /quakejs/base/baseq3/server.cfg
COPY server.cfg /quakejs/base/cpma/server.cfg
RUN chown 65532:65532 /quakejs/base/baseq3/server.cfg /quakejs/base/cpma/server.cfg
USER 65532

ENV FS_GAME=baseq3
ENV FS_CDN=localhost:8080
ENV SERVER_CONFIG=server.cfg

EXPOSE 8080
