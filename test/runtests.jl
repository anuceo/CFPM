using Test
using CFPM

@testset "CFPM scaffold" begin
    @testset "package loads" begin
        @test isa(CFPM, Module)
    end

    @testset "no speculative exports" begin
        # Only the module name itself is exported during the scaffold phase.
        @test names(CFPM) == [:CFPM]
    end

    @testset "established profile names" begin
        @test CFPM.PROFILE_NAMES == ("6D_8T", "12D_16T", "32D_64T")
        profiles_dir = joinpath(pkgdir(CFPM), "config", "profiles")
        for name in CFPM.PROFILE_NAMES
            @test isfile(joinpath(profiles_dir, name * ".toml"))
        end
    end
end
