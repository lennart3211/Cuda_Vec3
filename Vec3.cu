#include "Vec3.cuh"

__host__ __device__ float RayTracer::Vec3::magnitude() const {
    return sqrtf(x*x + y*y + z*z);
}

__host__ __device__ RayTracer::Vec3 &RayTracer::Vec3::operator-() {
    x = -x;
    y = -y;
    z = -z;
    return *this;
}

__host__ __device__ RayTracer::Vec3 &RayTracer::Vec3::operator+=(const RayTracer::Vec3 &v) {
    x += v.x;
    y += v.y;
    z += v.z;
    return *this;
}

__host__ __device__ RayTracer::Vec3 &RayTracer::Vec3::operator-=(const RayTracer::Vec3 &v) {
    x -= v.x;
    y -= v.y;
    z -= v.z;
    return *this;
}

__host__ __device__ RayTracer::Vec3 &RayTracer::Vec3::operator*=(const RayTracer::Vec3 &v) {
    x *= v.x;
    y *= v.y;
    z *= v.z;
    return *this;
}

__host__ __device__ RayTracer::Vec3 &RayTracer::Vec3::operator/=(const RayTracer::Vec3 &v) {
    x /= v.x;
    y /= v.y;
    z /= v.z;
    return *this;
}

__host__ __device__ RayTracer::Vec3 &RayTracer::Vec3::operator+=(float n) {
    x += n;
    y += n;
    z += n;
    return *this;
}

__host__ __device__ RayTracer::Vec3 &RayTracer::Vec3::operator-=(float n) {
    x -= n;
    y -= n;
    z -= n;
    return *this;
}

__host__ __device__ RayTracer::Vec3 &RayTracer::Vec3::operator*=(float n) {
    x *= n;
    y *= n;
    z *= n;
    return *this;
}

__host__ __device__ RayTracer::Vec3 &RayTracer::Vec3::operator/=(float n) {
    x /= n;
    y /= n;
    z /= n;
    return *this;
}

__host__ __device__ RayTracer::Vec3 RayTracer::normalize(const RayTracer::Vec3 &v) {
    const float mag = v.magnitude();
    return {v.x / mag, v.y / mag, v.z / mag};
}
