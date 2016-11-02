<map version="0.9.0">
<!-- To view this file, download free mind mapping software FreeMind from http://freemind.sourceforge.net -->
<node CREATED="1477853622963" ID="ID_519155126" MODIFIED="1477864883069" TEXT="Rust">
<node CREATED="1477853680786" ID="ID_750260429" MODIFIED="1477863533953" POSITION="right" TEXT="Variable Bindings">
<node CREATED="1477853691139" ID="ID_908846492" MODIFIED="1477853699142" TEXT="binds value to a name">
<node CREATED="1477853700628" ID="ID_1049832575" MODIFIED="1477853737432" TEXT="to be used later"/>
</node>
<node CREATED="1477854071197" ID="ID_1885701567" MODIFIED="1477854136571" TEXT="required to be initialized before using"/>
<node CREATED="1477854140689" ID="ID_873609598" MODIFIED="1477854209240" TEXT="have a scope">
<node CREATED="1477854209998" ID="ID_1026854895" MODIFIED="1477854211404" TEXT="constrained to block they were defined in"/>
<node CREATED="1477854202171" ID="ID_22603149" MODIFIED="1477854202906" TEXT="can be shadowed "/>
</node>
<node CREATED="1477853880777" ID="ID_1089968336" MODIFIED="1477853885844" TEXT="immutable by default">
<node CREATED="1477853962932" ID="ID_639036075" MODIFIED="1477863328021">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font face="Monospaced">mut</font>&#160;keyword
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
<node CREATED="1477861834191" ID="ID_1065259652" MODIFIED="1477863005726">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      type of <font face="Monospaced">[T; N]</font>
    </p>
  </body>
</html>
</richcontent>
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
<node CREATED="1477863966240" ID="ID_740733211" MODIFIED="1477863979969" TEXT="represented  as">
<node CREATED="1477863988070" ID="ID_39062357" MODIFIED="1477863996081" TEXT="pointer to beginning of data"/>
<node CREATED="1477863996852" ID="ID_1272655507" MODIFIED="1477864001017" TEXT="length"/>
</node>
</node>
<node CREATED="1477863171317" ID="ID_936245814" MODIFIED="1477863173035" TEXT="str">
<node CREATED="1477863174157" ID="ID_151945078" MODIFIED="1477863179305" TEXT="most primitive string type"/>
<node CREATED="1477863179911" ID="ID_1059218859" MODIFIED="1477863182108" TEXT="unsized"/>
<node CREATED="1477863185031" ID="ID_1820954327" MODIFIED="1477863209878">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      usefull behind reference - <font face="Monospaced">&amp;str</font>
    </p>
  </body>
</html>
</richcontent>
<node CREATED="1477863267063" ID="ID_989245309" MODIFIED="1477863269980" TEXT="string slice"/>
</node>
</node>
<node CREATED="1477863245791" ID="ID_962098945" MODIFIED="1477863247786" TEXT="tuples">
<node CREATED="1477863293377" ID="ID_1021033089" MODIFIED="1477863298648" TEXT="types and arity"/>
<node CREATED="1477863304174" ID="ID_1434962922" MODIFIED="1477863317382">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      destructuring <font face="Monospaced">let</font>
    </p>
  </body>
</html>
</richcontent>
</node>
<node CREATED="1477863369176" ID="ID_1062692056" MODIFIED="1477863382603" TEXT="single-element tuple with comma"/>
</node>
</node>
<node CREATED="1477854423453" ID="ID_1273206605" MODIFIED="1477864380095" POSITION="right" TEXT="Functions">
<node CREATED="1477855046115" ID="ID_939706472" MODIFIED="1477864400236" TEXT="Expressions vs Statements">
<node CREATED="1477855057851" ID="ID_261625810" MODIFIED="1477855351464" TEXT="statements">
<node CREATED="1477855164730" ID="ID_1794600343" MODIFIED="1477855326838" TEXT="declaration statements">
<node CREATED="1477855390310" ID="ID_631590307" MODIFIED="1477863337444">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font face="Monospaced">let</font>&#160;expression
    </p>
  </body>
