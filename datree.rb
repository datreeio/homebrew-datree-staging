# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "0.14.17-staging"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/datreeio/datree/releases/download/0.14.17-staging/datree-cli_0.14.17-staging_Darwin_x86_64.zip"
    sha256 "3d44741b5978fbda9afcb55942f4bcc9f797e82de4318107ba37692d9065ea45"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.14.17-staging/datree-cli_0.14.17-staging_Linux_x86_64.zip"
    sha256 "d8f2b26358ed957df13614dd6a3f3e82db69f78f9c1443b08af5f5cb043fde5f"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/0.14.17-staging/datree-cli_0.14.17-staging_Linux_arm64.zip"
    sha256 "401d1ab53a003c81dc7e819445b451a9315ca4ad6023f6b508a3bf646dd9ce02"
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
