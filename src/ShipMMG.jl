module ShipMMG

using DifferentialEquations
using ParameterizedFunctions
using Dierckx
using Plots
using Parameters
using Distributions
using Turing

include("kt.jl")
export kt_simulate, kt_model!, kt_zigzag_test

include("mmg.jl")
export Mmg3DofBasicParams,
    Mmg3DofManeuveringParams, mmg_3dof_simulate, mmg_3dof_model!, mmg_3dof_zigzag_test

include("data.jl")
export calc_position,
    ShipData,
    estimate_kt_lsm,
    estimate_kt_lsm_time_window_sampling,
    estimate_mmg_approx_lsm,
    estimate_mmg_approx_lsm_time_window_sampling,
    create_model_for_mcmc_sample_kt,
    mcmc_sample_kt

include("draw.jl")
export draw_gif_result, calc_position

end
