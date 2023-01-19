# SpeedTest++

This is a fork of the original SpeedTest++ by Francesco Laurita
(see https://github.com/taganaka/SpeedTest)

## Features

1. Best server discovery based on speed and distance from you.

2. Line type discovery to select the best test profile based on your line speed.

3. Aggressive multi-threading program in order to saturate your bandwidth quickly.

4. Test supported: Ping / Jitter / Download speed / Upload speed / Packet loss (UDP).

5. Provide a URL to the speedtest.net share results image using option --share

## Installation

### Requirements

1. A modern C++ compiler
2. GNU make
3. libcurl
4. libssl
5. libxml2

### On FreeBSD

```
$ sudo pkg install git-lite gmake libcurl libssl libxml2
$ git clone https://git.rgnets.com/oprs1/SpeedTest
$ cd SpeedTest
$ make
$ sudo make install
```

### On Ubuntu/Debian

```
$ sudo apt-get install git build-essential libcurl4-openssl-dev libxml2-dev libssl-dev
$ git clone https://git.rgnets.com/oprs1/SpeedTest
$ cd SpeedTest
$ make
$ sudo make install
```

### On OpenSuse

```
$ sudo zypper install git gcc-c++ libcurl-devel libxml2-devel libopenssl-devel
$ git clone https://git.rgnets.com/oprs1/SpeedTest
$ cd SpeedTest
$ make
$ sudo make install
```

## Usage

```
$ ./SpeedTest --help
SpeedTest++ version 1.8
Speedtest.net command line interface
Info: https://git.rgnets.com/oprs1/SpeedTest
Author: Francesco Laurita <francesco.laurita@gmail.com>

Usage: ./SpeedTest  [--latency] [--quality] [--download] [--upload] [--share] [--help]
      [--test-server host:port] [--quality-server host:port] [--output verbose|text]
optional arguments:
  --help                      Show this message and exit
  --latency                   Perform latency test only
  --quality                   Perform quality test only. It includes latency test
  --download                  Perform download test only. It includes latency test
  --upload                    Perform upload test only. It includes latency test
  --share                     Generate and provide a URL to the speedtest.net share results image
  --test-server host:port     Run speed test against a specific server
  --quality-server host:port  Run line quality test against a specific server
  --output verbose|text       Set output type. Default: verbose
$
```

## License

SpeedTest++ is available as open source program under the terms of the [MIT License](http://opensource.org/licenses/MIT).
