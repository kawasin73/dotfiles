#!/bin/sh
# URL: https://qiita.com/ryuichi1208/items/5905240f3bfce793b33d

## Base

# 自動大文字の無効化
defaults write NSGlobalDomain NSAutomaticCapitalizationEnabled -bool false

## Finder

# デフォルトで隠しファイルを表示する
defaults write com.apple.finder AppleShowAllFiles -bool true

# 全ての拡張子のファイルを表示
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

# ステータスバーを表示
defaults write com.apple.finder ShowStatusBar -bool true

# パスバーを表示
defaults write com.apple.finder ShowPathbar -bool true

# USBやネットワークストレージに.DS_Storeファイルを作成しない
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true
defaults write com.apple.desktopservices DSDontWriteUSBStores -bool true

# Show the ~/Library folder
chflags nohidden ~/Library

# Show the /Volumes folder
sudo chflags nohidden /Volumes

# Restart Finder
killall Finder

## Safari

# 検索クエリをAppleへ送信しない
defaults write com.apple.Safari UniversalSearchEnabled -bool false
defaults write com.apple.Safari SuppressSearchSuggestions -bool true

# アドレスバーに表示されるURLを全表示
defaults write com.apple.Safari ShowFullURLInSmartSearchField -bool true

# ファイルのダウンロード後に自動でファイルを開くのを無効化
defaults write com.apple.Safari AutoOpenSafeDownloads -bool false

# Safariのデバッグメニューを有効化
defaults write com.apple.Safari IncludeInternalDebugMenu -bool true

# Safariのブックマークバーから不要なアイコンを削除
defaults write com.apple.Safari ProxiesInBookmarksBar "()"

# 自動修正の無効化
defaults write com.apple.Safari WebAutomaticSpellingCorrectionEnabled -bool false

# 自動的に拡張機能を更新する
defaults write com.apple.Safari InstallExtensionUpdatesAutomatically -bool true
