# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.6.49-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.6.49-rc/datree-cli_1.6.49-rc_Darwin_x86_64.zip"
    sha256 "9678f9a79d95b8d266fff91bd23406c15b5cebdbf45bc8b58034b5106e881050"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.6.49-rc/datree-cli_1.6.49-rc_Darwin_arm64.zip"
    sha256 "08c92753c4aeb836c3ab42d2838d2e95c59ee3d6903bca87561a339f96710cdb"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.6.49-rc/datree-cli_1.6.49-rc_Linux_x86_64.zip"
    sha256 "b528ca76b94e581cd9ff8bfd4d02d372fa2bb4d02ecae9cbde984fc1241f5e38"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.6.49-rc/datree-cli_1.6.49-rc_Linux_arm64.zip"
    sha256 "5c5a934cae2c60cfcfd29140bbf56fa98c5b068afddeb265b59ca534d6c46b28"
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
