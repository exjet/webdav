# WebDAV container with Windows digest authentication support

You can run this container in following way. You can then access the WebDAV instance at `http://localhost:8888/`. Internally the folder `/var/webdav` is used as WebDAV root.

```
docker run -d -e USERNAME=test -e PASSWORD=test -p 8888:80 exprime/webdav
```
For data persistance/access use a volume.
```
docker run -d -e USERNAME=test -e PASSWORD=test -p 8888:80 -v some/dir:/var/webdav exprime/webdav
```
