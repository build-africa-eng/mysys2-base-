# Dispatcher Dockerfile (for creating a multi-platform manifest)
# USAGE:
# 1. Build and push the platform-specific images first using the GitHub Action.
# 2. Use 'docker buildx' to create and push a manifest list referencing them.
#
# Example:
# docker manifest create your-dockerhub-username/msys2-base:latest \
#   --amend your-dockerhub-username/msys2-base:linux \
#   --amend your-dockerhub-username/msys2-base:windows
# docker manifest push your-dockerhub-username/msys2-base:latest

ARG TARGETPLATFORM

# The following lines are placeholders for a multi-stage build.
# 'docker buildx' uses the platform flag to select which stage to execute.
FROM africanfuture/msys2-base:linux AS linux
FROM africanfuture/msys2-base:windows AS windows

# This file primarily serves as a reference for a manifest build.
# When building with 'docker build --platform=linux/amd64 .', it would target the 'linux' stage.
