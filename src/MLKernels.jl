#===================================================================================================
  Kernel Functions Module
===================================================================================================#

module MLKernels

import Base: show, eltype, convert

export
    # Functions
    ismercer,
    iscondposdef,
    kernel,
    kernelmatrix,
    center_kernelmatrix!,
    center_kernelmatrix,
    nystrom,

    # Kernel Types
    Kernel,
        SimpleKernel,
            StandardKernel,
                SquaredDistanceKernel,
                    ExponentialKernel, GaussianKernel, RadialBasisKernel, LaplacianKernel,
                    RationalQuadraticKernel,
                    PowerKernel,
                    LogKernel,
                    MaternKernel,
                ScalarProductKernel,
                    PolynomialKernel, LinearKernel,
                    SigmoidKernel,
            ARD,
        CompositeKernel,
            KernelProduct,
            KernelSum

include("meta.jl")
include("auxfunctions.jl")
include("kernels.jl")
include("kernelmatrix.jl")
include("kernelmatrixapprox.jl")

end # MLKernels
