# ISV Smoke Must Gather 

This image is for testing of the gather_namespaced_resources that is provided by Red Hat.

With various tag name, you can execute specific script. 

For example, if you want to gather event log and create event-filter.html, then you can use `event`

## Tag List
- event
- get
- desc
- yaml
- all

Full image name should be `quay.io/jooholee/isv-smoke-must-gather:$TAG_NAME`

## Development

### Test Scripts
~~~
make check-must-gather
~~~

### Build/Push Smoke Images
~~~
make must-gather-images
~~~

### Build A Versioning Image
~~~
vi Makefile
DEFAULT_IMAGE_TAG=v0.1-alpha  <== update

make must-gather
~~~