</html></richcontent>
<node CREATED="1477853758276" ID="ID_790011824" MODIFIED="1477855418585">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      left-hand side is a <i>pattern</i>
    </p>
  </body>
</html></richcontent>
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
</html></richcontent>
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
</html></richcontent>
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
</html></richcontent>
</node>
</node>
</node>
<node CREATED="1477864368483" ID="ID_708229351" MODIFIED="1477864373169" POSITION="left" TEXT="Vectors">
<node CREATED="1477864456193" ID="ID_1359669732" MODIFIED="1477864464082" TEXT="dynamic growable array"/>
<node CREATED="1477864465407" ID="ID_1841494531" MODIFIED="1477864478018">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font face="Monospaced">Vec&lt;T&gt;</font>
    </p>
  </body>
</html>
</richcontent>
</node>
<node CREATED="1477864508524" ID="ID_1640615049" MODIFIED="1477864512758" TEXT="always on the heap">
<node CREATED="1477864532072" ID="ID_1622552094" MODIFIED="1477864542406" TEXT="contiguous array"/>
<node CREATED="1477864547856" ID="ID_1267304639" MODIFIED="1477864559067" TEXT="must know the size o T at compile time">
<node CREATED="1477864573340" ID="ID_1283152907" MODIFIED="1477864585417" TEXT="otherwise Box type"/>
</node>
</node>
<node CREATED="1477864601074" ID="ID_378275391" MODIFIED="1477864615789">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      index must be <font face="Monospaced">usize</font>
    </p>
  </body>
</html>
</richcontent>
</node>
<node CREATED="1477864680371" ID="ID_1475598048" MODIFIED="1477864703063" TEXT="bounds-checking at run-time">
<node CREATED="1477864703845" ID="ID_1944099922" MODIFIED="1477864719875" TEXT="via brackets - will panic"/>
<node CREATED="1477864727151" ID="ID_37571667" MODIFIED="1477864749179">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font face="Monospaced">get</font>&#160;or <font face="Monospaced">get_mut</font>&#160;for <font face="Monospaced">Option</font>
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node CREATED="1477864805081" ID="ID_1174912054" MODIFIED="1477864807605" TEXT="iterating">
<node CREATED="1477864808266" ID="ID_6602988" MODIFIED="1477864880511">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font face="Monospaced">for i in &amp;v</font>
    </p>
  </body>
</html>
</richcontent>
<node CREATED="1477864820198" ID="ID_1557876354" MODIFIED="1477864821810" TEXT="reference"/>
</node>
<node CREATED="1477864822866" ID="ID_1853961045" MODIFIED="1477864870963">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font face="Monospaced">for i in &amp;mut v</font>
    </p>
  </body>
</html>
</richcontent>
<node CREATED="1477864831138" ID="ID_775115409" MODIFIED="1477864834648" TEXT="mutable reference"/>
</node>
<node CREATED="1477864835484" ID="ID_1248229605" MODIFIED="1477864863612">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font face="Monospaced">for i in v</font>
    </p>
  </body>
