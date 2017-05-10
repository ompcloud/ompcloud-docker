RELEASE_ARGS=$(filter-out $@,$(MAKECMDGOALS))
#RELEASE_TARBALL=$(shell ls | grep -F ompcloud | grep -F linux-amd64.tar.gz)
#RELEASE_FOLDER=$(firstword $(subst .tar, , ${RELEASE_TARBALL}))


all: ompcloud-install-release.sh
	./ompcloud-install-release.sh -i ${RELEASE_ARGS}

release-linux64: ompcloud-install-release.sh
	./ompcloud-install-release.sh -r ${RELEASE_ARGS}

#install: ${RELEASE_TARBALL}
#	mkdir ${RELEASE_FOLDER}
#	tar -xvzf ${RELEASE_TARBALL} -C ${RELEASE_FOLDER}
#	${RELEASE_FOLDER}/ompcloud-release-install-ubuntu.sh

