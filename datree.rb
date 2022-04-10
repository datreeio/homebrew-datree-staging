# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.2.0-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.2.0-rc/datree-cli_1.2.0-rc_Darwin_x86_64.zip"
    sha256 "7573bc4d98a3933f9dc6a3840cfe3880754b15886e1c34caa332759544d08d4a"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.2.0-rc/datree-cli_1.2.0-rc_Darwin_arm64.zip"
    sha256 "1f4354757ae3ffc9203d1487d21b98ab0cf9621a173cfcf88c34bb3124b3e6a9"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.2.0-rc/datree-cli_1.2.0-rc_Linux_x86_64.zip"
    sha256 "dcda71fa4faead1d49c3535d3c13d7cc823be4affb734d42d3289cb468343c13"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.2.0-rc/datree-cli_1.2.0-rc_Linux_arm64.zip"
    sha256 "23bb8504a9cb34d4e30eeaadef3ba58254005876f3c74c4cf38c05ad5b34799d"
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
