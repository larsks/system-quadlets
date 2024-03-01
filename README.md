# System containers

These are containers that I run to provide services on my local systems.

- `traefik.container` -- handles all incoming requests and directs them to the appropriate backend container based on the request hostname.
- `devpi.container` -- A pypi proxy with search support.
- `whoami.container` -- Just for testing that things are working as expected.
