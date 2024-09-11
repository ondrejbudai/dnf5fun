Just run
```
dnf install -y osbuild-depsolve-dnf python3-dnf python3-libdnf5 jq git-core && \
git clone https://github.com/ondrejbudai/dnf5fun && \
cd dnf5fun && \
./run.sh
```

Works in both:
- `podman run --rm -it --pull=newer fedora:40`
- `podman run --rm -it --pull=newer fedora:41`
