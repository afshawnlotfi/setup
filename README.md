# curl afshawn.org/setup/install | bash -s mac

# sudo apt install -y curl && curl afshawn.org/setup/install | bash -s linux-server

# sudo apt install -y curl && curl afshawn.org/setup/install | bash -s rpi


# Notes

Encrypt:

```zip -r private.zip private && openssl aes-256-cbc -a -salt -in private.zip -out private.zip.enc```

Decrypt:

```openssl aes-256-cbc -d -a -in private.zip.enc -out private.zip && unzip private.zip```