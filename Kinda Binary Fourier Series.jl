### A Pluto.jl notebook ###
# v0.19.26

using Markdown
using InteractiveUtils

# ╔═╡ 0723b074-1f0b-49d8-890e-9114aff1143f
function at_position(n, pos)
	(n >> (pos - 1)) & 1
end

# ╔═╡ fbcfdf39-2c94-49a9-9656-99cc140dcdf0
function from_array(arr; base=2)
	agg = 0
	for i ∈ 0:(length(arr)-1)
		agg += arr[i+1] * base ^ i
	end
	agg
end

# ╔═╡ 2c906f34-a452-4bca-b317-3bfe6f1af7d3
function fourier_arrays(; bits=32)
	arrs = []
	for i ∈ 1:bits
		push!(arrs, [])
		for j ∈ 1:bits
			if i == 1
				push!(arrs[end], 1)
			else
				if Int(ceil(j / (i-1))) % 2 == 1
					push!(arrs[end], 1)
				else
					push!(arrs[end], 0)
				end
			end
		end
	end
	arrs
end

# ╔═╡ d121b7e0-5b6d-4b0f-8ee5-627328d81d73
from_array.(fourier_arrays(; bits=8))

# ╔═╡ 94ce009d-9db3-439d-876d-bfa3048a3557
function binary_fourier(n; bits=32)
	agg = 0
	f = from_array.(fourier_arrays(; bits))
	digits = []
	for pos ∈ 1:bits
		if at_position(agg, pos) != at_position(n, pos)
			push!(digits, pos)
			agg ⊻= f[pos]
		end
	end
	digits
end

# ╔═╡ 0848058c-fcdf-4ae2-9088-6a15cb70202a
binary_fourier(4; bits=3)

# ╔═╡ 00000000-0000-0000-0000-000000000001
PLUTO_PROJECT_TOML_CONTENTS = """
[deps]
"""

# ╔═╡ 00000000-0000-0000-0000-000000000002
PLUTO_MANIFEST_TOML_CONTENTS = """
# This file is machine-generated - editing it directly is not advised

julia_version = "1.9.0"
manifest_format = "2.0"
project_hash = "da39a3ee5e6b4b0d3255bfef95601890afd80709"

[deps]
"""

# ╔═╡ Cell order:
# ╠═0723b074-1f0b-49d8-890e-9114aff1143f
# ╠═fbcfdf39-2c94-49a9-9656-99cc140dcdf0
# ╠═2c906f34-a452-4bca-b317-3bfe6f1af7d3
# ╠═d121b7e0-5b6d-4b0f-8ee5-627328d81d73
# ╠═94ce009d-9db3-439d-876d-bfa3048a3557
# ╠═0848058c-fcdf-4ae2-9088-6a15cb70202a
# ╟─00000000-0000-0000-0000-000000000001
# ╟─00000000-0000-0000-0000-000000000002
