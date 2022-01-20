# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "0.15.5-rc"

  if OS.mac?
    url "https://github.com/datreeio/datree/releases/download/0.15.5-rc/datree-cli_0.15.5-rc_Darwin_x86_64.zip"
    sha256 "b87fbe8a678e72535ff087045fb1aa055c15d4a7b1894a231843f148223ec30d"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.15.5-rc/datree-cli_0.15.5-rc_Linux_x86_64.zip"
    sha256 "d24a7619533f69ca61351e9f996254d6a3216ca756b8d189d41d1fdcef7c2947"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/0.15.5-rc/datree-cli_0.15.5-rc_Linux_arm64.zip"
    sha256 "b16fc11da4585242b95ad4482526b35d50df9be5e2c0285360e57687be011e3c"
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
