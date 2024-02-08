QUADLETS = \
	devpi.container \
	devpi.volume \
	Makefile \
	services.network \
	traefik.container \
	whoami.container

CONNECTIONS = \
	services.nmconnection

all:

install: install-quadlets install-connections

install-quadlets: $(QUADLETS)
	install -m 644 $(QUADLETS) /etc/containers/systemd
	systemctl daemon-reload

install-connections: $(CONNECTIONS)
	install -m 600 $(CONNECTIONS) /etc/NetworkManager/system-connections
	nmcli connection reload
