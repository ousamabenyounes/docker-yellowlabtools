# The official Yellow Lab Tools v3 image
[`Yellow Lab Tools`](https://github.com/YellowLabTools/YellowLabTools) is an open source project developed by Gaël Métais.
It analyzes a webpage and detects **performance** or **front-end code quality** issues. Free, easy to launch, easy to understand, in-depth details. With this docker image, you can run your own YellowLabTools instance.
This image will be updated continuously.


# Usage
```
docker run --privileged -p 8383:8383 ousamabenyounes/yellowlabtools 
```
or if you prefer to run it in detached mode adding -d option  

```
docker run -d --privileged -p 8383:8383 ousamabenyounes/yellowlabtools 
```

And then open [`http://localhost:8383/`](http://localhost:8383/) on your web browser.  


If you need to run your instance in Debug mode

```
 docker run  --privileged --env 'DEBUG=*' -p 8383:8383 ousamabenyounes/yellowlabtools
```

To test your local server on your computer you have to do this:  

replace http://localhost:8080/ by http://host.docker.internal:8080/

# Contributors
- Gaël Métais [gmetais](https://github.com/gmetais)
- Bruno Alimelie [baconsulting](https://github.com/baconsulting)
- Alexandre Painchaud [painchaudAlexandre](https://github.com/painchaudAlexandre)
- Kevin Farrugia [kevinfarrugia](https://github.com/kevinfarrugia)
