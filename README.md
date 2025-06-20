# 🏗 MSYS2 Base Image

Minimal Docker image with MSYS2 and MINGW64 support for native Windows cross-compilation.

## 🚀 Features
- MSYS2 base with `pacman` support
- MINGW64 toolchain preinstalled
- Suitable as a base image for Windows-native C/C++ development and CI pipelines
- Small image size (~3.8 GB)

## 🐳 Usage

```bash
docker pull africanfuture/msys2-base:linux
docker run -it africanfuture/msys2-base:linux
