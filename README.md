#Getting Started

## Some primary dependencies include:
- NodeJS 4.x
- [jshon](http://kmkeen.com/jshon/)
- Docker Machine (if you are on OS X, Windows support comming soon!)

run this command to install cli, reverseproxy, and skel:

````
$ curl https://raw.githubusercontent.com/stjosephcontent/orchestra/master/install.sh | bash
````


The proxy needs to run as a privileged user because it's going to open port 80 and write to `/etc/hosts`

````
$ cd ~/.sjc/reverseproxy && sudo ./run.sh
````

Output from the proxy will collect in `~/.sjc/reverseproxy/logz`.

This system expects your docker-machine to be called "orchestra". See `docker-machine help create` for instructions.

Try: 

````
$ sjc ls
````

What did you get? A message telling you that no SJC apps were running? Well that's no fun. Let's fix that.

Clone dogs:

````
$ git clone https://github.com/stjosephcontent/dogs
$ cd dogs
$ sjc start --hard
$ sjc ls
````

Ah very good! Our first SJC app. Let's create another:

```
$ git checkout poodle
$ sjc start --hard
$ sjc ls
```

Now we're cooking with gas! Open them up in your browser: `sjc browse 1` or `sjc browse 2`.

How cool is that? You should also try using this REPO for more variants and more fun: https://github.com/stjosephcontent/colours

For more info, `sjc help`, or:

http://stjosephcontent.github.io/orchestra/
