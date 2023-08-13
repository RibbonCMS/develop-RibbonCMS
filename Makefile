.PHONY: get_config_issue
get_config_issue:
	./scripts/get_issue.sh 2

.PHONY: setup
setup:
	docker compose -f scripts/docker-compose.yml run --rm scripts bash -c \
		"pip install -r scripts/requirements.txt \
		&& python scripts/delete_volumes_option.py front/docker-compose.yml docker-compose-front.yml \
		&& python scripts/delete_volumes_option.py side_m/docker-compose.yml docker-compose-side-m.yml"
	docker compose -f docker-compose-front.yml -f docker-compose-side-m.yml -f docker-compose-integrate.yml config > docker-compose-main.yml
	rm -f docker-compose-front.yml docker-compose-side-m.yml

.PHONY: closed_from_sidef
closed_from_sidef:
	cp -r front/front_contents/ ./

.PHONY: closed
closed:
	docker compose -f docker-compose-main.yml run --rm python sh -c "cd side_m/ && python closed.py"

.PHONY: copy_contents
copy_contents:
	docker compose -f docker-compose-main.yml run --rm python sh -c "cd side_m/ && python copy_contents.py"

.PHONY: build
build:
	docker compose -f docker-compose-main.yml run --rm node sh -c "cd front/src && npm ci && npm run build"

.PHONY: export
export:
	docker compose -f docker-compose-main.yml run --rm node sh -c "cd front/src && npm ci && npm run export"

.PHONY: dev
dev:
	docker compose -f docker-compose-main.yml run --rm --service-ports node sh -c "cd front/src && npm ci && npm run dev"