.PHONY: all test build check clean run

all: clean check test build run

test:
	nix-shell --command "RUST_BACKTRACE=1 cargo test --bin telegram-api-rs && exit"

build:
	nix-shell --command "cargo build --bin telegram-api-rs --release -j 8 && exit"

check:
	nix-shell --command "cargo check --bin telegram-api-rs --tests && exit"

clean:
	nix-shell --command "cargo clean && exit"

run:
	nix-shell --command "cargo run --package telegram-api-rs --bin telegram-api-rs && exit"
