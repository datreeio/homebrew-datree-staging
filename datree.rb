# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "0.14.57-rc"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/datreeio/datree/releases/download/0.14.57-rc/datree-cli_0.14.57-rc_Darwin_x86_64.zip"
    sha256 "da994bcd40e900ad4dcb7947ab6bcaccc5204043174543230cdebbbd8edb01f0"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.14.57-rc/datree-cli_0.14.57-rc_Linux_x86_64.zip"
    sha256 "fbbfda9e802b1627f94590b719cc077ff92313ccb8a27f3b2a74f8bb30e378ca"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/0.14.57-rc/datree-cli_0.14.57-rc_Linux_arm64.zip"
    sha256 "d22495e73fd0dad37127c66c0a49044b8fa8c0d3d7f363cda65fd06f81b06488"
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
