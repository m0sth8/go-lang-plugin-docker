go-lang-plugin-docker
=====================

Docker image for building [go-lang-plugin](https://github.com/go-lang-plugin-org/go-lang-idea-plugin) for Intellij Idea.

Basic usage is:

`docker run --rm -v "$(pwd)":/dist m0sth8/golang-plugin`

After a successful build, google-go-language.jar should be created in current directory.
Lastly, import the jar as plugin (File > Settings > Plugins > "Install plugin from disk") and restart the IDEA ide.
