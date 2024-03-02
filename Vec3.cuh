#pragma once

namespace RayTracer {
    class Vec3 {
    public:
        float x, y, z;
    public:
        __host__ __device__ Vec3() = default;
        __host__ __device__ explicit Vec3(float x) : x(x), y(x), z(x) {}
        __host__ __device__ Vec3(float x, float y, float z) : x(x), y(y), z(z) {}

        __host__ __device__ Vec3 &operator-();

        __host__ __device__ Vec3 &operator+=(const Vec3 &v);
        __host__ __device__ Vec3 &operator-=(const Vec3 &v);
        __host__ __device__ Vec3 &operator*=(const Vec3 &v);
        __host__ __device__ Vec3 &operator/=(const Vec3 &v);

        __host__ __device__ Vec3 &operator+=(float n);
        __host__ __device__ Vec3 &operator-=(float n);
        __host__ __device__ Vec3 &operator*=(float n);
        __host__ __device__ Vec3 &operator/=(float n);

        __host__ __device__ float magnitude() const;
        __host__ __device__ Vec3 &normalize();
    };

    __host__ __device__ Vec3 operator+(const Vec3 &v1, const Vec3 &v2);
    __host__ __device__ Vec3 operator-(const Vec3 &v1, const Vec3 &v2);
    __host__ __device__ Vec3 operator*(const Vec3 &v1, const Vec3 &v2);
    __host__ __device__ Vec3 operator/(const Vec3 &v1, const Vec3 &v2);

    __host__ __device__ Vec3 normalize(const Vec3 &v);
}
