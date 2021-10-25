# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "0.14.14-staging"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/datreeio/datree/releases/download/0.14.14-staging/datree-cli_0.14.14-staging_Darwin_x86_64.zip"
    sha256 "f55ae2d788e61ddb2a4e6561cc71f49fbcb4ab2fd3c140ab2c0caba356968e65"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.14.14-staging/datree-cli_0.14.14-staging_Linux_x86_64.zip"
    sha256 "56e9a85453ac35899b8d869fff413755a850ae05956b8b1d2fa12692927a4c4a"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/0.14.14-staging/datree-cli_0.14.14-staging_Linux_arm64.zip"
    sha256 "b53b1bdf348607a83539964c448a3cc632a7e410ee636fe61b0677361fc23f20"
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
