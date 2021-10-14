# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "0.14.3-staging"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/datreeio/datree/releases/download/0.14.3-staging/datree-cli_0.14.3-staging_Darwin_x86_64.zip"
    sha256 "4aaaee641fef6ff70129fe49dd72c262d37dc35a1e42c9c419a47f7130fa02e2"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.14.3-staging/datree-cli_0.14.3-staging_Linux_x86_64.zip"
    sha256 "ab871dc6e331f004caf597b2adb75ee85f389aa179fb73ddfbb373f9fd6b59f6"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/0.14.3-staging/datree-cli_0.14.3-staging_Linux_arm64.zip"
    sha256 "1f8e3babfef45c9ab12762f57bf0b35e2b08021075629e84d3818974681e0daf"
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
