# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "0.8.2-DAT-3412-fix-brew-version"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/datreeio/datree/releases/download/0.8.2-DAT-3412-fix-brew-version/datree-cli_0.8.2-DAT-3412-fix-brew-version_Darwin_x86_64.zip"
    sha256 "bdba86d76d7b64650e9df840bfaa3cdc0d2692a0fd9be66fdc73ab62384fd1b2"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.8.2-DAT-3412-fix-brew-version/datree-cli_0.8.2-DAT-3412-fix-brew-version_Linux_x86_64.zip"
    sha256 "48b6f1971d2f736cb5f8abc2cfe3c428257f71140a1611c28aff9898f50741f5"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/0.8.2-DAT-3412-fix-brew-version/datree-cli_0.8.2-DAT-3412-fix-brew-version_Linux_arm64.zip"
    sha256 "67768ad3a77efe1b1e0006f7add8fd722e7dfe77990c0a719be5345ac653e983"
  end

  def install
    bin.install "datree"
  end
end
