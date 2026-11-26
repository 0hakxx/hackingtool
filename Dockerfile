# syntax=docker/dockerfile:1
# Kali base: many bundled tools already present, and it's the platform this
# audience runs. The image installs hackingtool as a proper package (console
# entry point `hackingtool`), not the old `python3 hackingtool.py` flat script.
FROM kalilinux/kali-rolling:latest

LABEL org.opencontainers.image.title="hackingtool" \
      org.opencontainers.image.description="All-in-One Hacking Tool for Security Researchers" \
      org.opencontainers.image.source="https://github.com/Z4nzu/hackingtool" \
      org.opencontainers.image.licenses="MIT"

# 0hakxx 미러 변경점: kalilinux/kali-rolling 이미지는 apt 요청을 지역 미러로 자동 리다이렉트하는데,
# 공식 http.kali.org CDN 도 한국에서는 mirror.siwoo.org 등 SSL 인증서가 깨진 지역 미러로 보낸다.
# 상위(Z4nzu)와 무관한 공개 인프라 문제이지만 재현 가능한 빌드를 위해 CloudFront 기반 kali.download 를 강제 지정한다
# (https 가능, 지역 미러 리다이렉트 없음, Offensive Security 가 공식 운영).
RUN rm -f /etc/apt/sources.list.d/*.sources /etc/apt/sources.list.d/*.list && \
    echo 'deb http://kali.download/kali kali-rolling main contrib non-free non-free-firmware' > /etc/apt/sources.list

# Runtime system deps: python + git (tools clone their own repos) + php/curl/wget
# (a handful of tools shell out to these). --no-install-recommends keeps it lean.
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        git python3 python3-pip python3-venv curl wget php && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /src
# Copy only the build inputs first so the pip layer caches unless they change.
COPY pyproject.toml README.md ./
COPY src ./src
# PEP 668 (externally-managed) on Kali → --break-system-packages. This installs
# the `hackingtool` console script onto PATH and ships catalog/*.yaml +
# pipelines/*.yaml as package data (resolved at runtime via __file__).
# Patch the base image's system pip (CVE-2026-13346, fixed in 26.2.0) and drop its
# old dist-info so scanners stop flagging it, then install with the upgraded pip.
RUN --mount=type=cache,target=/root/.cache/pip \
    rm -rf /usr/lib/python3/dist-packages/pip-*.dist-info && \
    python3 -m pip install --break-system-packages --upgrade "pip>=26.2" && \
    rm -rf /usr/lib/python3/dist-packages/pip && \
    python3 -m pip install --break-system-packages .

# Tools install their payloads at runtime under here; persist via a volume.
RUN mkdir -p /root/.hackingtool/tools
WORKDIR /root
ENTRYPOINT ["hackingtool"]
