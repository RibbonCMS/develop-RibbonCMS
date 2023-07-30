.PHONY: get_config_issue
get_config_issue:
	./scripts/get_issue.sh 2

.PHONY: closed
closed:
	docker-compose run --rm python sh -c "cd side_m/ && python closed.py"

.PHONY: copy_contents
copy_contents:
	docker-compose run --rm python sh -c "cd side_m/ && python copy_contents.py"

.PHONY: build
build:
	docker-compose run --rm --service-ports node sh -c "cd front/src && npm ci && npm run build"

.PHONY: export
export:
	docker-compose run --rm --service-ports node sh -c "cd front/src && npm ci && npm run export"

.PHONY: dev
dev:
	docker-compose run --rm --service-ports node sh -c "cd front/src && npm ci && npm run dev"