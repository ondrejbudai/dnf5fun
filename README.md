Just run:
```
dnf install -y osbuild-depsolve-dnf python3-dnf python3-libdnf5 jq git-core && \
git clone https://github.com/ondrejbudai/dnf5fun && \
cd dnf5fun && \
./run.sh
```

Works in both:
- `podman run --rm -it --pull=newer fedora:40`
- `podman run --rm -it --pull=newer fedora:41`

The only difference is that `request.json` and `request2.json` use different repo IDs. The script clearly shows that by just changing repo IDs, we don't get `NetworkManager` while depsolving `request2.json` (the result is in `result2-dnf5.json`). But we get it when depsolving using `request.json`, or DNF 4. Weird, right?
