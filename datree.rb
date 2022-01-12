# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "0.14.97-rc"

  if OS.mac?
    url "https://github.com/datreeio/datree/releases/download/0.14.97-rc/datree-cli_0.14.97-rc_Darwin_x86_64.zip"
    sha256 "3f4504d66e422ae7a3426566c95c0d77b376bb9906995fe0224ef6d3d424f7a9"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.14.97-rc/datree-cli_0.14.97-rc_Linux_x86_64.zip"
    sha256 "2c2d1a090747886f2de134e0c180748c01cd407d3cf314226c913825d8a58754"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/0.14.97-rc/datree-cli_0.14.97-rc_Linux_arm64.zip"
    sha256 "03260a5f0bab787a8638e0cf4ebe7724a4bcd9bd21efb76eb377b3ccecb50031"
  end

  def install
    bin.install "datree"
  end

  def caveats
    <<~EOS
      \033[32m[V] Downloaded Datree
      [V] Finished Installation

      \033[35m Usage: $ datree test [k8s-file.yaml]
       Using Helm? => https://hub.datree.io/helm-plugin
      tput init
    EOS
  end
end
