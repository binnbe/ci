# syntax = docker/dockerfile:1.4
ARG BASE_IMAGE=ubuntu:24.04

FROM $BASE_IMAGE

LABEL org.opencontainers.image.source=https://github.com/binnbe/ci
LABEL org.opencontainers.image.description="Build for binnbe"
LABEL org.opencontainers.image.licenses=MIT

ENV CARGO_HOME=/usr/local/cargo \
    RUSTUP_HOME=/usr/local/rustup \
    PATH=/usr/local/cargo/bin:/usr/local/pnpm/bin:$PATH

ARG RUST_VERSION=1.84.0
ARG NODE_MAJOR=22
ARG WASM_BINDGEN_VERSION=121

RUN --mount=type=bind,src=docker/build.sh,dst=/mount/build.sh \
    /mount/build.sh
