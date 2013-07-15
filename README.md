## DUN

  [DUN](http://github.com/cmfatih/dun) is a [Docker](http://www.docker.io/) container for The DUN stack: Docker, Ubuntu, Node.js
  
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
  docker build -t dun github.com/cmfatih/dun
  docker run dun /usr/bin/node -p 'console.log("dockerized!");process.exit(0);'
```