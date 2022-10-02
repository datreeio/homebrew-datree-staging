# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.6.36-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.6.36-rc/datree-cli_1.6.36-rc_Darwin_x86_64.zip"
    sha256 "907f2b601e3aab48ff1ff189f972521c6e890741de3fb9661765c34fd6cc67e4"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.6.36-rc/datree-cli_1.6.36-rc_Darwin_arm64.zip"
    sha256 "7fbea2ca1931b048deaf7cf699195b4e1fed2ee979e13f5d1fcf0f1be71dbb86"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.6.36-rc/datree-cli_1.6.36-rc_Linux_x86_64.zip"
    sha256 "13809d4073387de3a2df16aeb961962df0cc17edd37fcc17a128b864f611b095"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.6.36-rc/datree-cli_1.6.36-rc_Linux_arm64.zip"
    sha256 "d04b19bd6b637e76173646ca3698a5f2d0e8d115f87bfd7ecf092bdc9b25cb5c"
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
