Ôr
|C:\Users\Sai Kumar\Desktop\C# Trining\UniversityApplicationFinal\UniversityApplicationFinal\Controllers\AccountController.cs
	namespace 	&
UniversityApplicationFinal
 $
.$ %
Controllers% 0
;0 1
public		 
class		 
AccountController		 
:		  

Controller		! +
{

 
Uri 
baseuri 
= 
new 
Uri 
( 
$str >
)> ?
;? @

HttpClient 
client 
= 
new 

HttpClient &
(& '
)' (
;( )
private 
readonly 
ISession 
_session &
;& '
private 
readonly 
ILogger 
< 
AccountController .
>. /
_logger0 7
;7 8
public 

AccountController 
( 
ILogger $
<$ %
AccountController% 6
>6 7
logger8 >
,> ? 
IHttpContextAccessor@ T
httpContextAccessorU h
)h i
{ 
_logger 
= 
logger 
; 
_session 
= 
httpContextAccessor &
.& '
HttpContext' 2
.2 3
Session3 :
;: ;
} 
[ 
HttpGet 
] 
public 

IActionResult 
Login 
( 
)  
{ 
return 
View 
( 
) 
; 
} 
[ 
HttpPost 
] 
public   

IActionResult   
Login   
(   

LoginModel   )

loginModel  * 4
)  4 5
{!! 
using"" 
("" 
var"" 
client"" 
="" 
new"" 

HttpClient""  *
(""* +
)""+ ,
)"", -
{## 	
var$$ 
postData$$ 
=$$ 
client$$ !
.$$! "
PostAsJsonAsync$$" 1
($$1 2
baseuri$$2 9
+$$: ;
$str$$< D
,$$D E

loginModel$$F P
)$$P Q
;$$Q R
postData%% 
.%% 
Wait%% 
(%% 
)%% 
;%% 
var&& 
result&& 
=&& 
postData&& !
.&&! "
Result&&" (
;&&( )
string'' 
data'' 
='' 
result''  
.''  !
Content''! (
.''( )
ReadAsStringAsync'') :
('': ;
)''; <
.''< =
Result''= C
;''C D
if(( 
((( 
data(( 
==(( 
$str(( ,
)((, -
{)) 
return** 
RedirectToAction** '
(**' (
$str**( 0
,**0 1
$str**2 ;
)**; <
;**< =
}++ 
if,, 
(,, 
result,, 
.,, 
IsSuccessStatusCode,, *
),,* +
{-- 
var// 
user// 
=// 
JsonConvert// &
.//& '
DeserializeObject//' 8
<//8 9
RegisterModel//9 F
>//F G
(//G H
data//H L
)//L M
;//M N
this00 
.00 
_session00 
.00 
	SetString00 '
(00' (
$str00( 3
,003 4
user005 9
!=00: <
null00= A
?00B C
user00D H
.00H I
Email00I N
:00O P
$str00Q S
)00S T
;00T U
if22 
(22 
user22 
!=22 
null22  
&&22! #
user22$ (
.22( )
RoleId22) /
==220 2
$num223 4
)224 5
{33 
return44 
RedirectToAction44 +
(44+ ,
$str44, 7
)447 8
;448 9
}55 
else66 
if66 
(66 
user66 
.66 
RoleId66 $
==66% '
$num66( )
)66) *
{77 
return88 
RedirectToAction88 +
(88+ ,
$str88, 3
,883 4
$str885 A
)88A B
;88B C
}99 
};; 

ModelState<< 
.<< 
AddModelError<< $
(<<$ %
string<<% +
.<<+ ,
Empty<<, 1
,<<1 2
$str<<3 A
)<<A B
;<<B C
return== 
View== 
(== 
result== 
)== 
;==  
}>> 	
}?? 
[@@ 
HttpGet@@ 
]@@ 
publicAA 

IActionResultAA 
RegisterAA !
(AA! "
)AA" #
{BB 
returnCC 
ViewCC 
(CC 
)CC 
;CC 
}DD 
[EE 
HttpPostEE 
]EE 
publicFF 

IActionResultFF 
RegisterFF !
(FF! "
RegisterModelFF" /
registerModelFF0 =
)FF= >
{GG 
registerModelHH 
.HH 
StatusHH 
=HH 
stringHH %
.HH% &
EmptyHH& +
;HH+ ,
varII 
baseurlII 
=II 
newII 
UriII 
(II 
$strII B
)IIB C
;IIC D
usingJJ 
(JJ 
varJJ 
clientJJ 
=JJ 
newJJ 

HttpClientJJ  *
(JJ* +
)JJ+ ,
)JJ, -
{KK 	
varLL 
postDataLL 
=LL 
clientLL !
.LL! "
PostAsJsonAsyncLL" 1
(LL1 2
baseurlLL2 9
+LL: ;
$strLL< I
,LLI J
registerModelLLK X
)LLX Y
;LLY Z
postDataMM 
.MM 
WaitMM 
(MM 
)MM 
;MM 
varNN 
resultNN 
=NN 
postDataNN !
.NN! "
ResultNN" (
;NN( )
stringOO 
dataOO 
=OO 
resultOO  
.OO  !
ContentOO! (
.OO( )
ReadAsStringAsyncOO) :
(OO: ;
)OO; <
.OO< =
ResultOO= C
;OOC D
ifPP 
(PP 
resultPP 
.PP 
IsSuccessStatusCodePP *
)PP* +
{QQ 
	MailClassRR 
mailRR 
=RR  
newRR! $
	MailClassRR% .
(RR. /
)RR/ 0
;RR0 1
mailSS 
.SS 
SendMailMethodSS #
(SS# $
registerModelSS$ 1
.SS1 2
EmailSS2 7
,SS7 8
$strSS9 R
)SSR S
;SSS T
returnTT 
RedirectToActionTT '
(TT' (
$strTT( /
)TT/ 0
;TT0 1
}UU 

ModelStateVV 
.VV 
AddModelErrorVV $
(VV$ %
stringVV% +
.VV+ ,
EmptyVV, 1
,VV1 2
$strVV3 A
)VVA B
;VVB C
returnWW 
ViewWW 
(WW 
resultWW 
)WW 
;WW  
}XX 	
}YY 
[[[ 
HttpGet[[ 
][[ 
public\\ 

IActionResult\\ 
	AdminPage\\ "
(\\" #
)\\# $
{]] 
List^^ 
<^^ 
RegisterModel^^ 
>^^ 
users^^ !
=^^" #
new^^$ '
List^^( ,
<^^, -
RegisterModel^^- :
>^^: ;
(^^; <
)^^< =
;^^= >
Uri__ 
baseuri__ 
=__ 
new__ 
Uri__ 
(__ 
$str__ B
)__B C
;__C D

HttpClient`` 
client`` 
=`` 
new`` 

HttpClient``  *
(``* +
)``+ ,
;``, -
clientaa 
.aa 
BaseAddressaa 
=aa 
baseuriaa $
;aa$ %
HttpResponseMessagebb 
responsebb $
=bb% &
clientbb' -
.bb- .
GetAsyncbb. 6
(bb6 7
baseuribb7 >
+bb? @
$strbbA G
)bbG H
.bbH I
ResultbbI O
;bbO P
ifcc 

(cc 
responsecc 
.cc 
IsSuccessStatusCodecc (
)cc( )
{dd 	
stringee 
dataee 
=ee 
responseee "
.ee" #
Contentee# *
.ee* +
ReadAsStringAsyncee+ <
(ee< =
)ee= >
.ee> ?
Resultee? E
;eeE F
usersff 
=ff 
JsonConvertff 
.ff  
DeserializeObjectff  1
<ff1 2
Listff2 6
<ff6 7
RegisterModelff7 D
>ffD E
>ffE F
(ffF G
dataffG K
)ffK L
;ffL M
}gg 	
returnhh 
Viewhh 
(hh 
usershh 
)hh 
;hh 
}ii 
[jj 
HttpPostjj 
]jj 
publickk 

IActionResultkk 
Approvedkk !
(kk! "
RegisterModelkk" /
registerModelkk0 =
)kk= >
{ll 
varmm 
baseurlmm 
=mm 
newmm 
Urimm 
(mm 
$strmm B
)mmB C
;mmC D
usingnn 
(nn 
varnn 
clientnn 
=nn 
newnn 

HttpClientnn  *
(nn* +
)nn+ ,
)nn, -
{oo 	
varpp 
postDatapp 
=pp 
clientpp !
.pp! "
PostAsJsonAsyncpp" 1
(pp1 2
baseurlpp2 9
+pp: ;
$strpp< I
,ppI J
registerModelppK X
)ppX Y
;ppY Z
postDataqq 
.qq 
Waitqq 
(qq 
)qq 
;qq 
varrr 
resultrr 
=rr 
postDatarr !
.rr! "
Resultrr" (
;rr( )
stringss 
datass 
=ss 
resultss  
.ss  !
Contentss! (
.ss( )
ReadAsStringAsyncss) :
(ss: ;
)ss; <
.ss< =
Resultss= C
;ssC D
ifuu 
(uu 
resultuu 
.uu 
IsSuccessStatusCodeuu *
)uu* +
{vv 
returnww 
RedirectToActionww '
(ww' (
$strww( /
)ww/ 0
;ww0 1
}xx 

ModelStateyy 
.yy 
AddModelErroryy $
(yy$ %
stringyy% +
.yy+ ,
Emptyyy, 1
,yy1 2
$stryy3 A
)yyA B
;yyB C
returnzz 
Viewzz 
(zz 
resultzz 
)zz 
;zz  
}{{ 	
}|| 
[}} 
HttpGet}} 
]}} 
public~~ 

IActionResult~~ 
EmailAvailable~~ '
(~~' (
string~~( .
email~~/ 4
)~~4 5
{ 
if
ÄÄ 

(
ÄÄ 
email
ÄÄ 
==
ÄÄ 
null
ÄÄ 
)
ÄÄ 
{
ÅÅ 	
return
ÇÇ 
Json
ÇÇ 
(
ÇÇ 
$str
ÇÇ )
)
ÇÇ) *
;
ÇÇ* +
}
ÉÉ 	
List
ÑÑ 
<
ÑÑ 
RegisterModel
ÑÑ 
>
ÑÑ 
users
ÑÑ !
=
ÑÑ" #
new
ÑÑ$ '
List
ÑÑ( ,
<
ÑÑ, -
RegisterModel
ÑÑ- :
>
ÑÑ: ;
(
ÑÑ; <
)
ÑÑ< =
;
ÑÑ= >
Uri
ÖÖ 
baseuri
ÖÖ 
=
ÖÖ 
new
ÖÖ 
Uri
ÖÖ 
(
ÖÖ 
$str
ÖÖ B
)
ÖÖB C
;
ÖÖC D

HttpClient
ÜÜ 
client
ÜÜ 
=
ÜÜ 
new
ÜÜ 

HttpClient
ÜÜ  *
(
ÜÜ* +
)
ÜÜ+ ,
;
ÜÜ, -
client
áá 
.
áá 
BaseAddress
áá 
=
áá 
baseuri
áá $
;
áá$ %!
HttpResponseMessage
àà 
response
àà $
=
àà% &
client
àà' -
.
àà- .
GetAsync
àà. 6
(
àà6 7
baseuri
àà7 >
+
àà? @
$str
ààA T
)
ààT U
.
ààU V
Result
ààV \
;
àà\ ]
if
ââ 

(
ââ 
response
ââ 
.
ââ !
IsSuccessStatusCode
ââ (
)
ââ( )
{
ää 	
string
ãã 
data
ãã 
=
ãã 
response
ãã "
.
ãã" #
Content
ãã# *
.
ãã* +
ReadAsStringAsync
ãã+ <
(
ãã< =
)
ãã= >
.
ãã> ?
Result
ãã? E
;
ããE F
users
åå 
=
åå 
JsonConvert
åå 
.
åå  
DeserializeObject
åå  1
<
åå1 2
List
åå2 6
<
åå6 7
RegisterModel
åå7 D
>
ååD E
>
ååE F
(
ååF G
data
ååG K
)
ååK L
;
ååL M
if
çç 
(
çç 
users
çç 
==
çç 
null
çç 
)
çç 
{
éé 
return
èè 
	NoContent
èè  
(
èè  !
)
èè! "
;
èè" #
}
êê 
foreach
ëë 
(
ëë 
var
ëë 
user
ëë 
in
ëë  
users
ëë! &
)
ëë& '
{
íí 
if
ìì 
(
ìì 
StringComparer
ìì "
.
ìì" #&
CurrentCultureIgnoreCase
ìì# ;
.
ìì; <
Equals
ìì< B
(
ììB C
user
ììC G
.
ììG H
Email
ììH M
,
ììM N
email
ììO T
)
ììT U
)
ììU V
{
îî 
return
ïï 
Json
ïï 
(
ïï  
$str
ïï  D
)
ïïD E
;
ïïE F
}
ññ 
}
óó 
return
òò 
Json
òò 
(
òò 
$str
òò 
)
òò 
;
òò 
}
ôô 	
return
õõ 
View
õõ 
(
õõ 
users
õõ 
)
õõ 
;
õõ 
}
ûû 
public
†† 

IActionResult
†† 
status
†† 
(
††  
)
††  !
{
°° 
return
¢¢ 
View
¢¢ 
(
¢¢ 
)
¢¢ 
;
¢¢ 
}
££ 
}§§ §
yC:\Users\Sai Kumar\Desktop\C# Trining\UniversityApplicationFinal\UniversityApplicationFinal\Controllers\HomeController.cs
	namespace 	&
UniversityApplicationFinal
 $
.$ %
Controllers% 0
{ 
public 

class 
HomeController 
:  !

Controller" ,
{ 
private		 
readonly		 
ILogger		  
<		  !
HomeController		! /
>		/ 0
_logger		1 8
;		8 9
public 
HomeController 
( 
ILogger %
<% &
HomeController& 4
>4 5
logger6 <
)< =
{ 	
_logger 
= 
logger 
; 
} 	
public 
IActionResult 
Index "
(" #
)# $
{ 	
return 
View 
( 
) 
; 
} 	
public 
IActionResult 
Privacy $
($ %
)% &
{ 	
return 
View 
( 
) 
; 
} 	
[ 	
ResponseCache	 
( 
Duration 
=  !
$num" #
,# $
Location% -
=. /!
ResponseCacheLocation0 E
.E F
NoneF J
,J K
NoStoreL S
=T U
trueV Z
)Z [
][ \
public 
IActionResult 
Error "
(" #
)# $
{ 	
return 
View 
( 
new 
ErrorViewModel *
{+ ,
	RequestId- 6
=7 8
Activity9 A
.A B
CurrentB I
?I J
.J K
IdK M
??N P
HttpContextQ \
.\ ]
TraceIdentifier] l
}m n
)n o
;o p
} 	
} 
}   êj
C:\Users\Sai Kumar\Desktop\C# Trining\UniversityApplicationFinal\UniversityApplicationFinal\Controllers\UniversityController.cs
	namespace 	&
UniversityApplicationFinal
 $
.$ %
Controllers% 0
{ 
public 

class  
UniversityController %
:& '

Controller( 2
{ 
Uri		 
baseuri		 
=		 
new		 
Uri		 
(		 
$str		 H
)		H I
;		I J

HttpClient

 
client

 
=

 
new

 

HttpClient

  *
(

* +
)

+ ,
;

, -
List 
< 
UniversityModel 
> 
universityModels .
=/ 0
new1 4
List5 9
<9 :
UniversityModel: I
>I J
(J K
)K L
;L M
public 
IActionResult 
Index "
(" #
)# $
{ 	
client 
. 
BaseAddress 
=  
baseuri! (
;( )
HttpResponseMessage 
response  (
=( )
client* 0
.0 1
GetAsync1 9
(9 :
baseuri: A
+A B
$strB H
)H I
.I J
ResultJ P
;P Q
if 
( 
response 
. 
IsSuccessStatusCode ,
), -
{ 
string 
data 
= 
response $
.$ %
Content% ,
., -
ReadAsStringAsync- >
(> ?
)? @
.@ A
ResultA G
;G H
universityModels  
=! "
JsonConvert# .
.. /
DeserializeObject/ @
<@ A
ListA E
<E F
UniversityModelF U
>U V
>V W
(W X
dataX \
)\ ]
;] ^
universityModels  
=! "
universityModels# 3
.3 4
OrderBy4 ;
(; <
x< =
=>> @
xA B
.B C
EstablishedYearC R
)R S
.S T
ThenByT Z
(Z [
x[ \
=>] _
x` a
.a b
UniversityNameb p
)p q
.q r
ToListr x
(x y
)y z
;z {
} 
return 
View 
( 
universityModels (
)( )
;) *
} 	
public 
IActionResult 
Create #
(# $
)$ %
{ 	
return 
View 
( 
) 
; 
} 	
public 
IActionResult 
Add  
(  !
UniversityModel! 0
universityModel1 @
)@ A
{ 	
using 
( 
var 
client 
= 
new  #

HttpClient$ .
(. /
)/ 0
)0 1
{   
var!! 
postData!! 
=!! 
client!! %
.!!% &
PostAsJsonAsync!!& 5
<!!5 6
UniversityModel!!6 E
>!!E F
(!!F G
baseuri!!G N
+!!O P
$str!!Q Z
,!!Z [
universityModel!!\ k
)!!k l
;!!l m
postData"" 
."" 
Wait"" 
("" 
)"" 
;""  
var## 
result## 
=## 
postData## %
.##% &
Result##& ,
;##, -
if$$ 
($$ 
result$$ 
.$$ 
IsSuccessStatusCode$$ .
)$$. /
{%% 
return&& 
RedirectToAction&& +
(&&+ ,
$str&&, 3
)&&3 4
;&&4 5
}'' 

ModelState(( 
.(( 
AddModelError(( (
(((( )
string(() /
.((/ 0
Empty((0 5
,((5 6
$str((7 E
)((E F
;((F G
return)) 
View)) 
()) 
result)) "
)))" #
;))# $
}** 
}++ 	
public,, 
IActionResult,, 
Edit,, !
(,,! "
int,," %
id,,& (
),,( )
{-- 	
client.. 
... 
BaseAddress.. 
=.. 
baseuri.. &
;..& '
HttpResponseMessage// 
response//  (
=//) *
client//+ 1
.//1 2
GetAsync//2 :
(//: ;
baseuri//; B
+//C D
$str//E K
)//K L
.//L M
Result//M S
;//S T
string00 
orginalData00 
=00  
response00! )
.00) *
Content00* 1
.001 2
ReadAsStringAsync002 C
(00C D
)00D E
.00E F
Result00F L
;00L M
universityModels11 
=11 
JsonConvert11 *
.11* +
DeserializeObject11+ <
<11< =
List11= A
<11A B
UniversityModel11B Q
>11Q R
>11R S
(11S T
orginalData11T _
)11_ `
;11` a
var22 
data22 
=22 
universityModels22 '
.22' (
Where22( -
(22- .
e22. /
=>22/ 1
e221 2
.222 3
Id223 5
==225 7
id227 9
)229 :
.22: ;
FirstOrDefault22; I
(22I J
)22J K
;22K L
return33 
View33 
(33 
data33 
)33 
;33 
}44 	
public55 
async55 
Task55 
<55 
IActionResult55 '
>55' (
Save55) -
(55- .
UniversityModel55. =
universityModel55> M
)55M N
{66 	
using77 
(77 
var77 
client77 
=77 
new77  #

HttpClient77$ .
(77. /
)77/ 0
)770 1
{88 
client99 
.99 
BaseAddress99 "
=99# $
baseuri99% ,
;99, -
var:: 
put:: 
=:: 
client::  
.::  !
PutAsJsonAsync::! /
<::/ 0
UniversityModel::0 ?
>::? @
(::@ A
baseuri::A H
+::H I
$"::I K
$str::K S
{::S T
universityModel::T c
.::c d
Id::d f
}::f g
"::g h
,::h i
universityModel::j y
)::y z
;::z {
put;; 
.;; 
Wait;; 
(;; 
);; 
;;; 
var<< 
result<< 
=<< 
put<<  
.<<  !
Result<<! '
;<<' (
if== 
(== 
result== 
.== 
IsSuccessStatusCode== .
)==. /
{>> 
return?? 
RedirectToAction?? +
(??+ ,
$str??, 3
)??3 4
;??4 5
}@@ 

ModelStateBB 
.BB 
AddModelErrorBB (
(BB( )
stringBB) /
.BB/ 0
EmptyBB0 5
,BB5 6
$strBB7 E
)BBE F
;BBF G
}CC 
returnDD 
ViewDD 
(DD 
universityModelDD '
)DD' (
;DD( )
}EE 	
publicGG 
IActionResultGG 
DetailsGG $
(GG$ %
intGG% (
idGG) +
)GG+ ,
{HH 	
clientII 
.II 
BaseAddressII 
=II  
baseuriII! (
;II( )
HttpResponseMessageJJ 
responseJJ  (
=JJ) *
clientJJ+ 1
.JJ1 2
GetAsyncJJ2 :
(JJ: ;
baseuriJJ; B
+JJC D
$strJJE K
)JJK L
.JJL M
ResultJJM S
;JJS T
stringKK 
orginalDataKK 
=KK  
responseKK! )
.KK) *
ContentKK* 1
.KK1 2
ReadAsStringAsyncKK2 C
(KKC D
)KKD E
.KKE F
ResultKKF L
;KKL M
universityModelsLL 
=LL 
JsonConvertLL *
.LL* +
DeserializeObjectLL+ <
<LL< =
ListLL= A
<LLA B
UniversityModelLLB Q
>LLQ R
>LLR S
(LLS T
orginalDataLLT _
)LL_ `
;LL` a
varMM 
dataMM 
=MM 
universityModelsMM '
.MM' (
WhereMM( -
(MM- .
eMM. /
=>MM0 2
eMM3 4
.MM4 5
IdMM5 7
==MM8 :
idMM; =
)MM= >
.MM> ?
FirstOrDefaultMM? M
(MMM N
)MMN O
;MMO P
returnNN 
ViewNN 
(NN 
dataNN 
)NN 
;NN 
}OO 	
publicPP 
asyncPP 
TaskPP 
<PP 
IActionResultPP '
>PP' (
DeletePP) /
(PP/ 0
intPP0 3
idPP4 6
)PP6 7
{QQ 	
usingRR 
(RR 
varRR 
clientRR 
=RR 
newRR  #

HttpClientRR$ .
(RR. /
)RR/ 0
)RR0 1
{SS 
clientTT 
.TT 
BaseAddressTT "
=TT# $
baseuriTT% ,
;TT, -
varUU 
deleteUU 
=UU 
clientUU #
.UU# $
DeleteAsyncUU$ /
(UU/ 0
baseuriUU0 7
+UU7 8
$"UU8 :
$strUU: B
{UUB C
idUUC E
}UUE F
"UUF G
)UUG H
;UUH I
deleteVV 
.VV 
WaitVV 
(VV 
)VV 
;VV 
varWW 
resultWW 
=WW 
deleteWW #
.WW# $
ResultWW$ *
;WW* +
ifXX 
(XX 
resultXX 
.XX 
IsSuccessStatusCodeXX .
)XX. /
{YY 
returnZZ 
RedirectToActionZZ +
(ZZ+ ,
$strZZ, 3
)ZZ3 4
;ZZ4 5
}[[ 
}\\ 

ModelState]] 
.]] 
AddModelError]] $
(]]$ %
string]]% +
.]]+ ,
Empty]], 1
,]]1 2
$str]]3 A
)]]A B
;]]B C
return^^ 
View^^ 
(^^ 
)^^ 
;^^ 
}__ 	
[`` 	
HttpGet``	 
]`` 
publicaa 
IActionResultaa 
UniversityAvailableaa 0
(aa0 1
stringaa1 7

universityaa8 B
)aaB C
{bb 	
ifcc 
(cc 

universitycc 
==cc 
nullcc "
)cc" #
{dd 
returnee 
Jsonee 
(ee 
$stree 2
)ee2 3
;ee3 4
}ff 
Listgg 
<gg 
UniversityModelgg  
>gg  !
universityModelsgg" 2
=gg3 4
newgg5 8
Listgg9 =
<gg= >
UniversityModelgg> M
>ggM N
(ggN O
)ggO P
;ggP Q
clienthh 
.hh 
BaseAddresshh 
=hh  
baseurihh! (
;hh( )
HttpResponseMessageii 
responseii  (
=ii) *
clientii+ 1
.ii1 2
GetAsyncii2 :
(ii: ;
baseuriii; B
+iiC D
$striiE K
)iiK L
.iiL M
ResultiiM S
;iiS T
ifjj 
(jj 
responsejj 
.jj 
IsSuccessStatusCodejj ,
)jj, -
{kk 
stringll 
datall 
=ll 
responsell &
.ll& '
Contentll' .
.ll. /
ReadAsStringAsyncll/ @
(ll@ A
)llA B
.llB C
ResultllC I
;llI J
universityModelsmm  
=mm! "
JsonConvertmm# .
.mm. /
DeserializeObjectmm/ @
<mm@ A
ListmmA E
<mmE F
UniversityModelmmF U
>mmU V
>mmV W
(mmW X
datammX \
)mm\ ]
;mm] ^
ifnn 
(nn 
universityModelsnn $
==nn% '
nullnn( ,
)nn, -
{oo 
returnpp 
	NoContentpp $
(pp$ %
)pp% &
;pp& '
}qq 
foreachrr 
(rr 
varrr 
userrr !
inrr" $
universityModelsrr% 5
)rr5 6
{ss 
iftt 
(tt 
StringComparertt &
.tt& '$
CurrentCultureIgnoreCasett' ?
.tt? @
Equalstt@ F
(ttF G
userttG K
.ttK L
UniversityNamettL Z
,ttZ [

universitytt\ f
)ttf g
)ttg h
{uu 
returnvv 
Jsonvv #
(vv# $
$strvv$ V
)vvV W
;vvW X
}ww 
}xx 
returnyy 
Jsonyy 
(yy 
$stryy 1
)yy1 2
;yy2 3
}zz 
return|| 
View|| 
(|| 
universityModels|| (
)||( )
;||) *
} 	
}
ÄÄ 
}ÇÇ ¸
|C:\Users\Sai Kumar\Desktop\C# Trining\UniversityApplicationFinal\UniversityApplicationFinal\Controllers\UserMvcController.cs
	namespace 	&
UniversityApplicationFinal
 $
.$ %
Controllers% 0
{ 
public 

class 
UserMvcController "
:# $

Controller% /
{ 
Uri 
baseuri 
= 
new 
Uri 
( 
$str B
)B C
;C D

HttpClient		 
client		 
=		 
new		 

HttpClient		  *
(		* +
)		+ ,
;		, -
private 
readonly 
ILogger  
<  !
AccountController! 2
>2 3
_logger4 ;
;; <
public 
UserMvcController  
(  !
ILogger! (
<( )
AccountController) :
>: ;
logger< B
)B C
{ 	
_logger 
= 
logger 
; 
} 	
public 
IActionResult 
Index "
(" #
)# $
{ 	
client 
. 
BaseAddress 
=  
baseuri! (
;( )
HttpResponseMessage 
response  (
=) *
client+ 1
.1 2
GetAsync2 :
(: ;
baseuri; B
+C D
$strE K
)K L
.L M
ResultM S
;S T
if 
( 
response 
. 
IsSuccessStatusCode ,
), -
{ 
string 
data 
= 
response &
.& '
Content' .
.. /
ReadAsStringAsync/ @
(@ A
)A B
.B C
ResultC I
;I J
var 
result 
= 
JsonConvert (
.( )
DeserializeObject) :
(: ;
data; ?
)? @
;@ A
} 
return 
View 
( 
$str 
)  
;  !
} 	
} 
}   ∑

xC:\Users\Sai Kumar\Desktop\C# Trining\UniversityApplicationFinal\UniversityApplicationFinal\Data\ApplicationDbContext.cs
	namespace 	&
UniversityApplicationFinal
 $
.$ %
Data% )
;) *
public 
class  
ApplicationDbContext !
:" #
IdentityDbContext$ 5
{ 
public		 
 
ApplicationDbContext		 
(		  
DbContextOptions		  0
<		0 1 
ApplicationDbContext		1 E
>		E F
options		G N
)		N O
:

 	
base


 
(

 
options

 
)

 
{ 
} 
public 

DbSet 
< &
UniversityApplicationFinal +
.+ ,
Models, 2
.2 3
UniversityModel3 B
>B C
?C D
UniversityModelE T
{U V
getW Z
;Z [
set\ _
;_ `
}a b
public 

DbSet 
< &
UniversityApplicationFinal +
.+ ,
Models, 2
.2 3
RegisterModel3 @
>@ A
?A B
RegisterModelC P
{Q R
getS V
;V W
setX [
;[ \
}] ^
} æ˝
ÜC:\Users\Sai Kumar\Desktop\C# Trining\UniversityApplicationFinal\UniversityApplicationFinal\Data\Migrations\20220828075721_initial1.cs
	namespace 	&
UniversityApplicationFinal
 $
.$ %
Data% )
.) *

Migrations* 4
{ 
public 

partial 
class 
initial1 !
:" #
	Migration$ -
{		 
	protected

 
override

 
void

 
Up

  "
(

" #
MigrationBuilder

# 3
migrationBuilder

4 D
)

D E
{ 	
migrationBuilder 
. 
CreateTable (
(( )
name 
: 
$str #
,# $
columns 
: 
table 
=> !
new" %
{ 
Id 
= 
table 
. 
Column %
<% &
string& ,
>, -
(- .
type. 2
:2 3
$str4 C
,C D
nullableE M
:M N
falseO T
)T U
,U V
Name 
= 
table  
.  !
Column! '
<' (
string( .
>. /
(/ 0
type0 4
:4 5
$str6 E
,E F
	maxLengthG P
:P Q
$numR U
,U V
nullableW _
:_ `
truea e
)e f
,f g
NormalizedName "
=# $
table% *
.* +
Column+ 1
<1 2
string2 8
>8 9
(9 :
type: >
:> ?
$str@ O
,O P
	maxLengthQ Z
:Z [
$num\ _
,_ `
nullablea i
:i j
truek o
)o p
,p q
ConcurrencyStamp $
=% &
table' ,
., -
Column- 3
<3 4
string4 :
>: ;
(; <
type< @
:@ A
$strB Q
,Q R
nullableS [
:[ \
true] a
)a b
} 
, 
constraints 
: 
table "
=># %
{ 
table 
. 

PrimaryKey $
($ %
$str% 5
,5 6
x7 8
=>9 ;
x< =
.= >
Id> @
)@ A
;A B
} 
) 
; 
migrationBuilder 
. 
CreateTable (
(( )
name 
: 
$str #
,# $
columns 
: 
table 
=> !
new" %
{ 
Id 
= 
table 
. 
Column %
<% &
string& ,
>, -
(- .
type. 2
:2 3
$str4 C
,C D
nullableE M
:M N
falseO T
)T U
,U V
UserName 
= 
table $
.$ %
Column% +
<+ ,
string, 2
>2 3
(3 4
type4 8
:8 9
$str: I
,I J
	maxLengthK T
:T U
$numV Y
,Y Z
nullable[ c
:c d
truee i
)i j
,j k
NormalizedUserName   &
=  ' (
table  ) .
.  . /
Column  / 5
<  5 6
string  6 <
>  < =
(  = >
type  > B
:  B C
$str  D S
,  S T
	maxLength  U ^
:  ^ _
$num  ` c
,  c d
nullable  e m
:  m n
true  o s
)  s t
,  t u
Email!! 
=!! 
table!! !
.!!! "
Column!!" (
<!!( )
string!!) /
>!!/ 0
(!!0 1
type!!1 5
:!!5 6
$str!!7 F
,!!F G
	maxLength!!H Q
:!!Q R
$num!!S V
,!!V W
nullable!!X `
:!!` a
true!!b f
)!!f g
,!!g h
NormalizedEmail"" #
=""$ %
table""& +
.""+ ,
Column"", 2
<""2 3
string""3 9
>""9 :
("": ;
type""; ?
:""? @
$str""A P
,""P Q
	maxLength""R [
:""[ \
$num""] `
,""` a
nullable""b j
:""j k
true""l p
)""p q
,""q r
EmailConfirmed## "
=### $
table##% *
.##* +
Column##+ 1
<##1 2
bool##2 6
>##6 7
(##7 8
type##8 <
:##< =
$str##> C
,##C D
nullable##E M
:##M N
false##O T
)##T U
,##U V
PasswordHash$$  
=$$! "
table$$# (
.$$( )
Column$$) /
<$$/ 0
string$$0 6
>$$6 7
($$7 8
type$$8 <
:$$< =
$str$$> M
,$$M N
nullable$$O W
:$$W X
true$$Y ]
)$$] ^
,$$^ _
SecurityStamp%% !
=%%" #
table%%$ )
.%%) *
Column%%* 0
<%%0 1
string%%1 7
>%%7 8
(%%8 9
type%%9 =
:%%= >
$str%%? N
,%%N O
nullable%%P X
:%%X Y
true%%Z ^
)%%^ _
,%%_ `
ConcurrencyStamp&& $
=&&% &
table&&' ,
.&&, -
Column&&- 3
<&&3 4
string&&4 :
>&&: ;
(&&; <
type&&< @
:&&@ A
$str&&B Q
,&&Q R
nullable&&S [
:&&[ \
true&&] a
)&&a b
,&&b c
PhoneNumber'' 
=''  !
table''" '
.''' (
Column''( .
<''. /
string''/ 5
>''5 6
(''6 7
type''7 ;
:''; <
$str''= L
,''L M
nullable''N V
:''V W
true''X \
)''\ ]
,''] ^ 
PhoneNumberConfirmed(( (
=(() *
table((+ 0
.((0 1
Column((1 7
<((7 8
bool((8 <
>((< =
(((= >
type((> B
:((B C
$str((D I
,((I J
nullable((K S
:((S T
false((U Z
)((Z [
,(([ \
TwoFactorEnabled)) $
=))% &
table))' ,
.)), -
Column))- 3
<))3 4
bool))4 8
>))8 9
())9 :
type)): >
:))> ?
$str))@ E
,))E F
nullable))G O
:))O P
false))Q V
)))V W
,))W X

LockoutEnd** 
=**  
table**! &
.**& '
Column**' -
<**- .
DateTimeOffset**. <
>**< =
(**= >
type**> B
:**B C
$str**D T
,**T U
nullable**V ^
:**^ _
true**` d
)**d e
,**e f
LockoutEnabled++ "
=++# $
table++% *
.++* +
Column+++ 1
<++1 2
bool++2 6
>++6 7
(++7 8
type++8 <
:++< =
$str++> C
,++C D
nullable++E M
:++M N
false++O T
)++T U
,++U V
AccessFailedCount,, %
=,,& '
table,,( -
.,,- .
Column,,. 4
<,,4 5
int,,5 8
>,,8 9
(,,9 :
type,,: >
:,,> ?
$str,,@ E
,,,E F
nullable,,G O
:,,O P
false,,Q V
),,V W
}-- 
,-- 
constraints.. 
:.. 
table.. "
=>..# %
{// 
table00 
.00 

PrimaryKey00 $
(00$ %
$str00% 5
,005 6
x007 8
=>009 ;
x00< =
.00= >
Id00> @
)00@ A
;00A B
}11 
)11 
;11 
migrationBuilder33 
.33 
CreateTable33 (
(33( )
name44 
:44 
$str44 %
,44% &
columns55 
:55 
table55 
=>55 !
new55" %
{66 
Id77 
=77 
table77 
.77 
Column77 %
<77% &
int77& )
>77) *
(77* +
type77+ /
:77/ 0
$str771 6
,776 7
nullable778 @
:77@ A
false77B G
)77G H
.88 

Annotation88 #
(88# $
$str88$ 8
,888 9
$str88: @
)88@ A
,88A B
Email99 
=99 
table99 !
.99! "
Column99" (
<99( )
string99) /
>99/ 0
(990 1
type991 5
:995 6
$str997 E
,99E F
	maxLength99G P
:99P Q
$num99R T
,99T U
nullable99V ^
:99^ _
false99` e
)99e f
,99f g
PanNo:: 
=:: 
table:: !
.::! "
Column::" (
<::( )
string::) /
>::/ 0
(::0 1
type::1 5
:::5 6
$str::7 F
,::F G
nullable::H P
:::P Q
false::R W
)::W X
,::X Y
Password;; 
=;; 
table;; $
.;;$ %
Column;;% +
<;;+ ,
string;;, 2
>;;2 3
(;;3 4
type;;4 8
:;;8 9
$str;;: H
,;;H I
	maxLength;;J S
:;;S T
$num;;U W
,;;W X
nullable;;Y a
:;;a b
false;;c h
);;h i
,;;i j
ConfirmPassword<< #
=<<$ %
table<<& +
.<<+ ,
Column<<, 2
<<<2 3
string<<3 9
><<9 :
(<<: ;
type<<; ?
:<<? @
$str<<A O
,<<O P
	maxLength<<Q Z
:<<Z [
$num<<\ ^
,<<^ _
nullable<<` h
:<<h i
false<<j o
)<<o p
,<<p q

IsApproved== 
===  
table==! &
.==& '
Column==' -
<==- .
bool==. 2
>==2 3
(==3 4
type==4 8
:==8 9
$str==: ?
,==? @
nullable==A I
:==I J
false==K P
)==P Q
,==Q R
Status>> 
=>> 
table>> "
.>>" #
Column>># )
<>>) *
string>>* 0
>>>0 1
(>>1 2
type>>2 6
:>>6 7
$str>>8 G
,>>G H
nullable>>I Q
:>>Q R
false>>S X
)>>X Y
,>>Y Z
RoleId?? 
=?? 
table?? "
.??" #
Column??# )
<??) *
int??* -
>??- .
(??. /
type??/ 3
:??3 4
$str??5 :
,??: ;
nullable??< D
:??D E
false??F K
)??K L
}@@ 
,@@ 
constraintsAA 
:AA 
tableAA "
=>AA# %
{BB 
tableCC 
.CC 

PrimaryKeyCC $
(CC$ %
$strCC% 7
,CC7 8
xCC9 :
=>CC; =
xCC> ?
.CC? @
IdCC@ B
)CCB C
;CCC D
}DD 
)DD 
;DD 
migrationBuilderFF 
.FF 
CreateTableFF (
(FF( )
nameGG 
:GG 
$strGG '
,GG' (
columnsHH 
:HH 
tableHH 
=>HH !
newHH" %
{II 
IdJJ 
=JJ 
tableJJ 
.JJ 
ColumnJJ %
<JJ% &
intJJ& )
>JJ) *
(JJ* +
typeJJ+ /
:JJ/ 0
$strJJ1 6
,JJ6 7
nullableJJ8 @
:JJ@ A
falseJJB G
)JJG H
.KK 

AnnotationKK #
(KK# $
$strKK$ 8
,KK8 9
$strKK: @
)KK@ A
,KKA B
UniversityNameLL "
=LL# $
tableLL% *
.LL* +
ColumnLL+ 1
<LL1 2
stringLL2 8
>LL8 9
(LL9 :
typeLL: >
:LL> ?
$strLL@ N
,LLN O
	maxLengthLLP Y
:LLY Z
$numLL[ ]
,LL] ^
nullableLL_ g
:LLg h
falseLLi n
)LLn o
,LLo p
LocationMM 
=MM 
tableMM $
.MM$ %
ColumnMM% +
<MM+ ,
stringMM, 2
>MM2 3
(MM3 4
typeMM4 8
:MM8 9
$strMM: H
,MMH I
	maxLengthMMJ S
:MMS T
$numMMU W
,MMW X
nullableMMY a
:MMa b
falseMMc h
)MMh i
,MMi j
AffiliatedUnderNN #
=NN$ %
tableNN& +
.NN+ ,
ColumnNN, 2
<NN2 3
stringNN3 9
>NN9 :
(NN: ;
typeNN; ?
:NN? @
$strNNA O
,NNO P
	maxLengthNNQ Z
:NNZ [
$numNN\ ^
,NN^ _
nullableNN` h
:NNh i
falseNNj o
)NNo p
,NNp q
EstablishedYearOO #
=OO$ %
tableOO& +
.OO+ ,
ColumnOO, 2
<OO2 3
intOO3 6
>OO6 7
(OO7 8
typeOO8 <
:OO< =
$strOO> C
,OOC D
nullableOOE M
:OOM N
falseOOO T
)OOT U
}PP 
,PP 
constraintsQQ 
:QQ 
tableQQ "
=>QQ# %
{RR 
tableSS 
.SS 

PrimaryKeySS $
(SS$ %
$strSS% 9
,SS9 :
xSS; <
=>SS= ?
xSS@ A
.SSA B
IdSSB D
)SSD E
;SSE F
}TT 
)TT 
;TT 
migrationBuilderVV 
.VV 
CreateTableVV (
(VV( )
nameWW 
:WW 
$strWW (
,WW( )
columnsXX 
:XX 
tableXX 
=>XX !
newXX" %
{YY 
IdZZ 
=ZZ 
tableZZ 
.ZZ 
ColumnZZ %
<ZZ% &
intZZ& )
>ZZ) *
(ZZ* +
typeZZ+ /
:ZZ/ 0
$strZZ1 6
,ZZ6 7
nullableZZ8 @
:ZZ@ A
falseZZB G
)ZZG H
.[[ 

Annotation[[ #
([[# $
$str[[$ 8
,[[8 9
$str[[: @
)[[@ A
,[[A B
RoleId\\ 
=\\ 
table\\ "
.\\" #
Column\\# )
<\\) *
string\\* 0
>\\0 1
(\\1 2
type\\2 6
:\\6 7
$str\\8 G
,\\G H
nullable\\I Q
:\\Q R
false\\S X
)\\X Y
,\\Y Z
	ClaimType]] 
=]] 
table]]  %
.]]% &
Column]]& ,
<]], -
string]]- 3
>]]3 4
(]]4 5
type]]5 9
:]]9 :
$str]]; J
,]]J K
nullable]]L T
:]]T U
true]]V Z
)]]Z [
,]][ \

ClaimValue^^ 
=^^  
table^^! &
.^^& '
Column^^' -
<^^- .
string^^. 4
>^^4 5
(^^5 6
type^^6 :
:^^: ;
$str^^< K
,^^K L
nullable^^M U
:^^U V
true^^W [
)^^[ \
}__ 
,__ 
constraints`` 
:`` 
table`` "
=>``# %
{aa 
tablebb 
.bb 

PrimaryKeybb $
(bb$ %
$strbb% :
,bb: ;
xbb< =
=>bb> @
xbbA B
.bbB C
IdbbC E
)bbE F
;bbF G
tablecc 
.cc 

ForeignKeycc $
(cc$ %
namedd 
:dd 
$strdd F
,ddF G
columnee 
:ee 
xee  !
=>ee" $
xee% &
.ee& '
RoleIdee' -
,ee- .
principalTableff &
:ff& '
$strff( 5
,ff5 6
principalColumngg '
:gg' (
$strgg) -
,gg- .
onDeletehh  
:hh  !
ReferentialActionhh" 3
.hh3 4
Cascadehh4 ;
)hh; <
;hh< =
}ii 
)ii 
;ii 
migrationBuilderkk 
.kk 
CreateTablekk (
(kk( )
namell 
:ll 
$strll (
,ll( )
columnsmm 
:mm 
tablemm 
=>mm !
newmm" %
{nn 
Idoo 
=oo 
tableoo 
.oo 
Columnoo %
<oo% &
intoo& )
>oo) *
(oo* +
typeoo+ /
:oo/ 0
$stroo1 6
,oo6 7
nullableoo8 @
:oo@ A
falseooB G
)ooG H
.pp 

Annotationpp #
(pp# $
$strpp$ 8
,pp8 9
$strpp: @
)pp@ A
,ppA B
UserIdqq 
=qq 
tableqq "
.qq" #
Columnqq# )
<qq) *
stringqq* 0
>qq0 1
(qq1 2
typeqq2 6
:qq6 7
$strqq8 G
,qqG H
nullableqqI Q
:qqQ R
falseqqS X
)qqX Y
,qqY Z
	ClaimTyperr 
=rr 
tablerr  %
.rr% &
Columnrr& ,
<rr, -
stringrr- 3
>rr3 4
(rr4 5
typerr5 9
:rr9 :
$strrr; J
,rrJ K
nullablerrL T
:rrT U
truerrV Z
)rrZ [
,rr[ \

ClaimValuess 
=ss  
tabless! &
.ss& '
Columnss' -
<ss- .
stringss. 4
>ss4 5
(ss5 6
typess6 :
:ss: ;
$strss< K
,ssK L
nullablessM U
:ssU V
truessW [
)ss[ \
}tt 
,tt 
constraintsuu 
:uu 
tableuu "
=>uu# %
{vv 
tableww 
.ww 

PrimaryKeyww $
(ww$ %
$strww% :
,ww: ;
xww< =
=>ww> @
xwwA B
.wwB C
IdwwC E
)wwE F
;wwF G
tablexx 
.xx 

ForeignKeyxx $
(xx$ %
nameyy 
:yy 
$stryy F
,yyF G
columnzz 
:zz 
xzz  !
=>zz" $
xzz% &
.zz& '
UserIdzz' -
,zz- .
principalTable{{ &
:{{& '
$str{{( 5
,{{5 6
principalColumn|| '
:||' (
$str||) -
,||- .
onDelete}}  
:}}  !
ReferentialAction}}" 3
.}}3 4
Cascade}}4 ;
)}}; <
;}}< =
}~~ 
)~~ 
;~~ 
migrationBuilder
ÄÄ 
.
ÄÄ 
CreateTable
ÄÄ (
(
ÄÄ( )
name
ÅÅ 
:
ÅÅ 
$str
ÅÅ (
,
ÅÅ( )
columns
ÇÇ 
:
ÇÇ 
table
ÇÇ 
=>
ÇÇ !
new
ÇÇ" %
{
ÉÉ 
LoginProvider
ÑÑ !
=
ÑÑ" #
table
ÑÑ$ )
.
ÑÑ) *
Column
ÑÑ* 0
<
ÑÑ0 1
string
ÑÑ1 7
>
ÑÑ7 8
(
ÑÑ8 9
type
ÑÑ9 =
:
ÑÑ= >
$str
ÑÑ? N
,
ÑÑN O
	maxLength
ÑÑP Y
:
ÑÑY Z
$num
ÑÑ[ ^
,
ÑÑ^ _
nullable
ÑÑ` h
:
ÑÑh i
false
ÑÑj o
)
ÑÑo p
,
ÑÑp q
ProviderKey
ÖÖ 
=
ÖÖ  !
table
ÖÖ" '
.
ÖÖ' (
Column
ÖÖ( .
<
ÖÖ. /
string
ÖÖ/ 5
>
ÖÖ5 6
(
ÖÖ6 7
type
ÖÖ7 ;
:
ÖÖ; <
$str
ÖÖ= L
,
ÖÖL M
	maxLength
ÖÖN W
:
ÖÖW X
$num
ÖÖY \
,
ÖÖ\ ]
nullable
ÖÖ^ f
:
ÖÖf g
false
ÖÖh m
)
ÖÖm n
,
ÖÖn o!
ProviderDisplayName
ÜÜ '
=
ÜÜ( )
table
ÜÜ* /
.
ÜÜ/ 0
Column
ÜÜ0 6
<
ÜÜ6 7
string
ÜÜ7 =
>
ÜÜ= >
(
ÜÜ> ?
type
ÜÜ? C
:
ÜÜC D
$str
ÜÜE T
,
ÜÜT U
nullable
ÜÜV ^
:
ÜÜ^ _
true
ÜÜ` d
)
ÜÜd e
,
ÜÜe f
UserId
áá 
=
áá 
table
áá "
.
áá" #
Column
áá# )
<
áá) *
string
áá* 0
>
áá0 1
(
áá1 2
type
áá2 6
:
áá6 7
$str
áá8 G
,
ááG H
nullable
ááI Q
:
ááQ R
false
ááS X
)
ááX Y
}
àà 
,
àà 
constraints
ââ 
:
ââ 
table
ââ "
=>
ââ# %
{
ää 
table
ãã 
.
ãã 

PrimaryKey
ãã $
(
ãã$ %
$str
ãã% :
,
ãã: ;
x
ãã< =
=>
ãã> @
new
ããA D
{
ããE F
x
ããG H
.
ããH I
LoginProvider
ããI V
,
ããV W
x
ããX Y
.
ããY Z
ProviderKey
ããZ e
}
ããf g
)
ããg h
;
ããh i
table
åå 
.
åå 

ForeignKey
åå $
(
åå$ %
name
çç 
:
çç 
$str
çç F
,
ççF G
column
éé 
:
éé 
x
éé  !
=>
éé" $
x
éé% &
.
éé& '
UserId
éé' -
,
éé- .
principalTable
èè &
:
èè& '
$str
èè( 5
,
èè5 6
principalColumn
êê '
:
êê' (
$str
êê) -
,
êê- .
onDelete
ëë  
:
ëë  !
ReferentialAction
ëë" 3
.
ëë3 4
Cascade
ëë4 ;
)
ëë; <
;
ëë< =
}
íí 
)
íí 
;
íí 
migrationBuilder
îî 
.
îî 
CreateTable
îî (
(
îî( )
name
ïï 
:
ïï 
$str
ïï '
,
ïï' (
columns
ññ 
:
ññ 
table
ññ 
=>
ññ !
new
ññ" %
{
óó 
UserId
òò 
=
òò 
table
òò "
.
òò" #
Column
òò# )
<
òò) *
string
òò* 0
>
òò0 1
(
òò1 2
type
òò2 6
:
òò6 7
$str
òò8 G
,
òòG H
nullable
òòI Q
:
òòQ R
false
òòS X
)
òòX Y
,
òòY Z
RoleId
ôô 
=
ôô 
table
ôô "
.
ôô" #
Column
ôô# )
<
ôô) *
string
ôô* 0
>
ôô0 1
(
ôô1 2
type
ôô2 6
:
ôô6 7
$str
ôô8 G
,
ôôG H
nullable
ôôI Q
:
ôôQ R
false
ôôS X
)
ôôX Y
}
öö 
,
öö 
constraints
õõ 
:
õõ 
table
õõ "
=>
õõ# %
{
úú 
table
ùù 
.
ùù 

PrimaryKey
ùù $
(
ùù$ %
$str
ùù% 9
,
ùù9 :
x
ùù; <
=>
ùù= ?
new
ùù@ C
{
ùùD E
x
ùùF G
.
ùùG H
UserId
ùùH N
,
ùùN O
x
ùùP Q
.
ùùQ R
RoleId
ùùR X
}
ùùY Z
)
ùùZ [
;
ùù[ \
table
ûû 
.
ûû 

ForeignKey
ûû $
(
ûû$ %
name
üü 
:
üü 
$str
üü E
,
üüE F
column
†† 
:
†† 
x
††  !
=>
††" $
x
††% &
.
††& '
RoleId
††' -
,
††- .
principalTable
°° &
:
°°& '
$str
°°( 5
,
°°5 6
principalColumn
¢¢ '
:
¢¢' (
$str
¢¢) -
,
¢¢- .
onDelete
££  
:
££  !
ReferentialAction
££" 3
.
££3 4
Cascade
££4 ;
)
££; <
;
££< =
table
§§ 
.
§§ 

ForeignKey
§§ $
(
§§$ %
name
•• 
:
•• 
$str
•• E
,
••E F
column
¶¶ 
:
¶¶ 
x
¶¶  !
=>
¶¶" $
x
¶¶% &
.
¶¶& '
UserId
¶¶' -
,
¶¶- .
principalTable
ßß &
:
ßß& '
$str
ßß( 5
,
ßß5 6
principalColumn
®® '
:
®®' (
$str
®®) -
,
®®- .
onDelete
©©  
:
©©  !
ReferentialAction
©©" 3
.
©©3 4
Cascade
©©4 ;
)
©©; <
;
©©< =
}
™™ 
)
™™ 
;
™™ 
migrationBuilder
¨¨ 
.
¨¨ 
CreateTable
¨¨ (
(
¨¨( )
name
≠≠ 
:
≠≠ 
$str
≠≠ (
,
≠≠( )
columns
ÆÆ 
:
ÆÆ 
table
ÆÆ 
=>
ÆÆ !
new
ÆÆ" %
{
ØØ 
UserId
∞∞ 
=
∞∞ 
table
∞∞ "
.
∞∞" #
Column
∞∞# )
<
∞∞) *
string
∞∞* 0
>
∞∞0 1
(
∞∞1 2
type
∞∞2 6
:
∞∞6 7
$str
∞∞8 G
,
∞∞G H
nullable
∞∞I Q
:
∞∞Q R
false
∞∞S X
)
∞∞X Y
,
∞∞Y Z
LoginProvider
±± !
=
±±" #
table
±±$ )
.
±±) *
Column
±±* 0
<
±±0 1
string
±±1 7
>
±±7 8
(
±±8 9
type
±±9 =
:
±±= >
$str
±±? N
,
±±N O
	maxLength
±±P Y
:
±±Y Z
$num
±±[ ^
,
±±^ _
nullable
±±` h
:
±±h i
false
±±j o
)
±±o p
,
±±p q
Name
≤≤ 
=
≤≤ 
table
≤≤  
.
≤≤  !
Column
≤≤! '
<
≤≤' (
string
≤≤( .
>
≤≤. /
(
≤≤/ 0
type
≤≤0 4
:
≤≤4 5
$str
≤≤6 E
,
≤≤E F
	maxLength
≤≤G P
:
≤≤P Q
$num
≤≤R U
,
≤≤U V
nullable
≤≤W _
:
≤≤_ `
false
≤≤a f
)
≤≤f g
,
≤≤g h
Value
≥≥ 
=
≥≥ 
table
≥≥ !
.
≥≥! "
Column
≥≥" (
<
≥≥( )
string
≥≥) /
>
≥≥/ 0
(
≥≥0 1
type
≥≥1 5
:
≥≥5 6
$str
≥≥7 F
,
≥≥F G
nullable
≥≥H P
:
≥≥P Q
true
≥≥R V
)
≥≥V W
}
¥¥ 
,
¥¥ 
constraints
µµ 
:
µµ 
table
µµ "
=>
µµ# %
{
∂∂ 
table
∑∑ 
.
∑∑ 

PrimaryKey
∑∑ $
(
∑∑$ %
$str
∑∑% :
,
∑∑: ;
x
∑∑< =
=>
∑∑> @
new
∑∑A D
{
∑∑E F
x
∑∑G H
.
∑∑H I
UserId
∑∑I O
,
∑∑O P
x
∑∑Q R
.
∑∑R S
LoginProvider
∑∑S `
,
∑∑` a
x
∑∑b c
.
∑∑c d
Name
∑∑d h
}
∑∑i j
)
∑∑j k
;
∑∑k l
table
∏∏ 
.
∏∏ 

ForeignKey
∏∏ $
(
∏∏$ %
name
ππ 
:
ππ 
$str
ππ F
,
ππF G
column
∫∫ 
:
∫∫ 
x
∫∫  !
=>
∫∫" $
x
∫∫% &
.
∫∫& '
UserId
∫∫' -
,
∫∫- .
principalTable
ªª &
:
ªª& '
$str
ªª( 5
,
ªª5 6
principalColumn
ºº '
:
ºº' (
$str
ºº) -
,
ºº- .
onDelete
ΩΩ  
:
ΩΩ  !
ReferentialAction
ΩΩ" 3
.
ΩΩ3 4
Cascade
ΩΩ4 ;
)
ΩΩ; <
;
ΩΩ< =
}
ææ 
)
ææ 
;
ææ 
migrationBuilder
¿¿ 
.
¿¿ 
CreateIndex
¿¿ (
(
¿¿( )
name
¡¡ 
:
¡¡ 
$str
¡¡ 2
,
¡¡2 3
table
¬¬ 
:
¬¬ 
$str
¬¬ )
,
¬¬) *
column
√√ 
:
√√ 
$str
√√  
)
√√  !
;
√√! "
migrationBuilder
≈≈ 
.
≈≈ 
CreateIndex
≈≈ (
(
≈≈( )
name
∆∆ 
:
∆∆ 
$str
∆∆ %
,
∆∆% &
table
«« 
:
«« 
$str
«« $
,
««$ %
column
»» 
:
»» 
$str
»» (
,
»»( )
unique
…… 
:
…… 
true
…… 
,
…… 
filter
   
:
   
$str
   6
)
  6 7
;
  7 8
migrationBuilder
ÃÃ 
.
ÃÃ 
CreateIndex
ÃÃ (
(
ÃÃ( )
name
ÕÕ 
:
ÕÕ 
$str
ÕÕ 2
,
ÕÕ2 3
table
ŒŒ 
:
ŒŒ 
$str
ŒŒ )
,
ŒŒ) *
column
œœ 
:
œœ 
$str
œœ  
)
œœ  !
;
œœ! "
migrationBuilder
—— 
.
—— 
CreateIndex
—— (
(
——( )
name
““ 
:
““ 
$str
““ 2
,
““2 3
table
”” 
:
”” 
$str
”” )
,
””) *
column
‘‘ 
:
‘‘ 
$str
‘‘  
)
‘‘  !
;
‘‘! "
migrationBuilder
÷÷ 
.
÷÷ 
CreateIndex
÷÷ (
(
÷÷( )
name
◊◊ 
:
◊◊ 
$str
◊◊ 1
,
◊◊1 2
table
ÿÿ 
:
ÿÿ 
$str
ÿÿ (
,
ÿÿ( )
column
ŸŸ 
:
ŸŸ 
$str
ŸŸ  
)
ŸŸ  !
;
ŸŸ! "
migrationBuilder
€€ 
.
€€ 
CreateIndex
€€ (
(
€€( )
name
‹‹ 
:
‹‹ 
$str
‹‹ "
,
‹‹" #
table
›› 
:
›› 
$str
›› $
,
››$ %
column
ﬁﬁ 
:
ﬁﬁ 
$str
ﬁﬁ )
)
ﬁﬁ) *
;
ﬁﬁ* +
migrationBuilder
‡‡ 
.
‡‡ 
CreateIndex
‡‡ (
(
‡‡( )
name
·· 
:
·· 
$str
·· %
,
··% &
table
‚‚ 
:
‚‚ 
$str
‚‚ $
,
‚‚$ %
column
„„ 
:
„„ 
$str
„„ ,
,
„„, -
unique
‰‰ 
:
‰‰ 
true
‰‰ 
,
‰‰ 
filter
ÂÂ 
:
ÂÂ 
$str
ÂÂ :
)
ÂÂ: ;
;
ÂÂ; <
}
ÊÊ 	
	protected
ËË 
override
ËË 
void
ËË 
Down
ËË  $
(
ËË$ %
MigrationBuilder
ËË% 5
migrationBuilder
ËË6 F
)
ËËF G
{
ÈÈ 	
migrationBuilder
ÍÍ 
.
ÍÍ 
	DropTable
ÍÍ &
(
ÍÍ& '
name
ÎÎ 
:
ÎÎ 
$str
ÎÎ (
)
ÎÎ( )
;
ÎÎ) *
migrationBuilder
ÌÌ 
.
ÌÌ 
	DropTable
ÌÌ &
(
ÌÌ& '
name
ÓÓ 
:
ÓÓ 
$str
ÓÓ (
)
ÓÓ( )
;
ÓÓ) *
migrationBuilder
 
.
 
	DropTable
 &
(
& '
name
ÒÒ 
:
ÒÒ 
$str
ÒÒ (
)
ÒÒ( )
;
ÒÒ) *
migrationBuilder
ÛÛ 
.
ÛÛ 
	DropTable
ÛÛ &
(
ÛÛ& '
name
ÙÙ 
:
ÙÙ 
$str
ÙÙ '
)
ÙÙ' (
;
ÙÙ( )
migrationBuilder
ˆˆ 
.
ˆˆ 
	DropTable
ˆˆ &
(
ˆˆ& '
name
˜˜ 
:
˜˜ 
$str
˜˜ (
)
˜˜( )
;
˜˜) *
migrationBuilder
˘˘ 
.
˘˘ 
	DropTable
˘˘ &
(
˘˘& '
name
˙˙ 
:
˙˙ 
$str
˙˙ %
)
˙˙% &
;
˙˙& '
migrationBuilder
¸¸ 
.
¸¸ 
	DropTable
¸¸ &
(
¸¸& '
name
˝˝ 
:
˝˝ 
$str
˝˝ '
)
˝˝' (
;
˝˝( )
migrationBuilder
ˇˇ 
.
ˇˇ 
	DropTable
ˇˇ &
(
ˇˇ& '
name
ÄÄ 
:
ÄÄ 
$str
ÄÄ #
)
ÄÄ# $
;
ÄÄ$ %
migrationBuilder
ÇÇ 
.
ÇÇ 
	DropTable
ÇÇ &
(
ÇÇ& '
name
ÉÉ 
:
ÉÉ 
$str
ÉÉ #
)
ÉÉ# $
;
ÉÉ$ %
}
ÑÑ 	
}
ÖÖ 
}ÜÜ ∑
qC:\Users\Sai Kumar\Desktop\C# Trining\UniversityApplicationFinal\UniversityApplicationFinal\MailSend\MailClass.cs
	namespace 	&
UniversityApplicationFinal
 $
.$ %
MailSend% -
{ 
public 

class 
	MailClass 
{		 
public

 
void

 
SendMailMethod

 "
(

" #
string

# )
recieverMail

* 6
,

6 7
string

8 >
url

? B
)

B C
{ 	
MimeMessage 
message 
=  !
new" %
MimeMessage& 1
(1 2
)2 3
;3 4
message 
. 
From 
. 
Add 
( 
new  
MailboxAddress! /
(/ 0
$str0 I
,I J
$strK e
)e f
)f g
;g h
message 
. 
To 
. 
Add 
( 
MailboxAddress )
.) *
Parse* /
(/ 0
recieverMail0 <
)< =
)= >
;> ?
message 
. 
Subject 
= 
$str -
;- .
message 
. 
Body 
= 
new 
TextPart '
(' (
$str( .
). /
{ 
Text 
= 
$" 
$str !
{! "
recieverMail" .
}. /
$str/ h
{h i
urli l
}l m
$strm {
"{ |
,| }
} 
; 
string 
email 
= 
$str 5
;5 6
string 
password 
= 
$str )
;) *

SmtpClient 

smtpClient !
=" #
new$ '

SmtpClient( 2
(2 3
)3 4
;4 5
try 
{ 
Console 
. 
	WriteLine !
(! "
$"" $
$str$ 2
{2 3
recieverMail3 ?
}? @
$str@ [
"[ \
)\ ]
;] ^
Console   
.   
	WriteLine   !
(  ! "
$"  " $
$str  $ f
{  f g
email  g l
}  l m
$str  m n
"  n o
)  o p
;  p q
}!! 
catch"" 
("" 
	Exception"" 
ex"" 
)""  
{## 
Console$$ 
.$$ 
	WriteLine$$ !
($$! "
ex$$" $
.$$$ %
Message$$% ,
)$$, -
;$$- .
}%% 
finally&& 
{'' 

smtpClient)) 
.)) 
Dispose)) "
())" #
)))# $
;))$ %
}** 
}++ 	
}-- 
}.. ﬂ
tC:\Users\Sai Kumar\Desktop\C# Trining\UniversityApplicationFinal\UniversityApplicationFinal\Models\ErrorViewModel.cs
	namespace 	&
UniversityApplicationFinal
 $
.$ %
Models% +
{ 
public 

class 
ErrorViewModel 
{ 
public 
string 
? 
	RequestId  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
bool 
ShowRequestId !
=>" $
!% &
string& ,
., -
IsNullOrEmpty- :
(: ;
	RequestId; D
)D E
;E F
} 
}		 ˛
pC:\Users\Sai Kumar\Desktop\C# Trining\UniversityApplicationFinal\UniversityApplicationFinal\Models\LoginModel.cs
	namespace 	&
UniversityApplicationFinal
 $
.$ %
Models% +
{ 
public 

class 

LoginModel 
{ 
public 
string 
Email 
{ 
get !
;! "
set# &
;& '
}( )
public

 
string

 
Password

 
{

  
get

! $
;

$ %
set

& )
;

) *
}

+ ,
} 
} æ
sC:\Users\Sai Kumar\Desktop\C# Trining\UniversityApplicationFinal\UniversityApplicationFinal\Models\RegisterModel.cs
	namespace 	&
UniversityApplicationFinal
 $
.$ %
Models% +
{ 
public 

class 
RegisterModel 
{ 
public 
int 
Id 
{ 
get 
; 
set  
;  !
}" #
[ 	
Required	 
] 
[		 	
	MaxLength			 
(		 
$num		 
,		 
ErrorMessage		 #
=		# $
$str		$ 9
)		9 :
]		: ;
public

 
string

 
Email

 
{

 
get

 !
;

! "
set

# &
;

& '
}

( )
[ 	
Required	 
] 
public 
string 
PanNo 
{ 
get !
;! "
set# &
;& '
}( )
[ 	
Required	 
] 
[ 	
	MaxLength	 
( 
$num 
) 
, 
	MinLength !
(! "
$num" #
,# $
ErrorMessage% 1
=2 3
$str4 W
)W X
]X Y
public 
string 
Password 
{  
get! $
;$ %
set& )
;) *
}+ ,
[ 	
Required	 
] 
[ 	
	MaxLength	 
( 
$num 
) 
, 
	MinLength !
(! "
$num" #
,# $
ErrorMessage% 1
=2 3
$str4 W
)W X
]X Y
public 
string 
ConfirmPassword %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
public 
bool 

IsApproved 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
string 
Status 
{ 
get "
;" #
set$ '
;' (
}) *
public 
virtual 
int 
RoleId !
{" #
get$ '
;' (
set) ,
;, -
}. /
} 
} í
uC:\Users\Sai Kumar\Desktop\C# Trining\UniversityApplicationFinal\UniversityApplicationFinal\Models\UniversityModel.cs
	namespace 	&
UniversityApplicationFinal
 $
.$ %
Models% +
{ 
public 

class 
UniversityModel  
{ 
public 
int 
Id 
{ 
get 
; 
set  
;  !
}" #
[ 	
	MaxLength	 
( 
$num 
) 
] 
public		 
string		 
UniversityName		 $
{		% &
get		' *
;		* +
set		, /
;		/ 0
}		1 2
=		2 3
String		3 9
.		9 :
Empty		: ?
;		? @
[

 	
	MaxLength

	 
(

 
$num

 
)

 
]

 
public 
string 
Location 
{  
get! $
;$ %
set& )
;) *
}+ ,
=- .
String/ 5
.5 6
Empty6 ;
;; <
[ 	
	MaxLength	 
( 
$num 
) 
] 
public 
string 
AffiliatedUnder %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
=4 5
String6 <
.< =
Empty= B
;B C
public 
int 
EstablishedYear "
{# $
get% (
;( )
set* -
;- .
}/ 0
} 
}  
fC:\Users\Sai Kumar\Desktop\C# Trining\UniversityApplicationFinal\UniversityApplicationFinal\Program.cs
var 
builder 
= 
WebApplication 
. 
CreateBuilder *
(* +
args+ /
)/ 0
;0 1
var 
connectionString 
= 
builder 
. 
Configuration ,
., -
GetConnectionString- @
(@ A
$strA O
)O P
;P Q
builder 
. 
Services 
. 
AddDbContext 
<  
ApplicationDbContext 2
>2 3
(3 4
options4 ;
=>< >
options 
. 
UseSqlServer 
( 
connectionString )
)) *
)* +
;+ ,
builder 
. 
Services 
. 
AddDefaultIdentity #
<# $
IdentityUser$ 0
>0 1
(1 2
options2 9
=>: <
options= D
.D E
SignInE K
.K L#
RequireConfirmedAccountL c
=d e
falsef k
)k l
. $
AddEntityFrameworkStores 
<  
ApplicationDbContext 2
>2 3
(3 4
)4 5
;5 6
builder 
. 
Services 
. #
AddControllersWithViews (
(( )
)) *
;* +
builder 
. 
Services 
. 

AddSession 
( 
options #
=>$ &
{ 
options 
. 
IdleTimeout 
= 
TimeSpan "
." #
FromMinutes# .
(. /
$num/ 1
)1 2
;2 3
options 
. 
Cookie 
. 
HttpOnly 
= 
true "
;" #
options 
. 
Cookie 
. 
IsEssential 
=  
true! %
;% &
} 
) 
; 
var 
app 
= 	
builder
 
. 
Build 
( 
) 
; 
if 
( 
app 
. 
Environment 
. 
IsDevelopment !
(! "
)" #
)# $
{ 
} 
else 
{ 
app 
. 
UseExceptionHandler 
( 
$str )
)) *
;* +
app   
.   
UseHsts   
(   
)   
;   
}!! 
app## 
.## 
UseHttpsRedirection## 
(## 
)## 
;## 
app$$ 
.$$ 
UseStaticFiles$$ 
($$ 
)$$ 
;$$ 
app&& 
.&& 

UseRouting&& 
(&& 
)&& 
;&& 
app(( 
.(( 
UseAuthentication(( 
((( 
)(( 
;(( 
app)) 
.)) 
UseAuthorization)) 
()) 
))) 
;)) 
app** 
.** 

UseSession** 
(** 
)** 
;** 
app++ 
.++ 
MapControllerRoute++ 
(++ 
name,, 
:,, 	
$str,,
 
,,, 
pattern-- 
:-- 
$str-- 8
)--8 9
;--9 :
app.. 
... 
MapRazorPages.. 
(.. 
).. 
;.. 
app// 
.// 
Run// 
(// 
)// 	
;//	 
