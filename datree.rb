# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.0.8-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.0.8-rc/datree-cli_1.0.8-rc_Darwin_x86_64.zip"
    sha256 "c75929aaceeefe1ea0bd9bd2aab2f3453a28fa10f3fd97bf8710c145584a7cdc"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.0.8-rc/datree-cli_1.0.8-rc_Darwin_arm64.zip"
    sha256 "63bea05b291609c54fad21c1feaa48cdca0e3faa384e48e7c2fd888a875218e2"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.0.8-rc/datree-cli_1.0.8-rc_Linux_x86_64.zip"
    sha256 "7c6dd7b0e628fa6993b564332a9bb5467e602ae6cfd3912b0061f931b7fdaaac"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.0.8-rc/datree-cli_1.0.8-rc_Linux_arm64.zip"
    sha256 "a72b46a1d2986dd004873b6ec040a358ec45375e54244f788ba4a5ffff27c493"
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
      tput init
    EOS
  end
end
