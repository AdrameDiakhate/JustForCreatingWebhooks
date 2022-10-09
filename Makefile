REPOSITORY = testwebhooks
ORGANIZATION = adrame98
TAG = v3
USERNAME=adrame98

Build:

	echo "Building"

	docker build -t "${ORGANIZATION}/${REPOSITORY}:${TAG}" .

Test:

	echo "Testing"

Deploy:

	echo "Deploying"
	docker login -u="$(USERNAME)" -p=dckr_pat_bcI_4laiXy0BulYd7Mn0vLR6e58
	docker push "${ORGANIZATION}/${REPOSITORY}:${TAG}"