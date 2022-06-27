# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.5.21-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.5.21-rc/datree-cli_1.5.21-rc_Darwin_x86_64.zip"
    sha256 "bfa03ec156a09be1252e0c9a653c6ea548df51a89cb1d6a7ee2caf1ea4cc29f8"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.5.21-rc/datree-cli_1.5.21-rc_Darwin_arm64.zip"
    sha256 "6673e10ad37aeab108eec4b72ffb20a2ad9199bed8c32f12d0b89838e0cb8650"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.5.21-rc/datree-cli_1.5.21-rc_Linux_x86_64.zip"
    sha256 "c5880e5057a3f7871d2c45345955ad0c7a60ad4d67bbf4d199ea5d4e887eb7ec"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.5.21-rc/datree-cli_1.5.21-rc_Linux_arm64.zip"
    sha256 "ab7365c7d96866614aaa078d049508c99a4030e91cc71fc3fe58837d94da4aa2"
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
