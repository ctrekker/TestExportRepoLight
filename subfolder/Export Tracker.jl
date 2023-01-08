### A Pluto.jl notebook ###
# v0.19.14

using Markdown
using InteractiveUtils

# ╔═╡ 0bf9042e-8ee4-11ed-1d3d-8facf030b90e
md"""
# Export Tracker
This notebook will track some basic properties of the system the notebook is running on. When exported to a static file, these values will retain information about the environment in which they were exported.
"""

# ╔═╡ 38cf0796-967a-479f-ac9b-3fa248ac7ed6
versioninfo(verbose=true)

# ╔═╡ c654b148-07af-4262-a843-769c35b90fc6
md"""
__System memory (MB):__
"""

# ╔═╡ 981155d3-6b60-4ae7-9aca-3e4ca0d8d654
Sys.total_memory() / (1024^2)

# ╔═╡ fe4d5e95-5a26-4930-acfa-764066cef454
md"""
__System CPU__:
"""

# ╔═╡ 0114b144-ccbc-47f8-a9ee-34f885b9a32c
Sys.cpu_info()

# ╔═╡ df1f9bc4-7091-4e8e-8d4d-dc15add8afad
md"""
__System Uptime (hours):__
"""

# ╔═╡ 04c9ae9b-c002-43d9-9b7b-0bd1e5fbef69
Sys.uptime() / 3600

# ╔═╡ add18811-cf10-4553-98b0-37f0e4d8769d
Sys.MACHINE, Sys.KERNEL, Sys.ARCH, Sys.CPU_NAME

# ╔═╡ 00000000-0000-0000-0000-000000000001
PLUTO_PROJECT_TOML_CONTENTS = """
[deps]
"""

# ╔═╡ 00000000-0000-0000-0000-000000000002
PLUTO_MANIFEST_TOML_CONTENTS = """
# This file is machine-generated - editing it directly is not advised

julia_version = "1.8.0"
manifest_format = "2.0"
project_hash = "da39a3ee5e6b4b0d3255bfef95601890afd80709"

[deps]
"""

# ╔═╡ Cell order:
# ╟─0bf9042e-8ee4-11ed-1d3d-8facf030b90e
# ╠═38cf0796-967a-479f-ac9b-3fa248ac7ed6
# ╟─c654b148-07af-4262-a843-769c35b90fc6
# ╠═981155d3-6b60-4ae7-9aca-3e4ca0d8d654
# ╟─fe4d5e95-5a26-4930-acfa-764066cef454
# ╠═0114b144-ccbc-47f8-a9ee-34f885b9a32c
# ╟─df1f9bc4-7091-4e8e-8d4d-dc15add8afad
# ╠═04c9ae9b-c002-43d9-9b7b-0bd1e5fbef69
# ╠═add18811-cf10-4553-98b0-37f0e4d8769d
# ╟─00000000-0000-0000-0000-000000000001
# ╟─00000000-0000-0000-0000-000000000002
