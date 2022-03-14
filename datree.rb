# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "0.16.7-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.16.7-rc/datree-cli_0.16.7-rc_Darwin_x86_64.zip"
    sha256 "231feba2c1fbd54d658eeb60461a64eaea61b98913a1c0b6f75e9e86c4418950"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/0.16.7-rc/datree-cli_0.16.7-rc_Darwin_arm64.zip"
    sha256 "d5ca66577e0e7530d15408d6b63206a98f1bdae645fbe3ac5f92e3f133fc56b0"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.16.7-rc/datree-cli_0.16.7-rc_Linux_x86_64.zip"
    sha256 "c2254127302a7a4ba7bc241af90bfd45cf602a225aaa9c4d135f15159147596b"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/0.16.7-rc/datree-cli_0.16.7-rc_Linux_arm64.zip"
    sha256 "5f574054d07271857e29caf462a1f5d9a656be2c1da02ebb80cd043cb30fd9e5"
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
