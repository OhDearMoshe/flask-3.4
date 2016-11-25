### Flask with python 3.4

### Running example app

This comes with an example app.

Run via docker
```
docker run -i -t -P -d --name flask_app ohdearmoshe/flask-3.4 python -m flask run --host=0.0.0.0
```

Then grab the port from docker
```
docker port flask_app
5000/tcp -> 0.0.0.0:32782
```

Then go to the correct url in your browser/curl to try it out

```
curl http://127.0.0.1:32782/
Hello, World!
```

#### To run locally
Clone this repo

Build
```
docker build -t flask .
```

It even includes a test app. You can try it out by:
```
docker run -i -t -P -d --name flask_app flask python -m flask run --host=0.0.0.0
```
Then grab the port from docker
```
docker port flask_app
5000/tcp -> 0.0.0.0:32781
```

Then go to the correct url in your browser/curl to try it out

```
curl http://127.0.0.1:32781/
Hello, World!
```
