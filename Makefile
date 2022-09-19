download:
	curl -L -o distro/glowstone.jar https://github.com/GlowstoneMC/Glowstone/releases/download/2021.7.0/glowstone.jar

build: download
	docker build -t reynoldsm88/glowstone:latest .

