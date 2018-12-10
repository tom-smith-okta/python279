# python2.7.9 running on ubuntu:18.04 #

The dockerfile lives at:

[https://github.com/tom-smith-okta/python279](https://github.com/tom-smith-okta/python279)

This specific version of Python is the minimum requirement for running the [awsprocesscreds](https://github.com/awslabs/awsprocesscreds) tool.

>Note: timezone is hard-coded to `America/New_York` at the Ubuntu layer to prevent the awscli tool from prompting for timezone when it is auto-installed.

## to build ##
```
docker build -t tomsmithokta/python279 .
```

## to run ##
```
docker run -it tomsmithokta/python279
```

## to test ##
```
python hello.py
```
