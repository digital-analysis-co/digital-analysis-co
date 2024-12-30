# Mkdocs website for Digital Analysis Company

`docker-compose build` and `docker-compose up` the container using the provided Dockerfile and compose yml in root.

`docker-compose.yml` will run `mkdocs serve -a 0.0.0.0:8000` to serve the site locally at `http://localhost:8000/`. To render the site for Github Pages, run `mkdocs build` within the running container. This will generate new files within `/docs` which is the dir linked to Github Pages. Push any generated changes in `/dir` to reflect them on the website.