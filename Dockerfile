# Single-port QuakeJS (HTTP + WebSocket on 8080).
# Content is Quake 3 Arena Demo (what free QuakeJS ships) + bots.
FROM awakenedpower/quakejs-rootless:latest

# Hardened base has no named root user - use uid 0.
USER 0

RUN mkdir -p /quakejs/base/baseq3 /quakejs/base/cpma \
 && printf '%s\n' \
  'seta sv_hostname "heyitsbiz // Arena"' \
  'seta sv_maxclients 8' \
  'seta g_motd "Auto-join. Accept demo download once, then play."' \
  'seta g_quadfactor 3' \
  'seta g_gametype 0' \
  'seta timelimit 10' \
  'seta fraglimit 20' \
  'seta g_weaponrespawn 3' \
  'seta g_inactivity 3000' \
  'seta g_forcerespawn 1' \
  'seta rconpassword ""' \
  'seta bot_enable 1' \
  'seta bot_minplayers 4' \
  'seta bot_nochat 1' \
  'set d1 "map q3dm17 ; set nextmap vstr d2"' \
  'set d2 "map q3tourney2 ; set nextmap vstr d3"' \
  'set d3 "map q3dm7 ; set nextmap vstr d4"' \
  'set d4 "map pro-q3dm6 ; set nextmap vstr d5"' \
  'set d5 "map pro-q3dm13 ; set nextmap vstr d1"' \
  'vstr d1' \
  > /quakejs/base/baseq3/server.cfg \
 && cp /quakejs/base/baseq3/server.cfg /quakejs/base/cpma/server.cfg \
 && chown -R 65532:65532 /quakejs/base/baseq3 /quakejs/base/cpma

USER 65532

ENV FS_GAME=baseq3
ENV FS_CDN=localhost:8080
ENV SERVER_CONFIG=server.cfg

EXPOSE 8080