</html>
</richcontent>
<node CREATED="1477864841192" ID="ID_222375996" MODIFIED="1477864846538" TEXT="taking ownership"/>
<node CREATED="1477864849186" ID="ID_1841020984" MODIFIED="1477864853574" TEXT="vector cannot be used again"/>
</node>
</node>
<node CREATED="1478032584729" ID="ID_841029581" MODIFIED="1478032600751" TEXT="vector is created on the stack and allocates space on the heap"/>
</node>
<node CREATED="1478032475529" ID="ID_1197077505" MODIFIED="1478032479802" POSITION="right" TEXT="Ownership system">
<node CREATED="1478032483149" ID="ID_1753796664" MODIFIED="1478032487190" TEXT="at compile time"/>
<node CREATED="1478032516678" ID="ID_71015556" MODIFIED="1478032519442" TEXT="Ownership">
<node CREATED="1478032527046" ID="ID_1293711426" MODIFIED="1478032549300" TEXT="variable bindings have ownership of what they are bound to"/>
</node>
<node CREATED="1478032685625" ID="ID_174805675" MODIFIED="1478032738970" TEXT="Move semantics">
<node CREATED="1478032643593" ID="ID_182594014" MODIFIED="1478032671313" TEXT="Rust ensures exactly one binding to any given resource"/>
<node CREATED="1478032739620" ID="ID_526119571" MODIFIED="1478032788957">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      when we transfer ownership to something else we say that we <i>moved</i>&#160; the thing we refere to
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node CREATED="1478032898285" ID="ID_1341148703" MODIFIED="1478032900777" TEXT="Details">
<node CREATED="1478032901503" ID="ID_1614616831" MODIFIED="1478032996359" TEXT="Rust allocates memory for integer on stack and copies bit pattern to the allocated memory and It binds variable name to this memory for future reference"/>
<node CREATED="1478032959853" ID="ID_1282174206" MODIFIED="1478033503030" TEXT="For vectors Rust allocates object on the stack and some memory on the heap for actual data. These two parts must agree with each other at all times with regards to things like length, capacity, etc. When we move v to v2 Rust does bitwise copy of the vector object into stack allocation without copying heap allocatinon - shallow copy. There would be two pointers to the contents of vector - data race."/>
</node>
<node CREATED="1478033511619" ID="ID_923499941" MODIFIED="1478033515769" TEXT="Copy types">
<node CREATED="1478033634443" ID="ID_90512018" MODIFIED="1478033656494" TEXT="when ownership is transferred to another binding you cannot use the original binding"/>
<node CREATED="1478033658970" ID="ID_381484240" MODIFIED="1478033677650" TEXT="except when object implements Copy trait"/>
<node CREATED="1478033808381" ID="ID_1040503174" MODIFIED="1478034104776" TEXT="copy of the data is made with move - all data on stack because there is no data on heap"/>
</node>
<node CREATED="1478036860455" ID="ID_1618574382" MODIFIED="1478036863030" TEXT="Borrowing">
<node CREATED="1478036902634" ID="ID_1712999986" MODIFIED="1478037120545" TEXT="with references &amp;T">
<node CREATED="1478036912472" ID="ID_1599453981" MODIFIED="1478037016487" TEXT="both formal parameters of functions and parameters passed in a call need to be references"/>
</node>
<node CREATED="1478037054679" ID="ID_1146565557" MODIFIED="1478037109330" TEXT="references are immutable by default">
<node CREATED="1478037069911" ID="ID_1512346719" MODIFIED="1478037074355" TEXT="cannot push to vector"/>
</node>
<node CREATED="1478037109975" ID="ID_1547772982" MODIFIED="1478037117581" TEXT="immutable references &amp;mut T"/>
<node CREATED="1478037154202" ID="ID_338990393" MODIFIED="1478037167949" TEXT="cannot make mutable borrow to immutable value"/>
<node CREATED="1478037204952" ID="ID_786725606" MODIFIED="1478037226340" TEXT="* necessary to access value under mutable reference"/>
<node CREATED="1478037240980" ID="ID_898546742" MODIFIED="1478037242766" TEXT="Rules">
<node CREATED="1478037246692" ID="ID_1655900529" MODIFIED="1478037266059" TEXT="any borrow must last for a scope no greater than that of the owner"/>
<node CREATED="1478037276264" ID="ID_354857819" MODIFIED="1478037293740" TEXT="one or the other of two kinds not not at the same time">
<node CREATED="1478037295932" ID="ID_1743085598" MODIFIED="1478037306653" TEXT="one or more immutable refernces"/>
<node CREATED="1478037308775" ID="ID_597499084" MODIFIED="1478037313641" TEXT="exactly one mutable references"/>
</node>
<node CREATED="1478037459492" ID="ID_1201426366" MODIFIED="1478037481534" TEXT="references within the same scope are freed in the opposite order they were declared"/>
</node>
</node>
</node>
</node>
</map>
