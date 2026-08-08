# heyitsbiz Quake — OpenArena (browser)

**Live:** https://quake.heyitsbiz.com

Browser deathmatch via [QuakeJS](https://github.com/inolen/quakejs) (ioquake3 → WASM) with free redistributable arena content. Bots auto-fill to 3 players.

## Play

1. Open the site — assets download once
2. Escape → Multiplayer (or join the running server)
3. WASD + mouse. Friends join the same URL.

## Stack

- Image based on `awakenedpower/quakejs-rootless` (single port 8080: HTTP + WebSocket)
- Coolify on Biz-VPS · DNS `quake.heyitsbiz.com`

## Config

Edit [`server.cfg`](server.cfg) for frag limit, map cycle, bot count (`bot_minplayers`).
