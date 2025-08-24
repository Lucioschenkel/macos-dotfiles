# Intro

This repo hosts my dotfiles for MacOS. This README describes how to setup a new machine from scratch.

# Guide

## 1. Generate ssh-key and add to GitHub account

Use `ssh-keygen` to create a new key:

```shell
ssh-keygen
```


Copy the public key to your clipboard:

```shell
cat ~/.ssh/the-key-name.pub | pbcopy
```

Finally, navigate to [https://github.com/settings/keys](https://github.com/settings/keys) to add your key under SSH Keys.

## 2. Run the setup script

Invoke the setup script to install all dependencies and setup symlinks for all configs:

```shell
curl -fsSL https://raw.githubusercontent.com/Lucioschenkel/macos-dotfiles/refs/heads/main/setup | sh -
```
