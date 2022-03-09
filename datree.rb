# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "0.15.51-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.15.51-rc/datree-cli_0.15.51-rc_Darwin_x86_64.zip"
    sha256 "b8bae6d14e7c2e48e47c825554f6af0a932aa21824749f285494f01594e06a37"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/0.15.51-rc/datree-cli_0.15.51-rc_Darwin_arm64.zip"
    sha256 "1e441cbf4b0df078299c4e38ffb63c40203046df9ce9c9784510f3310bbacc86"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.15.51-rc/datree-cli_0.15.51-rc_Linux_x86_64.zip"
    sha256 "12f1a477ef0c88b8bbee9af894675dad8b1c0bc5c29b78ea7f0e674d719409af"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/0.15.51-rc/datree-cli_0.15.51-rc_Linux_arm64.zip"
    sha256 "ac123f681ab63250a36b67e5027674dba0a6b11bf4dab0e51df82d7b233f460f"
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
      tput init
    EOS
  end
end
