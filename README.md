#Getting Started

## Some primary dependencies include:
- NodeJS 5.x
- Docker 1.11 or later (known as Docker Beta, at the time of this writing)

run this command to install cli, reverseproxy, and skel:

````
$ curl https://raw.githubusercontent.com/stjosephcontent/orchestra/master/install.sh | bash
````

Orhcestra works by spinning up a local reverse-proxy, listening on port 80 on your machine, and managing hostnames in `/etc/hosts`. Reverse Proxy keeps maps those domain names to docker instances, and you control that by specifiying what goes in the `appdef.json` file at the root of each app. You can start Orchestra up like this:

```
$ sjc up
```

Output from the proxy will collect in `~/.sjc/reverseproxy/logz`.

Try: 

````
$ sjc ls
````

What did you get? A message telling you that no SJC apps were running? Well that's no fun. Let's fix that.

Let's start the web app called "dogs":

````
$ cd ~/.sjc/apps/dogs
$ sjc build
$ sjc start --hard
$ sjc ls
````

Ah very good! Our first SJC app. Let's start another:

```
$ git checkout poodle
$ sjc build
$ sjc start --hard
$ sjc ls
```

Now we're cooking with gas! Open them up in your browser: `sjc browse 1` or `sjc browse 2`.

How cool is that? You can experiment further with a different app:

```
$ cd ~/.sjc/apps/colours
$ sjc build
$ sjc start --hard
$ sjc ls
$ git branch
```

For more info, `sjc help`, or:

http://stjosephcontent.github.io/orchestra/
