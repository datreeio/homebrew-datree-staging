# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "0.14.0-staging"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/datreeio/datree/releases/download/0.14.0-staging/datree-cli_0.14.0-staging_Darwin_x86_64.zip"
    sha256 "fca890fa15efe97ddd84233852e7b92245df04d26009bdc3adaa2a07f232ab3d"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.14.0-staging/datree-cli_0.14.0-staging_Linux_x86_64.zip"
    sha256 "aecc6dbb02e26e267b34745f66069843996aa060ecb643f53d8885b763c93a45"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/0.14.0-staging/datree-cli_0.14.0-staging_Linux_arm64.zip"
    sha256 "daefe2e3f3aaddc615f9ff935ffe8de14a43d1c29fef5256477f56d9846af9cd"
  end

  def install
    bin.install "datree"
  end

  def caveats
    <<~EOS
      \033[32m[V] Downloaded Datree
      [V] Finished Installation

      \033[35m Usage: $ datree test [k8s-file.yaml]
       Using Helm? => https://hub.datree.io/helm-plugin
      tput init
    EOS
  end
end
