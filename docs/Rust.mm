<map version="0.9.0">
<!-- To view this file, download free mind mapping software FreeMind from http://freemind.sourceforge.net -->
<node CREATED="1477853622963" ID="ID_519155126" MODIFIED="1477862201446" TEXT="Rust">
<node CREATED="1477853680786" ID="ID_750260429" MODIFIED="1477854420774" POSITION="right" TEXT="Variable Bindings">
<node CREATED="1477853691139" ID="ID_908846492" MODIFIED="1477853699142" TEXT="binds value to a name">
<node CREATED="1477853700628" ID="ID_1049832575" MODIFIED="1477853737432" TEXT="to be used later"/>
</node>
<node CREATED="1477854071197" ID="ID_1885701567" MODIFIED="1477854136571" TEXT="required to be initialized before using"/>
<node CREATED="1477854140689" ID="ID_873609598" MODIFIED="1477854209240" TEXT="have a scope">
<node CREATED="1477854209998" ID="ID_1026854895" MODIFIED="1477854211404" TEXT="constrained to block they were defined in"/>
<node CREATED="1477854202171" ID="ID_22603149" MODIFIED="1477854202906" TEXT="can be shadowed "/>
</node>
<node CREATED="1477853880777" ID="ID_1089968336" MODIFIED="1477853885844" TEXT="immutable by default">
<node CREATED="1477853962932" ID="ID_639036075" MODIFIED="1477855675503">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font face="Monospaced"><b>mut</b></font>&#160;keyword
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node CREATED="1477854257866" ID="ID_168572418" MODIFIED="1477854364097" TEXT="shadowing is different from mutability">
<node CREATED="1477854287058" ID="ID_334105000" MODIFIED="1477854297597" TEXT="shadowing enables to rebind a name"/>
<node CREATED="1477854321026" ID="ID_1285276796" MODIFIED="1477854374519" TEXT="does not alter or destroy the value it was bound to"/>
<node CREATED="1477854336080" ID="ID_1612951198" MODIFIED="1477854348722" TEXT="value will continue to exist until it goes out of scope"/>
<node CREATED="1477854384797" ID="ID_1467461211" MODIFIED="1477854401086" TEXT="possibly no longer accessible"/>
</node>
</node>
<node CREATED="1477854423453" ID="ID_1273206605" MODIFIED="1477854425382" POSITION="left" TEXT="Functions">
<node CREATED="1477855594137" ID="ID_1394906204" MODIFIED="1477855599548" TEXT="diverging functions">
<node CREATED="1477855601681" ID="ID_115770559" MODIFIED="1477855627032">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font face="Monospaced">-&gt; !</font>
    </p>
  </body>
</html>
</richcontent>
</node>
<node CREATED="1477855642875" ID="ID_14119047" MODIFIED="1477855660629">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font face="Monospaced">panic!</font>&#160;macro
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node CREATED="1477855733942" ID="ID_1961688351" MODIFIED="1477855739875" TEXT="function pointers">
<node CREATED="1477855742270" ID="ID_407507645" MODIFIED="1477855789048">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font face="Monospaced">let f: fn(i32) -&gt; i32 = plus_one;</font>
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
</node>
<node CREATED="1477855046115" ID="ID_939706472" MODIFIED="1477855055424" POSITION="right" TEXT="Expressions vs Statements">
<node CREATED="1477855057851" ID="ID_261625810" MODIFIED="1477855351464" TEXT="statements">
<node CREATED="1477855164730" ID="ID_1794600343" MODIFIED="1477855326838" TEXT="declaration statements">
<node CREATED="1477855390310" ID="ID_631590307" MODIFIED="1477855689998">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font face="Monospaced"><b>let</b></font>&#160;expression
    </p>
  </body>
</html>
</richcontent>
<node CREATED="1477853758276" ID="ID_790011824" MODIFIED="1477855418585">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      left-hand side is a <i>pattern</i>
    </p>
  </body>
