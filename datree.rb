# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.8.34-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.8.34-rc/datree-cli_1.8.34-rc_Darwin_x86_64.zip"
    sha256 "eac96224834be34d5f16e5e12385a104847cb63308dd71e32c668946cae6ef35"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.8.34-rc/datree-cli_1.8.34-rc_Darwin_arm64.zip"
    sha256 "59073351424e2c260e57fb356d673ad8947bef8efc18a21780478d2ca227f2c2"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.8.34-rc/datree-cli_1.8.34-rc_Linux_x86_64.zip"
    sha256 "eed5cd96a37d2a9b1c323763bab06d9824b3a79cfa1714bb072bdc3455fe84dd"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.8.34-rc/datree-cli_1.8.34-rc_Linux_arm64.zip"
    sha256 "6659f7c37531ccaa40790c6ae1aed09930cfa7b1d5b8865c7abcd351f8533379"
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
