# heyitsbiz Quake — browser arena FPS

**Live:** https://quake.heyitsbiz.com

QuakeJS (ioquake3 compiled for the browser) with free redistributable arena content, bots, and multiplayer over WSS on a single port.

## Play

1. Open https://quake.heyitsbiz.com — wait for assets
2. Escape → Multiplayer / join the running game
3. Friends use the same URL · bots fill empty slots

## Coolify

- App: **Heyitsbiz OpenArena** (`awakenedpower/quakejs-rootless:latest`)
- Domain: `quake.heyitsbiz.com` → Biz-VPS
- Port: `8080` (HTTP + WebSocket multiplexed)

## Custom server.cfg (optional)

[`Dockerfile`](Dockerfile) + [`server.cfg`](server.cfg) bake bots / hostname for a custom image build. Production currently runs the stock rootless image; point Coolify at this Dockerfile when you want the heyitsbiz cfg baked in.
