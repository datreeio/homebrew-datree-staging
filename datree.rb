# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "0.15.50-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.15.50-rc/datree-cli_0.15.50-rc_Darwin_x86_64.zip"
    sha256 "7a4570fa4d3ae43acb8bbed20a1585565b581508e465463427aa0e85c08d611a"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/0.15.50-rc/datree-cli_0.15.50-rc_Darwin_arm64.zip"
    sha256 "3f66e2632dcdb7f9c597a22c8922d21279bd7780110dcf65f3969085265a6142"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.15.50-rc/datree-cli_0.15.50-rc_Linux_x86_64.zip"
    sha256 "3925ab6f933ef9ac6de345b231b426c67795d012829dfd80cc3ea722073adf7c"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/0.15.50-rc/datree-cli_0.15.50-rc_Linux_arm64.zip"
    sha256 "df4f1a5c3f538dc6aad15933c1026e787d1cfb1e7083406cb62c8bb17e02b4ac"
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
