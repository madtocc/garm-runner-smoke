FROM alpine:3.20
RUN uname -m | tee /arch && grep -q x86_64 /arch
