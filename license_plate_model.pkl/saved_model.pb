޿
??
B
AssignVariableOp
resource
value"dtype"
dtypetype?
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
?
Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
?
MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 ":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(?

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetype?
E
Relu
features"T
activations"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
?
Select
	condition

t"T
e"T
output"T"	
Ttype
H
ShardedFilename
basename	
shard

num_shards
filename
9
Softmax
logits"T
softmax"T"
Ttype:
2
?
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ?
@
StaticRegexFullMatch	
input

output
"
patternstring
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?"serve*2.5.02v2.5.0-rc3-213-ga4dfb8d1a718֞
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
?
module_wrapper/conv2d/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*-
shared_namemodule_wrapper/conv2d/kernel
?
0module_wrapper/conv2d/kernel/Read/ReadVariableOpReadVariableOpmodule_wrapper/conv2d/kernel*&
_output_shapes
:*
dtype0
?
module_wrapper/conv2d/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*+
shared_namemodule_wrapper/conv2d/bias
?
.module_wrapper/conv2d/bias/Read/ReadVariableOpReadVariableOpmodule_wrapper/conv2d/bias*
_output_shapes
:*
dtype0
?
 module_wrapper_1/conv2d_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *1
shared_name" module_wrapper_1/conv2d_1/kernel
?
4module_wrapper_1/conv2d_1/kernel/Read/ReadVariableOpReadVariableOp module_wrapper_1/conv2d_1/kernel*&
_output_shapes
: *
dtype0
?
module_wrapper_1/conv2d_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: */
shared_name module_wrapper_1/conv2d_1/bias
?
2module_wrapper_1/conv2d_1/bias/Read/ReadVariableOpReadVariableOpmodule_wrapper_1/conv2d_1/bias*
_output_shapes
: *
dtype0
?
 module_wrapper_2/conv2d_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*1
shared_name" module_wrapper_2/conv2d_2/kernel
?
4module_wrapper_2/conv2d_2/kernel/Read/ReadVariableOpReadVariableOp module_wrapper_2/conv2d_2/kernel*&
_output_shapes
: @*
dtype0
?
module_wrapper_2/conv2d_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*/
shared_name module_wrapper_2/conv2d_2/bias
?
2module_wrapper_2/conv2d_2/bias/Read/ReadVariableOpReadVariableOpmodule_wrapper_2/conv2d_2/bias*
_output_shapes
:@*
dtype0
?
 module_wrapper_3/conv2d_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*1
