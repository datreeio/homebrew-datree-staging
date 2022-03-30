# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.1.9-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.1.9-rc/datree-cli_1.1.9-rc_Darwin_x86_64.zip"
    sha256 "883c5313e80ede8af17fbf802a1a0b5d6701705d2b911143b8dbf0d1880955e3"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.1.9-rc/datree-cli_1.1.9-rc_Darwin_arm64.zip"
    sha256 "55ff90565449fd34929b74f0d205031863a0d30165e5a09d7d0a4ec00fc75fd7"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.1.9-rc/datree-cli_1.1.9-rc_Linux_x86_64.zip"
    sha256 "b1e39bb062cff45adee4f7caa139c3a990183f2a899a6ed8ebb972189036111e"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.1.9-rc/datree-cli_1.1.9-rc_Linux_arm64.zip"
    sha256 "4b42806d81d4e35dd710116a78ee1b750612b53a8e37c74d567321120317f639"
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
