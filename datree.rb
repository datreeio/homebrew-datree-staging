# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "0.14.10-staging"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/datreeio/datree/releases/download/0.14.10-staging/datree-cli_0.14.10-staging_Darwin_x86_64.zip"
    sha256 "45882b958cd71f0e1551b7112602d895911cb20e8b56dbe799f9e0d864882480"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.14.10-staging/datree-cli_0.14.10-staging_Linux_x86_64.zip"
    sha256 "f451b33d932e12440c844e5dc60ad6e28af210c0d9408385301b0055063305ae"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/0.14.10-staging/datree-cli_0.14.10-staging_Linux_arm64.zip"
    sha256 "26df5a2e7bd434feb08564e1498d6b4308c4b6372204cdf06bd94da283c02220"
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
