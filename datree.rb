# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.0.14-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.0.14-rc/datree-cli_1.0.14-rc_Darwin_x86_64.zip"
    sha256 "5054a87a9d05655c5e4f36f35eeecc631f9b7cb79a7f66f6b8fd45a20e9e1e0b"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.0.14-rc/datree-cli_1.0.14-rc_Darwin_arm64.zip"
    sha256 "deaebe7978f94411562e011b1a5dd87a794ed17e9b7319146b4dcbd8c1493ce5"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.0.14-rc/datree-cli_1.0.14-rc_Linux_x86_64.zip"
    sha256 "2c591d43b10e99cac6c0171b418c3bcbde2138f34ba1317bc64d3437b4c96973"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.0.14-rc/datree-cli_1.0.14-rc_Linux_arm64.zip"
    sha256 "1db6dda0ca47a0e37058a6964c3ca0eaf74919a66b7fe0949368830ac4f7a97a"
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
