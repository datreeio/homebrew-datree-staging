# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.8.53-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.8.53-rc/datree-cli_1.8.53-rc_Darwin_x86_64.zip"
    sha256 "9cd8ac55b7e7a7d057f7e157e6d154fd7098ca3bf6da6f85a81ee8a187c99dc7"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.8.53-rc/datree-cli_1.8.53-rc_Darwin_arm64.zip"
    sha256 "da0902f7941214666954babbd6fe98adbb30f1702a06db796b74b0586cc6478c"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.8.53-rc/datree-cli_1.8.53-rc_Linux_x86_64.zip"
    sha256 "6610688a774041b64bec4388201bb0c0191e5eb0a66b5bec20e881c16fbf3266"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.8.53-rc/datree-cli_1.8.53-rc_Linux_arm64.zip"
    sha256 "1c6ec2f8d7d1434cafd702bc771632bc8df65ab3fee1fa27c072a195d2c42757"
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
