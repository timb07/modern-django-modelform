\version "2.19.45"
\include "english.ly"

% By Russell Keith-Magee (%freakboy3742) and Katie McLaughlin (%glasnt)
% from an idea by Marc Tamlyn (%mjtamlyn)

#(set-global-staff-size 18)
#(set-default-paper-size "a4")
\paper {
  left-margin = 12\mm
  right-margin = 10\mm
  top-margin = 10\mm
  bottom-margin = 10\mm
    indent = 0.0
    line-width = 185 \mm
#(define fonts
    (set-global-fonts
    #:music "emmentaler"
    #:brace "emmentaler"
    #:roman "American Typewriter Condensed"
    #:sans "sans-serif"
    #:typewriter "monospace"
    #:factor (/ staff-height pt 18)
  ))
}

\header {
  title = \markup \center-column { \vspace #2 "Modern Django ModelForm" }
  subsubtitle = \markup \center-column {  \vspace #1 "to the tune of the Major-General song from Pirates of Penzance" \vspace #2 }
  composer = "Sir Arthur Sullivan"
  poet = "Russell Keith-Magee and Katie McLaughlin"
  meter = "from an idea by Marc Tamlyn"
  copyright = \markup \center-column { \vspace #2 "Lyrics © Russell Keith-Magee and Katie McLaughlin" }
  tagline = "Typeset by Tim Bell with LilyPond" 
}

\markup { \vspace #1 }

keyTime = {
	\key ef \major
	\time 4/4
}

melody = \relative c'' {
  \clef treble
  \keyTime
  R1 R1 R1 R1 R1 R1 R1 R1 R1 R1
  \repeat volta 2 {
	R1 r2 r4 r8 bf8
	bf c bf c bf c bf c bf c bf c bf g ef bf
	af' bf af bf af bf af bf af bf af bf af f d bf
	bf' c bf c bf c bf c bf c bf c bf g ef g
	f g f g f g a bf bf a g a bf bf, bf bf'
	bf cf bf cf bf cf bf \slurDotted cf16([ cf)] bf8 cf bf af gf f ef ef'
	df ef df ef df ef df ef df ef df cf bf af gf cf
	bf cf bf cf bf cf bf cf bf cf bf af gf f ef4
	r2 r4 r8 d8 |
	ef d ef d ef d ef d | ef gf f ef bf' bf, bf
	\bar "" \break
	bf'^\markup { Chorus } |
	bf c d c bf c d c bf c d c bf bf, bf bf'
	c d ef d c d ef d c d ef d c f, f c'
	d ef f ef d ef f ef d ef f ef d ef f ef d4 r4 r2	r2 r4 bf4^\markup { Solo }
	bf8 c bf c bf c bf c bf c bf c bf g ef bf
	af' bf af bf af bf af bf af bf af bf af f d bf
	bf' c d ef d c bf a bf c d ef d c bf a
	bf c d ef d c bf af | g bf f bf g ef ef
	\bar "" \break
	bf'^\markup { Chorus } |
	bf c d ef d c bf a bf c d ef d c bf a
	bf c d ef d c  bf af g bf f bf g ef ef r
  }
    R1 r2 r4 r8 bf'^\markup { Solo }
    bf c bf c bf c bf c bf c bf c bf g ef bf
	af' bf af bf af bf af bf af bf af bf af f d bf
	bf' c bf c bf c bf c bf c bf c bf( g) ef g
	f g f g f g a bf bf a g a bf bf, bf bf'
	bf cf bf cf bf cf bf cf bf cf bf af gf f ef ef'
	df ef df ef df ef df ef df ef df cf bf af gf cf
	bf cf bf cf bf cf bf cf bf cf bf af gf f ef4
	r2 r4 r8 d8
	ef^\markup { \italic Allegro vivace } d ef d ef d ef d | ef gf f ef bf' bf, bf
	\bar "" \break
	bf'^\markup { Chorus } |
	bf c d c bf c d c bf c d c bf bf, bf bf'
	c d ef d c d ef d c d ef d c f, f c'
	d ef f ef d ef f ef d ef f ef d ef f ef d4 r4 r2	r2 r4 bf4^\markup { Solo }
	bf8 c bf c bf c bf c bf c bf c bf g ef bf
	af' bf af bf af bf af bf af bf af bf af f d bf
	bf' c d ef d c bf a bf c d ef d c bf a
	bf c d ef d c bf af | g bf f bf g ef ef
	\stemDown bf'^\markup { Chorus } | \stemNeutral
	bf c d ef d c bf a bf c d ef d c bf a
	bf c d ef d c  bf af g bf f bf g ef ef r
	R1 R1 r1 r1 r1 r1
	\bar "|."
}

chorus = {
  \override Lyrics.LyricText.font-shape = #'italic
}

solo = {
  \revert Lyrics.LyricText.font-shape
}

textone = {
\set stanza = \markup { \smaller "1. " }
\lyricmode {
\override LyricText #'font-size = #-1
I am the ve -- ry mod -- el of a mod -- ern Djan -- go mod -- el -- Form
I han -- dle an -- y lang -- uage ev -- en e -- mo -- ji and Cu -- ni -- form
My da -- ta can be ac -- cessed through an el -- e -- gant and ma -- ture ORM
And Rails, Py -- lons and P -- H -- P they look up -- on me with for -- lorn.

Some crit -- i -- cize the white -- space in my lang -- uage with a lot of scorn
But when you are quite used to this you prob -- 'ly think this is the norm
While build -- ing sites you'll prob -- 'ly end up writ -- ing lots and lots of views…
To ser -- vice all the shop -- ping carts and some -- times ev -- en read the news.

\chorus
To ser -- vice all the shop -- ping carts and some -- times ev -- en read the news,
To ser -- vice all the shop -- ping carts and some -- times ev -- en read the news,
To ser -- vice all the shop -- ping carts and some -- times ev -- en read the bor -- ing news.

\solo
Your de -- sign as -- sets will be safe -- ly stored out there in sta -- tic -- files
The pret -- ty is com -- ple -- ted by the use of some cas -- ca -- ding styles
And while I'm out there hand -- ling all that e -- mo -- ji and Cu -- ni -- form
I’m still the ve -- ry mod -- el of a mod -- ern Djan -- go Mod -- el -- Form.

\chorus
And while they're out there hand -- ling all that e -- mo -- ji and Cu -- ni -- form
They're still the ver -- y mod -- el of a mod -- ern Djan -- go Mod -- el -- Form.
}
}
texttwo = {
\set stanza = \markup { \smaller "2. " }
\lyricmode {
\override LyricText #'font-size = #-1
My mod -- els can be en -- tered in -- to an -- y mod -- ern da -- ta -- base
But real -- ly you should use Post -- Gres, like an -- y -- bo -- dy with good taste
A -- to -- mic tran -- sac -- tions can let me hand -- le fail -- ures with good grace
'i' eight -- een 'n' and 'l' ten 'n' means I can run in an -- y place.

Au -- to -- esc -- ap -- ing by de -- fault
\set ignoreMelismata = ##t
helps to
\unset ignoreMelismata
stop with all the egg on face
And fu -- ture er -- rors are pre -- vent -- ed with a stur -- dy test -- ing base
But noth -- ing can pro -- tect you from a dev -- op who is feel -- ing smug…
Who ed -- its in pro -- duct -- ion and then in -- tro -- du -- ces na -- sty bugs.

\chorus
Who ed -- its in pro -- duct -- ion and then in -- tro -- du -- ces na -- sty bugs,
Who ed -- its in pro -- duct -- ion and then in -- tro -- du -- ces na -- sty bugs,
Who ed -- its in pro -- duct -- ion and then in -- tro -- du -- ces na -- sty, na -- sty  bugs.

\solo
And that's why all your sites should have a com -- pre -- hen -- sive mon't -- 'ring scheme
A -- lert -- ing to act -- iv -- i -- ties of hack -- ers who are be -- ing mean
Yet still I'm out there hand -- ling all that e -- mo -- ji and Cu -- ni -- form
'cause I'm the ver -- y mod -- el of a mod -- ern Djan -- go Mod -- el -- Form

\chorus
Yet still they're out there hand -- ling all that e -- mo -- ji and Cu -- ni -- form
'cause they're the ver -- y mod -- el of a mod -- ern Djan -- go Mod -- el -- Form.

\solo
\set stanza = \markup { \smaller "3. " }
Hope -- ful -- ly you can use me an -- y way that you are want -- ing to
With comp -- re -- hen -- sive doc -- u -- ments to as -- sist when you have no clue
Sup -- port -- ed by a friend -- ly group of world -- wide Djan -- go u -- sers who
Glad -- ly vol -- un -- teer their time for men -- tor -- ing and help -- ing you

Whe -- ther build -- ing up mi -- gra -- tions or fig'r -- ing out a class -- based view
Or de -- ploy -- ing a serv -- er on a plat -- form that is ver -- y new
I have no doubt that with their help your love -- ly brand new site will soar
And if you find en -- ough bugs you may find your -- self join -- ing the core

\chorus
And if you find en -- ough bugs you may find your -- self join -- ing the core,
And if you find en -- ough bugs you may find your -- self join -- ing the core,
And if you find en -- ough bugs you may find your -- self join -- ing the Djan -- go core.

\solo
Some peo -- ple want to dump me and are look -- ing for the next cool thing
Yet I am quite ex -- cit -- ed for the feat -- ures one point ten will bring
But still I am quite bus -- y hand -- ling e -- mo -- ji and Cu -- ni -- form
Be -- cause I am the mod -- el of a mod -- ern Djan -- go Mod -- el -- Form.

\chorus
But still they are quite bus -- y hand -- ling e -- mo -- ji and Cu -- ni -- form
Be -- cause they are the mod -- el of a mod -- ern Djan -- go Mod -- el -- Form.

}
}

upper = \relative c'' {
  \clef treble
  \keyTime

  bf4^\markup { \italic Allegro vivace } bf bf bf bf bf bf bf8 bf'
  bf c bf c bf c bf c bf c bf c bf g ef bf
  af' bf af bf af bf af bf af bf af bf af f d bf
  bf' c d ef d c bf a bf c d ef d c bf a
  bf c d ef d c bf af g bf f bf <bf, ef>4 r4
  \repeat volta 2 {
	<g, bf> <g bf> <g bf> <g bf> <g bf> <g bf> <g bf> <g bf> 
	<g bf> <g bf> <g bf> <g bf> <g bf> <g bf> <g bf> <g bf>
	<f bf d> <f bf d> <f bf d> <f bf d> <f bf d> <f bf d> <f bf d> <f bf d>
	<g bf ef> <g bf ef> <g bf ef> <g bf ef> <g bf ef> <g bf ef> <g bf ef> <g bf ef>
	<f bf d> <f bf d> <f bf d> <f bf d> <f c' ef> <f c' ef> <f bf d> r
	<af bf f'> <af bf f'> <af bf f'> <af bf f'>
	<af bf f'> <af bf f'> <gf bf ef> <gf bf>
	<cf df af'> <cf df af'> <cf df af'> <cf df af'>
	<cf df af'> <cf df af'> <bf df gf> <bf df>
	<af bf f'> <af bf f'> <af bf f'> <af bf f'>
	<af bf f'> <af bf f'> <gf bf ef> <gf bf>
	R1 <a ef' gf>4 <a ef' gf> <a ef' gf> <a ef' gf>
	<a ef' gf> <a ef' gf> <bf d bf'> r8
	<d bf'>
	<d bf'> f <ef a> f <d bf'> f <ef a> f
	<d bf'> f <ef a> f <d bf'>4 bf8 r
	<ef a c> c <ef a c> c <ef a c> c <ef a c> c
	<ef a c> c <ef a c> c <ef a c>4 f8 r
	<af bf d> d, <af' bf d> d, <af' bf d> d, <af' bf d> d,
	<af' bf d> d, <af' bf d> d, <af' bf d> d, <af' bf d> d, 
	d'-. ef-. f-. g-. af( bf) af-. g-.
	f-. ef-. d-. c-. bf-. af-. g-. f-.
	<g, ef'>4 <g ef'> <g ef'> <g ef'> <g ef'> <g ef'> <g ef'> <g ef'>
	<f bf d> <f bf d> <f bf d> <f bf d> <f bf d> <f bf d> <f bf d> <f bf d>
	<g bf ef> <bf bf'> <bf f'> <bf d> <bf ef> <bf bf'> <bf f'> <bf d>
	<bf ef> <bf ef bf'> <c ef af> <c f af> <bf ef g> <af bf d f> <g bf ef> <g bf ef>8 r
	<bf ef bf'>4 <bf ef bf'> <bf d f bf> <bf d f bf>
	<bf ef bf'> <bf ef bf'> <bf d f bf> <bf d f bf>
	<bf ef bf'> <bf ef> <c ef f> <c ef af> <bf ef g> <af bf d f> <g bf ef> r
  }
	<bf ef g>8^\markup { \italic Slower } r8 r4 <bf ef g>8 r8 r4 <bf ef g>8 r8 r4 <bf ef g>8 r8 r4
	<bf ef g>8 r8 r4 <bf ef g>8 r8 r4 <bf ef g>8 r8 r4 <bf ef g>8 r8 r4
	<bf d af'>8 r8 r4 <bf d af'>8 r8 r4 <bf d af'>8 r8 r4 <bf d af'>8 r8 r4
	<bf ef g>8 r8 r4 <bf ef g>8 r8 r4 <bf ef g>8 r8 r4 <bf ef g>8 r8 r4
	<bf d f>8 r8 r4 <bf d f>8 r8 r4 <c ef f>8 r8 r4 <bf d f>8 r8 r4
	<bf f' af>8 r8 r4 <bf f' af>8 r8 r4 <bf f' af>8 r8 r4 <bf ef gf>8 r8 r4
	<df af' cf>8 r8 r4 <df af' cf>8 r8 r4 <df af' cf>8 r8 r4 <df gf bf>8 r8 r4
	<bf f' af>8 r8 r4 <bf f' af>8 r8 r4 <bf f' af>8 r8 r4 <bf ef gf>8 r8 r4
	R1 <a ef' gf>4^\markup { \italic Allegro vivace } <a ef' gf> <a ef' gf> <a ef' gf>
	<a ef' gf> <a ef' gf> <bf d bf'> r8 <d bf'>
	<d bf'> f <ef a> f <d bf'> f <ef a> f
	<d bf'> f <ef a> f <d bf'>4 bf8 r
	<ef a c> c <ef a c> c <ef a c> c <ef a c> c
	<ef a c> c <ef a c> c <ef a c>4 f8 r
	<af bf d> d, <af' bf d> d, <af' bf d> d, <af' bf d> d,
	<af' bf d> d, <af' bf d> d, <af' bf d> d, <af' bf d> d, 
	d'-. ef-. f-. g-. af( bf) af-. g-.
	f-. ef-. d-. c-. bf-. af-. g-. f-.
	<g, ef'>4 <g ef'> <g ef'> <g ef'> <g ef'> <g ef'> <g ef'> <g ef'>
	<f bf d> <f bf d> <f bf d> <f bf d> <f bf d> <f bf d> <f bf d> <f bf d>
	<g bf ef> <bf bf'> <bf f'> <bf d> <bf ef> <bf bf'> <bf f'> <bf d>
	<bf ef> <bf ef bf'> <c ef af> <c f af> <bf ef g> <af bf d f> <g bf ef> <g bf ef>
	<bf ef bf'> <bf ef bf'> <bf d f bf> <bf d f bf>
	<bf ef bf'> <bf ef bf'> <bf d f bf> <bf d f bf>
	<bf ef bf'> <bf ef> <c ef f> <c ef af> <bf ef g> <af bf d f> <g bf ef> r8
	bf''
	bf c bf c bf c bf c bf c bf c bf g ef bf
	af' bf af bf af bf af bf af bf af bf af f d bf
	ef4 r4 <bf d f bf> r <ef g bf ef> r4 r2
	\bar "|."
}

lower = \relative c' {
  \clef bass
  \keyTime

	bf4 bf bf bf bf bf bf bf
	ef, <g bf ef> ef <g bf ef> ef <g bf ef> ef <g bf ef> 
	ef <af bf d> ef <af bf d> ef <af bf d> ef <af bf d>
	<ef g bf ef> <g bf ef> <af bf d f> <af bf d f>
	<g bf ef> <g bf ef> <af bf d f> <af bf d f>
	<g bf ef> <g bf ef> <af c ef f> <f c' ef>
	<bf ef g> <bf d af'> <ef g> r4
  \repeat volta 2 {
	ef,, bf' ef, bf' ef, bf' ef, bf'
	ef, bf' ef, bf' ef, bf' ef, bf'
	ef, bf' ef, bf' ef, bf' ef, bf'
	ef, bf' ef, bf' ef, bf' ef, bf'
	f bf f bf f f <bf, bf'> r4
	d' bf d bf d bf ef ef,
	f' df f df f df gf gf,
	d' bf d bf d bf ef ef,
	R1 <cf cf'>4 <cf cf'> <cf cf'> <cf cf'> 
	<cf cf'> <cf cf'> <bf bf'> r8
	<bf' bf'>
	<bf bf'>4 <f f'> <bf bf'> <f f'> <bf bf'> <f f'> <bf bf'> <bf, bf'>
	<bf' bf'> <bf, bf'> <bf' bf'> <bf, bf'> <bf' bf'> <bf, bf'> <bf' bf'> <bf, bf'>
	<bf' bf'> <bf, bf'> <bf' bf'> <bf, bf'> <bf' bf'> <bf, bf'> <bf' bf'> <bf, bf'>
	<bf' f' af> r4 \clef "treble" af''8( bf) af-. g-.
	f-. ef-. d-. c-. \clef "bass" bf-. af-. g-. f-.
	<ef, ef'>4 bf' ef, bf' ef, bf' ef, bf' ef, bf' ef, bf' ef, bf' ef, bf'
	ef, g' af f g g af f g g, af f bf <bf, bf'> <ef ef'> ef8 r
	<g g'>4 <g g'> <af af'> <af af'> <g g'> <g g'> <af af'> <af af'> 
	<g g'> <g g'> <af af'> <f f'> bf <bf, bf'> <ef ef'> r
  }
	<ef ef'>8 r8 r4 <ef ef'>8 r8 r4 <ef ef'>8 r8 r4 <ef ef'>8 r8 r4
	<ef ef'>8 r8 r4 <ef ef'>8 r8 r4 <ef ef'>8 r8 r4 <ef ef'>8 r8 r4
	<ef ef'>8 r8 r4 <ef ef'>8 r8 r4 <ef ef'>8 r8 r4 <ef ef'>8 r8 r4
	<ef ef'>8 r8 r4 <ef ef'>8 r8 r4 <ef ef'>8 r8 r4 <ef ef'>8 r8 r4
	<f f'>8 r8 r4 <f f'>8 r8 r4 f8 r8 r4 <bf, bf'>8 r8 r4
	<d d'>8 r8 r4 <d d'>8 r8 r4 <d d'>8 r8 r4 <ef ef'>8 r8 r4
	<f f'>8 r8 r4 <f f'>8 r8 r4 <f f'>8 r8 r4 <gf gf'>8 r8 r4
	<d d'>8 r8 r4 <d d'>8 r8 r4 <d d'>8 r8 r4 <ef ef'>8 r8 r4
	R1 <cf cf'>4 <cf cf'> <cf cf'> <cf cf'> <cf cf'> <cf cf'> <bf bf'> r8
	<bf' bf'>
	<bf bf'>4 <f f'> <bf bf'> <f f'> <bf bf'> <f f'> <bf bf'> <bf, bf'>
	<bf' bf'> <bf, bf'> <bf' bf'> <bf, bf'> <bf' bf'> <bf, bf'> <bf' bf'> <bf, bf'>
	<bf' bf'> <bf, bf'> <bf' bf'> <bf, bf'> <bf' bf'> <bf, bf'> <bf' bf'> <bf, bf'>
	<bf' f' af> r4 \clef "treble" af''8( bf) af-. g-.
	f-. ef-. d-. c-. \clef "bass" bf-. af-. g-. f-.
	<ef, ef'>4 bf' ef, bf' ef, bf' ef, bf' ef, bf' ef, bf' ef, bf' ef, bf'
	ef, g' af f g g af f g g, af f bf <bf, bf'> <ef ef'> ef
	<g g'> <g g'> <af af'> <af af'> <g g'> <g g'> <af af'> <af af'> 
	<g g'> <g g'> <af af'> <f f'> bf <bf, bf'> <ef ef'> r
	ef' <g bf ef> ef <g bf ef> ef <g bf ef> ef <g bf ef>
	ef <af bf d> ef <af bf d> ef <af bf d> ef <af bf d>
	<ef g bf ef> r <bf d f bf> r <ef, g bf ef> r4 r2
	\bar "|."
}

\score {
  <<
    \new Voice = "mel" \with {
		\consists "Melody_engraver"
	    \override Stem.neutral-direction = #'()
	} {
		\autoBeamOff
		\melody
	}
    \new Lyrics \lyricsto mel \textone
    \new Lyrics \lyricsto mel \texttwo
    \new PianoStaff <<
      \new Staff = "upper" \upper
      \new Staff = "lower" \lower
    >>
  >>
  \layout {
    \context { \Staff \RemoveEmptyStaves }
  }
  \midi { \tempo 4 = 180 }
}
