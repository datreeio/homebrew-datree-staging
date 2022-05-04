# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.4.4-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.4.4-rc/datree-cli_1.4.4-rc_Darwin_x86_64.zip"
    sha256 "fa7d600f807f660027c266a5c6e9701d9c27401f3b89a43fcb831a11721bdd84"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.4.4-rc/datree-cli_1.4.4-rc_Darwin_arm64.zip"
    sha256 "11e3e413e43c6a2a2722f2ad9a604593c128191c2ae24ee2c872de1a6bcc0bf2"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.4.4-rc/datree-cli_1.4.4-rc_Linux_x86_64.zip"
    sha256 "955fbb8e1fd2f04df843c6fc4eed3b41160ac8deed8de288397056c91413c637"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.4.4-rc/datree-cli_1.4.4-rc_Linux_arm64.zip"
    sha256 "477e79c29f03539f07e63cda71a976558a884911893b133509267ff35fbabea9"
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
