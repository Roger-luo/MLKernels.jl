#===================================================================================================
  Kernel Functions Module
===================================================================================================#

module MLKernels

import Base: show, call, exp, eltype, isposdef, convert, promote

export
    # Functions
    arguments,
    description,
    isposdef_kernel,
    kernel_function,
    kernel_matrix,
    description_string,
    gramian_matrix,
    lagged_gramian_matrix,
    center_kernel_matrix!,
    center_kernel_matrix,
    # Types
    Kernel,
        SimpleKernel,
            StandardKernel,
                # PointwiseProductKernel,
                EuclideanDistanceKernel,
	                GaussianKernel,
	                LaplacianKernel,
            	    RationalQuadraticKernel,
            	    MultiQuadraticKernel,
            	    InverseMultiQuadraticKernel,
            	    PowerKernel,
            	    LogKernel,
                ScalarProductKernel,
	                LinearKernel,
	                PolynomialKernel,
            	    SigmoidKernel,
            ScaledKernel,
        CompositeKernel,
            KernelProduct,
            KernelSum

include("kerneltypes.jl")
include("kernelmatrix.jl")

end # MLKernels
