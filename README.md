# Sia

[Sia](https://sia.tech) on Alpine

## Configuration

The container runs `siad` by default and expects options using Docker's CMD. The
following command will show all available arguments.

```sh
docker run --rm -it erlend/sia --help
```

## Example

```sh
docker run -d --name sia -v /path/to/sia:/data -p 9982:9982 erlend/sia -d /data
```
