# The official Yellow Lab Tools v3 image

[`Yellow Lab Tools`](https://github.com/YellowLabTools/YellowLabTools) is an open-source project developed by Gaël Métais.

It analyzes a webpage and detects **performance** or **front-end code quality** issues. Free, easy to launch, easy to understand, in-depth details. With this docker image, you can run your own YellowLabTools instance.

This image will be updated continuously.

## Usage

```sh
docker run -it --privileged -p 8383:8383 ousamabenyounes/yellowlabtools 
```

or if you prefer to run it in detached mode add the `-d` option:

```sh
docker run -d --privileged -p 8383:8383 ousamabenyounes/yellowlabtools 
```

And then open [`http://localhost:8383/`](http://localhost:8383/) on your web browser.  

### localhost

If you would like to run tests against a website that is only available on the host network, for example, `localhost`, then you need to run the Docker image using the `--network=host` flag.

```diff
- docker run -it --privileged -p 8383:8383 ousamabenyounes/yellowlabtools
+ docker run -it --privileged --network host -p 8383:8383 ousamabenyounes/yellowlabtools 
```

## Debug

If you need to run your instance in debug mode, add `'DEBUG=*` to the environment variables:

```sh
 docker run  --privileged --env 'DEBUG=*' -p 8383:8383 ousamabenyounes/yellowlabtools
```

## Development

You can connect to your fork of YellowLabTools by changing the GitHub repository in the `Dockerfile` and rebuilding the image.

**Dockerfile:**
```diff
-  && git clone https://github.com/YellowLabTools/YellowLabTools-server.git -b ${VERSION} . \
+  && git clone https://github.com/kevinfarrugia/YellowLabTools-server.git -b ${VERSION} . \
```

**Build:**
```sh
docker build -t yellowlabtools .
```

**Run:**
```sh
docker run --privileged -p 8383:8383 yellowlabtools
```

# Contributors
- Gaël Métais [gmetais](https://github.com/gmetais)
- Bruno Alimelie [baconsulting](https://github.com/baconsulting)
- Alexandre Painchaud [painchaudAlexandre](https://github.com/painchaudAlexandre)
- Kevin Farrugia [kevinfarrugia](https://github.com/kevinfarrugia)
