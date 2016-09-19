// #define DEBUG

__global__ void evaluate_3b_maple(
    double * a, double * x, double * g, double * energy_buffer
)
{

#include "3b_maple_polynomial.cu"

energy_buffer[0] = energy;
}

void launch_evaluate_3b_maple(double * a, double * x, double * g, double * e) {
    evaluate_3b_maple<<<1,400>>>(a, x, g, e);
    cudaDeviceSynchronize();
}
