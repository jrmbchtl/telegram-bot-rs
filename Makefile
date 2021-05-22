.PHONY: all test build check clean run

all: clean check test build run

test:
	nix-shell --command "RUST_BACKTRACE=1 cargo test && exit"

build:
	nix-shell --command "cargo build --release -j 8 && exit"

check:
	nix-shell --command "cargo check --tests && exit"

clean:
	nix-shell --command "cargo clean && exit"

run:
	nix-shell --command "cargo run --package telegram-api-rs && exit"

publish:
	nix-shell --command "cargo publish && exit"