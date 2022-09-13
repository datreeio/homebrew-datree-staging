# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.6.23-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.6.23-rc/datree-cli_1.6.23-rc_Darwin_x86_64.zip"
    sha256 "bee7081099d370d247a90fee98ae0c1b3bd62592e1e9ee0b46c136fec7985297"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.6.23-rc/datree-cli_1.6.23-rc_Darwin_arm64.zip"
    sha256 "a72660bc50cdf89bf26ccf6242866fe164b8e871649ef8bd08832611c9a5df3b"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.6.23-rc/datree-cli_1.6.23-rc_Linux_x86_64.zip"
    sha256 "45b72803cc29eb9e1e37017c6cb45c74c172b2f5efef1205f53a79afdb24b89f"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.6.23-rc/datree-cli_1.6.23-rc_Linux_arm64.zip"
    sha256 "b75e89fcad502aac6ab2a86491aa6f816d520a2e5d4d5435d9f7ce5980cdf41d"
  end

  def install
    bin.install "datree"
  end

  def caveats
    <<~EOS
      \033[32m[V] Downloaded Datree
      [V] Finished Installation

      \033[35m Usage: $ datree test [k8s-file.yaml]
       Using Helm? => https://github.com/datreeio/helm-datree
       Using Kustomize? => https://hub.datree.io/kustomize-support
    EOS
  end
end
