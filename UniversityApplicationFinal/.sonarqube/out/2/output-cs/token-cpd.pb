�
oC:\Users\Sai Kumar\Desktop\C# Trining\UniversityApplicationFinal\UniversityApi\Controllers\AccountController.cs
	namespace		 	

 
.		 
Controllers		 #
{

 
[ 
Route 

(
 
$str 
) 
] 
[ 

] 
public

class
AccountController
:
ControllerBase
{ 
private 
readonly 
IMapper  
_mapper! (
;( )
private 
readonly 
UniversityDbContext , 
_universityDbContext- A
;A B
public 
AccountController  
(  !
UniversityDbContext! 4
universityDbContext5 H
,H I
IMapperJ Q
mapperR X
)X Y
{ 	 
_universityDbContext  
=! "
universityDbContext# 6
;6 7
_mapper 
= 
mapper 
; 
} 	
[ 	
HttpPost	 
( 
$str 
) 
] 
public 
async 
Task 
< 

>' (
Login) .
(. /
LoginViewModel/ =

loginModel> H
)H I
{ 	
if 
(  
_universityDbContext $
.$ %
users% *
==+ -
null. 2
)2 3
{ 
return 

BadRequest !
(! "
$str" 7
)7 8
;8 9
} 
var 
user 
=  
_universityDbContext )
.) *
users* /
./ 0
Where0 5
(5 6
x6 7
=>7 9
x9 :
.: ;
Email; @
==@ B

loginModelC M
.M N
EmailN S
&&T V
xW X
.X Y
PasswordY a
==a c

loginModeld n
.n o
Passwordo w
)w x
.x y
FirstOrDefault	y �
(
� �
)
� �
;
� �
if   
(   
user   
==   
null   
)   
{!! 
return"" 

BadRequest"" !
(""! "
$str""" B
)""B C
;""C D
}## 
if$$ 
($$ 
!$$ 
user$$ 
.$$ 

IsApproved$$  
)$$  !
{%% 
return&& 

BadRequest&& !
(&&! "
$str&&" 6
)&&6 7
;&&7 8
}'' 
var(( 
result(( 
=(( 
_mapper(( 
.(( 
Map(( "
<((" #
Users((# (
,((( )

>((6 7
(((7 8
user((8 <
)((< =
;((= >
return)) 
Ok)) 
()) 
result)) 
))) 
;)) 
}++ 	
}.. 
}// �<
uC:\Users\Sai Kumar\Desktop\C# Trining\UniversityApplicationFinal\UniversityApi\Controllers\UniversityApiController.cs
	namespace 	

 
. 
Controllers #
{ 
[ 
Route 

(
 
$str &
)& '
]' (
[ 

] 
public		 

class		 #
UniversityApiController		 (
:		) *
ControllerBase		+ 9
{

 
private 
readonly 
UniversityDbContext , 
_universityDbContext- A
;A B
public
UniversityApiController
(
UniversityDbContext
universityDbContext
)
{ 	 
_universityDbContext  
=! "
universityDbContext# 6
;6 7
} 	
[ 	
HttpPost	 
] 
public 
async 
Task 
< 

>' (
create) /
(/ 0

University0 :

university; E
)E F
{ 	
if 
( 

university 
== 
null "
)" #
{ 
return 

BadRequest !
(! "
$str" C
)C D
;D E
} 
if 
(  
_universityDbContext $
.$ %
Universities% 1
==2 4
null5 9
)9 :
{ 
return 
NotFound 
(  
$str  5
)5 6
;6 7
} 
_universityDbContext  
.  !
Universities! -
.- .
Add. 1
(1 2

university2 <
)< =
;= >
await  
_universityDbContext &
.& '
SaveChangesAsync' 7
(7 8
)8 9
;9 :
return 
Ok 
( 
$str 
) 
; 
}   	
["" 	
HttpGet""	 
]"" 
public## 
async## 
Task## 
<## 

>##' (
Get##) ,
(##, -
)##- .
{$$ 	
if%% 
(%%  
_universityDbContext%% $
.%%$ %
Universities%%% 1
==%%2 4
null%%5 9
)%%9 :
{&& 
return'' 

BadRequest'' !
(''! "
$str''" 7
)''7 8
;''8 9
}(( 
return)) 
Ok)) 
())  
_universityDbContext)) *
.))* +
Universities))+ 7
)))7 8
;))8 9
}** 	
[++ 	
HttpGet++	 
(++ 
$str++ 
)++ 
]++ 
public,, 
async,, 
Task,, 
<,, 

>,,' (
GetOneUniversity,,) 9
(,,9 :
int,,: =
id,,> @
),,@ A
{-- 	
if.. 
(.. 
id.. 
==.. 
null.. 
).. 
{// 
return00 
NotFound00 
(00  
)00  !
;00! "
}11 
var22 
data22 
=22  
_universityDbContext22 +
.22+ ,
Universities22, 8
.228 9
Where229 >
(22> ?
a22? @
=>22A C
a22D E
.22E F
Id22F H
==22I K
id22L N
)22N O
.22O P
FirstOrDefault22P ^
(22^ _
)22_ `
;22` a
return33 
Ok33 
(33 
data33 
)33 
;33 
}44 	
[66 	
HttpPut66	 
(66 
$str66 
)66 
]66 
public77 
async77 
Task77 
<77 

>77' (
update77) /
(77/ 0
int770 3
id774 6
,776 7

University778 B

university77C M
)77M N
{88 	
if99 
(99 
id99 
<=99 
$num99 
)99 
{:: 
return;; 
NotFound;; 
(;;  
$str;;  .
);;. /
;;;/ 0
}<< 
var== 
orginalData== 
===  
_universityDbContext== 2
.==2 3
Universities==3 ?
.==? @
Where==@ E
(==E F
a==F G
=>==H J
a==K L
.==L M
Id==M O
====P R
id==S U
)==U V
.==V W
FirstOrDefault==W e
(==e f
)==f g
;==g h
orginalData>> 
.>> 
UniversityName>> &
=>>' (

university>>) 3
.>>3 4
UniversityName>>4 B
;>>B C
orginalData?? 
.?? 
AffiliatedUnder?? '
=??' (

university??( 2
.??2 3
AffiliatedUnder??3 B
;??B C
orginalData@@ 
.@@ 
Location@@  
=@@  !

university@@" ,
.@@, -
Location@@- 5
;@@5 6
orginalDataAA 
.AA 
EstablishedYearAA '
=AA' (

universityAA( 2
.AA2 3
EstablishedYearAA3 B
;AAB C
ifCC 
(CC 
orginalDataCC 
==CC 
nullCC #
)CC# $
{DD 
returnEE 
NotFoundEE 
(EE  
$strEE  2
)EE2 3
;EE3 4
}GG 
_universityDbContextHH  
.HH  !
UniversitiesHH! -
.HH- .
UpdateHH. 4
(HH4 5
orginalDataHH5 @
)HH@ A
;HHA B 
_universityDbContextII  
.II  !
SaveChangesII! ,
(II, -
)II- .
;II. /
returnJJ 
OkJJ 
(JJ 
$strJJ 
)JJ  
;JJ  !
}KK 	
[LL 	

HttpDeleteLL	 
(LL 
$strLL 
)LL 
]LL 
publicMM 
asyncMM 
TaskMM 
<MM 

>MM' (
DeleteMM) /
(MM/ 0
intMM0 3
idMM4 6
)MM6 7
{NN 	
ifOO 
(OO 
idOO 
<=OO 
$numOO 
)OO 
{PP 
returnQQ 

BadRequestQQ !
(QQ! "
$strQQ" 4
)QQ4 5
;QQ5 6
}RR 
varSS 
dataSS 
=SS  
_universityDbContextSS +
.SS+ ,
UniversitiesSS, 8
.SS8 9
WhereSS9 >
(SS> ?
eSS? @
=>SSA C
eSSD E
.SSE F
IdSSF H
==SSI K
idSSL N
)SSN O
.SSO P
FirstOrDefaultSSP ^
(SS^ _
)SS_ `
;SS` a
ifTT 
(TT 
dataTT 
==TT 
nullTT 
)TT 
{UU 
returnVV 
NotFoundVV 
(VV  
)VV  !
;VV! "
}WW 
_universityDbContextXX  
.XX  !
UniversitiesXX! -
.XX- .
RemoveXX. 4
(XX4 5
dataXX5 9
)XX9 :
;XX: ; 
_universityDbContextYY  
.YY  !
SaveChangesYY! ,
(YY, -
)YY- .
;YY. /
returnZZ 
OkZZ 
(ZZ 
$strZZ 
)ZZ  
;ZZ  !
}\\ 	
}]] 
}^^ �8
oC:\Users\Sai Kumar\Desktop\C# Trining\UniversityApplicationFinal\UniversityApi\Controllers\UserAPiController.cs
	namespace 	

 
. 
Controllers #
{		 
[

 
Route

 

(


 
$str

 
)

 
]

 
[ 

] 
public 

class 
UserAPiController "
:# $
ControllerBase% 3
{
private 
readonly 
IMapper  
_mapper! (
;( )
private 
readonly 
UniversityDbContext , 
_universityDbContext- A
;A B
public 
UserAPiController  
(  !
UniversityDbContext! 4
universityDbContext5 H
,H I
IMapperJ Q
mapperR X
)X Y
{ 	 
_universityDbContext  
=! "
universityDbContext# 6
;6 7
_mapper 
= 
mapper 
; 
} 	
[ 	
HttpGet	 
( 
$str 
) 
] 
public 
async 
Task 
< 

>' (
Get) ,
(, -
)- .
{ 	
if 
(  
_universityDbContext $
.$ %
users% *
==+ -
null. 2
)2 3
{ 
return 

BadRequest !
(! "
$str" 7
)7 8
;8 9
} 
var 
filterusers 
=  
_universityDbContext 2
.2 3
users3 8
.8 9
Where9 >
(> ?
x? @
=>A C
xD E
.E F
RoleIdF L
==M O
$numP Q
&&R T
xU V
.V W

IsApprovedW a
==b d
falsee j
&&k m
xn o
.o p
Statusp v
==w y
$str	z �
)
� �
.
� �
ToList
� �
(
� �
)
� �
;
� �
var 
result 
= 
_mapper  
.  !
Map! $
<$ %
List% )
<) *
Users* /
>/ 0
,0 1
List2 6
<6 7

>D E
>E F
(F G
filterusersG R
)R S
;S T
return   
Ok   
(   
result   
)   
;   
}!! 	
["" 	
HttpPost""	 
("" 
$str"" 
)"" 
]""  
public## 
async## 
Task## 
<## 

>##' (

CreateUser##) 3
(##3 4


)##O P
{$$ 	
if%% 
(%% 

==%%  
null%%! %
)%%% &
{&& 
return'' 

BadRequest'' !
(''! "
$str''" F
)''F G
;''G H
})) 
if** 
(**  
_universityDbContext** $
.**$ %
users**% *
==**+ -
null**. 2
)**2 3
{++ 
return,, 
NotFound,, 
(,,  
$str,,  5
),,5 6
;,,6 7
}-- 
var.. 
postObj.. 
=.. 
_mapper.. !
...! "
Map.." %
<..% &

,..3 4
Users..5 :
>..: ;
(..; <

)..I J
;..J K
postObj// 
.// 
Status// 
=// 
$str// &
;//& '
postObj00 
.00 

IsApproved00 
=00  
false00! &
;00& '
postObj11 
.11 
RoleId11 
=11 
$num11 
;11  
_universityDbContext22  
.22  !
users22! &
.22& '
Add22' *
(22* +
postObj22+ 2
)222 3
;223 4
await33  
_universityDbContext33 &
.33& '
SaveChangesAsync33' 7
(337 8
)338 9
;339 :
return44 
Ok44 
(44 
$str44 
)44 
;44 
}55 	
[66 	
HttpGet66	 
(66 
$str66 #
)66# $
]66$ %
public77 
async77 
Task77 
<77 

>77' (
ChangeUserStatus77) 9
(779 :
int77: =
id77> @
,77@ A
bool77B F
	isApprove77G P
)77P Q
{88 	
if99 
(99  
_universityDbContext99 $
.99$ %
users99% *
==99+ -
null99. 2
)992 3
{:: 
return;; 

BadRequest;; !
(;;! "
$str;;" 7
);;7 8
;;;8 9
}<< 
var== 
filterusers== 
===  
_universityDbContext== 2
.==2 3
users==3 8
.==8 9
Where==9 >
(==> ?
x==? @
=>==A C
x==D E
.==E F
Id==F H
====I K
id==L N
)==N O
.==O P
FirstOrDefault==P ^
(==^ _
)==_ `
;==` a
if>> 
(>> 
	isApprove>> 
)>> 
{?? 
filterusers@@ 
.@@ 

IsApproved@@ &
=@@' (
true@@) -
;@@- .
filterusersAA 
.AA 
StatusAA "
=AA# $
$strAA% /
;AA/ 0
}BB 
elseCC 
{DD 
filterusersEE 
.EE 

IsApprovedEE &
=EE' (
falseEE) .
;EE. /
filterusersFF 
.FF 
StatusFF "
=FF# $
$strFF% /
;FF/ 0
}HH 
_universityDbContextII  
.II  !
SaveChangesII! ,
(II, -
)II- .
;II. /
returnJJ 
OkJJ 
(JJ 
$strJJ ,
)JJ, -
;JJ- .
}KK 	
[WW 	
HttpGetWW	 
(WW 
$strWW #
)WW# $
]WW$ %
publicXX 
asyncXX 
TaskXX 
<XX 

>XX' (
GetRegisterUsersXX) 9
(XX9 :
)XX: ;
{YY 	
ifZZ 
(ZZ  
_universityDbContextZZ $
==ZZ% '
nullZZ( ,
)ZZ, -
{[[ 
return\\ 

BadRequest\\ !
(\\! "
$str\\" 5
)\\5 6
;\\6 7
}]] 
return^^ 
Ok^^ 
(^^  
_universityDbContext^^ *
.^^* +
users^^+ 0
)^^0 1
;^^1 2
}__ 	
}`` 
}aa �
wC:\Users\Sai Kumar\Desktop\C# Trining\UniversityApplicationFinal\UniversityApi\Controllers\WeatherForecastController.cs
	namespace 	

 
. 
Controllers #
{ 
[ 

] 
[ 
Route 

(
 
$str 
) 
] 
public 

class %
WeatherForecastController *
:+ ,
ControllerBase- ;
{ 
private		 
static		 
readonly		 
string		  &
[		& '
]		' (
	Summaries		) 2
=		3 4
new		5 8
[		8 9
]		9 :
{

 	
$str 
, 
$str 
, 
$str '
,' (
$str) /
,/ 0
$str1 7
,7 8
$str9 ?
,? @
$strA H
,H I
$strJ O
,O P
$strQ ]
,] ^
$str_ j
} 
; 
private 
readonly 
ILogger  
<  !%
WeatherForecastController! :
>: ;
_logger< C
;C D
public %
WeatherForecastController (
(( )
ILogger) 0
<0 1%
WeatherForecastController1 J
>J K
loggerL R
)R S
{ 	
_logger 
= 
logger 
; 
} 	
[ 	
HttpGet	 
( 
Name 
= 
$str ,
), -
]- .
public 
IEnumerable 
< 
WeatherForecast *
>* +
Get, /
(/ 0
)0 1
{ 	
return 

Enumerable 
. 
Range #
(# $
$num$ %
,% &
$num' (
)( )
.) *
Select* 0
(0 1
index1 6
=>7 9
new: =
WeatherForecast> M
{ 
Date 
= 
DateTime 
.  
Now  #
.# $
AddDays$ +
(+ ,
index, 1
)1 2
,2 3
TemperatureC 
= 
Random %
.% &
Shared& ,
., -
Next- 1
(1 2
-2 3
$num3 5
,5 6
$num7 9
)9 :
,: ;
Summary 
= 
	Summaries #
[# $
Random$ *
.* +
Shared+ 1
.1 2
Next2 6
(6 7
	Summaries7 @
.@ A
LengthA G
)G H
]H I
} 
)
. 
ToArray
( 
) 
; 
} 	
}   
}!! �
dC:\Users\Sai Kumar\Desktop\C# Trining\UniversityApplicationFinal\UniversityApi\Mapper\MapperClass.cs
	namespace 	

 
. 
Mapper 
{ 
public		 

class		 
MapperClass		 
:		 
Profile		 $
{

 
public 
MapperClass 
( 
) 
{ 	
	CreateMap
<

University
,
UniversityModel
>
(
)
;
	CreateMap 
< 
Users 
, 

>* +
(+ ,
), -
;- .
	CreateMap 
< 

,# $
Users% *
>* +
(+ ,
), -
;- .
} 	
} 
} �
YC:\Users\Sai Kumar\Desktop\C# Trining\UniversityApplicationFinal\UniversityApi\Program.cs
var 
builder 
= 
WebApplication 
. 

(* +
args+ /
)/ 0
;0 1
builder

 
.

 
Services

 
.

 
AddControllers

 
(

  
)

  !
;

! "
builder 
. 
Services 
. 
AddCors 
( 
options  
=>! #
{ 
options
.
AddDefaultPolicy
(
builder
=>
{ 
builder 
. 
WithOrigins 
( 
$str 4
)4 5
. 	
WithHeaders	 
( 
$str #
)# $
;$ %
} 
) 
; 
} 
) 
; 
var 
mapperConfig 
= 
new 
MapperConfiguration *
(* +
mc+ -
=>. 0
{1 2
mc 
. 

AddProfile 
( 
new 
MapperClass !
(! "
)" #
)# $
;$ %
} 
) 
; 
IMapper 
mapper 
= 
mapperConfig 
. 
CreateMapper *
(* +
)+ ,
;, -
builder 
. 
Services 
. 
AddSingleton 
( 
mapper $
)$ %
;% &
builder 
. 
Services 
. #
AddEndpointsApiExplorer (
(( )
)) *
;* +
builder 
. 
Services 
. 

( 
)  
;  !
builder 
. 
Services 
. 
AddDbContext 
< 
UniversityDbContext 1
>1 2
(2 3
options3 :
=>; =
options 
. 
UseSqlServer 
( 
builder  
.  !

.. /
GetConnectionString/ B
(B C
$strC Q
)Q R
??S U
throw 	
new
 
InvalidOperationException '
(' (
$str( U
)U V
)V W
)W X
;X Y
var   
app   
=   	
builder  
 
.   
Build   
(   
)   
;   
if## 
(## 
app## 
.## 
Environment## 
.## 

(##! "
)##" #
)### $
{$$ 
app%% 
.%% 

UseSwagger%% 
(%% 
)%% 
;%% 
app&& 
.&& 
UseSwaggerUI&& 
(&& 
)&& 
;&& 
}'' 
app)) 
.)) 
UseHttpsRedirection)) 
()) 
))) 
;)) 
app++ 
.++ 
UseAuthorization++ 
(++ 
)++ 
;++ 
app-- 
.-- 
MapControllers-- 
(-- 
)-- 
;-- 
app// 
.// 
Run// 
(// 
)// 	
;//	 
�
kC:\Users\Sai Kumar\Desktop\C# Trining\UniversityApplicationFinal\UniversityApi\ViewModels\LoginViewModel.cs
	namespace 	

 
. 

ViewModels "
{ 
public 

class 
LoginViewModel 
{ 
public 
string 
Email 
{ 
get !
;! "
set# &
;& '
}( )
public 
string 
Password 
{  
get! $
;$ %
set& )
;) *
}+ ,
} 
} �
jC:\Users\Sai Kumar\Desktop\C# Trining\UniversityApplicationFinal\UniversityApi\ViewModels\UserViewModel.cs
	namespace 	

 
. 

ViewModels "
{ 
public 

class 

{ 
public 
int 
Id 
{ 
get 
; 
set  
;  !
}" #
public 
string 
Email 
{ 
get !
;! "
set# &
;& '
}( )
=* +
String, 2
.2 3
Empty3 8
;8 9
public 
string 
PanNo 
{ 
get !
;! "
set# &
;& '
}( )
=* +
String, 2
.2 3
Empty3 8
;8 9
public 
string 
Password 
{  
get! $
;$ %
set& )
;) *
}+ ,
=- .
String/ 5
.5 6
Empty6 ;
;; <
public		 
string		 
ConfirmPassword		 %
{		& '
get		( +
;		+ ,
set		- 0
;		0 1
}		2 3
=		4 5
String		6 <
.		< =
Empty		= B
;		B C
public

 
bool

 

IsApproved

 
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
+ ,
public 
string 
Status 
{ 
get "
;" #
set$ '
;' (
}) *
=+ ,
String- 3
.3 4
Empty4 9
;9 :
public 
virtual 
int 
RoleId !
{" #
get$ '
;' (
set) ,
;, -
}. /
}
} �
aC:\Users\Sai Kumar\Desktop\C# Trining\UniversityApplicationFinal\UniversityApi\WeatherForecast.cs
	namespace 	

 
{ 
public 

class 
WeatherForecast  
{ 
public 
DateTime 
Date 
{ 
get "
;" #
set$ '
;' (
}) *
public 
int 
TemperatureC 
{  !
get" %
;% &
set' *
;* +
}, -
public		 
int		 
TemperatureF		 
=>		  "
$num		# %
+		& '
(		( )
int		) ,
)		, -
(		- .
TemperatureC		. :
/		; <
$num		= C
)		C D
;		D E
public 
string 
? 
Summary 
{  
get! $
;$ %
set& )
;) *
}+ ,
} 
}