How to update the image:

- we assume you have logged into the pickmister docker registry.
  - to do that, do `docker login who.broke-it.net:15000` and use your credentials ( ask for them )

- once you're logged in, build the image in your local machine. Run `docker build -t who.broke-it.net:15000/pm-back-end-base ./` ( NOTE : it takes forever )
- once that image is built on your local machine, push it to the registry `docker push who.broke-it.net:15000/pm-back-end-base`


