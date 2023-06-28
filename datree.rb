# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.9.7-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.9.7-rc/datree-cli_1.9.7-rc_Darwin_x86_64.zip"
    sha256 "cb4ce3d94a2f9a78bf2c0f86203c882239cf619c0475ed4999c0000dca89e531"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.9.7-rc/datree-cli_1.9.7-rc_Darwin_arm64.zip"
    sha256 "3f5f8cdda48d1a32e6b959457ade2316cbcce57e7189453ff729049c3192bbe8"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.9.7-rc/datree-cli_1.9.7-rc_Linux_x86_64.zip"
    sha256 "9c088d044fb4e1cc096f88080200505db5269baf2ed8edb1728d602eab339874"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.9.7-rc/datree-cli_1.9.7-rc_Linux_arm64.zip"
    sha256 "1f13702f25c53559760b02e9a9d983f80e0a7f703f2d9ef416ed63df9939ce8f"
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
