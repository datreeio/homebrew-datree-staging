# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "0.14.91-rc"

  if OS.mac?
    url "https://github.com/datreeio/datree/releases/download/0.14.91-rc/datree-cli_0.14.91-rc_Darwin_x86_64.zip"
    sha256 "958fa0e19d76e62fbc4147a4b187343d2c2ec91f235ac72252832b468713cc1c"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.14.91-rc/datree-cli_0.14.91-rc_Linux_x86_64.zip"
    sha256 "df895326122681b08fd022814c1c27411067069ba77a990bb6aee2d52255b257"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/0.14.91-rc/datree-cli_0.14.91-rc_Linux_arm64.zip"
    sha256 "d512420945c06d69a63f9442203501297d7cde005705c7b182e2ef05403affa2"
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
