# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.0.17-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.0.17-rc/datree-cli_1.0.17-rc_Darwin_x86_64.zip"
    sha256 "fcffb5f8da4c46b51c398a8131f9686a8d244d0eaeef8ced2ccdaae94d1302b1"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.0.17-rc/datree-cli_1.0.17-rc_Darwin_arm64.zip"
    sha256 "27df2aab703d2a84afe49befc119580f8275c738d61ce870e4eaca5a2493d9a3"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.0.17-rc/datree-cli_1.0.17-rc_Linux_x86_64.zip"
    sha256 "dc2a9ab6d77d4e4655a32b0488d23dbc33afe7ecdb3a4eda778574ac196987c6"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.0.17-rc/datree-cli_1.0.17-rc_Linux_arm64.zip"
    sha256 "e63b528e4838a861a55baca8aaab40f8c9ea27f8b25d2647ad2f27371840ec3d"
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
