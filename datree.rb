# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "0.15.42-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.15.42-rc/datree-cli_0.15.42-rc_Darwin_x86_64.zip"
    sha256 "6ebf5b4a23ed04100080fabf12c65f154ef8051cf8343e2cfd0b98eee036ece6"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/0.15.42-rc/datree-cli_0.15.42-rc_Darwin_arm64.zip"
    sha256 "3163b89a0f2091ff75c16efd74920f36f7ad32c4bbbd004763367d13fa9138d7"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.15.42-rc/datree-cli_0.15.42-rc_Linux_x86_64.zip"
    sha256 "55f778cfa5105182d9686a5ec76ecea8236562a7e5627be52b9718cdd5045831"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/0.15.42-rc/datree-cli_0.15.42-rc_Linux_arm64.zip"
    sha256 "5994bd8d05d536eeae032331f26e9682a261fb0cd57447894cc66b4f9765ed13"
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
      tput init
    EOS
  end
end
