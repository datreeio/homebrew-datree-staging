# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.6.48-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.6.48-rc/datree-cli_1.6.48-rc_Darwin_x86_64.zip"
    sha256 "86e91a327de8998d2f1cbd91b5773b20fc36bcfbaf7a11e0c8c8b553a5f52d11"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.6.48-rc/datree-cli_1.6.48-rc_Darwin_arm64.zip"
    sha256 "019fd54baafed4a76f2b925578cf9b9af192fea46b147e34b3032c815ae86c7a"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.6.48-rc/datree-cli_1.6.48-rc_Linux_x86_64.zip"
    sha256 "9c6ce9a63a00626ad89c799ffd4422a8d44c48c83b0932f0207d44d388f6ac31"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.6.48-rc/datree-cli_1.6.48-rc_Linux_arm64.zip"
    sha256 "c6358cfb27a42470cb7a4e7b8f58975215bd80d6b67cbae5e87b761f8f718816"
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
