
# vlang-big-integer
Big interger impelemented in pure vlang

[![CI](https://github.com/hanabi1224/vlang-big-integer/actions/workflows/main.yml/badge.svg)](https://github.com/hanabi1224/vlang-big-integer/actions/workflows/main.yml)
[![Build status](https://img.shields.io/appveyor/ci/hanabi1224/vlang-big-integer/main.svg)](https://ci.appveyor.com/project/hanabi1224/vlang-big-integer)
[![MIT License](https://img.shields.io/github/license/hanabi1224/vlang-big-integer.svg)](https://github.com/hanabi1224/vlang-big-integer/blob/master/LICENSE)

## Install
```bash
v install hanabi1224.biginteger
```

## Import
```v
import hanabi1224.biginteger
```

## Usage
```v
v1 := biginteger.from_int(-3)
// Note that '_' and ',' are allowed, only base-10 is currently supported.