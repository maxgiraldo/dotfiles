# Install Open JDK 11

https://formulae.brew.sh/formula/openjdk@11

For the system Java wrappers to find this JDK, symlink it with:

```bash
sudo ln -sfn $(brew --prefix)/opt/openjdk@11/libexec/openjdk.jdk /Library/Java/JavaVirtualMachines/openjdk-11.jdk
```
