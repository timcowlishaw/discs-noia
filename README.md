# Discs NoIA

![A girl hitting a computer with a big stick](data/discs_noia.jpg?raw=true)

[A no-AI netlabel](http://noia.timcowlishaw.cat): A [Faircamp](https://codeberg.org/simonrepp/faircamp) site, set up in [docker](https://www.docker.com/), served by [caddy](https://caddyserver.com/), with the [caddy-defender](https://github.com/JasonLovesDoggo/caddy-defender/) plugin to serve up random text nonsense to any AI bots that scrape it.

("NoIA" because "AI" in Catalan is "Intel·ligència Artificial" or "IA", therefore "No IA", and "Noia" also means "girl", hence the logo).

## Usage instructions

You'll need [docker](https://www.docker.com) installed.

Your faircamp site lives in `data/` - Fork the repo, [edit catalog.eno to taste](https://simonrepp.com/faircamp/manual/catalog-catalog-eno.html), and start adding music and metadata in directories underneath, [following the Faircamp instructions](https://simonrepp.com/faircamp/manual/getting-started.html).

Copy `env.example` to `.env` and edit to add the email address you want to use for SSL certificates in the `TLS_EMAIL` variable.

To build and preview your site run `docker compose build && docker compose up` then navigate to `localhost:8080`

You can host your site anywhere that will host a docker container. I use [DigitalOcean](https://www.digitalocean.com/). Further deployment instructions to come!
