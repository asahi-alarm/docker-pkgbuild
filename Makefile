all:
	docker build --platform=linux/amd64 -f Dockerfile.x86_64 -t josdehaes/asahi-alarm-pkgbuild-mesa:latest .
	docker build -f Dockerfile.aarch64 -t josdehaes/asahi-alarm-pkgbuild:latest .

push: all
	docker push josdehaes/asahi-alarm-pkgbuild:latest
	docker push josdehaes/asahi-alarm-pkgbuild-mesa:latest