shared_name" module_wrapper_3/conv2d_3/kernel
?
4module_wrapper_3/conv2d_3/kernel/Read/ReadVariableOpReadVariableOp module_wrapper_3/conv2d_3/kernel*&
_output_shapes
:@@*
dtype0
?
module_wrapper_3/conv2d_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*/
shared_name module_wrapper_3/conv2d_3/bias
?
2module_wrapper_3/conv2d_3/bias/Read/ReadVariableOpReadVariableOpmodule_wrapper_3/conv2d_3/bias*
_output_shapes
:@*
dtype0
?
module_wrapper_7/dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*.
shared_namemodule_wrapper_7/dense/kernel
?
1module_wrapper_7/dense/kernel/Read/ReadVariableOpReadVariableOpmodule_wrapper_7/dense/kernel* 
_output_shapes
:
??*
dtype0
?
module_wrapper_7/dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namemodule_wrapper_7/dense/bias
?
/module_wrapper_7/dense/bias/Read/ReadVariableOpReadVariableOpmodule_wrapper_7/dense/bias*
_output_shapes	
:?*
dtype0
?
module_wrapper_8/dense_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?$*0
shared_name!module_wrapper_8/dense_1/kernel
?
3module_wrapper_8/dense_1/kernel/Read/ReadVariableOpReadVariableOpmodule_wrapper_8/dense_1/kernel*
_output_shapes
:	?$*
dtype0
?
module_wrapper_8/dense_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:$*.
shared_namemodule_wrapper_8/dense_1/bias
?
1module_wrapper_8/dense_1/bias/Read/ReadVariableOpReadVariableOpmodule_wrapper_8/dense_1/bias*
_output_shapes
:$*
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
?
#Adam/module_wrapper/conv2d/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#Adam/module_wrapper/conv2d/kernel/m
?
7Adam/module_wrapper/conv2d/kernel/m/Read/ReadVariableOpReadVariableOp#Adam/module_wrapper/conv2d/kernel/m*&
_output_shapes
:*
dtype0
?
!Adam/module_wrapper/conv2d/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*2
shared_name#!Adam/module_wrapper/conv2d/bias/m
?
5Adam/module_wrapper/conv2d/bias/m/Read/ReadVariableOpReadVariableOp!Adam/module_wrapper/conv2d/bias/m*
_output_shapes
:*
dtype0
?
'Adam/module_wrapper_1/conv2d_1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *8
shared_name)'Adam/module_wrapper_1/conv2d_1/kernel/m
?
;Adam/module_wrapper_1/conv2d_1/kernel/m/Read/ReadVariableOpReadVariableOp'Adam/module_wrapper_1/conv2d_1/kernel/m*&
_output_shapes
: *
dtype0
?
%Adam/module_wrapper_1/conv2d_1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *6
shared_name'%Adam/module_wrapper_1/conv2d_1/bias/m
?
9Adam/module_wrapper_1/conv2d_1/bias/m/Read/ReadVariableOpReadVariableOp%Adam/module_wrapper_1/conv2d_1/bias/m*
_output_shapes
: *
dtype0
?
'Adam/module_wrapper_2/conv2d_2/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*8
shared_name)'Adam/module_wrapper_2/conv2d_2/kernel/m
?
;Adam/module_wrapper_2/conv2d_2/kernel/m/Read/ReadVariableOpReadVariableOp'Adam/module_wrapper_2/conv2d_2/kernel/m*&
_output_shapes
: @*
dtype0
?
%Adam/module_wrapper_2/conv2d_2/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*6
shared_name'%Adam/module_wrapper_2/conv2d_2/bias/m
?
9Adam/module_wrapper_2/conv2d_2/bias/m/Read/ReadVariableOpReadVariableOp%Adam/module_wrapper_2/conv2d_2/bias/m*
_output_shapes
:@*
dtype0
?
'Adam/module_wrapper_3/conv2d_3/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*8
shared_name)'Adam/module_wrapper_3/conv2d_3/kernel/m
?
;Adam/module_wrapper_3/conv2d_3/kernel/m/Read/ReadVariableOpReadVariableOp'Adam/module_wrapper_3/conv2d_3/kernel/m*&
_output_shapes
:@@*
dtype0
?
%Adam/module_wrapper_3/conv2d_3/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*6
shared_name'%Adam/module_wrapper_3/conv2d_3/bias/m
?
9Adam/module_wrapper_3/conv2d_3/bias/m/Read/ReadVariableOpReadVariableOp%Adam/module_wrapper_3/conv2d_3/bias/m*
_output_shapes
:@*
dtype0
?
$Adam/module_wrapper_7/dense/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*5
shared_name&$Adam/module_wrapper_7/dense/kernel/m
?
8Adam/module_wrapper_7/dense/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/module_wrapper_7/dense/kernel/m* 
_output_shapes
:
??*
dtype0
?
"Adam/module_wrapper_7/dense/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/module_wrapper_7/dense/bias/m
?
6Adam/module_wrapper_7/dense/bias/m/Read/ReadVariableOpReadVariableOp"Adam/module_wrapper_7/dense/bias/m*
_output_shapes	
:?*
dtype0
?
&Adam/module_wrapper_8/dense_1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?$*7
shared_name(&Adam/module_wrapper_8/dense_1/kernel/m
?
:Adam/module_wrapper_8/dense_1/kernel/m/Read/ReadVariableOpReadVariableOp&Adam/module_wrapper_8/dense_1/kernel/m*
_output_shapes
:	?$*
dtype0
?
$Adam/module_wrapper_8/dense_1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:$*5
shared_name&$Adam/module_wrapper_8/dense_1/bias/m
?
8Adam/module_wrapper_8/dense_1/bias/m/Read/ReadVariableOpReadVariableOp$Adam/module_wrapper_8/dense_1/bias/m*
_output_shapes
:$*
dtype0
?
#Adam/module_wrapper/conv2d/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#Adam/module_wrapper/conv2d/kernel/v
?
7Adam/module_wrapper/conv2d/kernel/v/Read/ReadVariableOpReadVariableOp#Adam/module_wrapper/conv2d/kernel/v*&
_output_shapes
:*
dtype0
?
!Adam/module_wrapper/conv2d/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*2
shared_name#!Adam/module_wrapper/conv2d/bias/v
?
5Adam/module_wrapper/conv2d/bias/v/Read/ReadVariableOpReadVariableOp!Adam/module_wrapper/conv2d/bias/v*
_output_shapes
:*
dtype0
?
'Adam/module_wrapper_1/conv2d_1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *8
shared_name)'Adam/module_wrapper_1/conv2d_1/kernel/v
?
;Adam/module_wrapper_1/conv2d_1/kernel/v/Read/ReadVariableOpReadVariableOp'Adam/module_wrapper_1/conv2d_1/kernel/v*&
_output_shapes
: *
dtype0
?
%Adam/module_wrapper_1/conv2d_1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *6
shared_name'%Adam/module_wrapper_1/conv2d_1/bias/v
?
9Adam/module_wrapper_1/conv2d_1/bias/v/Read/ReadVariableOpReadVariableOp%Adam/module_wrapper_1/conv2d_1/bias/v*
_output_shapes
: *
dtype0
?
'Adam/module_wrapper_2/conv2d_2/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*8
shared_name)'Adam/module_wrapper_2/conv2d_2/kernel/v
?
;Adam/module_wrapper_2/conv2d_2/kernel/v/Read/ReadVariableOpReadVariableOp'Adam/module_wrapper_2/conv2d_2/kernel/v*&
_output_shapes
: @*
dtype0
?
%Adam/module_wrapper_2/conv2d_2/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*6
shared_name'%Adam/module_wrapper_2/conv2d_2/bias/v
?
9Adam/module_wrapper_2/conv2d_2/bias/v/Read/ReadVariableOpReadVariableOp%Adam/module_wrapper_2/conv2d_2/bias/v*
_output_shapes
:@*
dtype0
?
'Adam/module_wrapper_3/conv2d_3/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*8
shared_name)'Adam/module_wrapper_3/conv2d_3/kernel/v
?
;Adam/module_wrapper_3/conv2d_3/kernel/v/Read/ReadVariableOpReadVariableOp'Adam/module_wrapper_3/conv2d_3/kernel/v*&
_output_shapes
:@@*
dtype0
?
%Adam/module_wrapper_3/conv2d_3/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*6
shared_name'%Adam/module_wrapper_3/conv2d_3/bias/v
?
9Adam/module_wrapper_3/conv2d_3/bias/v/Read/ReadVariableOpReadVariableOp%Adam/module_wrapper_3/conv2d_3/bias/v*
_output_shapes
:@*
dtype0
?
$Adam/module_wrapper_7/dense/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*5
shared_name&$Adam/module_wrapper_7/dense/kernel/v
?
8Adam/module_wrapper_7/dense/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/module_wrapper_7/dense/kernel/v* 
_output_shapes
:
??*
dtype0
?
"Adam/module_wrapper_7/dense/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/module_wrapper_7/dense/bias/v
?
6Adam/module_wrapper_7/dense/bias/v/Read/ReadVariableOpReadVariableOp"Adam/module_wrapper_7/dense/bias/v*
_output_shapes	
:?*
dtype0
?
&Adam/module_wrapper_8/dense_1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?$*7
shared_name(&Adam/module_wrapper_8/dense_1/kernel/v
?
:Adam/module_wrapper_8/dense_1/kernel/v/Read/ReadVariableOpReadVariableOp&Adam/module_wrapper_8/dense_1/kernel/v*
_output_shapes
:	?$*
dtype0
?
$Adam/module_wrapper_8/dense_1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:$*5
shared_name&$Adam/module_wrapper_8/dense_1/bias/v
?
8Adam/module_wrapper_8/dense_1/bias/v/Read/ReadVariableOpReadVariableOp$Adam/module_wrapper_8/dense_1/bias/v*
_output_shapes
:$*
dtype0

NoOpNoOp
?`
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?`
value?_B?_ B?_
?
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
layer_with_weights-3
layer-3
layer-4
layer-5
layer-6
layer_with_weights-4
layer-7
	layer_with_weights-5
	layer-8

	optimizer
trainable_variables
regularization_losses
	variables
	keras_api

signatures
_
_module
trainable_variables
regularization_losses
	variables
	keras_api
_
_module
trainable_variables
regularization_losses
	variables
	keras_api
_
_module
trainable_variables
regularization_losses
	variables
	keras_api
_
_module
 trainable_variables
!regularization_losses
"	variables
#	keras_api
_
$_module
%trainable_variables
&regularization_losses
'	variables
(	keras_api
_
)_module
*trainable_variables
+regularization_losses
,	variables
-	keras_api
_
._module
/trainable_variables
0regularization_losses
1	variables
2	keras_api
_
3_module
4trainable_variables
5regularization_losses
6	variables
7	keras_api
_
8_module
9trainable_variables
:regularization_losses
;	variables
<	keras_api
?
=iter

>beta_1

?beta_2
	@decay
Alearning_rateBm?Cm?Dm?Em?Fm?Gm?Hm?Im?Jm?Km?Lm?Mm?Bv?Cv?Dv?Ev?Fv?Gv?Hv?Iv?Jv?Kv?Lv?Mv?
V
B0
C1
D2
E3
F4
G5
H6
I7
J8
K9
L10
M11
 
V
B0
C1
D2
E3
F4
G5
H6
I7
J8
K9
L10
M11
?
Nnon_trainable_variables
trainable_variables
Ometrics
Player_metrics

Qlayers
regularization_losses
	variables
Rlayer_regularization_losses
 
h

Bkernel
Cbias
Strainable_variables
Tregularization_losses
U	variables
V	keras_api

B0
C1
 

B0
C1
?
Wnon_trainable_variables

Xlayers
Ymetrics
Zlayer_metrics
trainable_variables
regularization_losses
	variables
[layer_regularization_losses
h

Dkernel
Ebias
\trainable_variables
]regularization_losses
^	variables
_	keras_api

D0
E1
 

D0
E1
?
`non_trainable_variables

alayers
bmetrics
clayer_metrics
trainable_variables
regularization_losses
	variables
dlayer_regularization_losses
h

Fkernel
Gbias
etrainable_variables
fregularization_losses
g	variables
h	keras_api

F0
G1
 

F0
G1
?
inon_trainable_variables

jlayers
kmetrics
llayer_metrics
trainable_variables
regularization_losses
	variables
mlayer_regularization_losses
h

Hkernel
Ibias
ntrainable_variables
oregularization_losses
p	variables
q	keras_api

H0
I1
 

H0
I1
?
rnon_trainable_variables

slayers
tmetrics
ulayer_metrics
 trainable_variables
!regularization_losses
"	variables
vlayer_regularization_losses
R
wtrainable_variables
xregularization_losses
y	variables
z	keras_api
 
 
 
?
{non_trainable_variables

|layers
}metrics
~layer_metrics
%trainable_variables
&regularization_losses
'	variables
layer_regularization_losses
V
?trainable_variables
?regularization_losses
?	variables
?	keras_api
 
 
 
?
?non_trainable_variables
?layers
?metrics
?layer_metrics
*trainable_variables
+regularization_losses
,	variables
 ?layer_regularization_losses
V
?trainable_variables
?regularization_losses
?	variables
?	keras_api
 
 
 
?
?non_trainable_variables
?layers
?metrics
?layer_metrics
/trainable_variables
0regularization_losses
1	variables
 ?layer_regularization_losses
l

Jkernel
Kbias
?trainable_variables
?regularization_losses
?	variables
?	keras_api

J0
K1
 

J0
K1
?
?non_trainable_variables
?layers
?metrics
?layer_metrics
4trainable_variables
5regularization_losses
6	variables
 ?layer_regularization_losses
l

Lkernel
Mbias
?trainable_variables
?regularization_losses
?	variables
?	keras_api

L0
M1
 

L0
M1
?
?non_trainable_variables
?layers
?metrics
?layer_metrics
9trainable_variables
:regularization_losses
;	variables
 ?layer_regularization_losses
HF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
b`
VARIABLE_VALUEmodule_wrapper/conv2d/kernel0trainable_variables/0/.ATTRIBUTES/VARIABLE_VALUE
`^
VARIABLE_VALUEmodule_wrapper/conv2d/bias0trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUE
fd
VARIABLE_VALUE module_wrapper_1/conv2d_1/kernel0trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUE
db
VARIABLE_VALUEmodule_wrapper_1/conv2d_1/bias0trainable_variables/3/.ATTRIBUTES/VARIABLE_VALUE
fd
VARIABLE_VALUE module_wrapper_2/conv2d_2/kernel0trainable_variables/4/.ATTRIBUTES/VARIABLE_VALUE
db
VARIABLE_VALUEmodule_wrapper_2/conv2d_2/bias0trainable_variables/5/.ATTRIBUTES/VARIABLE_VALUE
fd
VARIABLE_VALUE module_wrapper_3/conv2d_3/kernel0trainable_variables/6/.ATTRIBUTES/VARIABLE_VALUE
db
VARIABLE_VALUEmodule_wrapper_3/conv2d_3/bias0trainable_variables/7/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUEmodule_wrapper_7/dense/kernel0trainable_variables/8/.ATTRIBUTES/VARIABLE_VALUE
a_
VARIABLE_VALUEmodule_wrapper_7/dense/bias0trainable_variables/9/.ATTRIBUTES/VARIABLE_VALUE
fd
VARIABLE_VALUEmodule_wrapper_8/dense_1/kernel1trainable_variables/10/.ATTRIBUTES/VARIABLE_VALUE
db
VARIABLE_VALUEmodule_wrapper_8/dense_1/bias1trainable_variables/11/.ATTRIBUTES/VARIABLE_VALUE
 

?0
?1
 
?
0
1
2
3
4
5
6
7
	8
 

B0
C1
 

B0
C1
?
?non_trainable_variables
?layers
?metrics
?layer_metrics
Strainable_variables
Tregularization_losses
U	variables
 ?layer_regularization_losses
 
 
 
 
 

D0
E1
 

D0
E1
?
?non_trainable_variables
?layers
?metrics
?layer_metrics
\trainable_variables
]regularization_losses
^	variables
 ?layer_regularization_losses
 
 
 
 
 

F0
G1
 

F0
G1
?
?non_trainable_variables
?layers
?metrics
?layer_metrics
etrainable_variables
fregularization_losses
g	variables
 ?layer_regularization_losses
 
 
 
 
 

H0
I1
 

H0
I1
?
?non_trainable_variables
?layers
?metrics
?layer_metrics
ntrainable_variables
oregularization_losses
p	variables
 ?layer_regularization_losses
 
 
 
 
 
 
 
 
?
?non_trainable_variables
?layers
?metrics
?layer_metrics
wtrainable_variables
xregularization_losses
y	variables
 ?layer_regularization_losses
 
 
 
 
 
 
 
 
?
?non_trainable_variables
?layers
?metrics
?layer_metrics
?trainable_variables
?regularization_losses
?	variables
 ?layer_regularization_losses
 
 
 
 
 
 
 
 
?
?non_trainable_variables
?layers
?metrics
?layer_metrics
?trainable_variables
?regularization_losses
?	variables
 ?layer_regularization_losses
 
 
 
 
 

J0
K1
 

J0
K1
?
?non_trainable_variables
?layers
?metrics
?layer_metrics
?trainable_variables
?regularization_losses
?	variables
 ?layer_regularization_losses
 
 
 
 
 

L0
M1
 

L0
M1
?
?non_trainable_variables
?layers
?metrics
?layer_metrics
?trainable_variables
?regularization_losses
?	variables
 ?layer_regularization_losses
 
 
 
 
 
8

?total

?count
?	variables
?	keras_api
I

?total

?count
?
_fn_kwargs
?	variables
?	keras_api
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

?0
?1

?	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

?0
?1

?	variables
??
VARIABLE_VALUE#Adam/module_wrapper/conv2d/kernel/mLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE!Adam/module_wrapper/conv2d/bias/mLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE'Adam/module_wrapper_1/conv2d_1/kernel/mLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE%Adam/module_wrapper_1/conv2d_1/bias/mLtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE'Adam/module_wrapper_2/conv2d_2/kernel/mLtrainable_variables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE%Adam/module_wrapper_2/conv2d_2/bias/mLtrainable_variables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE'Adam/module_wrapper_3/conv2d_3/kernel/mLtrainable_variables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE%Adam/module_wrapper_3/conv2d_3/bias/mLtrainable_variables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE$Adam/module_wrapper_7/dense/kernel/mLtrainable_variables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE"Adam/module_wrapper_7/dense/bias/mLtrainable_variables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE&Adam/module_wrapper_8/dense_1/kernel/mMtrainable_variables/10/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE$Adam/module_wrapper_8/dense_1/bias/mMtrainable_variables/11/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE#Adam/module_wrapper/conv2d/kernel/vLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE!Adam/module_wrapper/conv2d/bias/vLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE'Adam/module_wrapper_1/conv2d_1/kernel/vLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE%Adam/module_wrapper_1/conv2d_1/bias/vLtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE'Adam/module_wrapper_2/conv2d_2/kernel/vLtrainable_variables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE%Adam/module_wrapper_2/conv2d_2/bias/vLtrainable_variables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE'Adam/module_wrapper_3/conv2d_3/kernel/vLtrainable_variables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE%Adam/module_wrapper_3/conv2d_3/bias/vLtrainable_variables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE$Adam/module_wrapper_7/dense/kernel/vLtrainable_variables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE"Adam/module_wrapper_7/dense/bias/vLtrainable_variables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE&Adam/module_wrapper_8/dense_1/kernel/vMtrainable_variables/10/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE$Adam/module_wrapper_8/dense_1/bias/vMtrainable_variables/11/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
$serving_default_module_wrapper_inputPlaceholder*/
_output_shapes
:?????????*
dtype0*$
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCall$serving_default_module_wrapper_inputmodule_wrapper/conv2d/kernelmodule_wrapper/conv2d/bias module_wrapper_1/conv2d_1/kernelmodule_wrapper_1/conv2d_1/bias module_wrapper_2/conv2d_2/kernelmodule_wrapper_2/conv2d_2/bias module_wrapper_3/conv2d_3/kernelmodule_wrapper_3/conv2d_3/biasmodule_wrapper_7/dense/kernelmodule_wrapper_7/dense/biasmodule_wrapper_8/dense_1/kernelmodule_wrapper_8/dense_1/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????$*.
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *-
f(R&
$__inference_signature_wrapper_501728
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenameAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp0module_wrapper/conv2d/kernel/Read/ReadVariableOp.module_wrapper/conv2d/bias/Read/ReadVariableOp4module_wrapper_1/conv2d_1/kernel/Read/ReadVariableOp2module_wrapper_1/conv2d_1/bias/Read/ReadVariableOp4module_wrapper_2/conv2d_2/kernel/Read/ReadVariableOp2module_wrapper_2/conv2d_2/bias/Read/ReadVariableOp4module_wrapper_3/conv2d_3/kernel/Read/ReadVariableOp2module_wrapper_3/conv2d_3/bias/Read/ReadVariableOp1module_wrapper_7/dense/kernel/Read/ReadVariableOp/module_wrapper_7/dense/bias/Read/ReadVariableOp3module_wrapper_8/dense_1/kernel/Read/ReadVariableOp1module_wrapper_8/dense_1/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp7Adam/module_wrapper/conv2d/kernel/m/Read/ReadVariableOp5Adam/module_wrapper/conv2d/bias/m/Read/ReadVariableOp;Adam/module_wrapper_1/conv2d_1/kernel/m/Read/ReadVariableOp9Adam/module_wrapper_1/conv2d_1/bias/m/Read/ReadVariableOp;Adam/module_wrapper_2/conv2d_2/kernel/m/Read/ReadVariableOp9Adam/module_wrapper_2/conv2d_2/bias/m/Read/ReadVariableOp;Adam/module_wrapper_3/conv2d_3/kernel/m/Read/ReadVariableOp9Adam/module_wrapper_3/conv2d_3/bias/m/Read/ReadVariableOp8Adam/module_wrapper_7/dense/kernel/m/Read/ReadVariableOp6Adam/module_wrapper_7/dense/bias/m/Read/ReadVariableOp:Adam/module_wrapper_8/dense_1/kernel/m/Read/ReadVariableOp8Adam/module_wrapper_8/dense_1/bias/m/Read/ReadVariableOp7Adam/module_wrapper/conv2d/kernel/v/Read/ReadVariableOp5Adam/module_wrapper/conv2d/bias/v/Read/ReadVariableOp;Adam/module_wrapper_1/conv2d_1/kernel/v/Read/ReadVariableOp9Adam/module_wrapper_1/conv2d_1/bias/v/Read/ReadVariableOp;Adam/module_wrapper_2/conv2d_2/kernel/v/Read/ReadVariableOp9Adam/module_wrapper_2/conv2d_2/bias/v/Read/ReadVariableOp;Adam/module_wrapper_3/conv2d_3/kernel/v/Read/ReadVariableOp9Adam/module_wrapper_3/conv2d_3/bias/v/Read/ReadVariableOp8Adam/module_wrapper_7/dense/kernel/v/Read/ReadVariableOp6Adam/module_wrapper_7/dense/bias/v/Read/ReadVariableOp:Adam/module_wrapper_8/dense_1/kernel/v/Read/ReadVariableOp8Adam/module_wrapper_8/dense_1/bias/v/Read/ReadVariableOpConst*:
Tin3
12/	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *(
f#R!
__inference__traced_save_502537
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filename	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratemodule_wrapper/conv2d/kernelmodule_wrapper/conv2d/bias module_wrapper_1/conv2d_1/kernelmodule_wrapper_1/conv2d_1/bias module_wrapper_2/conv2d_2/kernelmodule_wrapper_2/conv2d_2/bias module_wrapper_3/conv2d_3/kernelmodule_wrapper_3/conv2d_3/biasmodule_wrapper_7/dense/kernelmodule_wrapper_7/dense/biasmodule_wrapper_8/dense_1/kernelmodule_wrapper_8/dense_1/biastotalcounttotal_1count_1#Adam/module_wrapper/conv2d/kernel/m!Adam/module_wrapper/conv2d/bias/m'Adam/module_wrapper_1/conv2d_1/kernel/m%Adam/module_wrapper_1/conv2d_1/bias/m'Adam/module_wrapper_2/conv2d_2/kernel/m%Adam/module_wrapper_2/conv2d_2/bias/m'Adam/module_wrapper_3/conv2d_3/kernel/m%Adam/module_wrapper_3/conv2d_3/bias/m$Adam/module_wrapper_7/dense/kernel/m"Adam/module_wrapper_7/dense/bias/m&Adam/module_wrapper_8/dense_1/kernel/m$Adam/module_wrapper_8/dense_1/bias/m#Adam/module_wrapper/conv2d/kernel/v!Adam/module_wrapper/conv2d/bias/v'Adam/module_wrapper_1/conv2d_1/kernel/v%Adam/module_wrapper_1/conv2d_1/bias/v'Adam/module_wrapper_2/conv2d_2/kernel/v%Adam/module_wrapper_2/conv2d_2/bias/v'Adam/module_wrapper_3/conv2d_3/kernel/v%Adam/module_wrapper_3/conv2d_3/bias/v$Adam/module_wrapper_7/dense/kernel/v"Adam/module_wrapper_7/dense/bias/v&Adam/module_wrapper_8/dense_1/kernel/v$Adam/module_wrapper_8/dense_1/bias/v*9
Tin2
02.*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *+
f&R$
"__inference__traced_restore_502682??
?
?
L__inference_module_wrapper_1_layer_call_and_return_conditional_losses_501456

args_0A
'conv2d_1_conv2d_readvariableop_resource: 6
(conv2d_1_biasadd_readvariableop_resource: 
identity??conv2d_1/BiasAdd/ReadVariableOp?conv2d_1/Conv2D/ReadVariableOp?
conv2d_1/Conv2D/ReadVariableOpReadVariableOp'conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02 
conv2d_1/Conv2D/ReadVariableOp?
conv2d_1/Conv2DConv2Dargs_0&conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? *
paddingSAME*
strides
2
conv2d_1/Conv2D?
conv2d_1/BiasAdd/ReadVariableOpReadVariableOp(conv2d_1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02!
conv2d_1/BiasAdd/ReadVariableOp?
conv2d_1/BiasAddBiasAddconv2d_1/Conv2D:output:0'conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? 2
conv2d_1/BiasAdd{
conv2d_1/ReluReluconv2d_1/BiasAdd:output:0*
T0*/
_output_shapes
:????????? 2
conv2d_1/Relu?
IdentityIdentityconv2d_1/Relu:activations:0 ^conv2d_1/BiasAdd/ReadVariableOp^conv2d_1/Conv2D/ReadVariableOp*
T0*/
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : 2B
conv2d_1/BiasAdd/ReadVariableOpconv2d_1/BiasAdd/ReadVariableOp2@
conv2d_1/Conv2D/ReadVariableOpconv2d_1/Conv2D/ReadVariableOp:W S
/
_output_shapes
:?????????
 
_user_specified_nameargs_0
?
?
L__inference_module_wrapper_2_layer_call_and_return_conditional_losses_501426

args_0A
'conv2d_2_conv2d_readvariableop_resource: @6
(conv2d_2_biasadd_readvariableop_resource:@
identity??conv2d_2/BiasAdd/ReadVariableOp?conv2d_2/Conv2D/ReadVariableOp?
conv2d_2/Conv2D/ReadVariableOpReadVariableOp'conv2d_2_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02 
conv2d_2/Conv2D/ReadVariableOp?
conv2d_2/Conv2DConv2Dargs_0&conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingSAME*
strides
2
conv2d_2/Conv2D?
conv2d_2/BiasAdd/ReadVariableOpReadVariableOp(conv2d_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
conv2d_2/BiasAdd/ReadVariableOp?
conv2d_2/BiasAddBiasAddconv2d_2/Conv2D:output:0'conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2
conv2d_2/BiasAdd{
conv2d_2/ReluReluconv2d_2/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@2
conv2d_2/Relu?
IdentityIdentityconv2d_2/Relu:activations:0 ^conv2d_2/BiasAdd/ReadVariableOp^conv2d_2/Conv2D/ReadVariableOp*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:????????? : : 2B
conv2d_2/BiasAdd/ReadVariableOpconv2d_2/BiasAdd/ReadVariableOp2@
conv2d_2/Conv2D/ReadVariableOpconv2d_2/Conv2D/ReadVariableOp:W S
/
_output_shapes
:????????? 
 
_user_specified_nameargs_0
?f
?
!__inference__wrapped_model_501098
module_wrapper_inputY
?sequential_module_wrapper_conv2d_conv2d_readvariableop_resource:N
@sequential_module_wrapper_conv2d_biasadd_readvariableop_resource:]
Csequential_module_wrapper_1_conv2d_1_conv2d_readvariableop_resource: R
Dsequential_module_wrapper_1_conv2d_1_biasadd_readvariableop_resource: ]
Csequential_module_wrapper_2_conv2d_2_conv2d_readvariableop_resource: @R
Dsequential_module_wrapper_2_conv2d_2_biasadd_readvariableop_resource:@]
Csequential_module_wrapper_3_conv2d_3_conv2d_readvariableop_resource:@@R
Dsequential_module_wrapper_3_conv2d_3_biasadd_readvariableop_resource:@T
@sequential_module_wrapper_7_dense_matmul_readvariableop_resource:
??P
Asequential_module_wrapper_7_dense_biasadd_readvariableop_resource:	?U
Bsequential_module_wrapper_8_dense_1_matmul_readvariableop_resource:	?$Q
Csequential_module_wrapper_8_dense_1_biasadd_readvariableop_resource:$
identity??7sequential/module_wrapper/conv2d/BiasAdd/ReadVariableOp?6sequential/module_wrapper/conv2d/Conv2D/ReadVariableOp?;sequential/module_wrapper_1/conv2d_1/BiasAdd/ReadVariableOp?:sequential/module_wrapper_1/conv2d_1/Conv2D/ReadVariableOp?;sequential/module_wrapper_2/conv2d_2/BiasAdd/ReadVariableOp?:sequential/module_wrapper_2/conv2d_2/Conv2D/ReadVariableOp?;sequential/module_wrapper_3/conv2d_3/BiasAdd/ReadVariableOp?:sequential/module_wrapper_3/conv2d_3/Conv2D/ReadVariableOp?8sequential/module_wrapper_7/dense/BiasAdd/ReadVariableOp?7sequential/module_wrapper_7/dense/MatMul/ReadVariableOp?:sequential/module_wrapper_8/dense_1/BiasAdd/ReadVariableOp?9sequential/module_wrapper_8/dense_1/MatMul/ReadVariableOp?
6sequential/module_wrapper/conv2d/Conv2D/ReadVariableOpReadVariableOp?sequential_module_wrapper_conv2d_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype028
6sequential/module_wrapper/conv2d/Conv2D/ReadVariableOp?
'sequential/module_wrapper/conv2d/Conv2DConv2Dmodule_wrapper_input>sequential/module_wrapper/conv2d/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
paddingSAME*
strides
2)
'sequential/module_wrapper/conv2d/Conv2D?
7sequential/module_wrapper/conv2d/BiasAdd/ReadVariableOpReadVariableOp@sequential_module_wrapper_conv2d_biasadd_readvariableop_resource*
_output_shapes
:*
dtype029
7sequential/module_wrapper/conv2d/BiasAdd/ReadVariableOp?
(sequential/module_wrapper/conv2d/BiasAddBiasAdd0sequential/module_wrapper/conv2d/Conv2D:output:0?sequential/module_wrapper/conv2d/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2*
(sequential/module_wrapper/conv2d/BiasAdd?
%sequential/module_wrapper/conv2d/ReluRelu1sequential/module_wrapper/conv2d/BiasAdd:output:0*
T0*/
_output_shapes
:?????????2'
%sequential/module_wrapper/conv2d/Relu?
:sequential/module_wrapper_1/conv2d_1/Conv2D/ReadVariableOpReadVariableOpCsequential_module_wrapper_1_conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02<
:sequential/module_wrapper_1/conv2d_1/Conv2D/ReadVariableOp?
+sequential/module_wrapper_1/conv2d_1/Conv2DConv2D3sequential/module_wrapper/conv2d/Relu:activations:0Bsequential/module_wrapper_1/conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? *
paddingSAME*
strides
2-
+sequential/module_wrapper_1/conv2d_1/Conv2D?
;sequential/module_wrapper_1/conv2d_1/BiasAdd/ReadVariableOpReadVariableOpDsequential_module_wrapper_1_conv2d_1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02=
;sequential/module_wrapper_1/conv2d_1/BiasAdd/ReadVariableOp?
,sequential/module_wrapper_1/conv2d_1/BiasAddBiasAdd4sequential/module_wrapper_1/conv2d_1/Conv2D:output:0Csequential/module_wrapper_1/conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? 2.
,sequential/module_wrapper_1/conv2d_1/BiasAdd?
)sequential/module_wrapper_1/conv2d_1/ReluRelu5sequential/module_wrapper_1/conv2d_1/BiasAdd:output:0*
T0*/
_output_shapes
:????????? 2+
)sequential/module_wrapper_1/conv2d_1/Relu?
:sequential/module_wrapper_2/conv2d_2/Conv2D/ReadVariableOpReadVariableOpCsequential_module_wrapper_2_conv2d_2_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02<
:sequential/module_wrapper_2/conv2d_2/Conv2D/ReadVariableOp?
+sequential/module_wrapper_2/conv2d_2/Conv2DConv2D7sequential/module_wrapper_1/conv2d_1/Relu:activations:0Bsequential/module_wrapper_2/conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingSAME*
strides
2-
+sequential/module_wrapper_2/conv2d_2/Conv2D?
;sequential/module_wrapper_2/conv2d_2/BiasAdd/ReadVariableOpReadVariableOpDsequential_module_wrapper_2_conv2d_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02=
;sequential/module_wrapper_2/conv2d_2/BiasAdd/ReadVariableOp?
,sequential/module_wrapper_2/conv2d_2/BiasAddBiasAdd4sequential/module_wrapper_2/conv2d_2/Conv2D:output:0Csequential/module_wrapper_2/conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2.
,sequential/module_wrapper_2/conv2d_2/BiasAdd?
)sequential/module_wrapper_2/conv2d_2/ReluRelu5sequential/module_wrapper_2/conv2d_2/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@2+
)sequential/module_wrapper_2/conv2d_2/Relu?
:sequential/module_wrapper_3/conv2d_3/Conv2D/ReadVariableOpReadVariableOpCsequential_module_wrapper_3_conv2d_3_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02<
:sequential/module_wrapper_3/conv2d_3/Conv2D/ReadVariableOp?
+sequential/module_wrapper_3/conv2d_3/Conv2DConv2D7sequential/module_wrapper_2/conv2d_2/Relu:activations:0Bsequential/module_wrapper_3/conv2d_3/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingSAME*
strides
2-
+sequential/module_wrapper_3/conv2d_3/Conv2D?
;sequential/module_wrapper_3/conv2d_3/BiasAdd/ReadVariableOpReadVariableOpDsequential_module_wrapper_3_conv2d_3_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02=
;sequential/module_wrapper_3/conv2d_3/BiasAdd/ReadVariableOp?
,sequential/module_wrapper_3/conv2d_3/BiasAddBiasAdd4sequential/module_wrapper_3/conv2d_3/Conv2D:output:0Csequential/module_wrapper_3/conv2d_3/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2.
,sequential/module_wrapper_3/conv2d_3/BiasAdd?
)sequential/module_wrapper_3/conv2d_3/ReluRelu5sequential/module_wrapper_3/conv2d_3/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@2+
)sequential/module_wrapper_3/conv2d_3/Relu?
1sequential/module_wrapper_4/max_pooling2d/MaxPoolMaxPool7sequential/module_wrapper_3/conv2d_3/Relu:activations:0*/
_output_shapes
:?????????@*
ksize
*
paddingVALID*
strides
23
1sequential/module_wrapper_4/max_pooling2d/MaxPool?
,sequential/module_wrapper_5/dropout/IdentityIdentity:sequential/module_wrapper_4/max_pooling2d/MaxPool:output:0*
T0*/
_output_shapes
:?????????@2.
,sequential/module_wrapper_5/dropout/Identity?
)sequential/module_wrapper_6/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"????@  2+
)sequential/module_wrapper_6/flatten/Const?
+sequential/module_wrapper_6/flatten/ReshapeReshape5sequential/module_wrapper_5/dropout/Identity:output:02sequential/module_wrapper_6/flatten/Const:output:0*
T0*(
_output_shapes
:??????????2-
+sequential/module_wrapper_6/flatten/Reshape?
7sequential/module_wrapper_7/dense/MatMul/ReadVariableOpReadVariableOp@sequential_module_wrapper_7_dense_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype029
7sequential/module_wrapper_7/dense/MatMul/ReadVariableOp?
(sequential/module_wrapper_7/dense/MatMulMatMul4sequential/module_wrapper_6/flatten/Reshape:output:0?sequential/module_wrapper_7/dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2*
(sequential/module_wrapper_7/dense/MatMul?
8sequential/module_wrapper_7/dense/BiasAdd/ReadVariableOpReadVariableOpAsequential_module_wrapper_7_dense_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02:
8sequential/module_wrapper_7/dense/BiasAdd/ReadVariableOp?
)sequential/module_wrapper_7/dense/BiasAddBiasAdd2sequential/module_wrapper_7/dense/MatMul:product:0@sequential/module_wrapper_7/dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2+
)sequential/module_wrapper_7/dense/BiasAdd?
&sequential/module_wrapper_7/dense/ReluRelu2sequential/module_wrapper_7/dense/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2(
&sequential/module_wrapper_7/dense/Relu?
9sequential/module_wrapper_8/dense_1/MatMul/ReadVariableOpReadVariableOpBsequential_module_wrapper_8_dense_1_matmul_readvariableop_resource*
_output_shapes
:	?$*
dtype02;
9sequential/module_wrapper_8/dense_1/MatMul/ReadVariableOp?
*sequential/module_wrapper_8/dense_1/MatMulMatMul4sequential/module_wrapper_7/dense/Relu:activations:0Asequential/module_wrapper_8/dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????$2,
*sequential/module_wrapper_8/dense_1/MatMul?
:sequential/module_wrapper_8/dense_1/BiasAdd/ReadVariableOpReadVariableOpCsequential_module_wrapper_8_dense_1_biasadd_readvariableop_resource*
_output_shapes
:$*
dtype02<
:sequential/module_wrapper_8/dense_1/BiasAdd/ReadVariableOp?
+sequential/module_wrapper_8/dense_1/BiasAddBiasAdd4sequential/module_wrapper_8/dense_1/MatMul:product:0Bsequential/module_wrapper_8/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????$2-
+sequential/module_wrapper_8/dense_1/BiasAdd?
+sequential/module_wrapper_8/dense_1/SoftmaxSoftmax4sequential/module_wrapper_8/dense_1/BiasAdd:output:0*
T0*'
_output_shapes
:?????????$2-
+sequential/module_wrapper_8/dense_1/Softmax?
IdentityIdentity5sequential/module_wrapper_8/dense_1/Softmax:softmax:08^sequential/module_wrapper/conv2d/BiasAdd/ReadVariableOp7^sequential/module_wrapper/conv2d/Conv2D/ReadVariableOp<^sequential/module_wrapper_1/conv2d_1/BiasAdd/ReadVariableOp;^sequential/module_wrapper_1/conv2d_1/Conv2D/ReadVariableOp<^sequential/module_wrapper_2/conv2d_2/BiasAdd/ReadVariableOp;^sequential/module_wrapper_2/conv2d_2/Conv2D/ReadVariableOp<^sequential/module_wrapper_3/conv2d_3/BiasAdd/ReadVariableOp;^sequential/module_wrapper_3/conv2d_3/Conv2D/ReadVariableOp9^sequential/module_wrapper_7/dense/BiasAdd/ReadVariableOp8^sequential/module_wrapper_7/dense/MatMul/ReadVariableOp;^sequential/module_wrapper_8/dense_1/BiasAdd/ReadVariableOp:^sequential/module_wrapper_8/dense_1/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????$2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:?????????: : : : : : : : : : : : 2r
7sequential/module_wrapper/conv2d/BiasAdd/ReadVariableOp7sequential/module_wrapper/conv2d/BiasAdd/ReadVariableOp2p
6sequential/module_wrapper/conv2d/Conv2D/ReadVariableOp6sequential/module_wrapper/conv2d/Conv2D/ReadVariableOp2z
;sequential/module_wrapper_1/conv2d_1/BiasAdd/ReadVariableOp;sequential/module_wrapper_1/conv2d_1/BiasAdd/ReadVariableOp2x
:sequential/module_wrapper_1/conv2d_1/Conv2D/ReadVariableOp:sequential/module_wrapper_1/conv2d_1/Conv2D/ReadVariableOp2z
;sequential/module_wrapper_2/conv2d_2/BiasAdd/ReadVariableOp;sequential/module_wrapper_2/conv2d_2/BiasAdd/ReadVariableOp2x
:sequential/module_wrapper_2/conv2d_2/Conv2D/ReadVariableOp:sequential/module_wrapper_2/conv2d_2/Conv2D/ReadVariableOp2z
;sequential/module_wrapper_3/conv2d_3/BiasAdd/ReadVariableOp;sequential/module_wrapper_3/conv2d_3/BiasAdd/ReadVariableOp2x
:sequential/module_wrapper_3/conv2d_3/Conv2D/ReadVariableOp:sequential/module_wrapper_3/conv2d_3/Conv2D/ReadVariableOp2t
8sequential/module_wrapper_7/dense/BiasAdd/ReadVariableOp8sequential/module_wrapper_7/dense/BiasAdd/ReadVariableOp2r
7sequential/module_wrapper_7/dense/MatMul/ReadVariableOp7sequential/module_wrapper_7/dense/MatMul/ReadVariableOp2x
:sequential/module_wrapper_8/dense_1/BiasAdd/ReadVariableOp:sequential/module_wrapper_8/dense_1/BiasAdd/ReadVariableOp2v
9sequential/module_wrapper_8/dense_1/MatMul/ReadVariableOp9sequential/module_wrapper_8/dense_1/MatMul/ReadVariableOp:e a
/
_output_shapes
:?????????
.
_user_specified_namemodule_wrapper_input
?
?
J__inference_module_wrapper_layer_call_and_return_conditional_losses_501116

args_0?
%conv2d_conv2d_readvariableop_resource:4
&conv2d_biasadd_readvariableop_resource:
identity??conv2d/BiasAdd/ReadVariableOp?conv2d/Conv2D/ReadVariableOp?
conv2d/Conv2D/ReadVariableOpReadVariableOp%conv2d_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
conv2d/Conv2D/ReadVariableOp?
conv2d/Conv2DConv2Dargs_0$conv2d/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
paddingSAME*
strides
2
conv2d/Conv2D?
conv2d/BiasAdd/ReadVariableOpReadVariableOp&conv2d_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
conv2d/BiasAdd/ReadVariableOp?
conv2d/BiasAddBiasAddconv2d/Conv2D:output:0%conv2d/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2
conv2d/BiasAddu
conv2d/ReluReluconv2d/BiasAdd:output:0*
T0*/
_output_shapes
:?????????2
conv2d/Relu?
IdentityIdentityconv2d/Relu:activations:0^conv2d/BiasAdd/ReadVariableOp^conv2d/Conv2D/ReadVariableOp*
T0*/
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : 2>
conv2d/BiasAdd/ReadVariableOpconv2d/BiasAdd/ReadVariableOp2<
conv2d/Conv2D/ReadVariableOpconv2d/Conv2D/ReadVariableOp:W S
/
_output_shapes
:?????????
 
_user_specified_nameargs_0
?
?
J__inference_module_wrapper_layer_call_and_return_conditional_losses_502110

args_0?
%conv2d_conv2d_readvariableop_resource:4
&conv2d_biasadd_readvariableop_resource:
identity??conv2d/BiasAdd/ReadVariableOp?conv2d/Conv2D/ReadVariableOp?
conv2d/Conv2D/ReadVariableOpReadVariableOp%conv2d_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
conv2d/Conv2D/ReadVariableOp?
conv2d/Conv2DConv2Dargs_0$conv2d/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
paddingSAME*
strides
2
conv2d/Conv2D?
conv2d/BiasAdd/ReadVariableOpReadVariableOp&conv2d_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
conv2d/BiasAdd/ReadVariableOp?
conv2d/BiasAddBiasAddconv2d/Conv2D:output:0%conv2d/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2
conv2d/BiasAddu
conv2d/ReluReluconv2d/BiasAdd:output:0*
T0*/
_output_shapes
:?????????2
conv2d/Relu?
IdentityIdentityconv2d/Relu:activations:0^conv2d/BiasAdd/ReadVariableOp^conv2d/Conv2D/ReadVariableOp*
T0*/
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : 2>
conv2d/BiasAdd/ReadVariableOpconv2d/BiasAdd/ReadVariableOp2<
conv2d/Conv2D/ReadVariableOpconv2d/Conv2D/ReadVariableOp:W S
/
_output_shapes
:?????????
 
_user_specified_nameargs_0
?
?
L__inference_module_wrapper_2_layer_call_and_return_conditional_losses_502190

args_0A
'conv2d_2_conv2d_readvariableop_resource: @6
(conv2d_2_biasadd_readvariableop_resource:@
identity??conv2d_2/BiasAdd/ReadVariableOp?conv2d_2/Conv2D/ReadVariableOp?
conv2d_2/Conv2D/ReadVariableOpReadVariableOp'conv2d_2_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02 
conv2d_2/Conv2D/ReadVariableOp?
conv2d_2/Conv2DConv2Dargs_0&conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingSAME*
strides
2
conv2d_2/Conv2D?
conv2d_2/BiasAdd/ReadVariableOpReadVariableOp(conv2d_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
conv2d_2/BiasAdd/ReadVariableOp?
conv2d_2/BiasAddBiasAddconv2d_2/Conv2D:output:0'conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2
conv2d_2/BiasAdd{
conv2d_2/ReluReluconv2d_2/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@2
conv2d_2/Relu?
IdentityIdentityconv2d_2/Relu:activations:0 ^conv2d_2/BiasAdd/ReadVariableOp^conv2d_2/Conv2D/ReadVariableOp*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:????????? : : 2B
conv2d_2/BiasAdd/ReadVariableOpconv2d_2/BiasAdd/ReadVariableOp2@
conv2d_2/Conv2D/ReadVariableOpconv2d_2/Conv2D/ReadVariableOp:W S
/
_output_shapes
:????????? 
 
_user_specified_nameargs_0
??
? 
"__inference__traced_restore_502682
file_prefix$
assignvariableop_adam_iter:	 (
assignvariableop_1_adam_beta_1: (
assignvariableop_2_adam_beta_2: '
assignvariableop_3_adam_decay: /
%assignvariableop_4_adam_learning_rate: I
/assignvariableop_5_module_wrapper_conv2d_kernel:;
-assignvariableop_6_module_wrapper_conv2d_bias:M
3assignvariableop_7_module_wrapper_1_conv2d_1_kernel: ?
1assignvariableop_8_module_wrapper_1_conv2d_1_bias: M
3assignvariableop_9_module_wrapper_2_conv2d_2_kernel: @@
2assignvariableop_10_module_wrapper_2_conv2d_2_bias:@N
4assignvariableop_11_module_wrapper_3_conv2d_3_kernel:@@@
2assignvariableop_12_module_wrapper_3_conv2d_3_bias:@E
1assignvariableop_13_module_wrapper_7_dense_kernel:
??>
/assignvariableop_14_module_wrapper_7_dense_bias:	?F
3assignvariableop_15_module_wrapper_8_dense_1_kernel:	?$?
1assignvariableop_16_module_wrapper_8_dense_1_bias:$#
assignvariableop_17_total: #
assignvariableop_18_count: %
assignvariableop_19_total_1: %
assignvariableop_20_count_1: Q
7assignvariableop_21_adam_module_wrapper_conv2d_kernel_m:C
5assignvariableop_22_adam_module_wrapper_conv2d_bias_m:U
;assignvariableop_23_adam_module_wrapper_1_conv2d_1_kernel_m: G
9assignvariableop_24_adam_module_wrapper_1_conv2d_1_bias_m: U
;assignvariableop_25_adam_module_wrapper_2_conv2d_2_kernel_m: @G
9assignvariableop_26_adam_module_wrapper_2_conv2d_2_bias_m:@U
;assignvariableop_27_adam_module_wrapper_3_conv2d_3_kernel_m:@@G
9assignvariableop_28_adam_module_wrapper_3_conv2d_3_bias_m:@L
8assignvariableop_29_adam_module_wrapper_7_dense_kernel_m:
??E
6assignvariableop_30_adam_module_wrapper_7_dense_bias_m:	?M
:assignvariableop_31_adam_module_wrapper_8_dense_1_kernel_m:	?$F
8assignvariableop_32_adam_module_wrapper_8_dense_1_bias_m:$Q
7assignvariableop_33_adam_module_wrapper_conv2d_kernel_v:C
5assignvariableop_34_adam_module_wrapper_conv2d_bias_v:U
;assignvariableop_35_adam_module_wrapper_1_conv2d_1_kernel_v: G
9assignvariableop_36_adam_module_wrapper_1_conv2d_1_bias_v: U
;assignvariableop_37_adam_module_wrapper_2_conv2d_2_kernel_v: @G
9assignvariableop_38_adam_module_wrapper_2_conv2d_2_bias_v:@U
;assignvariableop_39_adam_module_wrapper_3_conv2d_3_kernel_v:@@G
9assignvariableop_40_adam_module_wrapper_3_conv2d_3_bias_v:@L
8assignvariableop_41_adam_module_wrapper_7_dense_kernel_v:
??E
6assignvariableop_42_adam_module_wrapper_7_dense_bias_v:	?M
:assignvariableop_43_adam_module_wrapper_8_dense_1_kernel_v:	?$F
8assignvariableop_44_adam_module_wrapper_8_dense_1_bias_v:$
identity_46??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_21?AssignVariableOp_22?AssignVariableOp_23?AssignVariableOp_24?AssignVariableOp_25?AssignVariableOp_26?AssignVariableOp_27?AssignVariableOp_28?AssignVariableOp_29?AssignVariableOp_3?AssignVariableOp_30?AssignVariableOp_31?AssignVariableOp_32?AssignVariableOp_33?AssignVariableOp_34?AssignVariableOp_35?AssignVariableOp_36?AssignVariableOp_37?AssignVariableOp_38?AssignVariableOp_39?AssignVariableOp_4?AssignVariableOp_40?AssignVariableOp_41?AssignVariableOp_42?AssignVariableOp_43?AssignVariableOp_44?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:.*
dtype0*?
value?B?.B)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/0/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/3/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/4/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/5/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/6/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/7/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/8/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/9/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/10/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/11/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/10/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/11/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/10/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/11/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:.*
dtype0*o
valuefBd.B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*?
_output_shapes?
?::::::::::::::::::::::::::::::::::::::::::::::*<
dtypes2
02.	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0	*
_output_shapes
:2

Identity?
AssignVariableOpAssignVariableOpassignvariableop_adam_iterIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOpassignvariableop_1_adam_beta_1Identity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOpassignvariableop_2_adam_beta_2Identity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOpassignvariableop_3_adam_decayIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOp%assignvariableop_4_adam_learning_rateIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOp/assignvariableop_5_module_wrapper_conv2d_kernelIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOp-assignvariableop_6_module_wrapper_conv2d_biasIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOp3assignvariableop_7_module_wrapper_1_conv2d_1_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8?
AssignVariableOp_8AssignVariableOp1assignvariableop_8_module_wrapper_1_conv2d_1_biasIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9?
AssignVariableOp_9AssignVariableOp3assignvariableop_9_module_wrapper_2_conv2d_2_kernelIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10?
AssignVariableOp_10AssignVariableOp2assignvariableop_10_module_wrapper_2_conv2d_2_biasIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11?
AssignVariableOp_11AssignVariableOp4assignvariableop_11_module_wrapper_3_conv2d_3_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12?
AssignVariableOp_12AssignVariableOp2assignvariableop_12_module_wrapper_3_conv2d_3_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13?
AssignVariableOp_13AssignVariableOp1assignvariableop_13_module_wrapper_7_dense_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14?
AssignVariableOp_14AssignVariableOp/assignvariableop_14_module_wrapper_7_dense_biasIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15?
AssignVariableOp_15AssignVariableOp3assignvariableop_15_module_wrapper_8_dense_1_kernelIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16?
AssignVariableOp_16AssignVariableOp1assignvariableop_16_module_wrapper_8_dense_1_biasIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17?
AssignVariableOp_17AssignVariableOpassignvariableop_17_totalIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18?
AssignVariableOp_18AssignVariableOpassignvariableop_18_countIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19?
AssignVariableOp_19AssignVariableOpassignvariableop_19_total_1Identity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20?
AssignVariableOp_20AssignVariableOpassignvariableop_20_count_1Identity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21?
AssignVariableOp_21AssignVariableOp7assignvariableop_21_adam_module_wrapper_conv2d_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22?
AssignVariableOp_22AssignVariableOp5assignvariableop_22_adam_module_wrapper_conv2d_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23?
AssignVariableOp_23AssignVariableOp;assignvariableop_23_adam_module_wrapper_1_conv2d_1_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24?
AssignVariableOp_24AssignVariableOp9assignvariableop_24_adam_module_wrapper_1_conv2d_1_bias_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25?
AssignVariableOp_25AssignVariableOp;assignvariableop_25_adam_module_wrapper_2_conv2d_2_kernel_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26?
AssignVariableOp_26AssignVariableOp9assignvariableop_26_adam_module_wrapper_2_conv2d_2_bias_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27?
AssignVariableOp_27AssignVariableOp;assignvariableop_27_adam_module_wrapper_3_conv2d_3_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28?
AssignVariableOp_28AssignVariableOp9assignvariableop_28_adam_module_wrapper_3_conv2d_3_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29?
AssignVariableOp_29AssignVariableOp8assignvariableop_29_adam_module_wrapper_7_dense_kernel_mIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30?
AssignVariableOp_30AssignVariableOp6assignvariableop_30_adam_module_wrapper_7_dense_bias_mIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31?
AssignVariableOp_31AssignVariableOp:assignvariableop_31_adam_module_wrapper_8_dense_1_kernel_mIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32?
AssignVariableOp_32AssignVariableOp8assignvariableop_32_adam_module_wrapper_8_dense_1_bias_mIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33?
AssignVariableOp_33AssignVariableOp7assignvariableop_33_adam_module_wrapper_conv2d_kernel_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34?
AssignVariableOp_34AssignVariableOp5assignvariableop_34_adam_module_wrapper_conv2d_bias_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_34n
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:2
Identity_35?
AssignVariableOp_35AssignVariableOp;assignvariableop_35_adam_module_wrapper_1_conv2d_1_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_35n
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:2
Identity_36?
AssignVariableOp_36AssignVariableOp9assignvariableop_36_adam_module_wrapper_1_conv2d_1_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_36n
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:2
Identity_37?
AssignVariableOp_37AssignVariableOp;assignvariableop_37_adam_module_wrapper_2_conv2d_2_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_37n
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:2
Identity_38?
AssignVariableOp_38AssignVariableOp9assignvariableop_38_adam_module_wrapper_2_conv2d_2_bias_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_38n
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:2
Identity_39?
AssignVariableOp_39AssignVariableOp;assignvariableop_39_adam_module_wrapper_3_conv2d_3_kernel_vIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_39n
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:2
Identity_40?
AssignVariableOp_40AssignVariableOp9assignvariableop_40_adam_module_wrapper_3_conv2d_3_bias_vIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_40n
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:2
Identity_41?
AssignVariableOp_41AssignVariableOp8assignvariableop_41_adam_module_wrapper_7_dense_kernel_vIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_41n
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:2
Identity_42?
AssignVariableOp_42AssignVariableOp6assignvariableop_42_adam_module_wrapper_7_dense_bias_vIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_42n
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:2
Identity_43?
AssignVariableOp_43AssignVariableOp:assignvariableop_43_adam_module_wrapper_8_dense_1_kernel_vIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_43n
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:2
Identity_44?
AssignVariableOp_44AssignVariableOp8assignvariableop_44_adam_module_wrapper_8_dense_1_bias_vIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_449
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp?
Identity_45Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_45?
Identity_46IdentityIdentity_45:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_46"#
identity_46Identity_46:output:0*o
_input_shapes^
\: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_4AssignVariableOp_42*
AssignVariableOp_40AssignVariableOp_402*
AssignVariableOp_41AssignVariableOp_412*
AssignVariableOp_42AssignVariableOp_422*
AssignVariableOp_43AssignVariableOp_432*
AssignVariableOp_44AssignVariableOp_442(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
?
?
1__inference_module_wrapper_8_layer_call_fn_502348

args_0
unknown:	?$
	unknown_0:$
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallargs_0unknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????$*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_module_wrapper_8_layer_call_and_return_conditional_losses_5012232
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????$2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameargs_0
?
M
1__inference_module_wrapper_6_layer_call_fn_502282

args_0
identity?
PartitionedCallPartitionedCallargs_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_module_wrapper_6_layer_call_and_return_conditional_losses_5011932
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????@:W S
/
_output_shapes
:?????????@
 
_user_specified_nameargs_0
?
?
1__inference_module_wrapper_3_layer_call_fn_502199

args_0!
unknown:@@
	unknown_0:@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallargs_0unknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_module_wrapper_3_layer_call_and_return_conditional_losses_5011672
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????@: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????@
 
_user_specified_nameargs_0
?
h
L__inference_module_wrapper_6_layer_call_and_return_conditional_losses_502293

args_0
identityo
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"????@  2
flatten/Const?
flatten/ReshapeReshapeargs_0flatten/Const:output:0*
T0*(
_output_shapes
:??????????2
flatten/Reshapem
IdentityIdentityflatten/Reshape:output:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????@:W S
/
_output_shapes
:?????????@
 
_user_specified_nameargs_0
?
?
1__inference_module_wrapper_7_layer_call_fn_502317

args_0
unknown:
??
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallargs_0unknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_module_wrapper_7_layer_call_and_return_conditional_losses_5013102
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameargs_0
?0
?
F__inference_sequential_layer_call_and_return_conditional_losses_501230

inputs/
module_wrapper_501117:#
module_wrapper_501119:1
module_wrapper_1_501134: %
module_wrapper_1_501136: 1
module_wrapper_2_501151: @%
module_wrapper_2_501153:@1
module_wrapper_3_501168:@@%
module_wrapper_3_501170:@+
module_wrapper_7_501207:
??&
module_wrapper_7_501209:	?*
module_wrapper_8_501224:	?$%
module_wrapper_8_501226:$
identity??&module_wrapper/StatefulPartitionedCall?(module_wrapper_1/StatefulPartitionedCall?(module_wrapper_2/StatefulPartitionedCall?(module_wrapper_3/StatefulPartitionedCall?(module_wrapper_7/StatefulPartitionedCall?(module_wrapper_8/StatefulPartitionedCall?
&module_wrapper/StatefulPartitionedCallStatefulPartitionedCallinputsmodule_wrapper_501117module_wrapper_501119*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_module_wrapper_layer_call_and_return_conditional_losses_5011162(
&module_wrapper/StatefulPartitionedCall?
(module_wrapper_1/StatefulPartitionedCallStatefulPartitionedCall/module_wrapper/StatefulPartitionedCall:output:0module_wrapper_1_501134module_wrapper_1_501136*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_module_wrapper_1_layer_call_and_return_conditional_losses_5011332*
(module_wrapper_1/StatefulPartitionedCall?
(module_wrapper_2/StatefulPartitionedCallStatefulPartitionedCall1module_wrapper_1/StatefulPartitionedCall:output:0module_wrapper_2_501151module_wrapper_2_501153*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_module_wrapper_2_layer_call_and_return_conditional_losses_5011502*
(module_wrapper_2/StatefulPartitionedCall?
(module_wrapper_3/StatefulPartitionedCallStatefulPartitionedCall1module_wrapper_2/StatefulPartitionedCall:output:0module_wrapper_3_501168module_wrapper_3_501170*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_module_wrapper_3_layer_call_and_return_conditional_losses_5011672*
(module_wrapper_3/StatefulPartitionedCall?
 module_wrapper_4/PartitionedCallPartitionedCall1module_wrapper_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_module_wrapper_4_layer_call_and_return_conditional_losses_5011782"
 module_wrapper_4/PartitionedCall?
 module_wrapper_5/PartitionedCallPartitionedCall)module_wrapper_4/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_module_wrapper_5_layer_call_and_return_conditional_losses_5011852"
 module_wrapper_5/PartitionedCall?
 module_wrapper_6/PartitionedCallPartitionedCall)module_wrapper_5/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_module_wrapper_6_layer_call_and_return_conditional_losses_5011932"
 module_wrapper_6/PartitionedCall?
(module_wrapper_7/StatefulPartitionedCallStatefulPartitionedCall)module_wrapper_6/PartitionedCall:output:0module_wrapper_7_501207module_wrapper_7_501209*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_module_wrapper_7_layer_call_and_return_conditional_losses_5012062*
(module_wrapper_7/StatefulPartitionedCall?
(module_wrapper_8/StatefulPartitionedCallStatefulPartitionedCall1module_wrapper_7/StatefulPartitionedCall:output:0module_wrapper_8_501224module_wrapper_8_501226*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????$*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_module_wrapper_8_layer_call_and_return_conditional_losses_5012232*
(module_wrapper_8/StatefulPartitionedCall?
IdentityIdentity1module_wrapper_8/StatefulPartitionedCall:output:0'^module_wrapper/StatefulPartitionedCall)^module_wrapper_1/StatefulPartitionedCall)^module_wrapper_2/StatefulPartitionedCall)^module_wrapper_3/StatefulPartitionedCall)^module_wrapper_7/StatefulPartitionedCall)^module_wrapper_8/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????$2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:?????????: : : : : : : : : : : : 2P
&module_wrapper/StatefulPartitionedCall&module_wrapper/StatefulPartitionedCall2T
(module_wrapper_1/StatefulPartitionedCall(module_wrapper_1/StatefulPartitionedCall2T
(module_wrapper_2/StatefulPartitionedCall(module_wrapper_2/StatefulPartitionedCall2T
(module_wrapper_3/StatefulPartitionedCall(module_wrapper_3/StatefulPartitionedCall2T
(module_wrapper_7/StatefulPartitionedCall(module_wrapper_7/StatefulPartitionedCall2T
(module_wrapper_8/StatefulPartitionedCall(module_wrapper_8/StatefulPartitionedCall:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
h
L__inference_module_wrapper_5_layer_call_and_return_conditional_losses_501185

args_0
identityr
dropout/IdentityIdentityargs_0*
T0*/
_output_shapes
:?????????@2
dropout/Identityu
IdentityIdentitydropout/Identity:output:0*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????@:W S
/
_output_shapes
:?????????@
 
_user_specified_nameargs_0
?
?
L__inference_module_wrapper_7_layer_call_and_return_conditional_losses_501310

args_08
$dense_matmul_readvariableop_resource:
??4
%dense_biasadd_readvariableop_resource:	?
identity??dense/BiasAdd/ReadVariableOp?dense/MatMul/ReadVariableOp?
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
dense/MatMul/ReadVariableOp?
dense/MatMulMatMulargs_0#dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense/MatMul?
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
dense/BiasAdd/ReadVariableOp?
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense/BiasAddk

dense/ReluReludense/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2

dense/Relu?
IdentityIdentitydense/Relu:activations:0^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameargs_0
?c
?
F__inference_sequential_layer_call_and_return_conditional_losses_502070
module_wrapper_inputN
4module_wrapper_conv2d_conv2d_readvariableop_resource:C
5module_wrapper_conv2d_biasadd_readvariableop_resource:R
8module_wrapper_1_conv2d_1_conv2d_readvariableop_resource: G
9module_wrapper_1_conv2d_1_biasadd_readvariableop_resource: R
8module_wrapper_2_conv2d_2_conv2d_readvariableop_resource: @G
9module_wrapper_2_conv2d_2_biasadd_readvariableop_resource:@R
8module_wrapper_3_conv2d_3_conv2d_readvariableop_resource:@@G
9module_wrapper_3_conv2d_3_biasadd_readvariableop_resource:@I
5module_wrapper_7_dense_matmul_readvariableop_resource:
??E
6module_wrapper_7_dense_biasadd_readvariableop_resource:	?J
7module_wrapper_8_dense_1_matmul_readvariableop_resource:	?$F
8module_wrapper_8_dense_1_biasadd_readvariableop_resource:$
identity??,module_wrapper/conv2d/BiasAdd/ReadVariableOp?+module_wrapper/conv2d/Conv2D/ReadVariableOp?0module_wrapper_1/conv2d_1/BiasAdd/ReadVariableOp?/module_wrapper_1/conv2d_1/Conv2D/ReadVariableOp?0module_wrapper_2/conv2d_2/BiasAdd/ReadVariableOp?/module_wrapper_2/conv2d_2/Conv2D/ReadVariableOp?0module_wrapper_3/conv2d_3/BiasAdd/ReadVariableOp?/module_wrapper_3/conv2d_3/Conv2D/ReadVariableOp?-module_wrapper_7/dense/BiasAdd/ReadVariableOp?,module_wrapper_7/dense/MatMul/ReadVariableOp?/module_wrapper_8/dense_1/BiasAdd/ReadVariableOp?.module_wrapper_8/dense_1/MatMul/ReadVariableOp?
+module_wrapper/conv2d/Conv2D/ReadVariableOpReadVariableOp4module_wrapper_conv2d_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02-
+module_wrapper/conv2d/Conv2D/ReadVariableOp?
module_wrapper/conv2d/Conv2DConv2Dmodule_wrapper_input3module_wrapper/conv2d/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
paddingSAME*
strides
2
module_wrapper/conv2d/Conv2D?
,module_wrapper/conv2d/BiasAdd/ReadVariableOpReadVariableOp5module_wrapper_conv2d_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02.
,module_wrapper/conv2d/BiasAdd/ReadVariableOp?
module_wrapper/conv2d/BiasAddBiasAdd%module_wrapper/conv2d/Conv2D:output:04module_wrapper/conv2d/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2
module_wrapper/conv2d/BiasAdd?
module_wrapper/conv2d/ReluRelu&module_wrapper/conv2d/BiasAdd:output:0*
T0*/
_output_shapes
:?????????2
module_wrapper/conv2d/Relu?
/module_wrapper_1/conv2d_1/Conv2D/ReadVariableOpReadVariableOp8module_wrapper_1_conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype021
/module_wrapper_1/conv2d_1/Conv2D/ReadVariableOp?
 module_wrapper_1/conv2d_1/Conv2DConv2D(module_wrapper/conv2d/Relu:activations:07module_wrapper_1/conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? *
paddingSAME*
strides
2"
 module_wrapper_1/conv2d_1/Conv2D?
0module_wrapper_1/conv2d_1/BiasAdd/ReadVariableOpReadVariableOp9module_wrapper_1_conv2d_1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype022
0module_wrapper_1/conv2d_1/BiasAdd/ReadVariableOp?
!module_wrapper_1/conv2d_1/BiasAddBiasAdd)module_wrapper_1/conv2d_1/Conv2D:output:08module_wrapper_1/conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? 2#
!module_wrapper_1/conv2d_1/BiasAdd?
module_wrapper_1/conv2d_1/ReluRelu*module_wrapper_1/conv2d_1/BiasAdd:output:0*
T0*/
_output_shapes
:????????? 2 
module_wrapper_1/conv2d_1/Relu?
/module_wrapper_2/conv2d_2/Conv2D/ReadVariableOpReadVariableOp8module_wrapper_2_conv2d_2_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype021
/module_wrapper_2/conv2d_2/Conv2D/ReadVariableOp?
 module_wrapper_2/conv2d_2/Conv2DConv2D,module_wrapper_1/conv2d_1/Relu:activations:07module_wrapper_2/conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingSAME*
strides
2"
 module_wrapper_2/conv2d_2/Conv2D?
0module_wrapper_2/conv2d_2/BiasAdd/ReadVariableOpReadVariableOp9module_wrapper_2_conv2d_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype022
0module_wrapper_2/conv2d_2/BiasAdd/ReadVariableOp?
!module_wrapper_2/conv2d_2/BiasAddBiasAdd)module_wrapper_2/conv2d_2/Conv2D:output:08module_wrapper_2/conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2#
!module_wrapper_2/conv2d_2/BiasAdd?
module_wrapper_2/conv2d_2/ReluRelu*module_wrapper_2/conv2d_2/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@2 
module_wrapper_2/conv2d_2/Relu?
/module_wrapper_3/conv2d_3/Conv2D/ReadVariableOpReadVariableOp8module_wrapper_3_conv2d_3_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype021
/module_wrapper_3/conv2d_3/Conv2D/ReadVariableOp?
 module_wrapper_3/conv2d_3/Conv2DConv2D,module_wrapper_2/conv2d_2/Relu:activations:07module_wrapper_3/conv2d_3/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingSAME*
strides
2"
 module_wrapper_3/conv2d_3/Conv2D?
0module_wrapper_3/conv2d_3/BiasAdd/ReadVariableOpReadVariableOp9module_wrapper_3_conv2d_3_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype022
0module_wrapper_3/conv2d_3/BiasAdd/ReadVariableOp?
!module_wrapper_3/conv2d_3/BiasAddBiasAdd)module_wrapper_3/conv2d_3/Conv2D:output:08module_wrapper_3/conv2d_3/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2#
!module_wrapper_3/conv2d_3/BiasAdd?
module_wrapper_3/conv2d_3/ReluRelu*module_wrapper_3/conv2d_3/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@2 
module_wrapper_3/conv2d_3/Relu?
&module_wrapper_4/max_pooling2d/MaxPoolMaxPool,module_wrapper_3/conv2d_3/Relu:activations:0*/
_output_shapes
:?????????@*
ksize
*
paddingVALID*
strides
2(
&module_wrapper_4/max_pooling2d/MaxPool?
&module_wrapper_5/dropout/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UU??2(
&module_wrapper_5/dropout/dropout/Const?
$module_wrapper_5/dropout/dropout/MulMul/module_wrapper_4/max_pooling2d/MaxPool:output:0/module_wrapper_5/dropout/dropout/Const:output:0*
T0*/
_output_shapes
:?????????@2&
$module_wrapper_5/dropout/dropout/Mul?
&module_wrapper_5/dropout/dropout/ShapeShape/module_wrapper_4/max_pooling2d/MaxPool:output:0*
T0*
_output_shapes
:2(
&module_wrapper_5/dropout/dropout/Shape?
=module_wrapper_5/dropout/dropout/random_uniform/RandomUniformRandomUniform/module_wrapper_5/dropout/dropout/Shape:output:0*
T0*/
_output_shapes
:?????????@*
dtype02?
=module_wrapper_5/dropout/dropout/random_uniform/RandomUniform?
/module_wrapper_5/dropout/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>21
/module_wrapper_5/dropout/dropout/GreaterEqual/y?
-module_wrapper_5/dropout/dropout/GreaterEqualGreaterEqualFmodule_wrapper_5/dropout/dropout/random_uniform/RandomUniform:output:08module_wrapper_5/dropout/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????@2/
-module_wrapper_5/dropout/dropout/GreaterEqual?
%module_wrapper_5/dropout/dropout/CastCast1module_wrapper_5/dropout/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????@2'
%module_wrapper_5/dropout/dropout/Cast?
&module_wrapper_5/dropout/dropout/Mul_1Mul(module_wrapper_5/dropout/dropout/Mul:z:0)module_wrapper_5/dropout/dropout/Cast:y:0*
T0*/
_output_shapes
:?????????@2(
&module_wrapper_5/dropout/dropout/Mul_1?
module_wrapper_6/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"????@  2 
module_wrapper_6/flatten/Const?
 module_wrapper_6/flatten/ReshapeReshape*module_wrapper_5/dropout/dropout/Mul_1:z:0'module_wrapper_6/flatten/Const:output:0*
T0*(
_output_shapes
:??????????2"
 module_wrapper_6/flatten/Reshape?
,module_wrapper_7/dense/MatMul/ReadVariableOpReadVariableOp5module_wrapper_7_dense_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02.
,module_wrapper_7/dense/MatMul/ReadVariableOp?
module_wrapper_7/dense/MatMulMatMul)module_wrapper_6/flatten/Reshape:output:04module_wrapper_7/dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
module_wrapper_7/dense/MatMul?
-module_wrapper_7/dense/BiasAdd/ReadVariableOpReadVariableOp6module_wrapper_7_dense_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02/
-module_wrapper_7/dense/BiasAdd/ReadVariableOp?
module_wrapper_7/dense/BiasAddBiasAdd'module_wrapper_7/dense/MatMul:product:05module_wrapper_7/dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2 
module_wrapper_7/dense/BiasAdd?
module_wrapper_7/dense/ReluRelu'module_wrapper_7/dense/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
module_wrapper_7/dense/Relu?
.module_wrapper_8/dense_1/MatMul/ReadVariableOpReadVariableOp7module_wrapper_8_dense_1_matmul_readvariableop_resource*
_output_shapes
:	?$*
dtype020
.module_wrapper_8/dense_1/MatMul/ReadVariableOp?
module_wrapper_8/dense_1/MatMulMatMul)module_wrapper_7/dense/Relu:activations:06module_wrapper_8/dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????$2!
module_wrapper_8/dense_1/MatMul?
/module_wrapper_8/dense_1/BiasAdd/ReadVariableOpReadVariableOp8module_wrapper_8_dense_1_biasadd_readvariableop_resource*
_output_shapes
:$*
dtype021
/module_wrapper_8/dense_1/BiasAdd/ReadVariableOp?
 module_wrapper_8/dense_1/BiasAddBiasAdd)module_wrapper_8/dense_1/MatMul:product:07module_wrapper_8/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????$2"
 module_wrapper_8/dense_1/BiasAdd?
 module_wrapper_8/dense_1/SoftmaxSoftmax)module_wrapper_8/dense_1/BiasAdd:output:0*
T0*'
_output_shapes
:?????????$2"
 module_wrapper_8/dense_1/Softmax?
IdentityIdentity*module_wrapper_8/dense_1/Softmax:softmax:0-^module_wrapper/conv2d/BiasAdd/ReadVariableOp,^module_wrapper/conv2d/Conv2D/ReadVariableOp1^module_wrapper_1/conv2d_1/BiasAdd/ReadVariableOp0^module_wrapper_1/conv2d_1/Conv2D/ReadVariableOp1^module_wrapper_2/conv2d_2/BiasAdd/ReadVariableOp0^module_wrapper_2/conv2d_2/Conv2D/ReadVariableOp1^module_wrapper_3/conv2d_3/BiasAdd/ReadVariableOp0^module_wrapper_3/conv2d_3/Conv2D/ReadVariableOp.^module_wrapper_7/dense/BiasAdd/ReadVariableOp-^module_wrapper_7/dense/MatMul/ReadVariableOp0^module_wrapper_8/dense_1/BiasAdd/ReadVariableOp/^module_wrapper_8/dense_1/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????$2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:?????????: : : : : : : : : : : : 2\
,module_wrapper/conv2d/BiasAdd/ReadVariableOp,module_wrapper/conv2d/BiasAdd/ReadVariableOp2Z
+module_wrapper/conv2d/Conv2D/ReadVariableOp+module_wrapper/conv2d/Conv2D/ReadVariableOp2d
0module_wrapper_1/conv2d_1/BiasAdd/ReadVariableOp0module_wrapper_1/conv2d_1/BiasAdd/ReadVariableOp2b
/module_wrapper_1/conv2d_1/Conv2D/ReadVariableOp/module_wrapper_1/conv2d_1/Conv2D/ReadVariableOp2d
0module_wrapper_2/conv2d_2/BiasAdd/ReadVariableOp0module_wrapper_2/conv2d_2/BiasAdd/ReadVariableOp2b
/module_wrapper_2/conv2d_2/Conv2D/ReadVariableOp/module_wrapper_2/conv2d_2/Conv2D/ReadVariableOp2d
0module_wrapper_3/conv2d_3/BiasAdd/ReadVariableOp0module_wrapper_3/conv2d_3/BiasAdd/ReadVariableOp2b
/module_wrapper_3/conv2d_3/Conv2D/ReadVariableOp/module_wrapper_3/conv2d_3/Conv2D/ReadVariableOp2^
-module_wrapper_7/dense/BiasAdd/ReadVariableOp-module_wrapper_7/dense/BiasAdd/ReadVariableOp2\
,module_wrapper_7/dense/MatMul/ReadVariableOp,module_wrapper_7/dense/MatMul/ReadVariableOp2b
/module_wrapper_8/dense_1/BiasAdd/ReadVariableOp/module_wrapper_8/dense_1/BiasAdd/ReadVariableOp2`
.module_wrapper_8/dense_1/MatMul/ReadVariableOp.module_wrapper_8/dense_1/MatMul/ReadVariableOp:e a
/
_output_shapes
:?????????
.
_user_specified_namemodule_wrapper_input
?
h
L__inference_module_wrapper_4_layer_call_and_return_conditional_losses_501370

args_0
identity?
max_pooling2d/MaxPoolMaxPoolargs_0*/
_output_shapes
:?????????@*
ksize
*
paddingVALID*
strides
2
max_pooling2d/MaxPoolz
IdentityIdentitymax_pooling2d/MaxPool:output:0*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????@:W S
/
_output_shapes
:?????????@
 
_user_specified_nameargs_0
?
?
L__inference_module_wrapper_2_layer_call_and_return_conditional_losses_501150

args_0A
'conv2d_2_conv2d_readvariableop_resource: @6
(conv2d_2_biasadd_readvariableop_resource:@
identity??conv2d_2/BiasAdd/ReadVariableOp?conv2d_2/Conv2D/ReadVariableOp?
conv2d_2/Conv2D/ReadVariableOpReadVariableOp'conv2d_2_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02 
conv2d_2/Conv2D/ReadVariableOp?
conv2d_2/Conv2DConv2Dargs_0&conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingSAME*
strides
2
conv2d_2/Conv2D?
conv2d_2/BiasAdd/ReadVariableOpReadVariableOp(conv2d_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
conv2d_2/BiasAdd/ReadVariableOp?
conv2d_2/BiasAddBiasAddconv2d_2/Conv2D:output:0'conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2
conv2d_2/BiasAdd{
conv2d_2/ReluReluconv2d_2/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@2
conv2d_2/Relu?
IdentityIdentityconv2d_2/Relu:activations:0 ^conv2d_2/BiasAdd/ReadVariableOp^conv2d_2/Conv2D/ReadVariableOp*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:????????? : : 2B
conv2d_2/BiasAdd/ReadVariableOpconv2d_2/BiasAdd/ReadVariableOp2@
conv2d_2/Conv2D/ReadVariableOpconv2d_2/Conv2D/ReadVariableOp:W S
/
_output_shapes
:????????? 
 
_user_specified_nameargs_0
?
M
1__inference_module_wrapper_4_layer_call_fn_502240

args_0
identity?
PartitionedCallPartitionedCallargs_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_module_wrapper_4_layer_call_and_return_conditional_losses_5013702
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????@:W S
/
_output_shapes
:?????????@
 
_user_specified_nameargs_0
?
k
L__inference_module_wrapper_5_layer_call_and_return_conditional_losses_502277

args_0
identity?s
dropout/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UU??2
dropout/dropout/Const?
dropout/dropout/MulMulargs_0dropout/dropout/Const:output:0*
T0*/
_output_shapes
:?????????@2
dropout/dropout/Muld
dropout/dropout/ShapeShapeargs_0*
T0*
_output_shapes
:2
dropout/dropout/Shape?
,dropout/dropout/random_uniform/RandomUniformRandomUniformdropout/dropout/Shape:output:0*
T0*/
_output_shapes
:?????????@*
dtype02.
,dropout/dropout/random_uniform/RandomUniform?
dropout/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2 
dropout/dropout/GreaterEqual/y?
dropout/dropout/GreaterEqualGreaterEqual5dropout/dropout/random_uniform/RandomUniform:output:0'dropout/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????@2
dropout/dropout/GreaterEqual?
dropout/dropout/CastCast dropout/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????@2
dropout/dropout/Cast?
dropout/dropout/Mul_1Muldropout/dropout/Mul:z:0dropout/dropout/Cast:y:0*
T0*/
_output_shapes
:?????????@2
dropout/dropout/Mul_1u
IdentityIdentitydropout/dropout/Mul_1:z:0*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????@:W S
/
_output_shapes
:?????????@
 
_user_specified_nameargs_0
?
?
1__inference_module_wrapper_8_layer_call_fn_502357

args_0
unknown:	?$
	unknown_0:$
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallargs_0unknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????$*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_module_wrapper_8_layer_call_and_return_conditional_losses_5012802
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????$2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameargs_0
?
h
L__inference_module_wrapper_4_layer_call_and_return_conditional_losses_502250

args_0
identity?
max_pooling2d/MaxPoolMaxPoolargs_0*/
_output_shapes
:?????????@*
ksize
*
paddingVALID*
strides
2
max_pooling2d/MaxPoolz
IdentityIdentitymax_pooling2d/MaxPool:output:0*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????@:W S
/
_output_shapes
:?????????@
 
_user_specified_nameargs_0
?
h
L__inference_module_wrapper_6_layer_call_and_return_conditional_losses_501193

args_0
identityo
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"????@  2
flatten/Const?
flatten/ReshapeReshapeargs_0flatten/Const:output:0*
T0*(
_output_shapes
:??????????2
flatten/Reshapem
IdentityIdentityflatten/Reshape:output:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????@:W S
/
_output_shapes
:?????????@
 
_user_specified_nameargs_0
?
?
J__inference_module_wrapper_layer_call_and_return_conditional_losses_501486

args_0?
%conv2d_conv2d_readvariableop_resource:4
&conv2d_biasadd_readvariableop_resource:
identity??conv2d/BiasAdd/ReadVariableOp?conv2d/Conv2D/ReadVariableOp?
conv2d/Conv2D/ReadVariableOpReadVariableOp%conv2d_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
conv2d/Conv2D/ReadVariableOp?
conv2d/Conv2DConv2Dargs_0$conv2d/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
paddingSAME*
strides
2
conv2d/Conv2D?
conv2d/BiasAdd/ReadVariableOpReadVariableOp&conv2d_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
conv2d/BiasAdd/ReadVariableOp?
conv2d/BiasAddBiasAddconv2d/Conv2D:output:0%conv2d/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2
conv2d/BiasAddu
conv2d/ReluReluconv2d/BiasAdd:output:0*
T0*/
_output_shapes
:?????????2
conv2d/Relu?
IdentityIdentityconv2d/Relu:activations:0^conv2d/BiasAdd/ReadVariableOp^conv2d/Conv2D/ReadVariableOp*
T0*/
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : 2>
conv2d/BiasAdd/ReadVariableOpconv2d/BiasAdd/ReadVariableOp2<
conv2d/Conv2D/ReadVariableOpconv2d/Conv2D/ReadVariableOp:W S
/
_output_shapes
:?????????
 
_user_specified_nameargs_0
?W
?
F__inference_sequential_layer_call_and_return_conditional_losses_502013
module_wrapper_inputN
4module_wrapper_conv2d_conv2d_readvariableop_resource:C
5module_wrapper_conv2d_biasadd_readvariableop_resource:R
8module_wrapper_1_conv2d_1_conv2d_readvariableop_resource: G
9module_wrapper_1_conv2d_1_biasadd_readvariableop_resource: R
8module_wrapper_2_conv2d_2_conv2d_readvariableop_resource: @G
9module_wrapper_2_conv2d_2_biasadd_readvariableop_resource:@R
8module_wrapper_3_conv2d_3_conv2d_readvariableop_resource:@@G
9module_wrapper_3_conv2d_3_biasadd_readvariableop_resource:@I
5module_wrapper_7_dense_matmul_readvariableop_resource:
??E
6module_wrapper_7_dense_biasadd_readvariableop_resource:	?J
7module_wrapper_8_dense_1_matmul_readvariableop_resource:	?$F
8module_wrapper_8_dense_1_biasadd_readvariableop_resource:$
identity??,module_wrapper/conv2d/BiasAdd/ReadVariableOp?+module_wrapper/conv2d/Conv2D/ReadVariableOp?0module_wrapper_1/conv2d_1/BiasAdd/ReadVariableOp?/module_wrapper_1/conv2d_1/Conv2D/ReadVariableOp?0module_wrapper_2/conv2d_2/BiasAdd/ReadVariableOp?/module_wrapper_2/conv2d_2/Conv2D/ReadVariableOp?0module_wrapper_3/conv2d_3/BiasAdd/ReadVariableOp?/module_wrapper_3/conv2d_3/Conv2D/ReadVariableOp?-module_wrapper_7/dense/BiasAdd/ReadVariableOp?,module_wrapper_7/dense/MatMul/ReadVariableOp?/module_wrapper_8/dense_1/BiasAdd/ReadVariableOp?.module_wrapper_8/dense_1/MatMul/ReadVariableOp?
+module_wrapper/conv2d/Conv2D/ReadVariableOpReadVariableOp4module_wrapper_conv2d_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02-
+module_wrapper/conv2d/Conv2D/ReadVariableOp?
module_wrapper/conv2d/Conv2DConv2Dmodule_wrapper_input3module_wrapper/conv2d/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
paddingSAME*
strides
2
module_wrapper/conv2d/Conv2D?
,module_wrapper/conv2d/BiasAdd/ReadVariableOpReadVariableOp5module_wrapper_conv2d_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02.
,module_wrapper/conv2d/BiasAdd/ReadVariableOp?
module_wrapper/conv2d/BiasAddBiasAdd%module_wrapper/conv2d/Conv2D:output:04module_wrapper/conv2d/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2
module_wrapper/conv2d/BiasAdd?
module_wrapper/conv2d/ReluRelu&module_wrapper/conv2d/BiasAdd:output:0*
T0*/
_output_shapes
:?????????2
module_wrapper/conv2d/Relu?
/module_wrapper_1/conv2d_1/Conv2D/ReadVariableOpReadVariableOp8module_wrapper_1_conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype021
/module_wrapper_1/conv2d_1/Conv2D/ReadVariableOp?
 module_wrapper_1/conv2d_1/Conv2DConv2D(module_wrapper/conv2d/Relu:activations:07module_wrapper_1/conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? *
paddingSAME*
strides
2"
 module_wrapper_1/conv2d_1/Conv2D?
0module_wrapper_1/conv2d_1/BiasAdd/ReadVariableOpReadVariableOp9module_wrapper_1_conv2d_1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype022
0module_wrapper_1/conv2d_1/BiasAdd/ReadVariableOp?
!module_wrapper_1/conv2d_1/BiasAddBiasAdd)module_wrapper_1/conv2d_1/Conv2D:output:08module_wrapper_1/conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? 2#
!module_wrapper_1/conv2d_1/BiasAdd?
module_wrapper_1/conv2d_1/ReluRelu*module_wrapper_1/conv2d_1/BiasAdd:output:0*
T0*/
_output_shapes
:????????? 2 
module_wrapper_1/conv2d_1/Relu?
/module_wrapper_2/conv2d_2/Conv2D/ReadVariableOpReadVariableOp8module_wrapper_2_conv2d_2_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype021
/module_wrapper_2/conv2d_2/Conv2D/ReadVariableOp?
 module_wrapper_2/conv2d_2/Conv2DConv2D,module_wrapper_1/conv2d_1/Relu:activations:07module_wrapper_2/conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingSAME*
strides
2"
 module_wrapper_2/conv2d_2/Conv2D?
0module_wrapper_2/conv2d_2/BiasAdd/ReadVariableOpReadVariableOp9module_wrapper_2_conv2d_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype022
0module_wrapper_2/conv2d_2/BiasAdd/ReadVariableOp?
!module_wrapper_2/conv2d_2/BiasAddBiasAdd)module_wrapper_2/conv2d_2/Conv2D:output:08module_wrapper_2/conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2#
!module_wrapper_2/conv2d_2/BiasAdd?
module_wrapper_2/conv2d_2/ReluRelu*module_wrapper_2/conv2d_2/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@2 
module_wrapper_2/conv2d_2/Relu?
/module_wrapper_3/conv2d_3/Conv2D/ReadVariableOpReadVariableOp8module_wrapper_3_conv2d_3_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype021
/module_wrapper_3/conv2d_3/Conv2D/ReadVariableOp?
 module_wrapper_3/conv2d_3/Conv2DConv2D,module_wrapper_2/conv2d_2/Relu:activations:07module_wrapper_3/conv2d_3/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingSAME*
strides
2"
 module_wrapper_3/conv2d_3/Conv2D?
0module_wrapper_3/conv2d_3/BiasAdd/ReadVariableOpReadVariableOp9module_wrapper_3_conv2d_3_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype022
0module_wrapper_3/conv2d_3/BiasAdd/ReadVariableOp?
!module_wrapper_3/conv2d_3/BiasAddBiasAdd)module_wrapper_3/conv2d_3/Conv2D:output:08module_wrapper_3/conv2d_3/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2#
!module_wrapper_3/conv2d_3/BiasAdd?
module_wrapper_3/conv2d_3/ReluRelu*module_wrapper_3/conv2d_3/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@2 
module_wrapper_3/conv2d_3/Relu?
&module_wrapper_4/max_pooling2d/MaxPoolMaxPool,module_wrapper_3/conv2d_3/Relu:activations:0*/
_output_shapes
:?????????@*
ksize
*
paddingVALID*
strides
2(
&module_wrapper_4/max_pooling2d/MaxPool?
!module_wrapper_5/dropout/IdentityIdentity/module_wrapper_4/max_pooling2d/MaxPool:output:0*
T0*/
_output_shapes
:?????????@2#
!module_wrapper_5/dropout/Identity?
module_wrapper_6/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"????@  2 
module_wrapper_6/flatten/Const?
 module_wrapper_6/flatten/ReshapeReshape*module_wrapper_5/dropout/Identity:output:0'module_wrapper_6/flatten/Const:output:0*
T0*(
_output_shapes
:??????????2"
 module_wrapper_6/flatten/Reshape?
,module_wrapper_7/dense/MatMul/ReadVariableOpReadVariableOp5module_wrapper_7_dense_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02.
,module_wrapper_7/dense/MatMul/ReadVariableOp?
module_wrapper_7/dense/MatMulMatMul)module_wrapper_6/flatten/Reshape:output:04module_wrapper_7/dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
module_wrapper_7/dense/MatMul?
-module_wrapper_7/dense/BiasAdd/ReadVariableOpReadVariableOp6module_wrapper_7_dense_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02/
-module_wrapper_7/dense/BiasAdd/ReadVariableOp?
module_wrapper_7/dense/BiasAddBiasAdd'module_wrapper_7/dense/MatMul:product:05module_wrapper_7/dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2 
module_wrapper_7/dense/BiasAdd?
module_wrapper_7/dense/ReluRelu'module_wrapper_7/dense/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
module_wrapper_7/dense/Relu?
.module_wrapper_8/dense_1/MatMul/ReadVariableOpReadVariableOp7module_wrapper_8_dense_1_matmul_readvariableop_resource*
_output_shapes
:	?$*
dtype020
.module_wrapper_8/dense_1/MatMul/ReadVariableOp?
module_wrapper_8/dense_1/MatMulMatMul)module_wrapper_7/dense/Relu:activations:06module_wrapper_8/dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????$2!
module_wrapper_8/dense_1/MatMul?
/module_wrapper_8/dense_1/BiasAdd/ReadVariableOpReadVariableOp8module_wrapper_8_dense_1_biasadd_readvariableop_resource*
_output_shapes
:$*
dtype021
/module_wrapper_8/dense_1/BiasAdd/ReadVariableOp?
 module_wrapper_8/dense_1/BiasAddBiasAdd)module_wrapper_8/dense_1/MatMul:product:07module_wrapper_8/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????$2"
 module_wrapper_8/dense_1/BiasAdd?
 module_wrapper_8/dense_1/SoftmaxSoftmax)module_wrapper_8/dense_1/BiasAdd:output:0*
T0*'
_output_shapes
:?????????$2"
 module_wrapper_8/dense_1/Softmax?
IdentityIdentity*module_wrapper_8/dense_1/Softmax:softmax:0-^module_wrapper/conv2d/BiasAdd/ReadVariableOp,^module_wrapper/conv2d/Conv2D/ReadVariableOp1^module_wrapper_1/conv2d_1/BiasAdd/ReadVariableOp0^module_wrapper_1/conv2d_1/Conv2D/ReadVariableOp1^module_wrapper_2/conv2d_2/BiasAdd/ReadVariableOp0^module_wrapper_2/conv2d_2/Conv2D/ReadVariableOp1^module_wrapper_3/conv2d_3/BiasAdd/ReadVariableOp0^module_wrapper_3/conv2d_3/Conv2D/ReadVariableOp.^module_wrapper_7/dense/BiasAdd/ReadVariableOp-^module_wrapper_7/dense/MatMul/ReadVariableOp0^module_wrapper_8/dense_1/BiasAdd/ReadVariableOp/^module_wrapper_8/dense_1/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????$2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:?????????: : : : : : : : : : : : 2\
,module_wrapper/conv2d/BiasAdd/ReadVariableOp,module_wrapper/conv2d/BiasAdd/ReadVariableOp2Z
+module_wrapper/conv2d/Conv2D/ReadVariableOp+module_wrapper/conv2d/Conv2D/ReadVariableOp2d
0module_wrapper_1/conv2d_1/BiasAdd/ReadVariableOp0module_wrapper_1/conv2d_1/BiasAdd/ReadVariableOp2b
/module_wrapper_1/conv2d_1/Conv2D/ReadVariableOp/module_wrapper_1/conv2d_1/Conv2D/ReadVariableOp2d
0module_wrapper_2/conv2d_2/BiasAdd/ReadVariableOp0module_wrapper_2/conv2d_2/BiasAdd/ReadVariableOp2b
/module_wrapper_2/conv2d_2/Conv2D/ReadVariableOp/module_wrapper_2/conv2d_2/Conv2D/ReadVariableOp2d
0module_wrapper_3/conv2d_3/BiasAdd/ReadVariableOp0module_wrapper_3/conv2d_3/BiasAdd/ReadVariableOp2b
/module_wrapper_3/conv2d_3/Conv2D/ReadVariableOp/module_wrapper_3/conv2d_3/Conv2D/ReadVariableOp2^
-module_wrapper_7/dense/BiasAdd/ReadVariableOp-module_wrapper_7/dense/BiasAdd/ReadVariableOp2\
,module_wrapper_7/dense/MatMul/ReadVariableOp,module_wrapper_7/dense/MatMul/ReadVariableOp2b
/module_wrapper_8/dense_1/BiasAdd/ReadVariableOp/module_wrapper_8/dense_1/BiasAdd/ReadVariableOp2`
.module_wrapper_8/dense_1/MatMul/ReadVariableOp.module_wrapper_8/dense_1/MatMul/ReadVariableOp:e a
/
_output_shapes
:?????????
.
_user_specified_namemodule_wrapper_input
?
?
L__inference_module_wrapper_7_layer_call_and_return_conditional_losses_501206

args_08
$dense_matmul_readvariableop_resource:
??4
%dense_biasadd_readvariableop_resource:	?
identity??dense/BiasAdd/ReadVariableOp?dense/MatMul/ReadVariableOp?
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
dense/MatMul/ReadVariableOp?
dense/MatMulMatMulargs_0#dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense/MatMul?
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
dense/BiasAdd/ReadVariableOp?
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense/BiasAddk

dense/ReluReludense/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2

dense/Relu?
IdentityIdentitydense/Relu:activations:0^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameargs_0
?
j
1__inference_module_wrapper_5_layer_call_fn_502260

args_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallargs_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_module_wrapper_5_layer_call_and_return_conditional_losses_5013542
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????@22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????@
 
_user_specified_nameargs_0
?
h
L__inference_module_wrapper_5_layer_call_and_return_conditional_losses_502265

args_0
identityr
dropout/IdentityIdentityargs_0*
T0*/
_output_shapes
:?????????@2
dropout/Identityu
IdentityIdentitydropout/Identity:output:0*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????@:W S
/
_output_shapes
:?????????@
 
_user_specified_nameargs_0
?
?
L__inference_module_wrapper_1_layer_call_and_return_conditional_losses_501133

args_0A
'conv2d_1_conv2d_readvariableop_resource: 6
(conv2d_1_biasadd_readvariableop_resource: 
identity??conv2d_1/BiasAdd/ReadVariableOp?conv2d_1/Conv2D/ReadVariableOp?
conv2d_1/Conv2D/ReadVariableOpReadVariableOp'conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02 
conv2d_1/Conv2D/ReadVariableOp?
conv2d_1/Conv2DConv2Dargs_0&conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? *
paddingSAME*
strides
2
conv2d_1/Conv2D?
conv2d_1/BiasAdd/ReadVariableOpReadVariableOp(conv2d_1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02!
conv2d_1/BiasAdd/ReadVariableOp?
conv2d_1/BiasAddBiasAddconv2d_1/Conv2D:output:0'conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? 2
conv2d_1/BiasAdd{
conv2d_1/ReluReluconv2d_1/BiasAdd:output:0*
T0*/
_output_shapes
:????????? 2
conv2d_1/Relu?
IdentityIdentityconv2d_1/Relu:activations:0 ^conv2d_1/BiasAdd/ReadVariableOp^conv2d_1/Conv2D/ReadVariableOp*
T0*/
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : 2B
conv2d_1/BiasAdd/ReadVariableOpconv2d_1/BiasAdd/ReadVariableOp2@
conv2d_1/Conv2D/ReadVariableOpconv2d_1/Conv2D/ReadVariableOp:W S
/
_output_shapes
:?????????
 
_user_specified_nameargs_0
?
?
L__inference_module_wrapper_1_layer_call_and_return_conditional_losses_502150

args_0A
'conv2d_1_conv2d_readvariableop_resource: 6
(conv2d_1_biasadd_readvariableop_resource: 
identity??conv2d_1/BiasAdd/ReadVariableOp?conv2d_1/Conv2D/ReadVariableOp?
conv2d_1/Conv2D/ReadVariableOpReadVariableOp'conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02 
conv2d_1/Conv2D/ReadVariableOp?
conv2d_1/Conv2DConv2Dargs_0&conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? *
paddingSAME*
strides
2
conv2d_1/Conv2D?
conv2d_1/BiasAdd/ReadVariableOpReadVariableOp(conv2d_1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02!
conv2d_1/BiasAdd/ReadVariableOp?
conv2d_1/BiasAddBiasAddconv2d_1/Conv2D:output:0'conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? 2
conv2d_1/BiasAdd{
conv2d_1/ReluReluconv2d_1/BiasAdd:output:0*
T0*/
_output_shapes
:????????? 2
conv2d_1/Relu?
IdentityIdentityconv2d_1/Relu:activations:0 ^conv2d_1/BiasAdd/ReadVariableOp^conv2d_1/Conv2D/ReadVariableOp*
T0*/
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : 2B
conv2d_1/BiasAdd/ReadVariableOpconv2d_1/BiasAdd/ReadVariableOp2@
conv2d_1/Conv2D/ReadVariableOpconv2d_1/Conv2D/ReadVariableOp:W S
/
_output_shapes
:?????????
 
_user_specified_nameargs_0
?
M
1__inference_module_wrapper_5_layer_call_fn_502255

args_0
identity?
PartitionedCallPartitionedCallargs_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_module_wrapper_5_layer_call_and_return_conditional_losses_5011852
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????@:W S
/
_output_shapes
:?????????@
 
_user_specified_nameargs_0
?
?
1__inference_module_wrapper_2_layer_call_fn_502168

args_0!
unknown: @
	unknown_0:@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallargs_0unknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_module_wrapper_2_layer_call_and_return_conditional_losses_5014262
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:????????? : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:????????? 
 
_user_specified_nameargs_0
?
h
L__inference_module_wrapper_4_layer_call_and_return_conditional_losses_502245

args_0
identity?
max_pooling2d/MaxPoolMaxPoolargs_0*/
_output_shapes
:?????????@*
ksize
*
paddingVALID*
strides
2
max_pooling2d/MaxPoolz
IdentityIdentitymax_pooling2d/MaxPool:output:0*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????@:W S
/
_output_shapes
:?????????@
 
_user_specified_nameargs_0
?
h
L__inference_module_wrapper_6_layer_call_and_return_conditional_losses_502299

args_0
identityo
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"????@  2
flatten/Const?
flatten/ReshapeReshapeargs_0flatten/Const:output:0*
T0*(
_output_shapes
:??????????2
flatten/Reshapem
IdentityIdentityflatten/Reshape:output:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????@:W S
/
_output_shapes
:?????????@
 
_user_specified_nameargs_0
?
?
L__inference_module_wrapper_8_layer_call_and_return_conditional_losses_501223

args_09
&dense_1_matmul_readvariableop_resource:	?$5
'dense_1_biasadd_readvariableop_resource:$
identity??dense_1/BiasAdd/ReadVariableOp?dense_1/MatMul/ReadVariableOp?
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes
:	?$*
dtype02
dense_1/MatMul/ReadVariableOp?
dense_1/MatMulMatMulargs_0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????$2
dense_1/MatMul?
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:$*
dtype02 
dense_1/BiasAdd/ReadVariableOp?
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????$2
dense_1/BiasAddy
dense_1/SoftmaxSoftmaxdense_1/BiasAdd:output:0*
T0*'
_output_shapes
:?????????$2
dense_1/Softmax?
IdentityIdentitydense_1/Softmax:softmax:0^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????$2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameargs_0
?
?
L__inference_module_wrapper_2_layer_call_and_return_conditional_losses_502179

args_0A
'conv2d_2_conv2d_readvariableop_resource: @6
(conv2d_2_biasadd_readvariableop_resource:@
identity??conv2d_2/BiasAdd/ReadVariableOp?conv2d_2/Conv2D/ReadVariableOp?
conv2d_2/Conv2D/ReadVariableOpReadVariableOp'conv2d_2_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02 
conv2d_2/Conv2D/ReadVariableOp?
conv2d_2/Conv2DConv2Dargs_0&conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingSAME*
strides
2
conv2d_2/Conv2D?
conv2d_2/BiasAdd/ReadVariableOpReadVariableOp(conv2d_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
conv2d_2/BiasAdd/ReadVariableOp?
conv2d_2/BiasAddBiasAddconv2d_2/Conv2D:output:0'conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2
conv2d_2/BiasAdd{
conv2d_2/ReluReluconv2d_2/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@2
conv2d_2/Relu?
IdentityIdentityconv2d_2/Relu:activations:0 ^conv2d_2/BiasAdd/ReadVariableOp^conv2d_2/Conv2D/ReadVariableOp*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:????????? : : 2B
conv2d_2/BiasAdd/ReadVariableOpconv2d_2/BiasAdd/ReadVariableOp2@
conv2d_2/Conv2D/ReadVariableOpconv2d_2/Conv2D/ReadVariableOp:W S
/
_output_shapes
:????????? 
 
_user_specified_nameargs_0
?
?
/__inference_module_wrapper_layer_call_fn_502088

args_0!
unknown:
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallargs_0unknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_module_wrapper_layer_call_and_return_conditional_losses_5014862
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????
 
_user_specified_nameargs_0
?1
?
F__inference_sequential_layer_call_and_return_conditional_losses_501561

inputs/
module_wrapper_501527:#
module_wrapper_501529:1
module_wrapper_1_501532: %
module_wrapper_1_501534: 1
module_wrapper_2_501537: @%
module_wrapper_2_501539:@1
module_wrapper_3_501542:@@%
module_wrapper_3_501544:@+
module_wrapper_7_501550:
??&
module_wrapper_7_501552:	?*
module_wrapper_8_501555:	?$%
module_wrapper_8_501557:$
identity??&module_wrapper/StatefulPartitionedCall?(module_wrapper_1/StatefulPartitionedCall?(module_wrapper_2/StatefulPartitionedCall?(module_wrapper_3/StatefulPartitionedCall?(module_wrapper_5/StatefulPartitionedCall?(module_wrapper_7/StatefulPartitionedCall?(module_wrapper_8/StatefulPartitionedCall?
&module_wrapper/StatefulPartitionedCallStatefulPartitionedCallinputsmodule_wrapper_501527module_wrapper_501529*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_module_wrapper_layer_call_and_return_conditional_losses_5014862(
&module_wrapper/StatefulPartitionedCall?
(module_wrapper_1/StatefulPartitionedCallStatefulPartitionedCall/module_wrapper/StatefulPartitionedCall:output:0module_wrapper_1_501532module_wrapper_1_501534*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_module_wrapper_1_layer_call_and_return_conditional_losses_5014562*
(module_wrapper_1/StatefulPartitionedCall?
(module_wrapper_2/StatefulPartitionedCallStatefulPartitionedCall1module_wrapper_1/StatefulPartitionedCall:output:0module_wrapper_2_501537module_wrapper_2_501539*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_module_wrapper_2_layer_call_and_return_conditional_losses_5014262*
(module_wrapper_2/StatefulPartitionedCall?
(module_wrapper_3/StatefulPartitionedCallStatefulPartitionedCall1module_wrapper_2/StatefulPartitionedCall:output:0module_wrapper_3_501542module_wrapper_3_501544*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_module_wrapper_3_layer_call_and_return_conditional_losses_5013962*
(module_wrapper_3/StatefulPartitionedCall?
 module_wrapper_4/PartitionedCallPartitionedCall1module_wrapper_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_module_wrapper_4_layer_call_and_return_conditional_losses_5013702"
 module_wrapper_4/PartitionedCall?
(module_wrapper_5/StatefulPartitionedCallStatefulPartitionedCall)module_wrapper_4/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_module_wrapper_5_layer_call_and_return_conditional_losses_5013542*
(module_wrapper_5/StatefulPartitionedCall?
 module_wrapper_6/PartitionedCallPartitionedCall1module_wrapper_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_module_wrapper_6_layer_call_and_return_conditional_losses_5013312"
 module_wrapper_6/PartitionedCall?
(module_wrapper_7/StatefulPartitionedCallStatefulPartitionedCall)module_wrapper_6/PartitionedCall:output:0module_wrapper_7_501550module_wrapper_7_501552*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_module_wrapper_7_layer_call_and_return_conditional_losses_5013102*
(module_wrapper_7/StatefulPartitionedCall?
(module_wrapper_8/StatefulPartitionedCallStatefulPartitionedCall1module_wrapper_7/StatefulPartitionedCall:output:0module_wrapper_8_501555module_wrapper_8_501557*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????$*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_module_wrapper_8_layer_call_and_return_conditional_losses_5012802*
(module_wrapper_8/StatefulPartitionedCall?
IdentityIdentity1module_wrapper_8/StatefulPartitionedCall:output:0'^module_wrapper/StatefulPartitionedCall)^module_wrapper_1/StatefulPartitionedCall)^module_wrapper_2/StatefulPartitionedCall)^module_wrapper_3/StatefulPartitionedCall)^module_wrapper_5/StatefulPartitionedCall)^module_wrapper_7/StatefulPartitionedCall)^module_wrapper_8/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????$2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:?????????: : : : : : : : : : : : 2P
&module_wrapper/StatefulPartitionedCall&module_wrapper/StatefulPartitionedCall2T
(module_wrapper_1/StatefulPartitionedCall(module_wrapper_1/StatefulPartitionedCall2T
(module_wrapper_2/StatefulPartitionedCall(module_wrapper_2/StatefulPartitionedCall2T
(module_wrapper_3/StatefulPartitionedCall(module_wrapper_3/StatefulPartitionedCall2T
(module_wrapper_5/StatefulPartitionedCall(module_wrapper_5/StatefulPartitionedCall2T
(module_wrapper_7/StatefulPartitionedCall(module_wrapper_7/StatefulPartitionedCall2T
(module_wrapper_8/StatefulPartitionedCall(module_wrapper_8/StatefulPartitionedCall:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
L__inference_module_wrapper_3_layer_call_and_return_conditional_losses_502230

args_0A
'conv2d_3_conv2d_readvariableop_resource:@@6
(conv2d_3_biasadd_readvariableop_resource:@
identity??conv2d_3/BiasAdd/ReadVariableOp?conv2d_3/Conv2D/ReadVariableOp?
conv2d_3/Conv2D/ReadVariableOpReadVariableOp'conv2d_3_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02 
conv2d_3/Conv2D/ReadVariableOp?
conv2d_3/Conv2DConv2Dargs_0&conv2d_3/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingSAME*
strides
2
conv2d_3/Conv2D?
conv2d_3/BiasAdd/ReadVariableOpReadVariableOp(conv2d_3_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
conv2d_3/BiasAdd/ReadVariableOp?
conv2d_3/BiasAddBiasAddconv2d_3/Conv2D:output:0'conv2d_3/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2
conv2d_3/BiasAdd{
conv2d_3/ReluReluconv2d_3/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@2
conv2d_3/Relu?
IdentityIdentityconv2d_3/Relu:activations:0 ^conv2d_3/BiasAdd/ReadVariableOp^conv2d_3/Conv2D/ReadVariableOp*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????@: : 2B
conv2d_3/BiasAdd/ReadVariableOpconv2d_3/BiasAdd/ReadVariableOp2@
conv2d_3/Conv2D/ReadVariableOpconv2d_3/Conv2D/ReadVariableOp:W S
/
_output_shapes
:?????????@
 
_user_specified_nameargs_0
?
?
L__inference_module_wrapper_8_layer_call_and_return_conditional_losses_502379

args_09
&dense_1_matmul_readvariableop_resource:	?$5
'dense_1_biasadd_readvariableop_resource:$
identity??dense_1/BiasAdd/ReadVariableOp?dense_1/MatMul/ReadVariableOp?
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes
:	?$*
dtype02
dense_1/MatMul/ReadVariableOp?
dense_1/MatMulMatMulargs_0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????$2
dense_1/MatMul?
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:$*
dtype02 
dense_1/BiasAdd/ReadVariableOp?
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????$2
dense_1/BiasAddy
dense_1/SoftmaxSoftmaxdense_1/BiasAdd:output:0*
T0*'
_output_shapes
:?????????$2
dense_1/Softmax?
IdentityIdentitydense_1/Softmax:softmax:0^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????$2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameargs_0
?
J
.__inference_max_pooling2d_layer_call_fn_501740

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4????????????????????????????????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_max_pooling2d_layer_call_and_return_conditional_losses_5017342
PartitionedCall?
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
h
L__inference_module_wrapper_4_layer_call_and_return_conditional_losses_501178

args_0
identity?
max_pooling2d/MaxPoolMaxPoolargs_0*/
_output_shapes
:?????????@*
ksize
*
paddingVALID*
strides
2
max_pooling2d/MaxPoolz
IdentityIdentitymax_pooling2d/MaxPool:output:0*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????@:W S
/
_output_shapes
:?????????@
 
_user_specified_nameargs_0
?
?
1__inference_module_wrapper_1_layer_call_fn_502128

args_0!
unknown: 
	unknown_0: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallargs_0unknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_module_wrapper_1_layer_call_and_return_conditional_losses_5014562
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????
 
_user_specified_nameargs_0
?
?
L__inference_module_wrapper_3_layer_call_and_return_conditional_losses_502219

args_0A
'conv2d_3_conv2d_readvariableop_resource:@@6
(conv2d_3_biasadd_readvariableop_resource:@
identity??conv2d_3/BiasAdd/ReadVariableOp?conv2d_3/Conv2D/ReadVariableOp?
conv2d_3/Conv2D/ReadVariableOpReadVariableOp'conv2d_3_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02 
conv2d_3/Conv2D/ReadVariableOp?
conv2d_3/Conv2DConv2Dargs_0&conv2d_3/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingSAME*
strides
2
conv2d_3/Conv2D?
conv2d_3/BiasAdd/ReadVariableOpReadVariableOp(conv2d_3_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
conv2d_3/BiasAdd/ReadVariableOp?
conv2d_3/BiasAddBiasAddconv2d_3/Conv2D:output:0'conv2d_3/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2
conv2d_3/BiasAdd{
conv2d_3/ReluReluconv2d_3/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@2
conv2d_3/Relu?
IdentityIdentityconv2d_3/Relu:activations:0 ^conv2d_3/BiasAdd/ReadVariableOp^conv2d_3/Conv2D/ReadVariableOp*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????@: : 2B
conv2d_3/BiasAdd/ReadVariableOpconv2d_3/BiasAdd/ReadVariableOp2@
conv2d_3/Conv2D/ReadVariableOpconv2d_3/Conv2D/ReadVariableOp:W S
/
_output_shapes
:?????????@
 
_user_specified_nameargs_0
?

?
+__inference_sequential_layer_call_fn_501827

inputs!
unknown:
	unknown_0:#
	unknown_1: 
	unknown_2: #
	unknown_3: @
	unknown_4:@#
	unknown_5:@@
	unknown_6:@
	unknown_7:
??
	unknown_8:	?
	unknown_9:	?$

unknown_10:$
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????$*.
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_sequential_layer_call_and_return_conditional_losses_5015612
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????$2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:?????????: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
+__inference_sequential_layer_call_fn_501769
module_wrapper_input!
unknown:
	unknown_0:#
	unknown_1: 
	unknown_2: #
	unknown_3: @
	unknown_4:@#
	unknown_5:@@
	unknown_6:@
	unknown_7:
??
	unknown_8:	?
	unknown_9:	?$

unknown_10:$
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallmodule_wrapper_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????$*.
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_sequential_layer_call_and_return_conditional_losses_5012302
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????$2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:?????????: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:e a
/
_output_shapes
:?????????
.
_user_specified_namemodule_wrapper_input
?
?
1__inference_module_wrapper_3_layer_call_fn_502208

args_0!
unknown:@@
	unknown_0:@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallargs_0unknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_module_wrapper_3_layer_call_and_return_conditional_losses_5013962
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????@: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????@
 
_user_specified_nameargs_0
?
M
1__inference_module_wrapper_6_layer_call_fn_502287

args_0
identity?
PartitionedCallPartitionedCallargs_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_module_wrapper_6_layer_call_and_return_conditional_losses_5013312
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????@:W S
/
_output_shapes
:?????????@
 
_user_specified_nameargs_0
?
k
L__inference_module_wrapper_5_layer_call_and_return_conditional_losses_501354

args_0
identity?s
dropout/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UU??2
dropout/dropout/Const?
dropout/dropout/MulMulargs_0dropout/dropout/Const:output:0*
T0*/
_output_shapes
:?????????@2
dropout/dropout/Muld
dropout/dropout/ShapeShapeargs_0*
T0*
_output_shapes
:2
dropout/dropout/Shape?
,dropout/dropout/random_uniform/RandomUniformRandomUniformdropout/dropout/Shape:output:0*
T0*/
_output_shapes
:?????????@*
dtype02.
,dropout/dropout/random_uniform/RandomUniform?
dropout/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2 
dropout/dropout/GreaterEqual/y?
dropout/dropout/GreaterEqualGreaterEqual5dropout/dropout/random_uniform/RandomUniform:output:0'dropout/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????@2
dropout/dropout/GreaterEqual?
dropout/dropout/CastCast dropout/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????@2
dropout/dropout/Cast?
dropout/dropout/Mul_1Muldropout/dropout/Mul:z:0dropout/dropout/Cast:y:0*
T0*/
_output_shapes
:?????????@2
dropout/dropout/Mul_1u
IdentityIdentitydropout/dropout/Mul_1:z:0*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????@:W S
/
_output_shapes
:?????????@
 
_user_specified_nameargs_0
?
h
L__inference_module_wrapper_6_layer_call_and_return_conditional_losses_501331

args_0
identityo
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"????@  2
flatten/Const?
flatten/ReshapeReshapeargs_0flatten/Const:output:0*
T0*(
_output_shapes
:??????????2
flatten/Reshapem
IdentityIdentityflatten/Reshape:output:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????@:W S
/
_output_shapes
:?????????@
 
_user_specified_nameargs_0
?
?
1__inference_module_wrapper_1_layer_call_fn_502119

args_0!
unknown: 
	unknown_0: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallargs_0unknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_module_wrapper_1_layer_call_and_return_conditional_losses_5011332
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????
 
_user_specified_nameargs_0
?
?
L__inference_module_wrapper_8_layer_call_and_return_conditional_losses_501280

args_09
&dense_1_matmul_readvariableop_resource:	?$5
'dense_1_biasadd_readvariableop_resource:$
identity??dense_1/BiasAdd/ReadVariableOp?dense_1/MatMul/ReadVariableOp?
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes
:	?$*
dtype02
dense_1/MatMul/ReadVariableOp?
dense_1/MatMulMatMulargs_0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????$2
dense_1/MatMul?
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:$*
dtype02 
dense_1/BiasAdd/ReadVariableOp?
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????$2
dense_1/BiasAddy
dense_1/SoftmaxSoftmaxdense_1/BiasAdd:output:0*
T0*'
_output_shapes
:?????????$2
dense_1/Softmax?
IdentityIdentitydense_1/Softmax:softmax:0^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????$2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameargs_0
?

?
+__inference_sequential_layer_call_fn_501798

inputs!
unknown:
	unknown_0:#
	unknown_1: 
	unknown_2: #
	unknown_3: @
	unknown_4:@#
	unknown_5:@@
	unknown_6:@
	unknown_7:
??
	unknown_8:	?
	unknown_9:	?$

unknown_10:$
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????$*.
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_sequential_layer_call_and_return_conditional_losses_5012302
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????$2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:?????????: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
L__inference_module_wrapper_3_layer_call_and_return_conditional_losses_501396

args_0A
'conv2d_3_conv2d_readvariableop_resource:@@6
(conv2d_3_biasadd_readvariableop_resource:@
identity??conv2d_3/BiasAdd/ReadVariableOp?conv2d_3/Conv2D/ReadVariableOp?
conv2d_3/Conv2D/ReadVariableOpReadVariableOp'conv2d_3_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02 
conv2d_3/Conv2D/ReadVariableOp?
conv2d_3/Conv2DConv2Dargs_0&conv2d_3/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingSAME*
strides
2
conv2d_3/Conv2D?
conv2d_3/BiasAdd/ReadVariableOpReadVariableOp(conv2d_3_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
conv2d_3/BiasAdd/ReadVariableOp?
conv2d_3/BiasAddBiasAddconv2d_3/Conv2D:output:0'conv2d_3/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2
conv2d_3/BiasAdd{
conv2d_3/ReluReluconv2d_3/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@2
conv2d_3/Relu?
IdentityIdentityconv2d_3/Relu:activations:0 ^conv2d_3/BiasAdd/ReadVariableOp^conv2d_3/Conv2D/ReadVariableOp*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????@: : 2B
conv2d_3/BiasAdd/ReadVariableOpconv2d_3/BiasAdd/ReadVariableOp2@
conv2d_3/Conv2D/ReadVariableOpconv2d_3/Conv2D/ReadVariableOp:W S
/
_output_shapes
:?????????@
 
_user_specified_nameargs_0
?
?
+__inference_sequential_layer_call_fn_501856
module_wrapper_input!
unknown:
	unknown_0:#
	unknown_1: 
	unknown_2: #
	unknown_3: @
	unknown_4:@#
	unknown_5:@@
	unknown_6:@
	unknown_7:
??
	unknown_8:	?
	unknown_9:	?$

unknown_10:$
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallmodule_wrapper_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????$*.
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_sequential_layer_call_and_return_conditional_losses_5015612
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????$2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:?????????: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:e a
/
_output_shapes
:?????????
.
_user_specified_namemodule_wrapper_input
?
M
1__inference_module_wrapper_4_layer_call_fn_502235

args_0
identity?
PartitionedCallPartitionedCallargs_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_module_wrapper_4_layer_call_and_return_conditional_losses_5011782
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????@:W S
/
_output_shapes
:?????????@
 
_user_specified_nameargs_0
?
e
I__inference_max_pooling2d_layer_call_and_return_conditional_losses_501734

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
2	
MaxPool?
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?W
?
F__inference_sequential_layer_call_and_return_conditional_losses_501906

inputsN
4module_wrapper_conv2d_conv2d_readvariableop_resource:C
5module_wrapper_conv2d_biasadd_readvariableop_resource:R
8module_wrapper_1_conv2d_1_conv2d_readvariableop_resource: G
9module_wrapper_1_conv2d_1_biasadd_readvariableop_resource: R
8module_wrapper_2_conv2d_2_conv2d_readvariableop_resource: @G
9module_wrapper_2_conv2d_2_biasadd_readvariableop_resource:@R
8module_wrapper_3_conv2d_3_conv2d_readvariableop_resource:@@G
9module_wrapper_3_conv2d_3_biasadd_readvariableop_resource:@I
5module_wrapper_7_dense_matmul_readvariableop_resource:
??E
6module_wrapper_7_dense_biasadd_readvariableop_resource:	?J
7module_wrapper_8_dense_1_matmul_readvariableop_resource:	?$F
8module_wrapper_8_dense_1_biasadd_readvariableop_resource:$
identity??,module_wrapper/conv2d/BiasAdd/ReadVariableOp?+module_wrapper/conv2d/Conv2D/ReadVariableOp?0module_wrapper_1/conv2d_1/BiasAdd/ReadVariableOp?/module_wrapper_1/conv2d_1/Conv2D/ReadVariableOp?0module_wrapper_2/conv2d_2/BiasAdd/ReadVariableOp?/module_wrapper_2/conv2d_2/Conv2D/ReadVariableOp?0module_wrapper_3/conv2d_3/BiasAdd/ReadVariableOp?/module_wrapper_3/conv2d_3/Conv2D/ReadVariableOp?-module_wrapper_7/dense/BiasAdd/ReadVariableOp?,module_wrapper_7/dense/MatMul/ReadVariableOp?/module_wrapper_8/dense_1/BiasAdd/ReadVariableOp?.module_wrapper_8/dense_1/MatMul/ReadVariableOp?
+module_wrapper/conv2d/Conv2D/ReadVariableOpReadVariableOp4module_wrapper_conv2d_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02-
+module_wrapper/conv2d/Conv2D/ReadVariableOp?
module_wrapper/conv2d/Conv2DConv2Dinputs3module_wrapper/conv2d/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
paddingSAME*
strides
2
module_wrapper/conv2d/Conv2D?
,module_wrapper/conv2d/BiasAdd/ReadVariableOpReadVariableOp5module_wrapper_conv2d_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02.
,module_wrapper/conv2d/BiasAdd/ReadVariableOp?
module_wrapper/conv2d/BiasAddBiasAdd%module_wrapper/conv2d/Conv2D:output:04module_wrapper/conv2d/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2
module_wrapper/conv2d/BiasAdd?
module_wrapper/conv2d/ReluRelu&module_wrapper/conv2d/BiasAdd:output:0*
T0*/
_output_shapes
:?????????2
module_wrapper/conv2d/Relu?
/module_wrapper_1/conv2d_1/Conv2D/ReadVariableOpReadVariableOp8module_wrapper_1_conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype021
/module_wrapper_1/conv2d_1/Conv2D/ReadVariableOp?
 module_wrapper_1/conv2d_1/Conv2DConv2D(module_wrapper/conv2d/Relu:activations:07module_wrapper_1/conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? *
paddingSAME*
strides
2"
 module_wrapper_1/conv2d_1/Conv2D?
0module_wrapper_1/conv2d_1/BiasAdd/ReadVariableOpReadVariableOp9module_wrapper_1_conv2d_1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype022
0module_wrapper_1/conv2d_1/BiasAdd/ReadVariableOp?
!module_wrapper_1/conv2d_1/BiasAddBiasAdd)module_wrapper_1/conv2d_1/Conv2D:output:08module_wrapper_1/conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? 2#
!module_wrapper_1/conv2d_1/BiasAdd?
module_wrapper_1/conv2d_1/ReluRelu*module_wrapper_1/conv2d_1/BiasAdd:output:0*
T0*/
_output_shapes
:????????? 2 
module_wrapper_1/conv2d_1/Relu?
/module_wrapper_2/conv2d_2/Conv2D/ReadVariableOpReadVariableOp8module_wrapper_2_conv2d_2_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype021
/module_wrapper_2/conv2d_2/Conv2D/ReadVariableOp?
 module_wrapper_2/conv2d_2/Conv2DConv2D,module_wrapper_1/conv2d_1/Relu:activations:07module_wrapper_2/conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingSAME*
strides
2"
 module_wrapper_2/conv2d_2/Conv2D?
0module_wrapper_2/conv2d_2/BiasAdd/ReadVariableOpReadVariableOp9module_wrapper_2_conv2d_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype022
0module_wrapper_2/conv2d_2/BiasAdd/ReadVariableOp?
!module_wrapper_2/conv2d_2/BiasAddBiasAdd)module_wrapper_2/conv2d_2/Conv2D:output:08module_wrapper_2/conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2#
!module_wrapper_2/conv2d_2/BiasAdd?
module_wrapper_2/conv2d_2/ReluRelu*module_wrapper_2/conv2d_2/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@2 
module_wrapper_2/conv2d_2/Relu?
/module_wrapper_3/conv2d_3/Conv2D/ReadVariableOpReadVariableOp8module_wrapper_3_conv2d_3_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype021
/module_wrapper_3/conv2d_3/Conv2D/ReadVariableOp?
 module_wrapper_3/conv2d_3/Conv2DConv2D,module_wrapper_2/conv2d_2/Relu:activations:07module_wrapper_3/conv2d_3/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingSAME*
strides
2"
 module_wrapper_3/conv2d_3/Conv2D?
0module_wrapper_3/conv2d_3/BiasAdd/ReadVariableOpReadVariableOp9module_wrapper_3_conv2d_3_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype022
0module_wrapper_3/conv2d_3/BiasAdd/ReadVariableOp?
!module_wrapper_3/conv2d_3/BiasAddBiasAdd)module_wrapper_3/conv2d_3/Conv2D:output:08module_wrapper_3/conv2d_3/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2#
!module_wrapper_3/conv2d_3/BiasAdd?
module_wrapper_3/conv2d_3/ReluRelu*module_wrapper_3/conv2d_3/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@2 
module_wrapper_3/conv2d_3/Relu?
&module_wrapper_4/max_pooling2d/MaxPoolMaxPool,module_wrapper_3/conv2d_3/Relu:activations:0*/
_output_shapes
:?????????@*
ksize
*
paddingVALID*
strides
2(
&module_wrapper_4/max_pooling2d/MaxPool?
!module_wrapper_5/dropout/IdentityIdentity/module_wrapper_4/max_pooling2d/MaxPool:output:0*
T0*/
_output_shapes
:?????????@2#
!module_wrapper_5/dropout/Identity?
module_wrapper_6/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"????@  2 
module_wrapper_6/flatten/Const?
 module_wrapper_6/flatten/ReshapeReshape*module_wrapper_5/dropout/Identity:output:0'module_wrapper_6/flatten/Const:output:0*
T0*(
_output_shapes
:??????????2"
 module_wrapper_6/flatten/Reshape?
,module_wrapper_7/dense/MatMul/ReadVariableOpReadVariableOp5module_wrapper_7_dense_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02.
,module_wrapper_7/dense/MatMul/ReadVariableOp?
module_wrapper_7/dense/MatMulMatMul)module_wrapper_6/flatten/Reshape:output:04module_wrapper_7/dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
module_wrapper_7/dense/MatMul?
-module_wrapper_7/dense/BiasAdd/ReadVariableOpReadVariableOp6module_wrapper_7_dense_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02/
-module_wrapper_7/dense/BiasAdd/ReadVariableOp?
module_wrapper_7/dense/BiasAddBiasAdd'module_wrapper_7/dense/MatMul:product:05module_wrapper_7/dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2 
module_wrapper_7/dense/BiasAdd?
module_wrapper_7/dense/ReluRelu'module_wrapper_7/dense/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
module_wrapper_7/dense/Relu?
.module_wrapper_8/dense_1/MatMul/ReadVariableOpReadVariableOp7module_wrapper_8_dense_1_matmul_readvariableop_resource*
_output_shapes
:	?$*
dtype020
.module_wrapper_8/dense_1/MatMul/ReadVariableOp?
module_wrapper_8/dense_1/MatMulMatMul)module_wrapper_7/dense/Relu:activations:06module_wrapper_8/dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????$2!
module_wrapper_8/dense_1/MatMul?
/module_wrapper_8/dense_1/BiasAdd/ReadVariableOpReadVariableOp8module_wrapper_8_dense_1_biasadd_readvariableop_resource*
_output_shapes
:$*
dtype021
/module_wrapper_8/dense_1/BiasAdd/ReadVariableOp?
 module_wrapper_8/dense_1/BiasAddBiasAdd)module_wrapper_8/dense_1/MatMul:product:07module_wrapper_8/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????$2"
 module_wrapper_8/dense_1/BiasAdd?
 module_wrapper_8/dense_1/SoftmaxSoftmax)module_wrapper_8/dense_1/BiasAdd:output:0*
T0*'
_output_shapes
:?????????$2"
 module_wrapper_8/dense_1/Softmax?
IdentityIdentity*module_wrapper_8/dense_1/Softmax:softmax:0-^module_wrapper/conv2d/BiasAdd/ReadVariableOp,^module_wrapper/conv2d/Conv2D/ReadVariableOp1^module_wrapper_1/conv2d_1/BiasAdd/ReadVariableOp0^module_wrapper_1/conv2d_1/Conv2D/ReadVariableOp1^module_wrapper_2/conv2d_2/BiasAdd/ReadVariableOp0^module_wrapper_2/conv2d_2/Conv2D/ReadVariableOp1^module_wrapper_3/conv2d_3/BiasAdd/ReadVariableOp0^module_wrapper_3/conv2d_3/Conv2D/ReadVariableOp.^module_wrapper_7/dense/BiasAdd/ReadVariableOp-^module_wrapper_7/dense/MatMul/ReadVariableOp0^module_wrapper_8/dense_1/BiasAdd/ReadVariableOp/^module_wrapper_8/dense_1/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????$2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:?????????: : : : : : : : : : : : 2\
,module_wrapper/conv2d/BiasAdd/ReadVariableOp,module_wrapper/conv2d/BiasAdd/ReadVariableOp2Z
+module_wrapper/conv2d/Conv2D/ReadVariableOp+module_wrapper/conv2d/Conv2D/ReadVariableOp2d
0module_wrapper_1/conv2d_1/BiasAdd/ReadVariableOp0module_wrapper_1/conv2d_1/BiasAdd/ReadVariableOp2b
/module_wrapper_1/conv2d_1/Conv2D/ReadVariableOp/module_wrapper_1/conv2d_1/Conv2D/ReadVariableOp2d
0module_wrapper_2/conv2d_2/BiasAdd/ReadVariableOp0module_wrapper_2/conv2d_2/BiasAdd/ReadVariableOp2b
/module_wrapper_2/conv2d_2/Conv2D/ReadVariableOp/module_wrapper_2/conv2d_2/Conv2D/ReadVariableOp2d
0module_wrapper_3/conv2d_3/BiasAdd/ReadVariableOp0module_wrapper_3/conv2d_3/BiasAdd/ReadVariableOp2b
/module_wrapper_3/conv2d_3/Conv2D/ReadVariableOp/module_wrapper_3/conv2d_3/Conv2D/ReadVariableOp2^
-module_wrapper_7/dense/BiasAdd/ReadVariableOp-module_wrapper_7/dense/BiasAdd/ReadVariableOp2\
,module_wrapper_7/dense/MatMul/ReadVariableOp,module_wrapper_7/dense/MatMul/ReadVariableOp2b
/module_wrapper_8/dense_1/BiasAdd/ReadVariableOp/module_wrapper_8/dense_1/BiasAdd/ReadVariableOp2`
.module_wrapper_8/dense_1/MatMul/ReadVariableOp.module_wrapper_8/dense_1/MatMul/ReadVariableOp:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
L__inference_module_wrapper_7_layer_call_and_return_conditional_losses_502339

args_08
$dense_matmul_readvariableop_resource:
??4
%dense_biasadd_readvariableop_resource:	?
identity??dense/BiasAdd/ReadVariableOp?dense/MatMul/ReadVariableOp?
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
dense/MatMul/ReadVariableOp?
dense/MatMulMatMulargs_0#dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense/MatMul?
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
dense/BiasAdd/ReadVariableOp?
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense/BiasAddk

dense/ReluReludense/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2

dense/Relu?
IdentityIdentitydense/Relu:activations:0^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameargs_0
?
?
J__inference_module_wrapper_layer_call_and_return_conditional_losses_502099

args_0?
%conv2d_conv2d_readvariableop_resource:4
&conv2d_biasadd_readvariableop_resource:
identity??conv2d/BiasAdd/ReadVariableOp?conv2d/Conv2D/ReadVariableOp?
conv2d/Conv2D/ReadVariableOpReadVariableOp%conv2d_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
conv2d/Conv2D/ReadVariableOp?
conv2d/Conv2DConv2Dargs_0$conv2d/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
paddingSAME*
strides
2
conv2d/Conv2D?
conv2d/BiasAdd/ReadVariableOpReadVariableOp&conv2d_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
conv2d/BiasAdd/ReadVariableOp?
conv2d/BiasAddBiasAddconv2d/Conv2D:output:0%conv2d/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2
conv2d/BiasAddu
conv2d/ReluReluconv2d/BiasAdd:output:0*
T0*/
_output_shapes
:?????????2
conv2d/Relu?
IdentityIdentityconv2d/Relu:activations:0^conv2d/BiasAdd/ReadVariableOp^conv2d/Conv2D/ReadVariableOp*
T0*/
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : 2>
conv2d/BiasAdd/ReadVariableOpconv2d/BiasAdd/ReadVariableOp2<
conv2d/Conv2D/ReadVariableOpconv2d/Conv2D/ReadVariableOp:W S
/
_output_shapes
:?????????
 
_user_specified_nameargs_0
?
?
L__inference_module_wrapper_8_layer_call_and_return_conditional_losses_502368

args_09
&dense_1_matmul_readvariableop_resource:	?$5
'dense_1_biasadd_readvariableop_resource:$
identity??dense_1/BiasAdd/ReadVariableOp?dense_1/MatMul/ReadVariableOp?
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes
:	?$*
dtype02
dense_1/MatMul/ReadVariableOp?
dense_1/MatMulMatMulargs_0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????$2
dense_1/MatMul?
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:$*
dtype02 
dense_1/BiasAdd/ReadVariableOp?
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????$2
dense_1/BiasAddy
dense_1/SoftmaxSoftmaxdense_1/BiasAdd:output:0*
T0*'
_output_shapes
:?????????$2
dense_1/Softmax?
IdentityIdentitydense_1/Softmax:softmax:0^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????$2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameargs_0
?e
?
__inference__traced_save_502537
file_prefix(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop;
7savev2_module_wrapper_conv2d_kernel_read_readvariableop9
5savev2_module_wrapper_conv2d_bias_read_readvariableop?
;savev2_module_wrapper_1_conv2d_1_kernel_read_readvariableop=
9savev2_module_wrapper_1_conv2d_1_bias_read_readvariableop?
;savev2_module_wrapper_2_conv2d_2_kernel_read_readvariableop=
9savev2_module_wrapper_2_conv2d_2_bias_read_readvariableop?
;savev2_module_wrapper_3_conv2d_3_kernel_read_readvariableop=
9savev2_module_wrapper_3_conv2d_3_bias_read_readvariableop<
8savev2_module_wrapper_7_dense_kernel_read_readvariableop:
6savev2_module_wrapper_7_dense_bias_read_readvariableop>
:savev2_module_wrapper_8_dense_1_kernel_read_readvariableop<
8savev2_module_wrapper_8_dense_1_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableopB
>savev2_adam_module_wrapper_conv2d_kernel_m_read_readvariableop@
<savev2_adam_module_wrapper_conv2d_bias_m_read_readvariableopF
Bsavev2_adam_module_wrapper_1_conv2d_1_kernel_m_read_readvariableopD
@savev2_adam_module_wrapper_1_conv2d_1_bias_m_read_readvariableopF
Bsavev2_adam_module_wrapper_2_conv2d_2_kernel_m_read_readvariableopD
@savev2_adam_module_wrapper_2_conv2d_2_bias_m_read_readvariableopF
Bsavev2_adam_module_wrapper_3_conv2d_3_kernel_m_read_readvariableopD
@savev2_adam_module_wrapper_3_conv2d_3_bias_m_read_readvariableopC
?savev2_adam_module_wrapper_7_dense_kernel_m_read_readvariableopA
=savev2_adam_module_wrapper_7_dense_bias_m_read_readvariableopE
Asavev2_adam_module_wrapper_8_dense_1_kernel_m_read_readvariableopC
?savev2_adam_module_wrapper_8_dense_1_bias_m_read_readvariableopB
>savev2_adam_module_wrapper_conv2d_kernel_v_read_readvariableop@
<savev2_adam_module_wrapper_conv2d_bias_v_read_readvariableopF
Bsavev2_adam_module_wrapper_1_conv2d_1_kernel_v_read_readvariableopD
@savev2_adam_module_wrapper_1_conv2d_1_bias_v_read_readvariableopF
Bsavev2_adam_module_wrapper_2_conv2d_2_kernel_v_read_readvariableopD
@savev2_adam_module_wrapper_2_conv2d_2_bias_v_read_readvariableopF
Bsavev2_adam_module_wrapper_3_conv2d_3_kernel_v_read_readvariableopD
@savev2_adam_module_wrapper_3_conv2d_3_bias_v_read_readvariableopC
?savev2_adam_module_wrapper_7_dense_kernel_v_read_readvariableopA
=savev2_adam_module_wrapper_7_dense_bias_v_read_readvariableopE
Asavev2_adam_module_wrapper_8_dense_1_kernel_v_read_readvariableopC
?savev2_adam_module_wrapper_8_dense_1_bias_v_read_readvariableop
savev2_const

identity_1??MergeV2Checkpoints?
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*2
StaticRegexFullMatchc
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part2
Constl
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part2	
Const_1?
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: 2
Selectt

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shard?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:.*
dtype0*?
value?B?.B)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/0/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/3/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/4/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/5/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/6/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/7/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/8/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/9/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/10/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/11/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/10/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/11/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/10/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/11/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:.*
dtype0*o
valuefBd.B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop7savev2_module_wrapper_conv2d_kernel_read_readvariableop5savev2_module_wrapper_conv2d_bias_read_readvariableop;savev2_module_wrapper_1_conv2d_1_kernel_read_readvariableop9savev2_module_wrapper_1_conv2d_1_bias_read_readvariableop;savev2_module_wrapper_2_conv2d_2_kernel_read_readvariableop9savev2_module_wrapper_2_conv2d_2_bias_read_readvariableop;savev2_module_wrapper_3_conv2d_3_kernel_read_readvariableop9savev2_module_wrapper_3_conv2d_3_bias_read_readvariableop8savev2_module_wrapper_7_dense_kernel_read_readvariableop6savev2_module_wrapper_7_dense_bias_read_readvariableop:savev2_module_wrapper_8_dense_1_kernel_read_readvariableop8savev2_module_wrapper_8_dense_1_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop>savev2_adam_module_wrapper_conv2d_kernel_m_read_readvariableop<savev2_adam_module_wrapper_conv2d_bias_m_read_readvariableopBsavev2_adam_module_wrapper_1_conv2d_1_kernel_m_read_readvariableop@savev2_adam_module_wrapper_1_conv2d_1_bias_m_read_readvariableopBsavev2_adam_module_wrapper_2_conv2d_2_kernel_m_read_readvariableop@savev2_adam_module_wrapper_2_conv2d_2_bias_m_read_readvariableopBsavev2_adam_module_wrapper_3_conv2d_3_kernel_m_read_readvariableop@savev2_adam_module_wrapper_3_conv2d_3_bias_m_read_readvariableop?savev2_adam_module_wrapper_7_dense_kernel_m_read_readvariableop=savev2_adam_module_wrapper_7_dense_bias_m_read_readvariableopAsavev2_adam_module_wrapper_8_dense_1_kernel_m_read_readvariableop?savev2_adam_module_wrapper_8_dense_1_bias_m_read_readvariableop>savev2_adam_module_wrapper_conv2d_kernel_v_read_readvariableop<savev2_adam_module_wrapper_conv2d_bias_v_read_readvariableopBsavev2_adam_module_wrapper_1_conv2d_1_kernel_v_read_readvariableop@savev2_adam_module_wrapper_1_conv2d_1_bias_v_read_readvariableopBsavev2_adam_module_wrapper_2_conv2d_2_kernel_v_read_readvariableop@savev2_adam_module_wrapper_2_conv2d_2_bias_v_read_readvariableopBsavev2_adam_module_wrapper_3_conv2d_3_kernel_v_read_readvariableop@savev2_adam_module_wrapper_3_conv2d_3_bias_v_read_readvariableop?savev2_adam_module_wrapper_7_dense_kernel_v_read_readvariableop=savev2_adam_module_wrapper_7_dense_bias_v_read_readvariableopAsavev2_adam_module_wrapper_8_dense_1_kernel_v_read_readvariableop?savev2_adam_module_wrapper_8_dense_1_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *<
dtypes2
02.	2
SaveV2?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes?
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identitym

Identity_1IdentityIdentity:output:0^MergeV2Checkpoints*
T0*
_output_shapes
: 2

Identity_1"!

identity_1Identity_1:output:0*?
_input_shapes?
?: : : : : : ::: : : @:@:@@:@:
??:?:	?$:$: : : : ::: : : @:@:@@:@:
??:?:	?$:$::: : : @:@:@@:@:
??:?:	?$:$: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :,(
&
_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
: : 	

_output_shapes
: :,
(
&
_output_shapes
: @: 

_output_shapes
:@:,(
&
_output_shapes
:@@: 

_output_shapes
:@:&"
 
_output_shapes
:
??:!

_output_shapes	
:?:%!

_output_shapes
:	?$: 

_output_shapes
:$:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :,(
&
_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
: : 

_output_shapes
: :,(
&
_output_shapes
: @: 

_output_shapes
:@:,(
&
_output_shapes
:@@: 

_output_shapes
:@:&"
 
_output_shapes
:
??:!

_output_shapes	
:?:% !

_output_shapes
:	?$: !

_output_shapes
:$:,"(
&
_output_shapes
:: #

_output_shapes
::,$(
&
_output_shapes
: : %

_output_shapes
: :,&(
&
_output_shapes
: @: '

_output_shapes
:@:,((
&
_output_shapes
:@@: )

_output_shapes
:@:&*"
 
_output_shapes
:
??:!+

_output_shapes	
:?:%,!

_output_shapes
:	?$: -

_output_shapes
:$:.

_output_shapes
: 
?c
?
F__inference_sequential_layer_call_and_return_conditional_losses_501963

inputsN
4module_wrapper_conv2d_conv2d_readvariableop_resource:C
5module_wrapper_conv2d_biasadd_readvariableop_resource:R
8module_wrapper_1_conv2d_1_conv2d_readvariableop_resource: G
9module_wrapper_1_conv2d_1_biasadd_readvariableop_resource: R
8module_wrapper_2_conv2d_2_conv2d_readvariableop_resource: @G
9module_wrapper_2_conv2d_2_biasadd_readvariableop_resource:@R
8module_wrapper_3_conv2d_3_conv2d_readvariableop_resource:@@G
9module_wrapper_3_conv2d_3_biasadd_readvariableop_resource:@I
5module_wrapper_7_dense_matmul_readvariableop_resource:
??E
6module_wrapper_7_dense_biasadd_readvariableop_resource:	?J
7module_wrapper_8_dense_1_matmul_readvariableop_resource:	?$F
8module_wrapper_8_dense_1_biasadd_readvariableop_resource:$
identity??,module_wrapper/conv2d/BiasAdd/ReadVariableOp?+module_wrapper/conv2d/Conv2D/ReadVariableOp?0module_wrapper_1/conv2d_1/BiasAdd/ReadVariableOp?/module_wrapper_1/conv2d_1/Conv2D/ReadVariableOp?0module_wrapper_2/conv2d_2/BiasAdd/ReadVariableOp?/module_wrapper_2/conv2d_2/Conv2D/ReadVariableOp?0module_wrapper_3/conv2d_3/BiasAdd/ReadVariableOp?/module_wrapper_3/conv2d_3/Conv2D/ReadVariableOp?-module_wrapper_7/dense/BiasAdd/ReadVariableOp?,module_wrapper_7/dense/MatMul/ReadVariableOp?/module_wrapper_8/dense_1/BiasAdd/ReadVariableOp?.module_wrapper_8/dense_1/MatMul/ReadVariableOp?
+module_wrapper/conv2d/Conv2D/ReadVariableOpReadVariableOp4module_wrapper_conv2d_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02-
+module_wrapper/conv2d/Conv2D/ReadVariableOp?
module_wrapper/conv2d/Conv2DConv2Dinputs3module_wrapper/conv2d/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
paddingSAME*
strides
2
module_wrapper/conv2d/Conv2D?
,module_wrapper/conv2d/BiasAdd/ReadVariableOpReadVariableOp5module_wrapper_conv2d_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02.
,module_wrapper/conv2d/BiasAdd/ReadVariableOp?
module_wrapper/conv2d/BiasAddBiasAdd%module_wrapper/conv2d/Conv2D:output:04module_wrapper/conv2d/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2
module_wrapper/conv2d/BiasAdd?
module_wrapper/conv2d/ReluRelu&module_wrapper/conv2d/BiasAdd:output:0*
T0*/
_output_shapes
:?????????2
module_wrapper/conv2d/Relu?
/module_wrapper_1/conv2d_1/Conv2D/ReadVariableOpReadVariableOp8module_wrapper_1_conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype021
/module_wrapper_1/conv2d_1/Conv2D/ReadVariableOp?
 module_wrapper_1/conv2d_1/Conv2DConv2D(module_wrapper/conv2d/Relu:activations:07module_wrapper_1/conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? *
paddingSAME*
strides
2"
 module_wrapper_1/conv2d_1/Conv2D?
0module_wrapper_1/conv2d_1/BiasAdd/ReadVariableOpReadVariableOp9module_wrapper_1_conv2d_1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype022
0module_wrapper_1/conv2d_1/BiasAdd/ReadVariableOp?
!module_wrapper_1/conv2d_1/BiasAddBiasAdd)module_wrapper_1/conv2d_1/Conv2D:output:08module_wrapper_1/conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? 2#
!module_wrapper_1/conv2d_1/BiasAdd?
module_wrapper_1/conv2d_1/ReluRelu*module_wrapper_1/conv2d_1/BiasAdd:output:0*
T0*/
_output_shapes
:????????? 2 
module_wrapper_1/conv2d_1/Relu?
/module_wrapper_2/conv2d_2/Conv2D/ReadVariableOpReadVariableOp8module_wrapper_2_conv2d_2_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype021
/module_wrapper_2/conv2d_2/Conv2D/ReadVariableOp?
 module_wrapper_2/conv2d_2/Conv2DConv2D,module_wrapper_1/conv2d_1/Relu:activations:07module_wrapper_2/conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingSAME*
strides
2"
 module_wrapper_2/conv2d_2/Conv2D?
0module_wrapper_2/conv2d_2/BiasAdd/ReadVariableOpReadVariableOp9module_wrapper_2_conv2d_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype022
0module_wrapper_2/conv2d_2/BiasAdd/ReadVariableOp?
!module_wrapper_2/conv2d_2/BiasAddBiasAdd)module_wrapper_2/conv2d_2/Conv2D:output:08module_wrapper_2/conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2#
!module_wrapper_2/conv2d_2/BiasAdd?
module_wrapper_2/conv2d_2/ReluRelu*module_wrapper_2/conv2d_2/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@2 
module_wrapper_2/conv2d_2/Relu?
/module_wrapper_3/conv2d_3/Conv2D/ReadVariableOpReadVariableOp8module_wrapper_3_conv2d_3_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype021
/module_wrapper_3/conv2d_3/Conv2D/ReadVariableOp?
 module_wrapper_3/conv2d_3/Conv2DConv2D,module_wrapper_2/conv2d_2/Relu:activations:07module_wrapper_3/conv2d_3/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingSAME*
strides
2"
 module_wrapper_3/conv2d_3/Conv2D?
0module_wrapper_3/conv2d_3/BiasAdd/ReadVariableOpReadVariableOp9module_wrapper_3_conv2d_3_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype022
0module_wrapper_3/conv2d_3/BiasAdd/ReadVariableOp?
!module_wrapper_3/conv2d_3/BiasAddBiasAdd)module_wrapper_3/conv2d_3/Conv2D:output:08module_wrapper_3/conv2d_3/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2#
!module_wrapper_3/conv2d_3/BiasAdd?
module_wrapper_3/conv2d_3/ReluRelu*module_wrapper_3/conv2d_3/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@2 
module_wrapper_3/conv2d_3/Relu?
&module_wrapper_4/max_pooling2d/MaxPoolMaxPool,module_wrapper_3/conv2d_3/Relu:activations:0*/
_output_shapes
:?????????@*
ksize
*
paddingVALID*
strides
2(
&module_wrapper_4/max_pooling2d/MaxPool?
&module_wrapper_5/dropout/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UU??2(
&module_wrapper_5/dropout/dropout/Const?
$module_wrapper_5/dropout/dropout/MulMul/module_wrapper_4/max_pooling2d/MaxPool:output:0/module_wrapper_5/dropout/dropout/Const:output:0*
T0*/
_output_shapes
:?????????@2&
$module_wrapper_5/dropout/dropout/Mul?
&module_wrapper_5/dropout/dropout/ShapeShape/module_wrapper_4/max_pooling2d/MaxPool:output:0*
T0*
_output_shapes
:2(
&module_wrapper_5/dropout/dropout/Shape?
=module_wrapper_5/dropout/dropout/random_uniform/RandomUniformRandomUniform/module_wrapper_5/dropout/dropout/Shape:output:0*
T0*/
_output_shapes
:?????????@*
dtype02?
=module_wrapper_5/dropout/dropout/random_uniform/RandomUniform?
/module_wrapper_5/dropout/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>21
/module_wrapper_5/dropout/dropout/GreaterEqual/y?
-module_wrapper_5/dropout/dropout/GreaterEqualGreaterEqualFmodule_wrapper_5/dropout/dropout/random_uniform/RandomUniform:output:08module_wrapper_5/dropout/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????@2/
-module_wrapper_5/dropout/dropout/GreaterEqual?
%module_wrapper_5/dropout/dropout/CastCast1module_wrapper_5/dropout/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????@2'
%module_wrapper_5/dropout/dropout/Cast?
&module_wrapper_5/dropout/dropout/Mul_1Mul(module_wrapper_5/dropout/dropout/Mul:z:0)module_wrapper_5/dropout/dropout/Cast:y:0*
T0*/
_output_shapes
:?????????@2(
&module_wrapper_5/dropout/dropout/Mul_1?
module_wrapper_6/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"????@  2 
module_wrapper_6/flatten/Const?
 module_wrapper_6/flatten/ReshapeReshape*module_wrapper_5/dropout/dropout/Mul_1:z:0'module_wrapper_6/flatten/Const:output:0*
T0*(
_output_shapes
:??????????2"
 module_wrapper_6/flatten/Reshape?
,module_wrapper_7/dense/MatMul/ReadVariableOpReadVariableOp5module_wrapper_7_dense_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02.
,module_wrapper_7/dense/MatMul/ReadVariableOp?
module_wrapper_7/dense/MatMulMatMul)module_wrapper_6/flatten/Reshape:output:04module_wrapper_7/dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
module_wrapper_7/dense/MatMul?
-module_wrapper_7/dense/BiasAdd/ReadVariableOpReadVariableOp6module_wrapper_7_dense_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02/
-module_wrapper_7/dense/BiasAdd/ReadVariableOp?
module_wrapper_7/dense/BiasAddBiasAdd'module_wrapper_7/dense/MatMul:product:05module_wrapper_7/dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2 
module_wrapper_7/dense/BiasAdd?
module_wrapper_7/dense/ReluRelu'module_wrapper_7/dense/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
module_wrapper_7/dense/Relu?
.module_wrapper_8/dense_1/MatMul/ReadVariableOpReadVariableOp7module_wrapper_8_dense_1_matmul_readvariableop_resource*
_output_shapes
:	?$*
dtype020
.module_wrapper_8/dense_1/MatMul/ReadVariableOp?
module_wrapper_8/dense_1/MatMulMatMul)module_wrapper_7/dense/Relu:activations:06module_wrapper_8/dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????$2!
module_wrapper_8/dense_1/MatMul?
/module_wrapper_8/dense_1/BiasAdd/ReadVariableOpReadVariableOp8module_wrapper_8_dense_1_biasadd_readvariableop_resource*
_output_shapes
:$*
dtype021
/module_wrapper_8/dense_1/BiasAdd/ReadVariableOp?
 module_wrapper_8/dense_1/BiasAddBiasAdd)module_wrapper_8/dense_1/MatMul:product:07module_wrapper_8/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????$2"
 module_wrapper_8/dense_1/BiasAdd?
 module_wrapper_8/dense_1/SoftmaxSoftmax)module_wrapper_8/dense_1/BiasAdd:output:0*
T0*'
_output_shapes
:?????????$2"
 module_wrapper_8/dense_1/Softmax?
IdentityIdentity*module_wrapper_8/dense_1/Softmax:softmax:0-^module_wrapper/conv2d/BiasAdd/ReadVariableOp,^module_wrapper/conv2d/Conv2D/ReadVariableOp1^module_wrapper_1/conv2d_1/BiasAdd/ReadVariableOp0^module_wrapper_1/conv2d_1/Conv2D/ReadVariableOp1^module_wrapper_2/conv2d_2/BiasAdd/ReadVariableOp0^module_wrapper_2/conv2d_2/Conv2D/ReadVariableOp1^module_wrapper_3/conv2d_3/BiasAdd/ReadVariableOp0^module_wrapper_3/conv2d_3/Conv2D/ReadVariableOp.^module_wrapper_7/dense/BiasAdd/ReadVariableOp-^module_wrapper_7/dense/MatMul/ReadVariableOp0^module_wrapper_8/dense_1/BiasAdd/ReadVariableOp/^module_wrapper_8/dense_1/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????$2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:?????????: : : : : : : : : : : : 2\
,module_wrapper/conv2d/BiasAdd/ReadVariableOp,module_wrapper/conv2d/BiasAdd/ReadVariableOp2Z
+module_wrapper/conv2d/Conv2D/ReadVariableOp+module_wrapper/conv2d/Conv2D/ReadVariableOp2d
0module_wrapper_1/conv2d_1/BiasAdd/ReadVariableOp0module_wrapper_1/conv2d_1/BiasAdd/ReadVariableOp2b
/module_wrapper_1/conv2d_1/Conv2D/ReadVariableOp/module_wrapper_1/conv2d_1/Conv2D/ReadVariableOp2d
0module_wrapper_2/conv2d_2/BiasAdd/ReadVariableOp0module_wrapper_2/conv2d_2/BiasAdd/ReadVariableOp2b
/module_wrapper_2/conv2d_2/Conv2D/ReadVariableOp/module_wrapper_2/conv2d_2/Conv2D/ReadVariableOp2d
0module_wrapper_3/conv2d_3/BiasAdd/ReadVariableOp0module_wrapper_3/conv2d_3/BiasAdd/ReadVariableOp2b
/module_wrapper_3/conv2d_3/Conv2D/ReadVariableOp/module_wrapper_3/conv2d_3/Conv2D/ReadVariableOp2^
-module_wrapper_7/dense/BiasAdd/ReadVariableOp-module_wrapper_7/dense/BiasAdd/ReadVariableOp2\
,module_wrapper_7/dense/MatMul/ReadVariableOp,module_wrapper_7/dense/MatMul/ReadVariableOp2b
/module_wrapper_8/dense_1/BiasAdd/ReadVariableOp/module_wrapper_8/dense_1/BiasAdd/ReadVariableOp2`
.module_wrapper_8/dense_1/MatMul/ReadVariableOp.module_wrapper_8/dense_1/MatMul/ReadVariableOp:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
L__inference_module_wrapper_1_layer_call_and_return_conditional_losses_502139

args_0A
'conv2d_1_conv2d_readvariableop_resource: 6
(conv2d_1_biasadd_readvariableop_resource: 
identity??conv2d_1/BiasAdd/ReadVariableOp?conv2d_1/Conv2D/ReadVariableOp?
conv2d_1/Conv2D/ReadVariableOpReadVariableOp'conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02 
conv2d_1/Conv2D/ReadVariableOp?
conv2d_1/Conv2DConv2Dargs_0&conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? *
paddingSAME*
strides
2
conv2d_1/Conv2D?
conv2d_1/BiasAdd/ReadVariableOpReadVariableOp(conv2d_1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02!
conv2d_1/BiasAdd/ReadVariableOp?
conv2d_1/BiasAddBiasAddconv2d_1/Conv2D:output:0'conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? 2
conv2d_1/BiasAdd{
conv2d_1/ReluReluconv2d_1/BiasAdd:output:0*
T0*/
_output_shapes
:????????? 2
conv2d_1/Relu?
IdentityIdentityconv2d_1/Relu:activations:0 ^conv2d_1/BiasAdd/ReadVariableOp^conv2d_1/Conv2D/ReadVariableOp*
T0*/
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : 2B
conv2d_1/BiasAdd/ReadVariableOpconv2d_1/BiasAdd/ReadVariableOp2@
conv2d_1/Conv2D/ReadVariableOpconv2d_1/Conv2D/ReadVariableOp:W S
/
_output_shapes
:?????????
 
_user_specified_nameargs_0
?
?
1__inference_module_wrapper_2_layer_call_fn_502159

args_0!
unknown: @
	unknown_0:@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallargs_0unknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_module_wrapper_2_layer_call_and_return_conditional_losses_5011502
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:????????? : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:????????? 
 
_user_specified_nameargs_0
?
?
L__inference_module_wrapper_3_layer_call_and_return_conditional_losses_501167

args_0A
'conv2d_3_conv2d_readvariableop_resource:@@6
(conv2d_3_biasadd_readvariableop_resource:@
identity??conv2d_3/BiasAdd/ReadVariableOp?conv2d_3/Conv2D/ReadVariableOp?
conv2d_3/Conv2D/ReadVariableOpReadVariableOp'conv2d_3_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02 
conv2d_3/Conv2D/ReadVariableOp?
conv2d_3/Conv2DConv2Dargs_0&conv2d_3/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingSAME*
strides
2
conv2d_3/Conv2D?
conv2d_3/BiasAdd/ReadVariableOpReadVariableOp(conv2d_3_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
conv2d_3/BiasAdd/ReadVariableOp?
conv2d_3/BiasAddBiasAddconv2d_3/Conv2D:output:0'conv2d_3/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2
conv2d_3/BiasAdd{
conv2d_3/ReluReluconv2d_3/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@2
conv2d_3/Relu?
IdentityIdentityconv2d_3/Relu:activations:0 ^conv2d_3/BiasAdd/ReadVariableOp^conv2d_3/Conv2D/ReadVariableOp*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????@: : 2B
conv2d_3/BiasAdd/ReadVariableOpconv2d_3/BiasAdd/ReadVariableOp2@
conv2d_3/Conv2D/ReadVariableOpconv2d_3/Conv2D/ReadVariableOp:W S
/
_output_shapes
:?????????@
 
_user_specified_nameargs_0
?
?
L__inference_module_wrapper_7_layer_call_and_return_conditional_losses_502328

args_08
$dense_matmul_readvariableop_resource:
??4
%dense_biasadd_readvariableop_resource:	?
identity??dense/BiasAdd/ReadVariableOp?dense/MatMul/ReadVariableOp?
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
dense/MatMul/ReadVariableOp?
dense/MatMulMatMulargs_0#dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense/MatMul?
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
dense/BiasAdd/ReadVariableOp?
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense/BiasAddk

dense/ReluReludense/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2

dense/Relu?
IdentityIdentitydense/Relu:activations:0^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameargs_0
?
?
/__inference_module_wrapper_layer_call_fn_502079

args_0!
unknown:
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallargs_0unknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_module_wrapper_layer_call_and_return_conditional_losses_5011162
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????
 
_user_specified_nameargs_0
?

?
$__inference_signature_wrapper_501728
module_wrapper_input!
unknown:
	unknown_0:#
	unknown_1: 
	unknown_2: #
	unknown_3: @
	unknown_4:@#
	unknown_5:@@
	unknown_6:@
	unknown_7:
??
	unknown_8:	?
	unknown_9:	?$

unknown_10:$
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallmodule_wrapper_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????$*.
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? **
f%R#
!__inference__wrapped_model_5010982
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????$2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:?????????: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:e a
/
_output_shapes
:?????????
.
_user_specified_namemodule_wrapper_input
?
?
1__inference_module_wrapper_7_layer_call_fn_502308

args_0
unknown:
??
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallargs_0unknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_module_wrapper_7_layer_call_and_return_conditional_losses_5012062
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameargs_0"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
]
module_wrapper_inputE
&serving_default_module_wrapper_input:0?????????D
module_wrapper_80
StatefulPartitionedCall:0?????????$tensorflow/serving/predict:??
?
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
layer_with_weights-3
layer-3
layer-4
layer-5
layer-6
layer_with_weights-4
layer-7
	layer_with_weights-5
	layer-8

	optimizer
trainable_variables
regularization_losses
	variables
	keras_api

signatures
?__call__
?_default_save_signature
+?&call_and_return_all_conditional_losses"?
_tf_keras_sequential?{"name": "sequential", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "class_name": "Sequential", "config": {"name": "sequential", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, null, null, null]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "module_wrapper_input"}}, {"class_name": "ModuleWrapper", "config": {"layer was saved without config": true}}, {"class_name": "ModuleWrapper", "config": {"layer was saved without config": true}}, {"class_name": "ModuleWrapper", "config": {"layer was saved without config": true}}, {"class_name": "ModuleWrapper", "config": {"layer was saved without config": true}}, {"class_name": "ModuleWrapper", "config": {"layer was saved without config": true}}, {"class_name": "ModuleWrapper", "config": {"layer was saved without config": true}}, {"class_name": "ModuleWrapper", "config": {"layer was saved without config": true}}, {"class_name": "ModuleWrapper", "config": {"layer was saved without config": true}}, {"class_name": "ModuleWrapper", "config": {"layer was saved without config": true}}]}, "shared_object_id": 1, "build_input_shape": {"class_name": "TensorShape", "items": [null, null, null, null]}, "is_graph_network": true, "save_spec": {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [1, 28, 28, 3]}, "float32", "module_wrapper_input"]}, "keras_version": "2.5.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential"}, "training_config": {"loss": "sparse_categorical_crossentropy", "metrics": [[{"class_name": "MeanMetricWrapper", "config": {"name": "custom_f1score", "dtype": "float32", "fn": "custom_f1score"}, "shared_object_id": 2}]], "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 9.999999747378752e-05, "decay": 0.0, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-07, "amsgrad": false}}}}
?
_module
trainable_variables
regularization_losses
	variables
	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "module_wrapper", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "ModuleWrapper", "config": {"layer was saved without config": true}}
?
_module
trainable_variables
regularization_losses
	variables
	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "module_wrapper_1", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "ModuleWrapper", "config": {"layer was saved without config": true}}
?
_module
trainable_variables
regularization_losses
	variables
	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "module_wrapper_2", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "ModuleWrapper", "config": {"layer was saved without config": true}}
?
_module
 trainable_variables
!regularization_losses
"	variables
#	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "module_wrapper_3", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "ModuleWrapper", "config": {"layer was saved without config": true}}
?
$_module
%trainable_variables
&regularization_losses
'	variables
(	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "module_wrapper_4", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "ModuleWrapper", "config": {"layer was saved without config": true}}
?
)_module
*trainable_variables
+regularization_losses
,	variables
-	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "module_wrapper_5", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "ModuleWrapper", "config": {"layer was saved without config": true}}
?
._module
/trainable_variables
0regularization_losses
1	variables
2	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "module_wrapper_6", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "ModuleWrapper", "config": {"layer was saved without config": true}}
?
3_module
4trainable_variables
5regularization_losses
6	variables
7	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "module_wrapper_7", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "ModuleWrapper", "config": {"layer was saved without config": true}}
?
8_module
9trainable_variables
:regularization_losses
;	variables
<	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "module_wrapper_8", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "ModuleWrapper", "config": {"layer was saved without config": true}}
?
=iter

>beta_1

?beta_2
	@decay
Alearning_rateBm?Cm?Dm?Em?Fm?Gm?Hm?Im?Jm?Km?Lm?Mm?Bv?Cv?Dv?Ev?Fv?Gv?Hv?Iv?Jv?Kv?Lv?Mv?"
	optimizer
v
B0
C1
D2
E3
F4
G5
H6
I7
J8
K9
L10
M11"
trackable_list_wrapper
 "
trackable_list_wrapper
v
B0
C1
D2
E3
F4
G5
H6
I7
J8
K9
L10
M11"
trackable_list_wrapper
?
Nnon_trainable_variables
trainable_variables
Ometrics
Player_metrics

Qlayers
regularization_losses
	variables
Rlayer_regularization_losses
?__call__
?_default_save_signature
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
-
?serving_default"
signature_map
?


Bkernel
Cbias
Strainable_variables
Tregularization_losses
U	variables
V	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?	
_tf_keras_layer?	{"name": "conv2d", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, 28, 28, 3]}, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 28, 28, 3]}, "dtype": "float32", "filters": 16, "kernel_size": {"class_name": "__tuple__", "items": [22, 22]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 3}}}, "build_input_shape": {"class_name": "TensorShape", "items": [1, 28, 28, 3]}}
.
B0
C1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
B0
C1"
trackable_list_wrapper
?
Wnon_trainable_variables

Xlayers
Ymetrics
Zlayer_metrics
trainable_variables
regularization_losses
	variables
[layer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?


Dkernel
Ebias
\trainable_variables
]regularization_losses
^	variables
_	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?	
_tf_keras_layer?	{"name": "conv2d_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, 28, 28, 3]}, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_1", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 28, 28, 3]}, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [16, 16]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 16}}}, "build_input_shape": {"class_name": "TensorShape", "items": [1, 28, 28, 16]}}
.
D0
E1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
D0
E1"
trackable_list_wrapper
?
`non_trainable_variables

alayers
bmetrics
clayer_metrics
trainable_variables
regularization_losses
	variables
dlayer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?


Fkernel
Gbias
etrainable_variables
fregularization_losses
g	variables
h	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?	
_tf_keras_layer?	{"name": "conv2d_2", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, 28, 28, 3]}, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_2", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 28, 28, 3]}, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [8, 8]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 32}}}, "build_input_shape": {"class_name": "TensorShape", "items": [1, 28, 28, 32]}}
.
F0
G1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
F0
G1"
trackable_list_wrapper
?
inon_trainable_variables

jlayers
kmetrics
llayer_metrics
trainable_variables
regularization_losses
	variables
mlayer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?


Hkernel
Ibias
ntrainable_variables
oregularization_losses
p	variables
q	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?	
_tf_keras_layer?	{"name": "conv2d_3", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, 28, 28, 3]}, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_3", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 28, 28, 3]}, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [4, 4]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 64}}}, "build_input_shape": {"class_name": "TensorShape", "items": [1, 28, 28, 64]}}
.
H0
I1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
H0
I1"
trackable_list_wrapper
?
rnon_trainable_variables

slayers
tmetrics
ulayer_metrics
 trainable_variables
!regularization_losses
"	variables
vlayer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?
wtrainable_variables
xregularization_losses
y	variables
z	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "max_pooling2d", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "MaxPooling2D", "config": {"name": "max_pooling2d", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [4, 4]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [4, 4]}, "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
{non_trainable_variables

|layers
}metrics
~layer_metrics
%trainable_variables
&regularization_losses
'	variables
layer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?
?trainable_variables
?regularization_losses
?	variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "dropout", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dropout", "config": {"name": "dropout", "trainable": true, "dtype": "float32", "rate": 0.4, "noise_shape": null, "seed": null}}
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
?layer_metrics
*trainable_variables
+regularization_losses
,	variables
 ?layer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?
?trainable_variables
?regularization_losses
?	variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "flatten", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Flatten", "config": {"name": "flatten", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 1, "axes": {}}}}
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
?layer_metrics
/trainable_variables
0regularization_losses
1	variables
 ?layer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?

Jkernel
Kbias
?trainable_variables
?regularization_losses
?	variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "dense", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense", "trainable": true, "dtype": "float32", "units": 128, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 3136}}}, "build_input_shape": {"class_name": "TensorShape", "items": [1, 3136]}}
.
J0
K1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
J0
K1"
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
?layer_metrics
4trainable_variables
5regularization_losses
6	variables
 ?layer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?

Lkernel
Mbias
?trainable_variables
?regularization_losses
?	variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "dense_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_1", "trainable": true, "dtype": "float32", "units": 36, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 128}}}, "build_input_shape": {"class_name": "TensorShape", "items": [1, 128]}}
.
L0
M1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
L0
M1"
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
?layer_metrics
9trainable_variables
:regularization_losses
;	variables
 ?layer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
6:42module_wrapper/conv2d/kernel
(:&2module_wrapper/conv2d/bias
::8 2 module_wrapper_1/conv2d_1/kernel
,:* 2module_wrapper_1/conv2d_1/bias
::8 @2 module_wrapper_2/conv2d_2/kernel
,:*@2module_wrapper_2/conv2d_2/bias
::8@@2 module_wrapper_3/conv2d_3/kernel
,:*@2module_wrapper_3/conv2d_3/bias
1:/
??2module_wrapper_7/dense/kernel
*:(?2module_wrapper_7/dense/bias
2:0	?$2module_wrapper_8/dense_1/kernel
+:)$2module_wrapper_8/dense_1/bias
 "
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
 "
trackable_dict_wrapper
_
0
1
2
3
4
5
6
7
	8"
trackable_list_wrapper
 "
trackable_list_wrapper
.
B0
C1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
B0
C1"
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
?layer_metrics
Strainable_variables
Tregularization_losses
U	variables
 ?layer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
.
D0
E1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
D0
E1"
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
?layer_metrics
\trainable_variables
]regularization_losses
^	variables
 ?layer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
.
F0
G1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
F0
G1"
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
?layer_metrics
etrainable_variables
fregularization_losses
g	variables
 ?layer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
.
H0
I1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
H0
I1"
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
?layer_metrics
ntrainable_variables
oregularization_losses
p	variables
 ?layer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
?layer_metrics
wtrainable_variables
xregularization_losses
y	variables
 ?layer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
?layer_metrics
?trainable_variables
?regularization_losses
?	variables
 ?layer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
?layer_metrics
?trainable_variables
?regularization_losses
?	variables
 ?layer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
.
J0
K1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
J0
K1"
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
?layer_metrics
?trainable_variables
?regularization_losses
?	variables
 ?layer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
.
L0
M1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
L0
M1"
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
?layer_metrics
?trainable_variables
?regularization_losses
?	variables
 ?layer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
?

?total

?count
?	variables
?	keras_api"?
_tf_keras_metric?{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}, "shared_object_id": 3}
?

?total

?count
?
_fn_kwargs
?	variables
?	keras_api"?
_tf_keras_metric?{"class_name": "MeanMetricWrapper", "name": "custom_f1score", "dtype": "float32", "config": {"name": "custom_f1score", "dtype": "float32", "fn": "custom_f1score"}, "shared_object_id": 2}
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
:  (2total
:  (2count
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
;:92#Adam/module_wrapper/conv2d/kernel/m
-:+2!Adam/module_wrapper/conv2d/bias/m
?:= 2'Adam/module_wrapper_1/conv2d_1/kernel/m
1:/ 2%Adam/module_wrapper_1/conv2d_1/bias/m
?:= @2'Adam/module_wrapper_2/conv2d_2/kernel/m
1:/@2%Adam/module_wrapper_2/conv2d_2/bias/m
?:=@@2'Adam/module_wrapper_3/conv2d_3/kernel/m
1:/@2%Adam/module_wrapper_3/conv2d_3/bias/m
6:4
??2$Adam/module_wrapper_7/dense/kernel/m
/:-?2"Adam/module_wrapper_7/dense/bias/m
7:5	?$2&Adam/module_wrapper_8/dense_1/kernel/m
0:.$2$Adam/module_wrapper_8/dense_1/bias/m
;:92#Adam/module_wrapper/conv2d/kernel/v
-:+2!Adam/module_wrapper/conv2d/bias/v
?:= 2'Adam/module_wrapper_1/conv2d_1/kernel/v
1:/ 2%Adam/module_wrapper_1/conv2d_1/bias/v
?:= @2'Adam/module_wrapper_2/conv2d_2/kernel/v
1:/@2%Adam/module_wrapper_2/conv2d_2/bias/v
?:=@@2'Adam/module_wrapper_3/conv2d_3/kernel/v
1:/@2%Adam/module_wrapper_3/conv2d_3/bias/v
6:4
??2$Adam/module_wrapper_7/dense/kernel/v
/:-?2"Adam/module_wrapper_7/dense/bias/v
7:5	?$2&Adam/module_wrapper_8/dense_1/kernel/v
0:.$2$Adam/module_wrapper_8/dense_1/bias/v
?2?
+__inference_sequential_layer_call_fn_501769
+__inference_sequential_layer_call_fn_501798
+__inference_sequential_layer_call_fn_501827
+__inference_sequential_layer_call_fn_501856?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
!__inference__wrapped_model_501098?
???
FullArgSpec
args? 
varargsjargs
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *;?8
6?3
module_wrapper_input?????????
?2?
F__inference_sequential_layer_call_and_return_conditional_losses_501906
F__inference_sequential_layer_call_and_return_conditional_losses_501963
F__inference_sequential_layer_call_and_return_conditional_losses_502013
F__inference_sequential_layer_call_and_return_conditional_losses_502070?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
/__inference_module_wrapper_layer_call_fn_502079
/__inference_module_wrapper_layer_call_fn_502088?
???
FullArgSpec
args?
jself
varargsjargs
varkwjkwargs
defaults? 

kwonlyargs?

jtraining%
kwonlydefaults?

trainingp 
annotations? *
 
?2?
J__inference_module_wrapper_layer_call_and_return_conditional_losses_502099
J__inference_module_wrapper_layer_call_and_return_conditional_losses_502110?
???
FullArgSpec
args?
jself
varargsjargs
varkwjkwargs
defaults? 

kwonlyargs?

jtraining%
kwonlydefaults?

trainingp 
annotations? *
 
?2?
1__inference_module_wrapper_1_layer_call_fn_502119
1__inference_module_wrapper_1_layer_call_fn_502128?
???
FullArgSpec
args?
jself
varargsjargs
varkwjkwargs
defaults? 

kwonlyargs?

jtraining%
kwonlydefaults?

trainingp 
annotations? *
 
?2?
L__inference_module_wrapper_1_layer_call_and_return_conditional_losses_502139
L__inference_module_wrapper_1_layer_call_and_return_conditional_losses_502150?
???
FullArgSpec
args?
jself
varargsjargs
varkwjkwargs
defaults? 

kwonlyargs?

jtraining%
kwonlydefaults?

trainingp 
annotations? *
 
?2?
1__inference_module_wrapper_2_layer_call_fn_502159
1__inference_module_wrapper_2_layer_call_fn_502168?
???
FullArgSpec
args?
jself
varargsjargs
varkwjkwargs
defaults? 

kwonlyargs?

jtraining%
kwonlydefaults?

trainingp 
annotations? *
 
?2?
L__inference_module_wrapper_2_layer_call_and_return_conditional_losses_502179
L__inference_module_wrapper_2_layer_call_and_return_conditional_losses_502190?
???
FullArgSpec
args?
jself
varargsjargs
varkwjkwargs
defaults? 

kwonlyargs?

jtraining%
kwonlydefaults?

trainingp 
annotations? *
 
?2?
1__inference_module_wrapper_3_layer_call_fn_502199
1__inference_module_wrapper_3_layer_call_fn_502208?
???
FullArgSpec
args?
jself
varargsjargs
varkwjkwargs
defaults? 

kwonlyargs?

jtraining%
kwonlydefaults?

trainingp 
annotations? *
 
?2?
L__inference_module_wrapper_3_layer_call_and_return_conditional_losses_502219
L__inference_module_wrapper_3_layer_call_and_return_conditional_losses_502230?
???
FullArgSpec
args?
jself
varargsjargs
varkwjkwargs
defaults? 

kwonlyargs?

jtraining%
kwonlydefaults?

trainingp 
annotations? *
 
?2?
1__inference_module_wrapper_4_layer_call_fn_502235
1__inference_module_wrapper_4_layer_call_fn_502240?
???
FullArgSpec
args?
jself
varargsjargs
varkwjkwargs
defaults? 

kwonlyargs?

jtraining%
kwonlydefaults?

trainingp 
annotations? *
 
?2?
L__inference_module_wrapper_4_layer_call_and_return_conditional_losses_502245
L__inference_module_wrapper_4_layer_call_and_return_conditional_losses_502250?
???
FullArgSpec
args?
jself
varargsjargs
varkwjkwargs
defaults? 

kwonlyargs?

jtraining%
kwonlydefaults?

trainingp 
annotations? *
 
?2?
1__inference_module_wrapper_5_layer_call_fn_502255
1__inference_module_wrapper_5_layer_call_fn_502260?
???
FullArgSpec
args?
jself
varargsjargs
varkwjkwargs
defaults? 

kwonlyargs?

jtraining%
kwonlydefaults?

trainingp 
annotations? *
 
?2?
L__inference_module_wrapper_5_layer_call_and_return_conditional_losses_502265
L__inference_module_wrapper_5_layer_call_and_return_conditional_losses_502277?
???
FullArgSpec
args?
jself
varargsjargs
varkwjkwargs
defaults? 

kwonlyargs?

jtraining%
kwonlydefaults?

trainingp 
annotations? *
 
?2?
1__inference_module_wrapper_6_layer_call_fn_502282
1__inference_module_wrapper_6_layer_call_fn_502287?
???
FullArgSpec
args?
jself
varargsjargs
varkwjkwargs
defaults? 

kwonlyargs?

jtraining%
kwonlydefaults?

trainingp 
annotations? *
 
?2?
L__inference_module_wrapper_6_layer_call_and_return_conditional_losses_502293
L__inference_module_wrapper_6_layer_call_and_return_conditional_losses_502299?
???
FullArgSpec
args?
jself
varargsjargs
varkwjkwargs
defaults? 

kwonlyargs?

jtraining%
kwonlydefaults?

trainingp 
annotations? *
 
?2?
1__inference_module_wrapper_7_layer_call_fn_502308
1__inference_module_wrapper_7_layer_call_fn_502317?
???
FullArgSpec
args?
jself
varargsjargs
varkwjkwargs
defaults? 

kwonlyargs?

jtraining%
kwonlydefaults?

trainingp 
annotations? *
 
?2?
L__inference_module_wrapper_7_layer_call_and_return_conditional_losses_502328
L__inference_module_wrapper_7_layer_call_and_return_conditional_losses_502339?
???
FullArgSpec
args?
jself
varargsjargs
varkwjkwargs
defaults? 

kwonlyargs?

jtraining%
kwonlydefaults?

trainingp 
annotations? *
 
?2?
1__inference_module_wrapper_8_layer_call_fn_502348
1__inference_module_wrapper_8_layer_call_fn_502357?
???
FullArgSpec
args?
jself
varargsjargs
varkwjkwargs
defaults? 

kwonlyargs?

jtraining%
kwonlydefaults?

trainingp 
annotations? *
 
?2?
L__inference_module_wrapper_8_layer_call_and_return_conditional_losses_502368
L__inference_module_wrapper_8_layer_call_and_return_conditional_losses_502379?
???
FullArgSpec
args?
jself
varargsjargs
varkwjkwargs
defaults? 

kwonlyargs?

jtraining%
kwonlydefaults?

trainingp 
annotations? *
 
?B?
$__inference_signature_wrapper_501728module_wrapper_input"?
???
FullArgSpec
args? 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
.__inference_max_pooling2d_layer_call_fn_501740?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *@?=
;?84????????????????????????????????????
?2?
I__inference_max_pooling2d_layer_call_and_return_conditional_losses_501734?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *@?=
;?84????????????????????????????????????
?2??
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2??
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 ?
!__inference__wrapped_model_501098?BCDEFGHIJKLME?B
;?8
6?3
module_wrapper_input?????????
? "C?@
>
module_wrapper_8*?'
module_wrapper_8?????????$?
I__inference_max_pooling2d_layer_call_and_return_conditional_losses_501734?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
.__inference_max_pooling2d_layer_call_fn_501740?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
L__inference_module_wrapper_1_layer_call_and_return_conditional_losses_502139|DEG?D
-?*
(?%
args_0?????????
?

trainingp "-?*
#? 
0????????? 
? ?
L__inference_module_wrapper_1_layer_call_and_return_conditional_losses_502150|DEG?D
-?*
(?%
args_0?????????
?

trainingp"-?*
#? 
0????????? 
? ?
1__inference_module_wrapper_1_layer_call_fn_502119oDEG?D
-?*
(?%
args_0?????????
?

trainingp " ?????????? ?
1__inference_module_wrapper_1_layer_call_fn_502128oDEG?D
-?*
(?%
args_0?????????
?

trainingp" ?????????? ?
L__inference_module_wrapper_2_layer_call_and_return_conditional_losses_502179|FGG?D
-?*
(?%
args_0????????? 
?

trainingp "-?*
#? 
0?????????@
? ?
L__inference_module_wrapper_2_layer_call_and_return_conditional_losses_502190|FGG?D
-?*
(?%
args_0????????? 
?

trainingp"-?*
#? 
0?????????@
? ?
1__inference_module_wrapper_2_layer_call_fn_502159oFGG?D
-?*
(?%
args_0????????? 
?

trainingp " ??????????@?
1__inference_module_wrapper_2_layer_call_fn_502168oFGG?D
-?*
(?%
args_0????????? 
?

trainingp" ??????????@?
L__inference_module_wrapper_3_layer_call_and_return_conditional_losses_502219|HIG?D
-?*
(?%
args_0?????????@
?

trainingp "-?*
#? 
0?????????@
? ?
L__inference_module_wrapper_3_layer_call_and_return_conditional_losses_502230|HIG?D
-?*
(?%
args_0?????????@
?

trainingp"-?*
#? 
0?????????@
? ?
1__inference_module_wrapper_3_layer_call_fn_502199oHIG?D
-?*
(?%
args_0?????????@
?

trainingp " ??????????@?
1__inference_module_wrapper_3_layer_call_fn_502208oHIG?D
-?*
(?%
args_0?????????@
?

trainingp" ??????????@?
L__inference_module_wrapper_4_layer_call_and_return_conditional_losses_502245xG?D
-?*
(?%
args_0?????????@
?

trainingp "-?*
#? 
0?????????@
? ?
L__inference_module_wrapper_4_layer_call_and_return_conditional_losses_502250xG?D
-?*
(?%
args_0?????????@
?

trainingp"-?*
#? 
0?????????@
? ?
1__inference_module_wrapper_4_layer_call_fn_502235kG?D
-?*
(?%
args_0?????????@
?

trainingp " ??????????@?
1__inference_module_wrapper_4_layer_call_fn_502240kG?D
-?*
(?%
args_0?????????@
?

trainingp" ??????????@?
L__inference_module_wrapper_5_layer_call_and_return_conditional_losses_502265xG?D
-?*
(?%
args_0?????????@
?

trainingp "-?*
#? 
0?????????@
? ?
L__inference_module_wrapper_5_layer_call_and_return_conditional_losses_502277xG?D
-?*
(?%
args_0?????????@
?

trainingp"-?*
#? 
0?????????@
? ?
1__inference_module_wrapper_5_layer_call_fn_502255kG?D
-?*
(?%
args_0?????????@
?

trainingp " ??????????@?
1__inference_module_wrapper_5_layer_call_fn_502260kG?D
-?*
(?%
args_0?????????@
?

trainingp" ??????????@?
L__inference_module_wrapper_6_layer_call_and_return_conditional_losses_502293qG?D
-?*
(?%
args_0?????????@
?

trainingp "&?#
?
0??????????
? ?
L__inference_module_wrapper_6_layer_call_and_return_conditional_losses_502299qG?D
-?*
(?%
args_0?????????@
?

trainingp"&?#
?
0??????????
? ?
1__inference_module_wrapper_6_layer_call_fn_502282dG?D
-?*
(?%
args_0?????????@
?

trainingp "????????????
1__inference_module_wrapper_6_layer_call_fn_502287dG?D
-?*
(?%
args_0?????????@
?

trainingp"????????????
L__inference_module_wrapper_7_layer_call_and_return_conditional_losses_502328nJK@?=
&?#
!?
args_0??????????
?

trainingp "&?#
?
0??????????
? ?
L__inference_module_wrapper_7_layer_call_and_return_conditional_losses_502339nJK@?=
&?#
!?
args_0??????????
?

trainingp"&?#
?
0??????????
? ?
1__inference_module_wrapper_7_layer_call_fn_502308aJK@?=
&?#
!?
args_0??????????
?

trainingp "????????????
1__inference_module_wrapper_7_layer_call_fn_502317aJK@?=
&?#
!?
args_0??????????
?

trainingp"????????????
L__inference_module_wrapper_8_layer_call_and_return_conditional_losses_502368mLM@?=
&?#
!?
args_0??????????
?

trainingp "%?"
?
0?????????$
? ?
L__inference_module_wrapper_8_layer_call_and_return_conditional_losses_502379mLM@?=
&?#
!?
args_0??????????
?

trainingp"%?"
?
0?????????$
? ?
1__inference_module_wrapper_8_layer_call_fn_502348`LM@?=
&?#
!?
args_0??????????
?

trainingp "??????????$?
1__inference_module_wrapper_8_layer_call_fn_502357`LM@?=
&?#
!?
args_0??????????
?

trainingp"??????????$?
J__inference_module_wrapper_layer_call_and_return_conditional_losses_502099|BCG?D
-?*
(?%
args_0?????????
?

trainingp "-?*
#? 
0?????????
? ?
J__inference_module_wrapper_layer_call_and_return_conditional_losses_502110|BCG?D
-?*
(?%
args_0?????????
?

trainingp"-?*
#? 
0?????????
? ?
/__inference_module_wrapper_layer_call_fn_502079oBCG?D
-?*
(?%
args_0?????????
?

trainingp " ???????????
/__inference_module_wrapper_layer_call_fn_502088oBCG?D
-?*
(?%
args_0?????????
?

trainingp" ???????????
F__inference_sequential_layer_call_and_return_conditional_losses_501906vBCDEFGHIJKLM??<
5?2
(?%
inputs?????????
p 

 
? "%?"
?
0?????????$
? ?
F__inference_sequential_layer_call_and_return_conditional_losses_501963vBCDEFGHIJKLM??<
5?2
(?%
inputs?????????
p

 
? "%?"
?
0?????????$
? ?
F__inference_sequential_layer_call_and_return_conditional_losses_502013?BCDEFGHIJKLMM?J
C?@
6?3
module_wrapper_input?????????
p 

 
? "%?"
?
0?????????$
? ?
F__inference_sequential_layer_call_and_return_conditional_losses_502070?BCDEFGHIJKLMM?J
C?@
6?3
module_wrapper_input?????????
p

 
? "%?"
?
0?????????$
? ?
+__inference_sequential_layer_call_fn_501769wBCDEFGHIJKLMM?J
C?@
6?3
module_wrapper_input?????????
p 

 
? "??????????$?
+__inference_sequential_layer_call_fn_501798iBCDEFGHIJKLM??<
5?2
(?%
inputs?????????
p 

 
? "??????????$?
+__inference_sequential_layer_call_fn_501827iBCDEFGHIJKLM??<
5?2
(?%
inputs?????????
p

 
? "??????????$?
+__inference_sequential_layer_call_fn_501856wBCDEFGHIJKLMM?J
C?@
6?3
module_wrapper_input?????????
p

 
? "??????????$?
$__inference_signature_wrapper_501728?BCDEFGHIJKLM]?Z
? 
S?P
N
module_wrapper_input6?3
module_wrapper_input?????????"C?@
>
module_wrapper_8*?'
module_wrapper_8?????????$