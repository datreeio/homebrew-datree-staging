# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.8.71-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.8.71-rc/datree-cli_1.8.71-rc_Darwin_x86_64.zip"
    sha256 "4d173ceac543a5ee36a27f155478fc02456caf7e4bd01132682efb19bf8ef710"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.8.71-rc/datree-cli_1.8.71-rc_Darwin_arm64.zip"
    sha256 "e41e0c13352b0a221e644e03fe5c1e8254e7e8672ac0e1ad53c3d47eb9f5246d"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.8.71-rc/datree-cli_1.8.71-rc_Linux_x86_64.zip"
    sha256 "950daeb0fc563218be64ce55de618241b46e9b126143b6046ae54e0dccf7c014"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.8.71-rc/datree-cli_1.8.71-rc_Linux_arm64.zip"
    sha256 "ef943a96faca46d27107857c6391bbfcc40ce11ee6617169624bcbdd9a92e597"
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
