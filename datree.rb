# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.5.17-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.5.17-rc/datree-cli_1.5.17-rc_Darwin_x86_64.zip"
    sha256 "38cf15a2ece0d23f411fcc35d5c0319bc3579e5220186f0b549fd94078a5923d"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.5.17-rc/datree-cli_1.5.17-rc_Darwin_arm64.zip"
    sha256 "661e171054b4bf666218b9d8d4337aa7d31dae4f0d0c195109b1bc370b78f154"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.5.17-rc/datree-cli_1.5.17-rc_Linux_x86_64.zip"
    sha256 "4972737a3044227f1de905fa733a5f5ba2c56a9a0271aff7b33aa034dbe5878d"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.5.17-rc/datree-cli_1.5.17-rc_Linux_arm64.zip"
    sha256 "fc3902795b855c8e6a48ea96288a1b7ce0cea646c85cb13132e260e3429ce71c"
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
