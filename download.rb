[
 "http://cl.ly/2r1G1X0Q1a1S/download/4BeatsSong.mp3",
 "http://serve.castfire.com/s:varcm/audio/2518631/2518631_2015-07-15-024831.mp3?ad_params=zones%3DPreroll%2CMidroll%2CPostroll%7Cstation_id%3D3337",
 "http://fdlyr.co/d/criticalpath/cdn.5by5.tv/audio/broadcasts/criticalpath/2015/criticalpath-157.mp3",
 "http://www.podtrac.com/pts/redirect.mp3/traffic.libsyn.com/nerdist/Nerdist_725_-_Sir_Patrick_Stewart_Returns.mp3",
 "http://feeds.wnyc.org/~r/mysteryshow-gimlet/~5/nqlMUmTni-w/mysteryshow061915_sourcecode_pod.mp3",
 "http://www.podtrac.com/pts/redirect.mp3/traffic.libsyn.com/thisiscriminal/Epsiode_26__Angie.mp3",
 "http://traffic.libsyn.com/altucher/James_Altucher_Show_McAfee.mp3",
 "http://media.blubrry.com/exponent/content.blubrry.com/exponent/exponent50.mp3",
 "http://traffic.libsyn.com/timferriss/Tim_Ferriss_Show_-_Naval_Ravikant.mp3",
 "http://fdlyr.co/d/rubyonrails/cdn.5by5.tv/audio/broadcasts/rubyonrails/2015/rubyonrails-199.mp3",
 "http://audio.simplecast.fm/14846.mp3",
 "http://fdlyr.co/d/rubyonrails/cdn.5by5.tv/audio/broadcasts/rubyonrails/2015/rubyonrails-199.mp3",
 "http://podcastdownload.npr.org/anon.npr-mp3/npr/pmoney/2015/09/20150916_pmoney_pmoneypod.mp3?orgId=1&d=935&p=510289&story=440971410&t=podcast&e=440971410&ft=pod&f=510289",
 "http://audio.simplecast.fm/10733.mp3",
 "http://hwcdn.libsyn.com/p/e/e/0/ee0020afc543a72c/atp135.mp3?c_id=9844163&expiration=1442619691&hwt=d49ff7a8aef7ec538cd21545718d5b0d",
 "http://traffic.libsyn.com/smartbrownvoices/SBV033.mp3",
 "http://www.twistimage.com/podcast/mp3/SPOS_479_-_Gabriel_Weinberg.mp3",
 "http://traffic.libsyn.com/timferriss/final-timferrissshow-robert-rodriguez.mp3",
 "http://feedproxy.google.com/~r/twist-audio/~5/TFMSvxbzcfc/TWiST-E578.mp3",
 "http://podcastdownload.npr.org/anon.npr-mp3/npr/pmoney/2015/09/20150911_pmoney_pmoneypod5.mp3?orgId=1&d=1353&p=510289&story=439633331&t=podcast&e=439633331&ft=pod&f=510289",
 "http://traffic.libsyn.com/dancarlinhh/dchha43_Wrath_of_the_Khans_I.mp3",
 "http://traffic.libsyn.com/storyinabottle/SIAB_DCrowley_v3.mp3?_=1",
 "http://media.blubrry.com/exponent/p/content.blubrry.com/exponent/exponent52.mp3?_=1",
 "http://audio.simplecast.fm/17282.mp3",
 "http://traffic.libsyn.com/wtfpod/WTF_-_EPISODE_639_KEITH_RICHARDS.mp3",
 "http://audio.simplecast.fm/17072.mp3",
 "http://www.podtrac.com/pts/redirect.mp3/traffic.libsyn.com/thepenaddict/The_Pen_Addict_173.mp3",
 "http://media.blubrry.com/productpeople/p/media.strongcaster.com.s3.amazonaws.com/productpeople/ep074-tracy.mp3",
 "http://traffic.libsyn.com/patflynn/171_SPI_171_A_Crash_Course_on_Copywriting_with_Nikki_Elledge_Brown.mp3",
 "http://audio.simplecast.fm/17475.mp3",
 "http://www.podtrac.com/pts/redirect.mp3/audio.wnyc.org/notetoself/notetoself092315_cms532751_pod.mp3",
 "http://feedproxy.google.com/~r/MustRememberThis/~5/zc6tBnU-3n0/44-Charles_Manson1-panoply.mp3",
 "http://podcastdownload.npr.org/anon.npr-mp3/npr/pmoney/2015/08/20150828_pmoney_pmoneypod.mp3?orgId=1&d=1146&p=510289&story=435654411&t=podcast&e=435654411&ft=pod&f=510289",
 "http://feeds.wnyc.org/~r/radiolab/~5/5nZ_xvpQB2k/radiolab_podcast15darkode.mp3",
 "http://feedproxy.google.com/~r/twist-audio/~5/jet2IBzSOAk/TWiST-E580.mp3",
 "http://traffic.libsyn.com/themoment/TMBK15070701_Godin.mp3",
 "http://www.podtrac.com/pts/redirect.mp3/audio.wnyc.org/notetoself/notetoself092315_cms532751_pod.mp3",
 "http://traffic.libsyn.com/entreprogrammers/Episode-69-.mp3",
 "http://c.espnradio.com/s:J1X3L/audio/2551639/hottakedown_2015-09-22-122939.64k.mp3?ad_params=zones%3DPreroll%2CPreroll2%2CMidroll%2CMidroll2%2CMidroll3%2CMidroll4%2CMidroll5%2CMidroll6%2CPostroll%2CPostroll2%7Cstation_id%3D2786"
].each_with_index do |url, i|
  `wget #{url} -O files/file_#{i.to_s.rjust(3, '0')}.mp3`
end