docker:
	GOOS=linux GOARCH=amd64 go build -tags closed ${LDFLAGS} -o bin/vale ./cmd/vale
	docker login -u jdkato -p ${DOCKER_PASS}
	docker build -f Dockerfile -t jdkato/vale:${LAST_TAG} .
	docker tag jdkato/vale:${LAST_TAG} jdkato/vale:latest
	docker push jdkato/vale:${LAST_TAG}
	docker push jdkato/vale:latest

snap:
	snapcraft login
	snapcraft
	snapcraft upload --release stable *.snap
