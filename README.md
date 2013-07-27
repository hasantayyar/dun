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

### Changelog

* 0.0.3 Added Removing unnecessary packages.
* 0.0.2 Added "apt-get upgrade" before node.js install.

### License

Licensed under The MIT License (MIT) - http://www.opensource.org/licenses/mit-license.php  
For the full copyright and license information, please view the LICENSE.txt file.