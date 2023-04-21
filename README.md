# Docker Virtual Hosts

docker-virtual-hosts sets up a container running a web service listing your docker virtual hosts. It is intended to be used with [nginx-proxy][1] but it can also be used on its own.

## Usage

To run it:

    $ docker compose up -d

Visit http://index.127.0.0.1.nip.io/ to see your other(s) virtual host(s).

Every containers with a `VIRTUAL_HOST=...` env var set should be present. You can also add labels to your containers with `VIRTUAL_LABELS=some spaces separated labels`. You we will then be able to filter yout vhosts using those labels.

[1]: https://github.com/jwilder/nginx-proxy

## Use SSL
You need to have a folder : `$HOME/.nginx-dev/certs` containing ssl certificates & keys.

For example, for a project `VIRTUAL_HOST=example.project.com`, you'll need to have :
- `$HOME/.nginx-dev/certs/example.project.com.crt`
- `$HOME/.nginx-dev/certs/example.project.com.key`
