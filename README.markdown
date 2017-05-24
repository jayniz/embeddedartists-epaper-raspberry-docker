# Embedded Artists e-paper via docker

This is a docker image for Embedded Artists'
[2.7" e-paper](http://www.embeddedartists.com/products/displays/lcd_27_epaper.php)
that I use in conjunction with [resin.io](https://resin.io).

## Getting started with resin.io

Follow their instructions on creating a new application and git push the
following Dockerfile to your device:

```
FROM jannis/embeddedartists-epaper
```

The display should blink a couple of times and display the current date and
time (while the display is updated, a little red led on its back will turn on).

## Plain docker

If you want to try it without resin, you'll need to enable SPI and
`sudo modprobe spi-bcm2835`.
[Embedded Artists' instructions](https://github.com/embeddedartists/gratis/tree/master/PlatformWithOS#preparations) will tell you how. If you run:

```shell
$ sudo docker run --privileged jannis/embeddedartists-epaper
```

that should display the current date and time.

## About

This docker image is based on resin/raspberrypi-python and

- installs freetype fonts
- installs pip and pillow
- installs tmux and vim
- clones
[embedded artists' gratis fork](https://github.com/embeddedartists/gratis/tree/master/PlatformWithOS) (drivers and examples)
- starts your `CMD` (and displays embedded artists' clock demo if you don't
  supply one)

If you have questions or comments, open a github issue, a PR or reach me
at [@jannis](https://twitter.com/jannis)
