CE=podman
CONFIG-DIR="./Custom/e3v2_skrmini_e3v3"
PIO-INI="./Custom/pio/e3v2_skrminie3v3_marlin2.1.2.pio.ini"

clean:
	rm -rf ./.temp
	rm -rf ./Build


git-init:
	git submodule init
	git submodule update


pio-install:
	${CE} build -t marlin/platformio:latest ./Marlin/docker/


firmware-build:
	mkdir -p ./.temp/
	cp -rf ./Marlin/* ./.temp/
	cp -f ${PIO-INI} ./.temp/platformio.ini
	cp -rf ${CONFIG-DIR}/* ./.temp/Marlin/
	${CE} run -it --rm \
		--name marlin-build \
		-v ./.temp:/code:z \
		-v platformio-cache:/root/.platformio \
		-w /code \
		localhost/marlin/platformio:latest \
		pio run
	mkdir -p ./Build
	cp -rf .temp/.pio/build/*/firmware* ./Build

