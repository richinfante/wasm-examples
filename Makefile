WAT2WASM=wat2wasm

all: **/main.wasm

%.wasm: %.wast
		$(WAT2WASM) $< -o $@

clean:
		rm **/*.wasm
