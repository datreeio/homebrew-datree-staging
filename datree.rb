# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.4.21-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.4.21-rc/datree-cli_1.4.21-rc_Darwin_x86_64.zip"
    sha256 "72f94b59fe6a609b492877584adce035b408aa880ace1d25bdedd218fcec0962"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.4.21-rc/datree-cli_1.4.21-rc_Darwin_arm64.zip"
    sha256 "c36839adb2eb21d5a55ea7eec032e6000aeb26cd0fd7899097588656e254e359"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.4.21-rc/datree-cli_1.4.21-rc_Linux_x86_64.zip"
    sha256 "57406b124a730b1dd7d2203f3d848a57bc9db3a88ecbb0a76127229b5fa17b55"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.4.21-rc/datree-cli_1.4.21-rc_Linux_arm64.zip"
    sha256 "30e161502ab00736e807bccb934e33536cad0902505b2480a07783fff7fdf845"
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
