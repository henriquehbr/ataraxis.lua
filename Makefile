# allows running lua rocks directly
export PATH := lua_modules/bin:$(PATH)

# allows running rust crates directly
export PATH := rust_modules/bin:$(PATH)

init: setup-git-hooks install-lua-deps install-rust-deps install-node-deps

setup-git-hooks:
	git config core.hooksPath .githooks

install-lua-deps:
	luarocks --tree=lua_modules install --only-deps ataraxis-dev-1.rockspec

install-rust-deps:
	cargo install stylua --root rust_modules

install-node-deps:
	npm i

stylua:
	stylua lua/ataraxis

luacheck:
	luacheck --config .luacheckrc ./lua/**/*.lua

lint: stylua luacheck
