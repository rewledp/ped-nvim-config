return {
	-- Trusts any binary in ucrt64/bin/ to determine include paths (needed for MSYS2 clang++).
	cmd = { "clangd", "--query-driver=C:/msys64/ucrt64/bin/*,C:/Qt/Tools/mingw1310_64/bin/*" },
}
