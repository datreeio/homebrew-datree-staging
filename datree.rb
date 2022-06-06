# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.5.0-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.5.0-rc/datree-cli_1.5.0-rc_Darwin_x86_64.zip"
    sha256 "d84e215a3a23ddbb81097cff5061dc797088787725552c05875b36c816bef2ee"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.5.0-rc/datree-cli_1.5.0-rc_Darwin_arm64.zip"
    sha256 "c8ae63085b87b33cccb3a864305761bc697d340ce9a74a34cf01814a97e141ac"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.5.0-rc/datree-cli_1.5.0-rc_Linux_x86_64.zip"
    sha256 "ef344646f2d53caa59b7c8442ec34791cd62d80160fc5632849b9c8f269aac89"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.5.0-rc/datree-cli_1.5.0-rc_Linux_arm64.zip"
    sha256 "26cd25351af8d1e404a4c73de32eb220b107da8e853a8d20c3e4b06018582929"
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
