test:
	ruff check redisext tests docs
	python -m unittest discover -s tests -t .

redis:
	docker run --name redisext -p 6379:6379 -d redis

publish: test
	rm -rf dist
	python -m build
	twine check dist/*

clean:
	rm -rf build dist redisext.egg-info .coverage .ruff_cache

docs:
	$(MAKE) -C docs html

.PHONY: test redis publish clean docs
