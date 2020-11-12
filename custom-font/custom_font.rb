# coding: utf-8

require 'bundler'
Bundler.require

Thinreports.configure do |config|
  config.register_font('Gen Shin Gothic',
    normal: 'GenShinGothic-Normal.ttf'
  )
end

  text = <<TEXT
ABCDEFGHIJKLMNOPQRSTUVWXYZ
abcdefghijklmnopqrstuvwxyz
日本語gkにほんご
TEXT

report = Thinreports::Report.new layout: 'custom_font.tlf'
report.start_new_page do |page|
  page.values(
    gen_shin_gothic: text,
    ipa_gothic: text,
    helvetica: text,
    courier_new: text,
    times_new_roman: text
  )
end
report.generate filename: 'result.pdf'