</html>
</richcontent>
<font NAME="SansSerif" SIZE="12"/>
</node>
<node CREATED="1477855432560" ID="ID_228690685" MODIFIED="1477855437299" TEXT="not a variable name"/>
</node>
</node>
<node CREATED="1477855174968" ID="ID_140642012" MODIFIED="1477855328648" TEXT="expression statements">
<node CREATED="1477855514162" ID="ID_750559579" MODIFIED="1477855523296" TEXT="turns any expression into a statement"/>
</node>
</node>
<node CREATED="1477855299125" ID="ID_1574794152" MODIFIED="1477855358667" TEXT="expressions"/>
</node>
<node CREATED="1477861486219" ID="ID_85270224" MODIFIED="1477861926203" POSITION="left" TEXT="Primitive types">
<node CREATED="1477861508373" ID="ID_1915398358" MODIFIED="1477861509834" TEXT="bool"/>
<node CREATED="1477861542369" ID="ID_1328756619" MODIFIED="1477861543729" TEXT="char">
<node CREATED="1477861544403" ID="ID_1153184876" MODIFIED="1477861555618" TEXT="single Unicode - 4 bytes"/>
</node>
<node CREATED="1477861561567" ID="ID_1274920039" MODIFIED="1477861563801" TEXT="numeric">
<node CREATED="1477861571736" ID="ID_1894045051" MODIFIED="1477861634520" TEXT="category">
<node CREATED="1477861635300" ID="ID_871834331" MODIFIED="1477861636557" TEXT="1">
<node CREATED="1477861585007" ID="ID_1225965078" MODIFIED="1477861587509" TEXT="signed"/>
<node CREATED="1477861587876" ID="ID_708678805" MODIFIED="1477861590575" TEXT="unsigned"/>
</node>
<node CREATED="1477861647774" ID="ID_825831553" MODIFIED="1477861648967" TEXT="2">
<node CREATED="1477861649590" ID="ID_1234535685" MODIFIED="1477861652135" TEXT="fixed">
<node CREATED="1477861701101" ID="ID_653047032" MODIFIED="1477861706751" TEXT="specific number of bits"/>
</node>
<node CREATED="1477861653174" ID="ID_1374657549" MODIFIED="1477861654925" TEXT="variable">
<node CREATED="1477861758979" ID="ID_1602408790" MODIFIED="1477861761296" TEXT="isize"/>
<node CREATED="1477861764101" ID="ID_132964923" MODIFIED="1477861765480" TEXT="usize"/>
<node CREATED="1477861715384" ID="ID_131164369" MODIFIED="1477861770853" TEXT="size depends on underlying architecture"/>
<node CREATED="1477861735627" ID="ID_962152744" MODIFIED="1477861770858" TEXT="range sufficient to express size of any collection"/>
</node>
</node>
<node CREATED="1477861658662" ID="ID_1000059145" MODIFIED="1477861659381" TEXT="3">
<node CREATED="1477861660010" ID="ID_1854673344" MODIFIED="1477861663539" TEXT="floating-point"/>
<node CREATED="1477861664112" ID="ID_1950959570" MODIFIED="1477861665701" TEXT="integer"/>
</node>
</node>
<node CREATED="1477861574698" ID="ID_439526610" MODIFIED="1477861576205" TEXT="size"/>
</node>
<node CREATED="1477861802741" ID="ID_1453036043" MODIFIED="1477861805624" TEXT="arrays">
<node CREATED="1477861822121" ID="ID_1918961347" MODIFIED="1477861828782" TEXT="fixed-size"/>
<node CREATED="1477861834191" ID="ID_1065259652" MODIFIED="1477861843950" TEXT="type of [T; N]">
<node CREATED="1477861844398" ID="ID_1325845290" MODIFIED="1477861847302" TEXT="T - generic"/>
<node CREATED="1477861848615" ID="ID_1359580302" MODIFIED="1477861854452" TEXT="N - compile-time constant"/>
</node>
<node CREATED="1477861890988" ID="ID_360487126" MODIFIED="1477861900904" TEXT="access bounds-checked at run-time"/>
</node>
<node CREATED="1477861927032" ID="ID_1297870924" MODIFIED="1477861929763" TEXT="slices">
<node CREATED="1477861932972" ID="ID_1674756337" MODIFIED="1477861943569" TEXT="reference (view) to another data structure"/>
<node CREATED="1477861951064" ID="ID_1136394537" MODIFIED="1477861965152" TEXT="access to a portion of an array without copying"/>
<node CREATED="1477861976606" ID="ID_736439097" MODIFIED="1477861984059" TEXT="created from existing variable binding"/>
<node CREATED="1477861990563" ID="ID_1526536950" MODIFIED="1477861993527" TEXT="defined length"/>
<node CREATED="1477861995037" ID="ID_926352974" MODIFIED="1477861998793" TEXT="mutable or immutable">
<node CREATED="1477862079449" ID="ID_610214329" MODIFIED="1477862231594">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font face="Monospaced">&amp;[T]</font>
    </p>
  </body>
</html>
</richcontent>
</node>
<node CREATED="1477862086097" ID="ID_861228792" MODIFIED="1477862240849">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font face="Monospaced">&amp;mut [T]</font>
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node CREATED="1477862023898" ID="ID_1753967597" MODIFIED="1477862029683" TEXT="similar to references"/>
</node>
</node>
</node>
</map>
