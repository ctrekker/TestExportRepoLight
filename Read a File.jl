### A Pluto.jl notebook ###
# v0.19.36

using Markdown
using InteractiveUtils

# ╔═╡ c860ff61-d08e-4af0-be08-34d4d0652437
md"""
# Read a File
"""

# ╔═╡ e9fedaa0-638f-11ed-2bbd-33017c2e967c
open("test.txt", "r") do io
	read(io, String)
end

# ╔═╡ 7b99dddf-ef7c-4580-9a0c-d13dcc6b8ea0
md"""
$\pi^2$
"""

# ╔═╡ 00000000-0000-0000-0000-000000000001
PLUTO_PROJECT_TOML_CONTENTS = """
[deps]
"""

# ╔═╡ 00000000-0000-0000-0000-000000000002
PLUTO_MANIFEST_TOML_CONTENTS = """
# This file is machine-generated - editing it directly is not advised

julia_version = "1.10.0"
manifest_format = "2.0"
project_hash = "da39a3ee5e6b4b0d3255bfef95601890afd80709"

[deps]
"""

# ╔═╡ Cell order:
# ╟─c860ff61-d08e-4af0-be08-34d4d0652437
# ╠═e9fedaa0-638f-11ed-2bbd-33017c2e967c
# ╟─7b99dddf-ef7c-4580-9a0c-d13dcc6b8ea0
# ╟─00000000-0000-0000-0000-000000000001
# ╟─00000000-0000-0000-0000-000000000002
