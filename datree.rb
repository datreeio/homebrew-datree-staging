# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.2.11-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.2.11-rc/datree-cli_1.2.11-rc_Darwin_x86_64.zip"
    sha256 "a2fcdd202313bb70f3340ecc2e6b5bb36c5f82a612ad81ead923cbe71e658c80"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.2.11-rc/datree-cli_1.2.11-rc_Darwin_arm64.zip"
    sha256 "18f78a4b049325978664d19a26b94d3cbd73a8096b82de1e1c88dd6263ba6096"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.2.11-rc/datree-cli_1.2.11-rc_Linux_x86_64.zip"
    sha256 "1ce46755dd61e9a9532279bec4baa0548c66da864be1c68aec19b90455b8e579"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.2.11-rc/datree-cli_1.2.11-rc_Linux_arm64.zip"
    sha256 "222a222c2eac486d01e06c9f2b9f08c091265230b6ffe90ac6daf2ac2ee3c357"
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
