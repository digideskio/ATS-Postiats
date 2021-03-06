<div
class="thePageRBodyLContent"
><!--div-->

<hr></hr>

<table>
<tr><td>
<h2
style="margin-bottom:0px">
<a id="ATS-Toolkit">ATS Toolkit</a>:</h2>
</td></tr>
<tr>
<td>
<ul>
<li>
<a href="http://ats-lang.sourceforge.net/RESOURCE/utils/atsccman.html">Atscc</a>
is a wrapper of convenience around the ATS compilation command
<a href= "http://ats-lang.sourceforge.net/RESOURCE/utils/atsoptman.html">atsopt</a>.
It is implemented in ATS2. Note that <u>atscc</u> may often be referred to as
<u>patscc</u>.
</li>
<li>
<a href="http://ats-lang.sourceforge.net/RESOURCE/utils/atsoptman.html">Atsopt</a>
is the command for directly invoking the ATS compiler that typechecks ATS (source)
code and then compiles it into C (target) code. It is implemented in ATS1, consisting
of more than 150K lines of code. Note that <u>atsopt</u> may often be referred to as
<u>patsopt</u>.
</li>
<li>
<a href="http://ats-lang.sourceforge.net/htdocs-old/DOCUMENT/atsdocman/atsdocman.html">Atsdoc</a>
is a tool implemented in ATS1 for helping write documentation on ATS and
beyond. While its use is now discouraged, the tool itself is still planned
to be kept in any future release of ATS1 so that a significant portion of
documentation on both ATS1 and ATS2 can be properly generated.
</li>
<li>
<u>Pats2xhtml</u>
is a tool implemented in ATS1 for converting ATS2 source (in the plain text format)
into a version in the XHTML format where a modest form of syntax-highlighting is applied.
Please click
<a href="http://ats-lang.sourceforge.net/DOCUMENT/ATS-Postiats/prelude/HTML/DATS/list_dats.html">here</a>
to see a converted example.
</li>
<li>
Atscc2js
</li>
<li>
Atscc2py3
</li>
<li>
Atscc2clj
</li>
<li>
Atscc2scm
</li>
<li>
Atscc2erl
</li>
<li>
Atscc2pl
</li>
<li>
Atscc2php
</li>
</ul>
</td>
</tr>
</table>

<hr></hr>

<h2><a id="Try_ATS_in_browser">Try ATS in your browser</a></h2>
<p>
Patsopt is the command for compiling ATS source into C, and
Atscc2js is the command for compiling C code generated from ATS source
into JS. Both of the commands are available in client-side JS, allowing
one to try ATS entirely inside the browser one is using. Please follow this
<a href="http://ats-lang.github.io/EXPERIMENT/patsopt-atscc2js-trial/index.html">link</a>
to get started.
</p>

<hr></hr>

<h2><a id="Learn_ATS_by_puzzles">Learn ATS by Solving Math Puzzles</a></h2>
<p>
ATS is equipped with a highly expressive type system rooted
in the framework Applied Types System, which also gives the
language its name. It is, however, non-trivial to make effective
use of types in ATS. Please find
<a href="https://github.com/githwxi/ATS-Postiats-contrib/tree/master/projects/MEDIUM/PEULER">on-line</a>
a tested and fun way to learn ATS by solving math puzzles.
</p>

<hr></hr>

<h2><a id="Pats2xhtmlization_service">Syntax-hiliting service for ATS code</a></h2>
<p>
Pats2xhtmlization is a simple and free on-line service for syntax-hiliting ATS code.
In HTML, one can use the tags
<u>sats2xhtml</u> and <u>dats2xhtml</u> for syntax-hiliting static and dynamic ATS code, respectively:
<pre>
&lt;sats2xhtml&gt;
//
// static interface
//
fun factorial (n: int): int
&lt;/sats2xhtml&gt;
</pre><pre>
&lt;dats2xhtml&gt;
//
// dynamic implementation
//
implement factorial(n) = if n > 0 then n*factorial(n-1) else 1
&lt;/dats2xhtml&gt;
</pre>
</p>

<p>
In order to properly activate the pats2xhtmlization service,
one needs to load in the following JS code (in addition to jQuery):
<pre>
&lt;script
 src="https://ats-lang.github.io/LIBRARY/libatscc2js/libatscc2js_all.js"&gt;
&lt;/script&gt;
&lt;script
 src="https://ats-lang.github.io/LIBRARY/ats2langweb/pats2xhtmlize_dats.js"&gt;
&lt;/script&gt;
</pre>
and then executes the following line in the HTML file where pats2xhtmlization
is to take place:
<pre>
&lt;script&gt;
$(document).ready(function(){pats2xhtmlize_process_all();return;});
&lt;/script&gt;
</pre>
</p>

<p>
Please visit this
<a href="http://ats-lang.github.io/EXAMPLE/PATS2XHTML/test01.html">link</a> to see a working example
(and find its source located
<a href="https://github.com/ats-lang/ats-lang.github.io/blob/master/EXAMPLE/PATS2XHTML/test01.html">here</a>).
</p>

<hr></hr>

</div>

<?php /* end of [Resources.php] */ ?>
