## dun

  [dun](http://github.com/cmfatih/dun) is a [docker](http://www.docker.io/) container for The DUN stack: Docker, Ubuntu, Node.js
  
### Installation

```
  docker pull cmfatih/dun
```

### Test

```
  docker run cmfatih/dun /usr/bin/node -p 'console.log("dockerized!");process.exit(0);'
```

### Build

```
  docker build -t dun https://github.com/cmfatih/dun
  docker run dun /usr/bin/node -p 'console.log("dockerized!");process.exit(0);'
```

### Todo

  - node.js folder and permissions.
  - An API for managing node.js applications. 