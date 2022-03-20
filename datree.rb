# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.0.6-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.0.6-rc/datree-cli_1.0.6-rc_Darwin_x86_64.zip"
    sha256 "9622e6a6aa927e5089d8aa2c8f4ab89a2f70d71e332308152c72a2c86bde0b92"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.0.6-rc/datree-cli_1.0.6-rc_Darwin_arm64.zip"
    sha256 "a492965020780d7690c531964065bae0e50199696e9b0447f6312e984e484e7e"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.0.6-rc/datree-cli_1.0.6-rc_Linux_x86_64.zip"
    sha256 "27136f71bfdcb16a2b8f417e340e42f036ba3ec4f509dd78131be36b0873dc34"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.0.6-rc/datree-cli_1.0.6-rc_Linux_arm64.zip"
    sha256 "455c033a39599f5156e199af2612994275220a9566af35655cb9e8805ba3aa44"
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
