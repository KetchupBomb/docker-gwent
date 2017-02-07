# Gwent ([not-gwent-online])

---

#### What
[not-gwent-online] is a fan-made adaptation of the in-game mini-game Gwent from [The Witcher 3](https://en.wikipedia.org/wiki/The_Witcher_3:_Wild_Hunt). [CD Project RED is creating their own, official Gwent](https://www.playgwent.com/en). But for the time being, this is a fair placeholder for fans.

#### How to use
[not-gwent-online] has two primary components that need to be configured correctly in order to work:
1. Web server port (`3000`)
2. Web-socket port (`16918`)
As of right now, these are not dynamic and are hard-coded in the underlying PHP and JavaScript. Which is why you must `-p` explicitly to prevent Docker from randomizing host-side ports.

`docker run -it --rm -p 3000:3000/tcp -p 16918:16918/tcp ketchupbomb/gwent`

[not-gwent-online]: https://github.com/exane/not-gwent-online
