REPOSITORY = testwebhooks
ORGANIZATION = "adrame98"
TAG = v1

Build:

	echo "Building"

	docker build -t "${ORGANIZATION}/${REPOSITORY}:${TAG}" .

Test:

	echo "Testing"

Deploy:

	echo "Deploying"
	docker login -u="$(USERNAME)" -p=dckr_pat_PXvYpxPSsZbrvDVzDOOBBtME7EU
	docker push ${ORGANIZATION}/${REPOSITORY}:${TAG}
