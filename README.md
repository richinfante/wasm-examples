# WASM Examples

This repo contains a few folders, each with a html file and wasm module in them.

To get started, install the [WABT Toolkit](https://github.com/WebAssembly/wabt) via homebrew or your usual package manager:

## Building
```bash
brew install wabt
```

Next, run make:

```bash
make
```

And then run the server:

## Running

We need the python server to properly serve the webassembly binaries with the correct content types:

```bash
python3 server.py
```

Then, you can navigate to one of the examples:

1. Hello World [http://localhost:8888/example1](http://localhost:8888/example1)
2. Addition [http://localhost:8888/example2](http://localhost:8888/example2)
3. Function Calls [http://localhost:8888/example4](http://localhost:8888/example4)
4. Memory [http://localhost:8888/example4](http://localhost:8888/example4)
5. Globals [http://localhost:8888/example5](http://localhost:8888/example5)

License: MIT
