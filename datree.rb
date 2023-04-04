# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.8.57-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.8.57-rc/datree-cli_1.8.57-rc_Darwin_x86_64.zip"
    sha256 "a73e1ac6253f2f1921c39a57385fb16398ccfa44f3e970137c9e4c958c8fedf6"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.8.57-rc/datree-cli_1.8.57-rc_Darwin_arm64.zip"
    sha256 "2d4fcfb22b4da569f1fe105dd328456156bdb10b5e44116eac1fd9fd0b68d3e9"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.8.57-rc/datree-cli_1.8.57-rc_Linux_x86_64.zip"
    sha256 "9f2eff7e36e0c3156c3faf1b0fd62980b67e35772609e3964f7e84cedf243bd4"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.8.57-rc/datree-cli_1.8.57-rc_Linux_arm64.zip"
    sha256 "65c846fdc172e8c19e70a713a93f30e48a5e77682125e35ce73118348d82f50d"
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
