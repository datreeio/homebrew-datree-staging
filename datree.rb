# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.5.13-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.5.13-rc/datree-cli_1.5.13-rc_Darwin_x86_64.zip"
    sha256 "b6dbe883940accaa341f0d895ca3093b57547b32ac777a734e78ebeefc62744a"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.5.13-rc/datree-cli_1.5.13-rc_Darwin_arm64.zip"
    sha256 "a829eb1f06b158758d47b236bedf8273c18a7050adb2d5f02da430ab592604f2"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.5.13-rc/datree-cli_1.5.13-rc_Linux_x86_64.zip"
    sha256 "7bbeed7366711e000ec88c797ed88738718a2bc7ed2861a07331bc3628b74893"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.5.13-rc/datree-cli_1.5.13-rc_Linux_arm64.zip"
    sha256 "7ea1aeeb1d0afe20bec5a6dce95a9185561607fc6dd9a9c5d35226abaa5017b0"
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
