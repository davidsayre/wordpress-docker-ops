### Super fast wordpress docker ops

* Assumes you have Wordpress in a git repo

### Where is your index.php?

* If it is ./index.php use Setup #1
* If it is ./<SOMEDIR>/index.php use Setup #2
 


### Setup 1) Your project has ./index.php in the root directory

Step 1) git clone <wordpress-docker-ops-repo> <PROJECT_OPS_DIR>
Step 2) cd <PROJECT_OPS_DIR>
Step 3) git clone <my-wordpress-repo> ./www/
Step 4) nano .env

* change the COMPOSE_PROJECT_NAME= (example: dave-wp)
* change the PROJECTPORTPREFIX= (example: 322)

Step 5) dev/start.sh

### DONE


### Setup 2) Your project has a subdir for Wordpress like ./<WEB_DIR>/index.php

Let's assume your Wordpress repo look like this

``` 
<WORDPRESS_DIR>/.git                    # wordpress site repo
<WORDPRESS_DIR>/<WEB_DIR>/index.php    # wordpress index file
```

Step 1) git clone <wordpress-docker-ops-repo> <my-project-ops>
```
cat <PROJECT_OPS_DIR>/.env >> <WORDPRESS_DIR>/.env
cat <PROJECT_OPS_DIR>/.gitgnore >> <WORDPRESS_DIR>/.gitgnore
cp <PROJECT_OPS_DIR>/docker-compose.yaml <WORDPRESS_DIR>/docker-compose.yaml
cp -R <PROJECT_OPS_DIR>/dev/ <WORDPRESS_DIR>/dev/
```

Step 2) Edit the docker-compose.yaml so volume mounts the <WEB_DIR> path into the 'app' container

``` 
nano docker-compose.yaml
```

``` 
app:
    volumes:
        # comment out - './www:/var/www/html'
        # add custom entry
        - './<WEB_DIR>:/var/www/html'
```

Step 3) boot

``` 
dev/start.sh
```


### DONE

Follow the dev/info.sh instructions. You should get the output http://localhost:<portprefix>00 to paste into browser


