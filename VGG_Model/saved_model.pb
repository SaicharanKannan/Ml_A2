��
��
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( �
�
BiasAdd

value"T	
bias"T
output"T""
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
�
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
$
DisableCopyOnRead
resource�
.
Identity

input"T
output"T"	
Ttype
u
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:
2	
�
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
�
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( �
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
dtypetype�
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
list(type)(0�
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
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
�
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
executor_typestring ��
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
�
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �"serve*2.12.02v2.12.0-rc1-12-g0db597d0d758ޚ
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
�
Adam/v/dense_22/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/v/dense_22/bias
y
(Adam/v/dense_22/bias/Read/ReadVariableOpReadVariableOpAdam/v/dense_22/bias*
_output_shapes
:*
dtype0
�
Adam/m/dense_22/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/m/dense_22/bias
y
(Adam/m/dense_22/bias/Read/ReadVariableOpReadVariableOpAdam/m/dense_22/bias*
_output_shapes
:*
dtype0
�
Adam/v/dense_22/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:l*'
shared_nameAdam/v/dense_22/kernel
�
*Adam/v/dense_22/kernel/Read/ReadVariableOpReadVariableOpAdam/v/dense_22/kernel*
_output_shapes

:l*
dtype0
�
Adam/m/dense_22/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:l*'
shared_nameAdam/m/dense_22/kernel
�
*Adam/m/dense_22/kernel/Read/ReadVariableOpReadVariableOpAdam/m/dense_22/kernel*
_output_shapes

:l*
dtype0
�
Adam/v/dense_21/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:l*%
shared_nameAdam/v/dense_21/bias
y
(Adam/v/dense_21/bias/Read/ReadVariableOpReadVariableOpAdam/v/dense_21/bias*
_output_shapes
:l*
dtype0
�
Adam/m/dense_21/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:l*%
shared_nameAdam/m/dense_21/bias
y
(Adam/m/dense_21/bias/Read/ReadVariableOpReadVariableOpAdam/m/dense_21/bias*
_output_shapes
:l*
dtype0
�
Adam/v/dense_21/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�l*'
shared_nameAdam/v/dense_21/kernel
�
*Adam/v/dense_21/kernel/Read/ReadVariableOpReadVariableOpAdam/v/dense_21/kernel*
_output_shapes
:	�l*
dtype0
�
Adam/m/dense_21/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�l*'
shared_nameAdam/m/dense_21/kernel
�
*Adam/m/dense_21/kernel/Read/ReadVariableOpReadVariableOpAdam/m/dense_21/kernel*
_output_shapes
:	�l*
dtype0
�
Adam/v/conv2d_28/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:6*&
shared_nameAdam/v/conv2d_28/bias
{
)Adam/v/conv2d_28/bias/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_28/bias*
_output_shapes
:6*
dtype0
�
Adam/m/conv2d_28/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:6*&
shared_nameAdam/m/conv2d_28/bias
{
)Adam/m/conv2d_28/bias/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_28/bias*
_output_shapes
:6*
dtype0
�
Adam/v/conv2d_28/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:66*(
shared_nameAdam/v/conv2d_28/kernel
�
+Adam/v/conv2d_28/kernel/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_28/kernel*&
_output_shapes
:66*
dtype0
�
Adam/m/conv2d_28/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:66*(
shared_nameAdam/m/conv2d_28/kernel
�
+Adam/m/conv2d_28/kernel/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_28/kernel*&
_output_shapes
:66*
dtype0
�
Adam/v/conv2d_27/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:6*&
shared_nameAdam/v/conv2d_27/bias
{
)Adam/v/conv2d_27/bias/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_27/bias*
_output_shapes
:6*
dtype0
�
Adam/m/conv2d_27/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:6*&
shared_nameAdam/m/conv2d_27/bias
{
)Adam/m/conv2d_27/bias/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_27/bias*
_output_shapes
:6*
dtype0
�
Adam/v/conv2d_27/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:6*(
shared_nameAdam/v/conv2d_27/kernel
�
+Adam/v/conv2d_27/kernel/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_27/kernel*&
_output_shapes
:6*
dtype0
�
Adam/m/conv2d_27/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:6*(
shared_nameAdam/m/conv2d_27/kernel
�
+Adam/m/conv2d_27/kernel/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_27/kernel*&
_output_shapes
:6*
dtype0
�
Adam/v/conv2d_26/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/v/conv2d_26/bias
{
)Adam/v/conv2d_26/bias/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_26/bias*
_output_shapes
:*
dtype0
�
Adam/m/conv2d_26/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/m/conv2d_26/bias
{
)Adam/m/conv2d_26/bias/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_26/bias*
_output_shapes
:*
dtype0
�
Adam/v/conv2d_26/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/v/conv2d_26/kernel
�
+Adam/v/conv2d_26/kernel/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_26/kernel*&
_output_shapes
:*
dtype0
�
Adam/m/conv2d_26/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/m/conv2d_26/kernel
�
+Adam/m/conv2d_26/kernel/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_26/kernel*&
_output_shapes
:*
dtype0
�
Adam/v/conv2d_25/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/v/conv2d_25/bias
{
)Adam/v/conv2d_25/bias/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_25/bias*
_output_shapes
:*
dtype0
�
Adam/m/conv2d_25/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/m/conv2d_25/bias
{
)Adam/m/conv2d_25/bias/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_25/bias*
_output_shapes
:*
dtype0
�
Adam/v/conv2d_25/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/v/conv2d_25/kernel
�
+Adam/v/conv2d_25/kernel/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_25/kernel*&
_output_shapes
:*
dtype0
�
Adam/m/conv2d_25/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/m/conv2d_25/kernel
�
+Adam/m/conv2d_25/kernel/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_25/kernel*&
_output_shapes
:*
dtype0
n
learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namelearning_rate
g
!learning_rate/Read/ReadVariableOpReadVariableOplearning_rate*
_output_shapes
: *
dtype0
f
	iterationVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	iteration
_
iteration/Read/ReadVariableOpReadVariableOp	iteration*
_output_shapes
: *
dtype0	
r
dense_22/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_22/bias
k
!dense_22/bias/Read/ReadVariableOpReadVariableOpdense_22/bias*
_output_shapes
:*
dtype0
z
dense_22/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:l* 
shared_namedense_22/kernel
s
#dense_22/kernel/Read/ReadVariableOpReadVariableOpdense_22/kernel*
_output_shapes

:l*
dtype0
r
dense_21/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:l*
shared_namedense_21/bias
k
!dense_21/bias/Read/ReadVariableOpReadVariableOpdense_21/bias*
_output_shapes
:l*
dtype0
{
dense_21/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�l* 
shared_namedense_21/kernel
t
#dense_21/kernel/Read/ReadVariableOpReadVariableOpdense_21/kernel*
_output_shapes
:	�l*
dtype0
t
conv2d_28/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:6*
shared_nameconv2d_28/bias
m
"conv2d_28/bias/Read/ReadVariableOpReadVariableOpconv2d_28/bias*
_output_shapes
:6*
dtype0
�
conv2d_28/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:66*!
shared_nameconv2d_28/kernel
}
$conv2d_28/kernel/Read/ReadVariableOpReadVariableOpconv2d_28/kernel*&
_output_shapes
:66*
dtype0
t
conv2d_27/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:6*
shared_nameconv2d_27/bias
m
"conv2d_27/bias/Read/ReadVariableOpReadVariableOpconv2d_27/bias*
_output_shapes
:6*
dtype0
�
conv2d_27/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:6*!
shared_nameconv2d_27/kernel
}
$conv2d_27/kernel/Read/ReadVariableOpReadVariableOpconv2d_27/kernel*&
_output_shapes
:6*
dtype0
t
conv2d_26/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_26/bias
m
"conv2d_26/bias/Read/ReadVariableOpReadVariableOpconv2d_26/bias*
_output_shapes
:*
dtype0
�
conv2d_26/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv2d_26/kernel
}
$conv2d_26/kernel/Read/ReadVariableOpReadVariableOpconv2d_26/kernel*&
_output_shapes
:*
dtype0
t
conv2d_25/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_25/bias
m
"conv2d_25/bias/Read/ReadVariableOpReadVariableOpconv2d_25/bias*
_output_shapes
:*
dtype0
�
conv2d_25/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv2d_25/kernel
}
$conv2d_25/kernel/Read/ReadVariableOpReadVariableOpconv2d_25/kernel*&
_output_shapes
:*
dtype0
�
serving_default_conv2d_25_inputPlaceholder*/
_output_shapes
:���������*
dtype0*$
shape:���������
�
StatefulPartitionedCallStatefulPartitionedCallserving_default_conv2d_25_inputconv2d_25/kernelconv2d_25/biasconv2d_26/kernelconv2d_26/biasconv2d_27/kernelconv2d_27/biasconv2d_28/kernelconv2d_28/biasdense_21/kerneldense_21/biasdense_22/kerneldense_22/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*.
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *.
f)R'
%__inference_signature_wrapper_1247712

NoOpNoOp
�X
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*�W
value�WB�W B�W
�
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer-2
layer_with_weights-2
layer-3
layer_with_weights-3
layer-4
layer-5
layer-6
layer_with_weights-4
layer-7
	layer_with_weights-5
	layer-8

	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures*
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
bias
 _jit_compiled_convolution_op*
�
	variables
trainable_variables
regularization_losses
	keras_api
 __call__
*!&call_and_return_all_conditional_losses

"kernel
#bias
 $_jit_compiled_convolution_op*
�
%	variables
&trainable_variables
'regularization_losses
(	keras_api
)__call__
**&call_and_return_all_conditional_losses* 
�
+	variables
,trainable_variables
-regularization_losses
.	keras_api
/__call__
*0&call_and_return_all_conditional_losses

1kernel
2bias
 3_jit_compiled_convolution_op*
�
4	variables
5trainable_variables
6regularization_losses
7	keras_api
8__call__
*9&call_and_return_all_conditional_losses

:kernel
;bias
 <_jit_compiled_convolution_op*
�
=	variables
>trainable_variables
?regularization_losses
@	keras_api
A__call__
*B&call_and_return_all_conditional_losses* 
�
C	variables
Dtrainable_variables
Eregularization_losses
F	keras_api
G__call__
*H&call_and_return_all_conditional_losses* 
�
I	variables
Jtrainable_variables
Kregularization_losses
L	keras_api
M__call__
*N&call_and_return_all_conditional_losses

Okernel
Pbias*
�
Q	variables
Rtrainable_variables
Sregularization_losses
T	keras_api
U__call__
*V&call_and_return_all_conditional_losses

Wkernel
Xbias*
Z
0
1
"2
#3
14
25
:6
;7
O8
P9
W10
X11*
Z
0
1
"2
#3
14
25
:6
;7
O8
P9
W10
X11*

Y0
Z1* 
�
[non_trainable_variables

\layers
]metrics
^layer_regularization_losses
_layer_metrics

	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
6
`trace_0
atrace_1
btrace_2
ctrace_3* 
6
dtrace_0
etrace_1
ftrace_2
gtrace_3* 
* 
�
h
_variables
i_iterations
j_learning_rate
k_index_dict
l
_momentums
m_velocities
n_update_step_xla*

oserving_default* 

0
1*

0
1*
* 
�
pnon_trainable_variables

qlayers
rmetrics
slayer_regularization_losses
tlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

utrace_0* 

vtrace_0* 
`Z
VARIABLE_VALUEconv2d_25/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_25/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 

"0
#1*

"0
#1*
* 
�
wnon_trainable_variables

xlayers
ymetrics
zlayer_regularization_losses
{layer_metrics
	variables
trainable_variables
regularization_losses
 __call__
*!&call_and_return_all_conditional_losses
&!"call_and_return_conditional_losses*

|trace_0* 

}trace_0* 
`Z
VARIABLE_VALUEconv2d_26/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_26/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
�
~non_trainable_variables

layers
�metrics
 �layer_regularization_losses
�layer_metrics
%	variables
&trainable_variables
'regularization_losses
)__call__
**&call_and_return_all_conditional_losses
&*"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 

10
21*

10
21*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
+	variables
,trainable_variables
-regularization_losses
/__call__
*0&call_and_return_all_conditional_losses
&0"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
`Z
VARIABLE_VALUEconv2d_27/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_27/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 

:0
;1*

:0
;1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
4	variables
5trainable_variables
6regularization_losses
8__call__
*9&call_and_return_all_conditional_losses
&9"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
`Z
VARIABLE_VALUEconv2d_28/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_28/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
=	variables
>trainable_variables
?regularization_losses
A__call__
*B&call_and_return_all_conditional_losses
&B"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
C	variables
Dtrainable_variables
Eregularization_losses
G__call__
*H&call_and_return_all_conditional_losses
&H"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 

O0
P1*

O0
P1*
	
Y0* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
I	variables
Jtrainable_variables
Kregularization_losses
M__call__
*N&call_and_return_all_conditional_losses
&N"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
_Y
VARIABLE_VALUEdense_21/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_21/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE*

W0
X1*

W0
X1*
	
Z0* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
Q	variables
Rtrainable_variables
Sregularization_losses
U__call__
*V&call_and_return_all_conditional_losses
&V"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
_Y
VARIABLE_VALUEdense_22/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_22/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE*

�trace_0* 

�trace_0* 
* 
C
0
1
2
3
4
5
6
7
	8*

�0
�1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
�
i0
�1
�2
�3
�4
�5
�6
�7
�8
�9
�10
�11
�12
�13
�14
�15
�16
�17
�18
�19
�20
�21
�22
�23
�24*
SM
VARIABLE_VALUE	iteration0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUElearning_rate3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
f
�0
�1
�2
�3
�4
�5
�6
�7
�8
�9
�10
�11*
f
�0
�1
�2
�3
�4
�5
�6
�7
�8
�9
�10
�11*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
	
Y0* 
* 
* 
* 
* 
* 
* 
	
Z0* 
* 
* 
* 
* 
* 
<
�	variables
�	keras_api

�total

�count*
M
�	variables
�	keras_api

�total

�count
�
_fn_kwargs*
b\
VARIABLE_VALUEAdam/m/conv2d_25/kernel1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/v/conv2d_25/kernel1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/m/conv2d_25/bias1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/v/conv2d_25/bias1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/m/conv2d_26/kernel1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/v/conv2d_26/kernel1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/m/conv2d_26/bias1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/v/conv2d_26/bias1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/m/conv2d_27/kernel1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUEAdam/v/conv2d_27/kernel2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/m/conv2d_27/bias2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/v/conv2d_27/bias2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUEAdam/m/conv2d_28/kernel2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUEAdam/v/conv2d_28/kernel2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/m/conv2d_28/bias2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/v/conv2d_28/bias2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/m/dense_21/kernel2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/v/dense_21/kernel2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/m/dense_21/bias2optimizer/_variables/19/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/v/dense_21/bias2optimizer/_variables/20/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/m/dense_22/kernel2optimizer/_variables/21/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/v/dense_22/kernel2optimizer/_variables/22/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/m/dense_22/bias2optimizer/_variables/23/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/v/dense_22/bias2optimizer/_variables/24/.ATTRIBUTES/VARIABLE_VALUE*

�0
�1*

�	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

�0
�1*

�	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�	
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenameconv2d_25/kernelconv2d_25/biasconv2d_26/kernelconv2d_26/biasconv2d_27/kernelconv2d_27/biasconv2d_28/kernelconv2d_28/biasdense_21/kerneldense_21/biasdense_22/kerneldense_22/bias	iterationlearning_rateAdam/m/conv2d_25/kernelAdam/v/conv2d_25/kernelAdam/m/conv2d_25/biasAdam/v/conv2d_25/biasAdam/m/conv2d_26/kernelAdam/v/conv2d_26/kernelAdam/m/conv2d_26/biasAdam/v/conv2d_26/biasAdam/m/conv2d_27/kernelAdam/v/conv2d_27/kernelAdam/m/conv2d_27/biasAdam/v/conv2d_27/biasAdam/m/conv2d_28/kernelAdam/v/conv2d_28/kernelAdam/m/conv2d_28/biasAdam/v/conv2d_28/biasAdam/m/dense_21/kernelAdam/v/dense_21/kernelAdam/m/dense_21/biasAdam/v/dense_21/biasAdam/m/dense_22/kernelAdam/v/dense_22/kernelAdam/m/dense_22/biasAdam/v/dense_22/biastotal_1count_1totalcountConst*7
Tin0
.2,*
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
GPU 2J 8� *)
f$R"
 __inference__traced_save_1248343
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d_25/kernelconv2d_25/biasconv2d_26/kernelconv2d_26/biasconv2d_27/kernelconv2d_27/biasconv2d_28/kernelconv2d_28/biasdense_21/kerneldense_21/biasdense_22/kerneldense_22/bias	iterationlearning_rateAdam/m/conv2d_25/kernelAdam/v/conv2d_25/kernelAdam/m/conv2d_25/biasAdam/v/conv2d_25/biasAdam/m/conv2d_26/kernelAdam/v/conv2d_26/kernelAdam/m/conv2d_26/biasAdam/v/conv2d_26/biasAdam/m/conv2d_27/kernelAdam/v/conv2d_27/kernelAdam/m/conv2d_27/biasAdam/v/conv2d_27/biasAdam/m/conv2d_28/kernelAdam/v/conv2d_28/kernelAdam/m/conv2d_28/biasAdam/v/conv2d_28/biasAdam/m/dense_21/kernelAdam/v/dense_21/kernelAdam/m/dense_21/biasAdam/v/dense_21/biasAdam/m/dense_22/kernelAdam/v/dense_22/kernelAdam/m/dense_22/biasAdam/v/dense_22/biastotal_1count_1totalcount*6
Tin/
-2+*
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
GPU 2J 8� *,
f'R%
#__inference__traced_restore_1248479��	
�
�
/__inference_sequential_12_layer_call_fn_1247473
conv2d_25_input!
unknown:
	unknown_0:#
	unknown_1:
	unknown_2:#
	unknown_3:6
	unknown_4:6#
	unknown_5:66
	unknown_6:6
	unknown_7:	�l
	unknown_8:l
	unknown_9:l

unknown_10:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallconv2d_25_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*.
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_sequential_12_layer_call_and_return_conditional_losses_1247446o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:���������: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:` \
/
_output_shapes
:���������
)
_user_specified_nameconv2d_25_input
�
�
F__inference_conv2d_26_layer_call_and_return_conditional_losses_1247932

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:���������i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:���������w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
+__inference_conv2d_27_layer_call_fn_1247951

inputs!
unknown:6
	unknown_0:6
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������6*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_conv2d_27_layer_call_and_return_conditional_losses_1247271w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������6`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�
M
1__inference_max_pooling2d_8_layer_call_fn_1247937

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4������������������������������������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_max_pooling2d_8_layer_call_and_return_conditional_losses_1247203�
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
�
E__inference_dense_21_layer_call_and_return_conditional_losses_1248027

inputs1
matmul_readvariableop_resource:	�l-
biasadd_readvariableop_resource:l
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�1dense_21/kernel/Regularizer/L2Loss/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�l*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������lr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:l*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������lP
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:���������l�
1dense_21/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�l*
dtype0�
"dense_21/kernel/Regularizer/L2LossL2Loss9dense_21/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: f
!dense_21/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
ף<�
dense_21/kernel/Regularizer/mulMul*dense_21/kernel/Regularizer/mul/x:output:0+dense_21/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:���������l�
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp2^dense_21/kernel/Regularizer/L2Loss/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2f
1dense_21/kernel/Regularizer/L2Loss/ReadVariableOp1dense_21/kernel/Regularizer/L2Loss/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�	
�
__inference_loss_fn_0_1248059M
:dense_21_kernel_regularizer_l2loss_readvariableop_resource:	�l
identity��1dense_21/kernel/Regularizer/L2Loss/ReadVariableOp�
1dense_21/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOp:dense_21_kernel_regularizer_l2loss_readvariableop_resource*
_output_shapes
:	�l*
dtype0�
"dense_21/kernel/Regularizer/L2LossL2Loss9dense_21/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: f
!dense_21/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
ף<�
dense_21/kernel/Regularizer/mulMul*dense_21/kernel/Regularizer/mul/x:output:0+dense_21/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: a
IdentityIdentity#dense_21/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: z
NoOpNoOp2^dense_21/kernel/Regularizer/L2Loss/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2f
1dense_21/kernel/Regularizer/L2Loss/ReadVariableOp1dense_21/kernel/Regularizer/L2Loss/ReadVariableOp
�
�
E__inference_dense_22_layer_call_and_return_conditional_losses_1248050

inputs0
matmul_readvariableop_resource:l-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�1dense_22/kernel/Regularizer/L2Loss/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:l*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
1dense_22/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:l*
dtype0�
"dense_22/kernel/Regularizer/L2LossL2Loss9dense_22/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: f
!dense_22/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
ף<�
dense_22/kernel/Regularizer/mulMul*dense_22/kernel/Regularizer/mul/x:output:0+dense_22/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: _
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp2^dense_22/kernel/Regularizer/L2Loss/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������l: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2f
1dense_22/kernel/Regularizer/L2Loss/ReadVariableOp1dense_22/kernel/Regularizer/L2Loss/ReadVariableOp:O K
'
_output_shapes
:���������l
 
_user_specified_nameinputs
�
�
E__inference_dense_21_layer_call_and_return_conditional_losses_1247318

inputs1
matmul_readvariableop_resource:	�l-
biasadd_readvariableop_resource:l
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�1dense_21/kernel/Regularizer/L2Loss/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�l*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������lr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:l*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������lP
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:���������l�
1dense_21/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�l*
dtype0�
"dense_21/kernel/Regularizer/L2LossL2Loss9dense_21/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: f
!dense_21/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
ף<�
dense_21/kernel/Regularizer/mulMul*dense_21/kernel/Regularizer/mul/x:output:0+dense_21/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:���������l�
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp2^dense_21/kernel/Regularizer/L2Loss/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2f
1dense_21/kernel/Regularizer/L2Loss/ReadVariableOp1dense_21/kernel/Regularizer/L2Loss/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
h
L__inference_max_pooling2d_9_layer_call_and_return_conditional_losses_1247992

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
h
L__inference_max_pooling2d_8_layer_call_and_return_conditional_losses_1247203

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�H
�

J__inference_sequential_12_layer_call_and_return_conditional_losses_1247892

inputsB
(conv2d_25_conv2d_readvariableop_resource:7
)conv2d_25_biasadd_readvariableop_resource:B
(conv2d_26_conv2d_readvariableop_resource:7
)conv2d_26_biasadd_readvariableop_resource:B
(conv2d_27_conv2d_readvariableop_resource:67
)conv2d_27_biasadd_readvariableop_resource:6B
(conv2d_28_conv2d_readvariableop_resource:667
)conv2d_28_biasadd_readvariableop_resource:6:
'dense_21_matmul_readvariableop_resource:	�l6
(dense_21_biasadd_readvariableop_resource:l9
'dense_22_matmul_readvariableop_resource:l6
(dense_22_biasadd_readvariableop_resource:
identity�� conv2d_25/BiasAdd/ReadVariableOp�conv2d_25/Conv2D/ReadVariableOp� conv2d_26/BiasAdd/ReadVariableOp�conv2d_26/Conv2D/ReadVariableOp� conv2d_27/BiasAdd/ReadVariableOp�conv2d_27/Conv2D/ReadVariableOp� conv2d_28/BiasAdd/ReadVariableOp�conv2d_28/Conv2D/ReadVariableOp�dense_21/BiasAdd/ReadVariableOp�dense_21/MatMul/ReadVariableOp�1dense_21/kernel/Regularizer/L2Loss/ReadVariableOp�dense_22/BiasAdd/ReadVariableOp�dense_22/MatMul/ReadVariableOp�1dense_22/kernel/Regularizer/L2Loss/ReadVariableOp�
conv2d_25/Conv2D/ReadVariableOpReadVariableOp(conv2d_25_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
conv2d_25/Conv2DConv2Dinputs'conv2d_25/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
paddingSAME*
strides
�
 conv2d_25/BiasAdd/ReadVariableOpReadVariableOp)conv2d_25_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
conv2d_25/BiasAddBiasAddconv2d_25/Conv2D:output:0(conv2d_25/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������l
conv2d_25/ReluReluconv2d_25/BiasAdd:output:0*
T0*/
_output_shapes
:����������
conv2d_26/Conv2D/ReadVariableOpReadVariableOp(conv2d_26_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
conv2d_26/Conv2DConv2Dconv2d_25/Relu:activations:0'conv2d_26/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
paddingSAME*
strides
�
 conv2d_26/BiasAdd/ReadVariableOpReadVariableOp)conv2d_26_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
conv2d_26/BiasAddBiasAddconv2d_26/Conv2D:output:0(conv2d_26/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������l
conv2d_26/ReluReluconv2d_26/BiasAdd:output:0*
T0*/
_output_shapes
:����������
max_pooling2d_8/MaxPoolMaxPoolconv2d_26/Relu:activations:0*/
_output_shapes
:���������*
ksize
*
paddingVALID*
strides
�
conv2d_27/Conv2D/ReadVariableOpReadVariableOp(conv2d_27_conv2d_readvariableop_resource*&
_output_shapes
:6*
dtype0�
conv2d_27/Conv2DConv2D max_pooling2d_8/MaxPool:output:0'conv2d_27/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������6*
paddingSAME*
strides
�
 conv2d_27/BiasAdd/ReadVariableOpReadVariableOp)conv2d_27_biasadd_readvariableop_resource*
_output_shapes
:6*
dtype0�
conv2d_27/BiasAddBiasAddconv2d_27/Conv2D:output:0(conv2d_27/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������6l
conv2d_27/ReluReluconv2d_27/BiasAdd:output:0*
T0*/
_output_shapes
:���������6�
conv2d_28/Conv2D/ReadVariableOpReadVariableOp(conv2d_28_conv2d_readvariableop_resource*&
_output_shapes
:66*
dtype0�
conv2d_28/Conv2DConv2Dconv2d_27/Relu:activations:0'conv2d_28/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������6*
paddingSAME*
strides
�
 conv2d_28/BiasAdd/ReadVariableOpReadVariableOp)conv2d_28_biasadd_readvariableop_resource*
_output_shapes
:6*
dtype0�
conv2d_28/BiasAddBiasAddconv2d_28/Conv2D:output:0(conv2d_28/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������6l
conv2d_28/ReluReluconv2d_28/BiasAdd:output:0*
T0*/
_output_shapes
:���������6�
max_pooling2d_9/MaxPoolMaxPoolconv2d_28/Relu:activations:0*/
_output_shapes
:���������6*
ksize
*
paddingVALID*
strides
a
flatten_10/ConstConst*
_output_shapes
:*
dtype0*
valueB"�����  �
flatten_10/ReshapeReshape max_pooling2d_9/MaxPool:output:0flatten_10/Const:output:0*
T0*(
_output_shapes
:�����������
dense_21/MatMul/ReadVariableOpReadVariableOp'dense_21_matmul_readvariableop_resource*
_output_shapes
:	�l*
dtype0�
dense_21/MatMulMatMulflatten_10/Reshape:output:0&dense_21/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������l�
dense_21/BiasAdd/ReadVariableOpReadVariableOp(dense_21_biasadd_readvariableop_resource*
_output_shapes
:l*
dtype0�
dense_21/BiasAddBiasAdddense_21/MatMul:product:0'dense_21/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������lb
dense_21/ReluReludense_21/BiasAdd:output:0*
T0*'
_output_shapes
:���������l�
dense_22/MatMul/ReadVariableOpReadVariableOp'dense_22_matmul_readvariableop_resource*
_output_shapes

:l*
dtype0�
dense_22/MatMulMatMuldense_21/Relu:activations:0&dense_22/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
dense_22/BiasAdd/ReadVariableOpReadVariableOp(dense_22_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
dense_22/BiasAddBiasAdddense_22/MatMul:product:0'dense_22/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
1dense_21/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOp'dense_21_matmul_readvariableop_resource*
_output_shapes
:	�l*
dtype0�
"dense_21/kernel/Regularizer/L2LossL2Loss9dense_21/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: f
!dense_21/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
ף<�
dense_21/kernel/Regularizer/mulMul*dense_21/kernel/Regularizer/mul/x:output:0+dense_21/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: �
1dense_22/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOp'dense_22_matmul_readvariableop_resource*
_output_shapes

:l*
dtype0�
"dense_22/kernel/Regularizer/L2LossL2Loss9dense_22/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: f
!dense_22/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
ף<�
dense_22/kernel/Regularizer/mulMul*dense_22/kernel/Regularizer/mul/x:output:0+dense_22/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: h
IdentityIdentitydense_22/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp!^conv2d_25/BiasAdd/ReadVariableOp ^conv2d_25/Conv2D/ReadVariableOp!^conv2d_26/BiasAdd/ReadVariableOp ^conv2d_26/Conv2D/ReadVariableOp!^conv2d_27/BiasAdd/ReadVariableOp ^conv2d_27/Conv2D/ReadVariableOp!^conv2d_28/BiasAdd/ReadVariableOp ^conv2d_28/Conv2D/ReadVariableOp ^dense_21/BiasAdd/ReadVariableOp^dense_21/MatMul/ReadVariableOp2^dense_21/kernel/Regularizer/L2Loss/ReadVariableOp ^dense_22/BiasAdd/ReadVariableOp^dense_22/MatMul/ReadVariableOp2^dense_22/kernel/Regularizer/L2Loss/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:���������: : : : : : : : : : : : 2D
 conv2d_25/BiasAdd/ReadVariableOp conv2d_25/BiasAdd/ReadVariableOp2B
conv2d_25/Conv2D/ReadVariableOpconv2d_25/Conv2D/ReadVariableOp2D
 conv2d_26/BiasAdd/ReadVariableOp conv2d_26/BiasAdd/ReadVariableOp2B
conv2d_26/Conv2D/ReadVariableOpconv2d_26/Conv2D/ReadVariableOp2D
 conv2d_27/BiasAdd/ReadVariableOp conv2d_27/BiasAdd/ReadVariableOp2B
conv2d_27/Conv2D/ReadVariableOpconv2d_27/Conv2D/ReadVariableOp2D
 conv2d_28/BiasAdd/ReadVariableOp conv2d_28/BiasAdd/ReadVariableOp2B
conv2d_28/Conv2D/ReadVariableOpconv2d_28/Conv2D/ReadVariableOp2B
dense_21/BiasAdd/ReadVariableOpdense_21/BiasAdd/ReadVariableOp2@
dense_21/MatMul/ReadVariableOpdense_21/MatMul/ReadVariableOp2f
1dense_21/kernel/Regularizer/L2Loss/ReadVariableOp1dense_21/kernel/Regularizer/L2Loss/ReadVariableOp2B
dense_22/BiasAdd/ReadVariableOpdense_22/BiasAdd/ReadVariableOp2@
dense_22/MatMul/ReadVariableOpdense_22/MatMul/ReadVariableOp2f
1dense_22/kernel/Regularizer/L2Loss/ReadVariableOp1dense_22/kernel/Regularizer/L2Loss/ReadVariableOp:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�K
�
"__inference__wrapped_model_1247197
conv2d_25_inputP
6sequential_12_conv2d_25_conv2d_readvariableop_resource:E
7sequential_12_conv2d_25_biasadd_readvariableop_resource:P
6sequential_12_conv2d_26_conv2d_readvariableop_resource:E
7sequential_12_conv2d_26_biasadd_readvariableop_resource:P
6sequential_12_conv2d_27_conv2d_readvariableop_resource:6E
7sequential_12_conv2d_27_biasadd_readvariableop_resource:6P
6sequential_12_conv2d_28_conv2d_readvariableop_resource:66E
7sequential_12_conv2d_28_biasadd_readvariableop_resource:6H
5sequential_12_dense_21_matmul_readvariableop_resource:	�lD
6sequential_12_dense_21_biasadd_readvariableop_resource:lG
5sequential_12_dense_22_matmul_readvariableop_resource:lD
6sequential_12_dense_22_biasadd_readvariableop_resource:
identity��.sequential_12/conv2d_25/BiasAdd/ReadVariableOp�-sequential_12/conv2d_25/Conv2D/ReadVariableOp�.sequential_12/conv2d_26/BiasAdd/ReadVariableOp�-sequential_12/conv2d_26/Conv2D/ReadVariableOp�.sequential_12/conv2d_27/BiasAdd/ReadVariableOp�-sequential_12/conv2d_27/Conv2D/ReadVariableOp�.sequential_12/conv2d_28/BiasAdd/ReadVariableOp�-sequential_12/conv2d_28/Conv2D/ReadVariableOp�-sequential_12/dense_21/BiasAdd/ReadVariableOp�,sequential_12/dense_21/MatMul/ReadVariableOp�-sequential_12/dense_22/BiasAdd/ReadVariableOp�,sequential_12/dense_22/MatMul/ReadVariableOp�
-sequential_12/conv2d_25/Conv2D/ReadVariableOpReadVariableOp6sequential_12_conv2d_25_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
sequential_12/conv2d_25/Conv2DConv2Dconv2d_25_input5sequential_12/conv2d_25/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
paddingSAME*
strides
�
.sequential_12/conv2d_25/BiasAdd/ReadVariableOpReadVariableOp7sequential_12_conv2d_25_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
sequential_12/conv2d_25/BiasAddBiasAdd'sequential_12/conv2d_25/Conv2D:output:06sequential_12/conv2d_25/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:����������
sequential_12/conv2d_25/ReluRelu(sequential_12/conv2d_25/BiasAdd:output:0*
T0*/
_output_shapes
:����������
-sequential_12/conv2d_26/Conv2D/ReadVariableOpReadVariableOp6sequential_12_conv2d_26_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
sequential_12/conv2d_26/Conv2DConv2D*sequential_12/conv2d_25/Relu:activations:05sequential_12/conv2d_26/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
paddingSAME*
strides
�
.sequential_12/conv2d_26/BiasAdd/ReadVariableOpReadVariableOp7sequential_12_conv2d_26_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
sequential_12/conv2d_26/BiasAddBiasAdd'sequential_12/conv2d_26/Conv2D:output:06sequential_12/conv2d_26/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:����������
sequential_12/conv2d_26/ReluRelu(sequential_12/conv2d_26/BiasAdd:output:0*
T0*/
_output_shapes
:����������
%sequential_12/max_pooling2d_8/MaxPoolMaxPool*sequential_12/conv2d_26/Relu:activations:0*/
_output_shapes
:���������*
ksize
*
paddingVALID*
strides
�
-sequential_12/conv2d_27/Conv2D/ReadVariableOpReadVariableOp6sequential_12_conv2d_27_conv2d_readvariableop_resource*&
_output_shapes
:6*
dtype0�
sequential_12/conv2d_27/Conv2DConv2D.sequential_12/max_pooling2d_8/MaxPool:output:05sequential_12/conv2d_27/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������6*
paddingSAME*
strides
�
.sequential_12/conv2d_27/BiasAdd/ReadVariableOpReadVariableOp7sequential_12_conv2d_27_biasadd_readvariableop_resource*
_output_shapes
:6*
dtype0�
sequential_12/conv2d_27/BiasAddBiasAdd'sequential_12/conv2d_27/Conv2D:output:06sequential_12/conv2d_27/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������6�
sequential_12/conv2d_27/ReluRelu(sequential_12/conv2d_27/BiasAdd:output:0*
T0*/
_output_shapes
:���������6�
-sequential_12/conv2d_28/Conv2D/ReadVariableOpReadVariableOp6sequential_12_conv2d_28_conv2d_readvariableop_resource*&
_output_shapes
:66*
dtype0�
sequential_12/conv2d_28/Conv2DConv2D*sequential_12/conv2d_27/Relu:activations:05sequential_12/conv2d_28/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������6*
paddingSAME*
strides
�
.sequential_12/conv2d_28/BiasAdd/ReadVariableOpReadVariableOp7sequential_12_conv2d_28_biasadd_readvariableop_resource*
_output_shapes
:6*
dtype0�
sequential_12/conv2d_28/BiasAddBiasAdd'sequential_12/conv2d_28/Conv2D:output:06sequential_12/conv2d_28/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������6�
sequential_12/conv2d_28/ReluRelu(sequential_12/conv2d_28/BiasAdd:output:0*
T0*/
_output_shapes
:���������6�
%sequential_12/max_pooling2d_9/MaxPoolMaxPool*sequential_12/conv2d_28/Relu:activations:0*/
_output_shapes
:���������6*
ksize
*
paddingVALID*
strides
o
sequential_12/flatten_10/ConstConst*
_output_shapes
:*
dtype0*
valueB"�����  �
 sequential_12/flatten_10/ReshapeReshape.sequential_12/max_pooling2d_9/MaxPool:output:0'sequential_12/flatten_10/Const:output:0*
T0*(
_output_shapes
:�����������
,sequential_12/dense_21/MatMul/ReadVariableOpReadVariableOp5sequential_12_dense_21_matmul_readvariableop_resource*
_output_shapes
:	�l*
dtype0�
sequential_12/dense_21/MatMulMatMul)sequential_12/flatten_10/Reshape:output:04sequential_12/dense_21/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������l�
-sequential_12/dense_21/BiasAdd/ReadVariableOpReadVariableOp6sequential_12_dense_21_biasadd_readvariableop_resource*
_output_shapes
:l*
dtype0�
sequential_12/dense_21/BiasAddBiasAdd'sequential_12/dense_21/MatMul:product:05sequential_12/dense_21/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������l~
sequential_12/dense_21/ReluRelu'sequential_12/dense_21/BiasAdd:output:0*
T0*'
_output_shapes
:���������l�
,sequential_12/dense_22/MatMul/ReadVariableOpReadVariableOp5sequential_12_dense_22_matmul_readvariableop_resource*
_output_shapes

:l*
dtype0�
sequential_12/dense_22/MatMulMatMul)sequential_12/dense_21/Relu:activations:04sequential_12/dense_22/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
-sequential_12/dense_22/BiasAdd/ReadVariableOpReadVariableOp6sequential_12_dense_22_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
sequential_12/dense_22/BiasAddBiasAdd'sequential_12/dense_22/MatMul:product:05sequential_12/dense_22/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������v
IdentityIdentity'sequential_12/dense_22/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp/^sequential_12/conv2d_25/BiasAdd/ReadVariableOp.^sequential_12/conv2d_25/Conv2D/ReadVariableOp/^sequential_12/conv2d_26/BiasAdd/ReadVariableOp.^sequential_12/conv2d_26/Conv2D/ReadVariableOp/^sequential_12/conv2d_27/BiasAdd/ReadVariableOp.^sequential_12/conv2d_27/Conv2D/ReadVariableOp/^sequential_12/conv2d_28/BiasAdd/ReadVariableOp.^sequential_12/conv2d_28/Conv2D/ReadVariableOp.^sequential_12/dense_21/BiasAdd/ReadVariableOp-^sequential_12/dense_21/MatMul/ReadVariableOp.^sequential_12/dense_22/BiasAdd/ReadVariableOp-^sequential_12/dense_22/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:���������: : : : : : : : : : : : 2`
.sequential_12/conv2d_25/BiasAdd/ReadVariableOp.sequential_12/conv2d_25/BiasAdd/ReadVariableOp2^
-sequential_12/conv2d_25/Conv2D/ReadVariableOp-sequential_12/conv2d_25/Conv2D/ReadVariableOp2`
.sequential_12/conv2d_26/BiasAdd/ReadVariableOp.sequential_12/conv2d_26/BiasAdd/ReadVariableOp2^
-sequential_12/conv2d_26/Conv2D/ReadVariableOp-sequential_12/conv2d_26/Conv2D/ReadVariableOp2`
.sequential_12/conv2d_27/BiasAdd/ReadVariableOp.sequential_12/conv2d_27/BiasAdd/ReadVariableOp2^
-sequential_12/conv2d_27/Conv2D/ReadVariableOp-sequential_12/conv2d_27/Conv2D/ReadVariableOp2`
.sequential_12/conv2d_28/BiasAdd/ReadVariableOp.sequential_12/conv2d_28/BiasAdd/ReadVariableOp2^
-sequential_12/conv2d_28/Conv2D/ReadVariableOp-sequential_12/conv2d_28/Conv2D/ReadVariableOp2^
-sequential_12/dense_21/BiasAdd/ReadVariableOp-sequential_12/dense_21/BiasAdd/ReadVariableOp2\
,sequential_12/dense_21/MatMul/ReadVariableOp,sequential_12/dense_21/MatMul/ReadVariableOp2^
-sequential_12/dense_22/BiasAdd/ReadVariableOp-sequential_12/dense_22/BiasAdd/ReadVariableOp2\
,sequential_12/dense_22/MatMul/ReadVariableOp,sequential_12/dense_22/MatMul/ReadVariableOp:` \
/
_output_shapes
:���������
)
_user_specified_nameconv2d_25_input
�
c
G__inference_flatten_10_layer_call_and_return_conditional_losses_1248003

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"�����  ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:����������Y
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������6:W S
/
_output_shapes
:���������6
 
_user_specified_nameinputs
�
�
*__inference_dense_22_layer_call_fn_1248036

inputs
unknown:l
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_dense_22_layer_call_and_return_conditional_losses_1247338o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������l: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������l
 
_user_specified_nameinputs
�
c
G__inference_flatten_10_layer_call_and_return_conditional_losses_1247301

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"�����  ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:����������Y
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������6:W S
/
_output_shapes
:���������6
 
_user_specified_nameinputs
�
�
+__inference_conv2d_28_layer_call_fn_1247971

inputs!
unknown:66
	unknown_0:6
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������6*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_conv2d_28_layer_call_and_return_conditional_losses_1247288w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������6`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������6: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������6
 
_user_specified_nameinputs
�
�
/__inference_sequential_12_layer_call_fn_1247547
conv2d_25_input!
unknown:
	unknown_0:#
	unknown_1:
	unknown_2:#
	unknown_3:6
	unknown_4:6#
	unknown_5:66
	unknown_6:6
	unknown_7:	�l
	unknown_8:l
	unknown_9:l

unknown_10:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallconv2d_25_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*.
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_sequential_12_layer_call_and_return_conditional_losses_1247520o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:���������: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:` \
/
_output_shapes
:���������
)
_user_specified_nameconv2d_25_input
�
h
L__inference_max_pooling2d_8_layer_call_and_return_conditional_losses_1247942

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�5
�
J__inference_sequential_12_layer_call_and_return_conditional_losses_1247446

inputs+
conv2d_25_1247404:
conv2d_25_1247406:+
conv2d_26_1247409:
conv2d_26_1247411:+
conv2d_27_1247415:6
conv2d_27_1247417:6+
conv2d_28_1247420:66
conv2d_28_1247422:6#
dense_21_1247427:	�l
dense_21_1247429:l"
dense_22_1247432:l
dense_22_1247434:
identity��!conv2d_25/StatefulPartitionedCall�!conv2d_26/StatefulPartitionedCall�!conv2d_27/StatefulPartitionedCall�!conv2d_28/StatefulPartitionedCall� dense_21/StatefulPartitionedCall�1dense_21/kernel/Regularizer/L2Loss/ReadVariableOp� dense_22/StatefulPartitionedCall�1dense_22/kernel/Regularizer/L2Loss/ReadVariableOp�
!conv2d_25/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_25_1247404conv2d_25_1247406*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_conv2d_25_layer_call_and_return_conditional_losses_1247236�
!conv2d_26/StatefulPartitionedCallStatefulPartitionedCall*conv2d_25/StatefulPartitionedCall:output:0conv2d_26_1247409conv2d_26_1247411*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_conv2d_26_layer_call_and_return_conditional_losses_1247253�
max_pooling2d_8/PartitionedCallPartitionedCall*conv2d_26/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_max_pooling2d_8_layer_call_and_return_conditional_losses_1247203�
!conv2d_27/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_8/PartitionedCall:output:0conv2d_27_1247415conv2d_27_1247417*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������6*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_conv2d_27_layer_call_and_return_conditional_losses_1247271�
!conv2d_28/StatefulPartitionedCallStatefulPartitionedCall*conv2d_27/StatefulPartitionedCall:output:0conv2d_28_1247420conv2d_28_1247422*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������6*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_conv2d_28_layer_call_and_return_conditional_losses_1247288�
max_pooling2d_9/PartitionedCallPartitionedCall*conv2d_28/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������6* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_max_pooling2d_9_layer_call_and_return_conditional_losses_1247215�
flatten_10/PartitionedCallPartitionedCall(max_pooling2d_9/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_flatten_10_layer_call_and_return_conditional_losses_1247301�
 dense_21/StatefulPartitionedCallStatefulPartitionedCall#flatten_10/PartitionedCall:output:0dense_21_1247427dense_21_1247429*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������l*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_dense_21_layer_call_and_return_conditional_losses_1247318�
 dense_22/StatefulPartitionedCallStatefulPartitionedCall)dense_21/StatefulPartitionedCall:output:0dense_22_1247432dense_22_1247434*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_dense_22_layer_call_and_return_conditional_losses_1247338�
1dense_21/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpdense_21_1247427*
_output_shapes
:	�l*
dtype0�
"dense_21/kernel/Regularizer/L2LossL2Loss9dense_21/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: f
!dense_21/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
ף<�
dense_21/kernel/Regularizer/mulMul*dense_21/kernel/Regularizer/mul/x:output:0+dense_21/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: �
1dense_22/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpdense_22_1247432*
_output_shapes

:l*
dtype0�
"dense_22/kernel/Regularizer/L2LossL2Loss9dense_22/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: f
!dense_22/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
ף<�
dense_22/kernel/Regularizer/mulMul*dense_22/kernel/Regularizer/mul/x:output:0+dense_22/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: x
IdentityIdentity)dense_22/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp"^conv2d_25/StatefulPartitionedCall"^conv2d_26/StatefulPartitionedCall"^conv2d_27/StatefulPartitionedCall"^conv2d_28/StatefulPartitionedCall!^dense_21/StatefulPartitionedCall2^dense_21/kernel/Regularizer/L2Loss/ReadVariableOp!^dense_22/StatefulPartitionedCall2^dense_22/kernel/Regularizer/L2Loss/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:���������: : : : : : : : : : : : 2F
!conv2d_25/StatefulPartitionedCall!conv2d_25/StatefulPartitionedCall2F
!conv2d_26/StatefulPartitionedCall!conv2d_26/StatefulPartitionedCall2F
!conv2d_27/StatefulPartitionedCall!conv2d_27/StatefulPartitionedCall2F
!conv2d_28/StatefulPartitionedCall!conv2d_28/StatefulPartitionedCall2D
 dense_21/StatefulPartitionedCall dense_21/StatefulPartitionedCall2f
1dense_21/kernel/Regularizer/L2Loss/ReadVariableOp1dense_21/kernel/Regularizer/L2Loss/ReadVariableOp2D
 dense_22/StatefulPartitionedCall dense_22/StatefulPartitionedCall2f
1dense_22/kernel/Regularizer/L2Loss/ReadVariableOp1dense_22/kernel/Regularizer/L2Loss/ReadVariableOp:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�6
�
J__inference_sequential_12_layer_call_and_return_conditional_losses_1247353
conv2d_25_input+
conv2d_25_1247237:
conv2d_25_1247239:+
conv2d_26_1247254:
conv2d_26_1247256:+
conv2d_27_1247272:6
conv2d_27_1247274:6+
conv2d_28_1247289:66
conv2d_28_1247291:6#
dense_21_1247319:	�l
dense_21_1247321:l"
dense_22_1247339:l
dense_22_1247341:
identity��!conv2d_25/StatefulPartitionedCall�!conv2d_26/StatefulPartitionedCall�!conv2d_27/StatefulPartitionedCall�!conv2d_28/StatefulPartitionedCall� dense_21/StatefulPartitionedCall�1dense_21/kernel/Regularizer/L2Loss/ReadVariableOp� dense_22/StatefulPartitionedCall�1dense_22/kernel/Regularizer/L2Loss/ReadVariableOp�
!conv2d_25/StatefulPartitionedCallStatefulPartitionedCallconv2d_25_inputconv2d_25_1247237conv2d_25_1247239*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_conv2d_25_layer_call_and_return_conditional_losses_1247236�
!conv2d_26/StatefulPartitionedCallStatefulPartitionedCall*conv2d_25/StatefulPartitionedCall:output:0conv2d_26_1247254conv2d_26_1247256*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_conv2d_26_layer_call_and_return_conditional_losses_1247253�
max_pooling2d_8/PartitionedCallPartitionedCall*conv2d_26/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_max_pooling2d_8_layer_call_and_return_conditional_losses_1247203�
!conv2d_27/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_8/PartitionedCall:output:0conv2d_27_1247272conv2d_27_1247274*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������6*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_conv2d_27_layer_call_and_return_conditional_losses_1247271�
!conv2d_28/StatefulPartitionedCallStatefulPartitionedCall*conv2d_27/StatefulPartitionedCall:output:0conv2d_28_1247289conv2d_28_1247291*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������6*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_conv2d_28_layer_call_and_return_conditional_losses_1247288�
max_pooling2d_9/PartitionedCallPartitionedCall*conv2d_28/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������6* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_max_pooling2d_9_layer_call_and_return_conditional_losses_1247215�
flatten_10/PartitionedCallPartitionedCall(max_pooling2d_9/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_flatten_10_layer_call_and_return_conditional_losses_1247301�
 dense_21/StatefulPartitionedCallStatefulPartitionedCall#flatten_10/PartitionedCall:output:0dense_21_1247319dense_21_1247321*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������l*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_dense_21_layer_call_and_return_conditional_losses_1247318�
 dense_22/StatefulPartitionedCallStatefulPartitionedCall)dense_21/StatefulPartitionedCall:output:0dense_22_1247339dense_22_1247341*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_dense_22_layer_call_and_return_conditional_losses_1247338�
1dense_21/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpdense_21_1247319*
_output_shapes
:	�l*
dtype0�
"dense_21/kernel/Regularizer/L2LossL2Loss9dense_21/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: f
!dense_21/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
ף<�
dense_21/kernel/Regularizer/mulMul*dense_21/kernel/Regularizer/mul/x:output:0+dense_21/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: �
1dense_22/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpdense_22_1247339*
_output_shapes

:l*
dtype0�
"dense_22/kernel/Regularizer/L2LossL2Loss9dense_22/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: f
!dense_22/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
ף<�
dense_22/kernel/Regularizer/mulMul*dense_22/kernel/Regularizer/mul/x:output:0+dense_22/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: x
IdentityIdentity)dense_22/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp"^conv2d_25/StatefulPartitionedCall"^conv2d_26/StatefulPartitionedCall"^conv2d_27/StatefulPartitionedCall"^conv2d_28/StatefulPartitionedCall!^dense_21/StatefulPartitionedCall2^dense_21/kernel/Regularizer/L2Loss/ReadVariableOp!^dense_22/StatefulPartitionedCall2^dense_22/kernel/Regularizer/L2Loss/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:���������: : : : : : : : : : : : 2F
!conv2d_25/StatefulPartitionedCall!conv2d_25/StatefulPartitionedCall2F
!conv2d_26/StatefulPartitionedCall!conv2d_26/StatefulPartitionedCall2F
!conv2d_27/StatefulPartitionedCall!conv2d_27/StatefulPartitionedCall2F
!conv2d_28/StatefulPartitionedCall!conv2d_28/StatefulPartitionedCall2D
 dense_21/StatefulPartitionedCall dense_21/StatefulPartitionedCall2f
1dense_21/kernel/Regularizer/L2Loss/ReadVariableOp1dense_21/kernel/Regularizer/L2Loss/ReadVariableOp2D
 dense_22/StatefulPartitionedCall dense_22/StatefulPartitionedCall2f
1dense_22/kernel/Regularizer/L2Loss/ReadVariableOp1dense_22/kernel/Regularizer/L2Loss/ReadVariableOp:` \
/
_output_shapes
:���������
)
_user_specified_nameconv2d_25_input
��
�&
 __inference__traced_save_1248343
file_prefixA
'read_disablecopyonread_conv2d_25_kernel:5
'read_1_disablecopyonread_conv2d_25_bias:C
)read_2_disablecopyonread_conv2d_26_kernel:5
'read_3_disablecopyonread_conv2d_26_bias:C
)read_4_disablecopyonread_conv2d_27_kernel:65
'read_5_disablecopyonread_conv2d_27_bias:6C
)read_6_disablecopyonread_conv2d_28_kernel:665
'read_7_disablecopyonread_conv2d_28_bias:6;
(read_8_disablecopyonread_dense_21_kernel:	�l4
&read_9_disablecopyonread_dense_21_bias:l;
)read_10_disablecopyonread_dense_22_kernel:l5
'read_11_disablecopyonread_dense_22_bias:-
#read_12_disablecopyonread_iteration:	 1
'read_13_disablecopyonread_learning_rate: K
1read_14_disablecopyonread_adam_m_conv2d_25_kernel:K
1read_15_disablecopyonread_adam_v_conv2d_25_kernel:=
/read_16_disablecopyonread_adam_m_conv2d_25_bias:=
/read_17_disablecopyonread_adam_v_conv2d_25_bias:K
1read_18_disablecopyonread_adam_m_conv2d_26_kernel:K
1read_19_disablecopyonread_adam_v_conv2d_26_kernel:=
/read_20_disablecopyonread_adam_m_conv2d_26_bias:=
/read_21_disablecopyonread_adam_v_conv2d_26_bias:K
1read_22_disablecopyonread_adam_m_conv2d_27_kernel:6K
1read_23_disablecopyonread_adam_v_conv2d_27_kernel:6=
/read_24_disablecopyonread_adam_m_conv2d_27_bias:6=
/read_25_disablecopyonread_adam_v_conv2d_27_bias:6K
1read_26_disablecopyonread_adam_m_conv2d_28_kernel:66K
1read_27_disablecopyonread_adam_v_conv2d_28_kernel:66=
/read_28_disablecopyonread_adam_m_conv2d_28_bias:6=
/read_29_disablecopyonread_adam_v_conv2d_28_bias:6C
0read_30_disablecopyonread_adam_m_dense_21_kernel:	�lC
0read_31_disablecopyonread_adam_v_dense_21_kernel:	�l<
.read_32_disablecopyonread_adam_m_dense_21_bias:l<
.read_33_disablecopyonread_adam_v_dense_21_bias:lB
0read_34_disablecopyonread_adam_m_dense_22_kernel:lB
0read_35_disablecopyonread_adam_v_dense_22_kernel:l<
.read_36_disablecopyonread_adam_m_dense_22_bias:<
.read_37_disablecopyonread_adam_v_dense_22_bias:+
!read_38_disablecopyonread_total_1: +
!read_39_disablecopyonread_count_1: )
read_40_disablecopyonread_total: )
read_41_disablecopyonread_count: 
savev2_const
identity_85��MergeV2Checkpoints�Read/DisableCopyOnRead�Read/ReadVariableOp�Read_1/DisableCopyOnRead�Read_1/ReadVariableOp�Read_10/DisableCopyOnRead�Read_10/ReadVariableOp�Read_11/DisableCopyOnRead�Read_11/ReadVariableOp�Read_12/DisableCopyOnRead�Read_12/ReadVariableOp�Read_13/DisableCopyOnRead�Read_13/ReadVariableOp�Read_14/DisableCopyOnRead�Read_14/ReadVariableOp�Read_15/DisableCopyOnRead�Read_15/ReadVariableOp�Read_16/DisableCopyOnRead�Read_16/ReadVariableOp�Read_17/DisableCopyOnRead�Read_17/ReadVariableOp�Read_18/DisableCopyOnRead�Read_18/ReadVariableOp�Read_19/DisableCopyOnRead�Read_19/ReadVariableOp�Read_2/DisableCopyOnRead�Read_2/ReadVariableOp�Read_20/DisableCopyOnRead�Read_20/ReadVariableOp�Read_21/DisableCopyOnRead�Read_21/ReadVariableOp�Read_22/DisableCopyOnRead�Read_22/ReadVariableOp�Read_23/DisableCopyOnRead�Read_23/ReadVariableOp�Read_24/DisableCopyOnRead�Read_24/ReadVariableOp�Read_25/DisableCopyOnRead�Read_25/ReadVariableOp�Read_26/DisableCopyOnRead�Read_26/ReadVariableOp�Read_27/DisableCopyOnRead�Read_27/ReadVariableOp�Read_28/DisableCopyOnRead�Read_28/ReadVariableOp�Read_29/DisableCopyOnRead�Read_29/ReadVariableOp�Read_3/DisableCopyOnRead�Read_3/ReadVariableOp�Read_30/DisableCopyOnRead�Read_30/ReadVariableOp�Read_31/DisableCopyOnRead�Read_31/ReadVariableOp�Read_32/DisableCopyOnRead�Read_32/ReadVariableOp�Read_33/DisableCopyOnRead�Read_33/ReadVariableOp�Read_34/DisableCopyOnRead�Read_34/ReadVariableOp�Read_35/DisableCopyOnRead�Read_35/ReadVariableOp�Read_36/DisableCopyOnRead�Read_36/ReadVariableOp�Read_37/DisableCopyOnRead�Read_37/ReadVariableOp�Read_38/DisableCopyOnRead�Read_38/ReadVariableOp�Read_39/DisableCopyOnRead�Read_39/ReadVariableOp�Read_4/DisableCopyOnRead�Read_4/ReadVariableOp�Read_40/DisableCopyOnRead�Read_40/ReadVariableOp�Read_41/DisableCopyOnRead�Read_41/ReadVariableOp�Read_5/DisableCopyOnRead�Read_5/ReadVariableOp�Read_6/DisableCopyOnRead�Read_6/ReadVariableOp�Read_7/DisableCopyOnRead�Read_7/ReadVariableOp�Read_8/DisableCopyOnRead�Read_8/ReadVariableOp�Read_9/DisableCopyOnRead�Read_9/ReadVariableOpw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part�
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : �
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: y
Read/DisableCopyOnReadDisableCopyOnRead'read_disablecopyonread_conv2d_25_kernel"/device:CPU:0*
_output_shapes
 �
Read/ReadVariableOpReadVariableOp'read_disablecopyonread_conv2d_25_kernel^Read/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:*
dtype0q
IdentityIdentityRead/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:i

Identity_1IdentityIdentity:output:0"/device:CPU:0*
T0*&
_output_shapes
:{
Read_1/DisableCopyOnReadDisableCopyOnRead'read_1_disablecopyonread_conv2d_25_bias"/device:CPU:0*
_output_shapes
 �
Read_1/ReadVariableOpReadVariableOp'read_1_disablecopyonread_conv2d_25_bias^Read_1/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0i

Identity_2IdentityRead_1/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:_

Identity_3IdentityIdentity_2:output:0"/device:CPU:0*
T0*
_output_shapes
:}
Read_2/DisableCopyOnReadDisableCopyOnRead)read_2_disablecopyonread_conv2d_26_kernel"/device:CPU:0*
_output_shapes
 �
Read_2/ReadVariableOpReadVariableOp)read_2_disablecopyonread_conv2d_26_kernel^Read_2/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:*
dtype0u

Identity_4IdentityRead_2/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:k

Identity_5IdentityIdentity_4:output:0"/device:CPU:0*
T0*&
_output_shapes
:{
Read_3/DisableCopyOnReadDisableCopyOnRead'read_3_disablecopyonread_conv2d_26_bias"/device:CPU:0*
_output_shapes
 �
Read_3/ReadVariableOpReadVariableOp'read_3_disablecopyonread_conv2d_26_bias^Read_3/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0i

Identity_6IdentityRead_3/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:_

Identity_7IdentityIdentity_6:output:0"/device:CPU:0*
T0*
_output_shapes
:}
Read_4/DisableCopyOnReadDisableCopyOnRead)read_4_disablecopyonread_conv2d_27_kernel"/device:CPU:0*
_output_shapes
 �
Read_4/ReadVariableOpReadVariableOp)read_4_disablecopyonread_conv2d_27_kernel^Read_4/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:6*
dtype0u

Identity_8IdentityRead_4/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:6k

Identity_9IdentityIdentity_8:output:0"/device:CPU:0*
T0*&
_output_shapes
:6{
Read_5/DisableCopyOnReadDisableCopyOnRead'read_5_disablecopyonread_conv2d_27_bias"/device:CPU:0*
_output_shapes
 �
Read_5/ReadVariableOpReadVariableOp'read_5_disablecopyonread_conv2d_27_bias^Read_5/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:6*
dtype0j
Identity_10IdentityRead_5/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:6a
Identity_11IdentityIdentity_10:output:0"/device:CPU:0*
T0*
_output_shapes
:6}
Read_6/DisableCopyOnReadDisableCopyOnRead)read_6_disablecopyonread_conv2d_28_kernel"/device:CPU:0*
_output_shapes
 �
Read_6/ReadVariableOpReadVariableOp)read_6_disablecopyonread_conv2d_28_kernel^Read_6/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:66*
dtype0v
Identity_12IdentityRead_6/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:66m
Identity_13IdentityIdentity_12:output:0"/device:CPU:0*
T0*&
_output_shapes
:66{
Read_7/DisableCopyOnReadDisableCopyOnRead'read_7_disablecopyonread_conv2d_28_bias"/device:CPU:0*
_output_shapes
 �
Read_7/ReadVariableOpReadVariableOp'read_7_disablecopyonread_conv2d_28_bias^Read_7/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:6*
dtype0j
Identity_14IdentityRead_7/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:6a
Identity_15IdentityIdentity_14:output:0"/device:CPU:0*
T0*
_output_shapes
:6|
Read_8/DisableCopyOnReadDisableCopyOnRead(read_8_disablecopyonread_dense_21_kernel"/device:CPU:0*
_output_shapes
 �
Read_8/ReadVariableOpReadVariableOp(read_8_disablecopyonread_dense_21_kernel^Read_8/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	�l*
dtype0o
Identity_16IdentityRead_8/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	�lf
Identity_17IdentityIdentity_16:output:0"/device:CPU:0*
T0*
_output_shapes
:	�lz
Read_9/DisableCopyOnReadDisableCopyOnRead&read_9_disablecopyonread_dense_21_bias"/device:CPU:0*
_output_shapes
 �
Read_9/ReadVariableOpReadVariableOp&read_9_disablecopyonread_dense_21_bias^Read_9/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:l*
dtype0j
Identity_18IdentityRead_9/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:la
Identity_19IdentityIdentity_18:output:0"/device:CPU:0*
T0*
_output_shapes
:l~
Read_10/DisableCopyOnReadDisableCopyOnRead)read_10_disablecopyonread_dense_22_kernel"/device:CPU:0*
_output_shapes
 �
Read_10/ReadVariableOpReadVariableOp)read_10_disablecopyonread_dense_22_kernel^Read_10/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:l*
dtype0o
Identity_20IdentityRead_10/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:le
Identity_21IdentityIdentity_20:output:0"/device:CPU:0*
T0*
_output_shapes

:l|
Read_11/DisableCopyOnReadDisableCopyOnRead'read_11_disablecopyonread_dense_22_bias"/device:CPU:0*
_output_shapes
 �
Read_11/ReadVariableOpReadVariableOp'read_11_disablecopyonread_dense_22_bias^Read_11/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_22IdentityRead_11/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_23IdentityIdentity_22:output:0"/device:CPU:0*
T0*
_output_shapes
:x
Read_12/DisableCopyOnReadDisableCopyOnRead#read_12_disablecopyonread_iteration"/device:CPU:0*
_output_shapes
 �
Read_12/ReadVariableOpReadVariableOp#read_12_disablecopyonread_iteration^Read_12/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0	g
Identity_24IdentityRead_12/ReadVariableOp:value:0"/device:CPU:0*
T0	*
_output_shapes
: ]
Identity_25IdentityIdentity_24:output:0"/device:CPU:0*
T0	*
_output_shapes
: |
Read_13/DisableCopyOnReadDisableCopyOnRead'read_13_disablecopyonread_learning_rate"/device:CPU:0*
_output_shapes
 �
Read_13/ReadVariableOpReadVariableOp'read_13_disablecopyonread_learning_rate^Read_13/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_26IdentityRead_13/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_27IdentityIdentity_26:output:0"/device:CPU:0*
T0*
_output_shapes
: �
Read_14/DisableCopyOnReadDisableCopyOnRead1read_14_disablecopyonread_adam_m_conv2d_25_kernel"/device:CPU:0*
_output_shapes
 �
Read_14/ReadVariableOpReadVariableOp1read_14_disablecopyonread_adam_m_conv2d_25_kernel^Read_14/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:*
dtype0w
Identity_28IdentityRead_14/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:m
Identity_29IdentityIdentity_28:output:0"/device:CPU:0*
T0*&
_output_shapes
:�
Read_15/DisableCopyOnReadDisableCopyOnRead1read_15_disablecopyonread_adam_v_conv2d_25_kernel"/device:CPU:0*
_output_shapes
 �
Read_15/ReadVariableOpReadVariableOp1read_15_disablecopyonread_adam_v_conv2d_25_kernel^Read_15/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:*
dtype0w
Identity_30IdentityRead_15/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:m
Identity_31IdentityIdentity_30:output:0"/device:CPU:0*
T0*&
_output_shapes
:�
Read_16/DisableCopyOnReadDisableCopyOnRead/read_16_disablecopyonread_adam_m_conv2d_25_bias"/device:CPU:0*
_output_shapes
 �
Read_16/ReadVariableOpReadVariableOp/read_16_disablecopyonread_adam_m_conv2d_25_bias^Read_16/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_32IdentityRead_16/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_33IdentityIdentity_32:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_17/DisableCopyOnReadDisableCopyOnRead/read_17_disablecopyonread_adam_v_conv2d_25_bias"/device:CPU:0*
_output_shapes
 �
Read_17/ReadVariableOpReadVariableOp/read_17_disablecopyonread_adam_v_conv2d_25_bias^Read_17/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_34IdentityRead_17/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_35IdentityIdentity_34:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_18/DisableCopyOnReadDisableCopyOnRead1read_18_disablecopyonread_adam_m_conv2d_26_kernel"/device:CPU:0*
_output_shapes
 �
Read_18/ReadVariableOpReadVariableOp1read_18_disablecopyonread_adam_m_conv2d_26_kernel^Read_18/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:*
dtype0w
Identity_36IdentityRead_18/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:m
Identity_37IdentityIdentity_36:output:0"/device:CPU:0*
T0*&
_output_shapes
:�
Read_19/DisableCopyOnReadDisableCopyOnRead1read_19_disablecopyonread_adam_v_conv2d_26_kernel"/device:CPU:0*
_output_shapes
 �
Read_19/ReadVariableOpReadVariableOp1read_19_disablecopyonread_adam_v_conv2d_26_kernel^Read_19/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:*
dtype0w
Identity_38IdentityRead_19/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:m
Identity_39IdentityIdentity_38:output:0"/device:CPU:0*
T0*&
_output_shapes
:�
Read_20/DisableCopyOnReadDisableCopyOnRead/read_20_disablecopyonread_adam_m_conv2d_26_bias"/device:CPU:0*
_output_shapes
 �
Read_20/ReadVariableOpReadVariableOp/read_20_disablecopyonread_adam_m_conv2d_26_bias^Read_20/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_40IdentityRead_20/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_41IdentityIdentity_40:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_21/DisableCopyOnReadDisableCopyOnRead/read_21_disablecopyonread_adam_v_conv2d_26_bias"/device:CPU:0*
_output_shapes
 �
Read_21/ReadVariableOpReadVariableOp/read_21_disablecopyonread_adam_v_conv2d_26_bias^Read_21/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_42IdentityRead_21/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_43IdentityIdentity_42:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_22/DisableCopyOnReadDisableCopyOnRead1read_22_disablecopyonread_adam_m_conv2d_27_kernel"/device:CPU:0*
_output_shapes
 �
Read_22/ReadVariableOpReadVariableOp1read_22_disablecopyonread_adam_m_conv2d_27_kernel^Read_22/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:6*
dtype0w
Identity_44IdentityRead_22/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:6m
Identity_45IdentityIdentity_44:output:0"/device:CPU:0*
T0*&
_output_shapes
:6�
Read_23/DisableCopyOnReadDisableCopyOnRead1read_23_disablecopyonread_adam_v_conv2d_27_kernel"/device:CPU:0*
_output_shapes
 �
Read_23/ReadVariableOpReadVariableOp1read_23_disablecopyonread_adam_v_conv2d_27_kernel^Read_23/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:6*
dtype0w
Identity_46IdentityRead_23/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:6m
Identity_47IdentityIdentity_46:output:0"/device:CPU:0*
T0*&
_output_shapes
:6�
Read_24/DisableCopyOnReadDisableCopyOnRead/read_24_disablecopyonread_adam_m_conv2d_27_bias"/device:CPU:0*
_output_shapes
 �
Read_24/ReadVariableOpReadVariableOp/read_24_disablecopyonread_adam_m_conv2d_27_bias^Read_24/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:6*
dtype0k
Identity_48IdentityRead_24/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:6a
Identity_49IdentityIdentity_48:output:0"/device:CPU:0*
T0*
_output_shapes
:6�
Read_25/DisableCopyOnReadDisableCopyOnRead/read_25_disablecopyonread_adam_v_conv2d_27_bias"/device:CPU:0*
_output_shapes
 �
Read_25/ReadVariableOpReadVariableOp/read_25_disablecopyonread_adam_v_conv2d_27_bias^Read_25/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:6*
dtype0k
Identity_50IdentityRead_25/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:6a
Identity_51IdentityIdentity_50:output:0"/device:CPU:0*
T0*
_output_shapes
:6�
Read_26/DisableCopyOnReadDisableCopyOnRead1read_26_disablecopyonread_adam_m_conv2d_28_kernel"/device:CPU:0*
_output_shapes
 �
Read_26/ReadVariableOpReadVariableOp1read_26_disablecopyonread_adam_m_conv2d_28_kernel^Read_26/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:66*
dtype0w
Identity_52IdentityRead_26/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:66m
Identity_53IdentityIdentity_52:output:0"/device:CPU:0*
T0*&
_output_shapes
:66�
Read_27/DisableCopyOnReadDisableCopyOnRead1read_27_disablecopyonread_adam_v_conv2d_28_kernel"/device:CPU:0*
_output_shapes
 �
Read_27/ReadVariableOpReadVariableOp1read_27_disablecopyonread_adam_v_conv2d_28_kernel^Read_27/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:66*
dtype0w
Identity_54IdentityRead_27/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:66m
Identity_55IdentityIdentity_54:output:0"/device:CPU:0*
T0*&
_output_shapes
:66�
Read_28/DisableCopyOnReadDisableCopyOnRead/read_28_disablecopyonread_adam_m_conv2d_28_bias"/device:CPU:0*
_output_shapes
 �
Read_28/ReadVariableOpReadVariableOp/read_28_disablecopyonread_adam_m_conv2d_28_bias^Read_28/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:6*
dtype0k
Identity_56IdentityRead_28/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:6a
Identity_57IdentityIdentity_56:output:0"/device:CPU:0*
T0*
_output_shapes
:6�
Read_29/DisableCopyOnReadDisableCopyOnRead/read_29_disablecopyonread_adam_v_conv2d_28_bias"/device:CPU:0*
_output_shapes
 �
Read_29/ReadVariableOpReadVariableOp/read_29_disablecopyonread_adam_v_conv2d_28_bias^Read_29/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:6*
dtype0k
Identity_58IdentityRead_29/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:6a
Identity_59IdentityIdentity_58:output:0"/device:CPU:0*
T0*
_output_shapes
:6�
Read_30/DisableCopyOnReadDisableCopyOnRead0read_30_disablecopyonread_adam_m_dense_21_kernel"/device:CPU:0*
_output_shapes
 �
Read_30/ReadVariableOpReadVariableOp0read_30_disablecopyonread_adam_m_dense_21_kernel^Read_30/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	�l*
dtype0p
Identity_60IdentityRead_30/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	�lf
Identity_61IdentityIdentity_60:output:0"/device:CPU:0*
T0*
_output_shapes
:	�l�
Read_31/DisableCopyOnReadDisableCopyOnRead0read_31_disablecopyonread_adam_v_dense_21_kernel"/device:CPU:0*
_output_shapes
 �
Read_31/ReadVariableOpReadVariableOp0read_31_disablecopyonread_adam_v_dense_21_kernel^Read_31/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	�l*
dtype0p
Identity_62IdentityRead_31/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	�lf
Identity_63IdentityIdentity_62:output:0"/device:CPU:0*
T0*
_output_shapes
:	�l�
Read_32/DisableCopyOnReadDisableCopyOnRead.read_32_disablecopyonread_adam_m_dense_21_bias"/device:CPU:0*
_output_shapes
 �
Read_32/ReadVariableOpReadVariableOp.read_32_disablecopyonread_adam_m_dense_21_bias^Read_32/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:l*
dtype0k
Identity_64IdentityRead_32/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:la
Identity_65IdentityIdentity_64:output:0"/device:CPU:0*
T0*
_output_shapes
:l�
Read_33/DisableCopyOnReadDisableCopyOnRead.read_33_disablecopyonread_adam_v_dense_21_bias"/device:CPU:0*
_output_shapes
 �
Read_33/ReadVariableOpReadVariableOp.read_33_disablecopyonread_adam_v_dense_21_bias^Read_33/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:l*
dtype0k
Identity_66IdentityRead_33/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:la
Identity_67IdentityIdentity_66:output:0"/device:CPU:0*
T0*
_output_shapes
:l�
Read_34/DisableCopyOnReadDisableCopyOnRead0read_34_disablecopyonread_adam_m_dense_22_kernel"/device:CPU:0*
_output_shapes
 �
Read_34/ReadVariableOpReadVariableOp0read_34_disablecopyonread_adam_m_dense_22_kernel^Read_34/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:l*
dtype0o
Identity_68IdentityRead_34/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:le
Identity_69IdentityIdentity_68:output:0"/device:CPU:0*
T0*
_output_shapes

:l�
Read_35/DisableCopyOnReadDisableCopyOnRead0read_35_disablecopyonread_adam_v_dense_22_kernel"/device:CPU:0*
_output_shapes
 �
Read_35/ReadVariableOpReadVariableOp0read_35_disablecopyonread_adam_v_dense_22_kernel^Read_35/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:l*
dtype0o
Identity_70IdentityRead_35/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:le
Identity_71IdentityIdentity_70:output:0"/device:CPU:0*
T0*
_output_shapes

:l�
Read_36/DisableCopyOnReadDisableCopyOnRead.read_36_disablecopyonread_adam_m_dense_22_bias"/device:CPU:0*
_output_shapes
 �
Read_36/ReadVariableOpReadVariableOp.read_36_disablecopyonread_adam_m_dense_22_bias^Read_36/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_72IdentityRead_36/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_73IdentityIdentity_72:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_37/DisableCopyOnReadDisableCopyOnRead.read_37_disablecopyonread_adam_v_dense_22_bias"/device:CPU:0*
_output_shapes
 �
Read_37/ReadVariableOpReadVariableOp.read_37_disablecopyonread_adam_v_dense_22_bias^Read_37/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_74IdentityRead_37/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_75IdentityIdentity_74:output:0"/device:CPU:0*
T0*
_output_shapes
:v
Read_38/DisableCopyOnReadDisableCopyOnRead!read_38_disablecopyonread_total_1"/device:CPU:0*
_output_shapes
 �
Read_38/ReadVariableOpReadVariableOp!read_38_disablecopyonread_total_1^Read_38/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_76IdentityRead_38/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_77IdentityIdentity_76:output:0"/device:CPU:0*
T0*
_output_shapes
: v
Read_39/DisableCopyOnReadDisableCopyOnRead!read_39_disablecopyonread_count_1"/device:CPU:0*
_output_shapes
 �
Read_39/ReadVariableOpReadVariableOp!read_39_disablecopyonread_count_1^Read_39/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_78IdentityRead_39/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_79IdentityIdentity_78:output:0"/device:CPU:0*
T0*
_output_shapes
: t
Read_40/DisableCopyOnReadDisableCopyOnReadread_40_disablecopyonread_total"/device:CPU:0*
_output_shapes
 �
Read_40/ReadVariableOpReadVariableOpread_40_disablecopyonread_total^Read_40/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_80IdentityRead_40/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_81IdentityIdentity_80:output:0"/device:CPU:0*
T0*
_output_shapes
: t
Read_41/DisableCopyOnReadDisableCopyOnReadread_41_disablecopyonread_count"/device:CPU:0*
_output_shapes
 �
Read_41/ReadVariableOpReadVariableOpread_41_disablecopyonread_count^Read_41/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_82IdentityRead_41/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_83IdentityIdentity_82:output:0"/device:CPU:0*
T0*
_output_shapes
: �
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:+*
dtype0*�
value�B�+B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/19/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/20/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/21/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/22/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/23/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/24/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:+*
dtype0*i
value`B^+B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �	
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0Identity_1:output:0Identity_3:output:0Identity_5:output:0Identity_7:output:0Identity_9:output:0Identity_11:output:0Identity_13:output:0Identity_15:output:0Identity_17:output:0Identity_19:output:0Identity_21:output:0Identity_23:output:0Identity_25:output:0Identity_27:output:0Identity_29:output:0Identity_31:output:0Identity_33:output:0Identity_35:output:0Identity_37:output:0Identity_39:output:0Identity_41:output:0Identity_43:output:0Identity_45:output:0Identity_47:output:0Identity_49:output:0Identity_51:output:0Identity_53:output:0Identity_55:output:0Identity_57:output:0Identity_59:output:0Identity_61:output:0Identity_63:output:0Identity_65:output:0Identity_67:output:0Identity_69:output:0Identity_71:output:0Identity_73:output:0Identity_75:output:0Identity_77:output:0Identity_79:output:0Identity_81:output:0Identity_83:output:0savev2_const"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *9
dtypes/
-2+	�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:�
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 i
Identity_84Identityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: U
Identity_85IdentityIdentity_84:output:0^NoOp*
T0*
_output_shapes
: �
NoOpNoOp^MergeV2Checkpoints^Read/DisableCopyOnRead^Read/ReadVariableOp^Read_1/DisableCopyOnRead^Read_1/ReadVariableOp^Read_10/DisableCopyOnRead^Read_10/ReadVariableOp^Read_11/DisableCopyOnRead^Read_11/ReadVariableOp^Read_12/DisableCopyOnRead^Read_12/ReadVariableOp^Read_13/DisableCopyOnRead^Read_13/ReadVariableOp^Read_14/DisableCopyOnRead^Read_14/ReadVariableOp^Read_15/DisableCopyOnRead^Read_15/ReadVariableOp^Read_16/DisableCopyOnRead^Read_16/ReadVariableOp^Read_17/DisableCopyOnRead^Read_17/ReadVariableOp^Read_18/DisableCopyOnRead^Read_18/ReadVariableOp^Read_19/DisableCopyOnRead^Read_19/ReadVariableOp^Read_2/DisableCopyOnRead^Read_2/ReadVariableOp^Read_20/DisableCopyOnRead^Read_20/ReadVariableOp^Read_21/DisableCopyOnRead^Read_21/ReadVariableOp^Read_22/DisableCopyOnRead^Read_22/ReadVariableOp^Read_23/DisableCopyOnRead^Read_23/ReadVariableOp^Read_24/DisableCopyOnRead^Read_24/ReadVariableOp^Read_25/DisableCopyOnRead^Read_25/ReadVariableOp^Read_26/DisableCopyOnRead^Read_26/ReadVariableOp^Read_27/DisableCopyOnRead^Read_27/ReadVariableOp^Read_28/DisableCopyOnRead^Read_28/ReadVariableOp^Read_29/DisableCopyOnRead^Read_29/ReadVariableOp^Read_3/DisableCopyOnRead^Read_3/ReadVariableOp^Read_30/DisableCopyOnRead^Read_30/ReadVariableOp^Read_31/DisableCopyOnRead^Read_31/ReadVariableOp^Read_32/DisableCopyOnRead^Read_32/ReadVariableOp^Read_33/DisableCopyOnRead^Read_33/ReadVariableOp^Read_34/DisableCopyOnRead^Read_34/ReadVariableOp^Read_35/DisableCopyOnRead^Read_35/ReadVariableOp^Read_36/DisableCopyOnRead^Read_36/ReadVariableOp^Read_37/DisableCopyOnRead^Read_37/ReadVariableOp^Read_38/DisableCopyOnRead^Read_38/ReadVariableOp^Read_39/DisableCopyOnRead^Read_39/ReadVariableOp^Read_4/DisableCopyOnRead^Read_4/ReadVariableOp^Read_40/DisableCopyOnRead^Read_40/ReadVariableOp^Read_41/DisableCopyOnRead^Read_41/ReadVariableOp^Read_5/DisableCopyOnRead^Read_5/ReadVariableOp^Read_6/DisableCopyOnRead^Read_6/ReadVariableOp^Read_7/DisableCopyOnRead^Read_7/ReadVariableOp^Read_8/DisableCopyOnRead^Read_8/ReadVariableOp^Read_9/DisableCopyOnRead^Read_9/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "#
identity_85Identity_85:output:0*k
_input_shapesZ
X: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2(
MergeV2CheckpointsMergeV2Checkpoints20
Read/DisableCopyOnReadRead/DisableCopyOnRead2*
Read/ReadVariableOpRead/ReadVariableOp24
Read_1/DisableCopyOnReadRead_1/DisableCopyOnRead2.
Read_1/ReadVariableOpRead_1/ReadVariableOp26
Read_10/DisableCopyOnReadRead_10/DisableCopyOnRead20
Read_10/ReadVariableOpRead_10/ReadVariableOp26
Read_11/DisableCopyOnReadRead_11/DisableCopyOnRead20
Read_11/ReadVariableOpRead_11/ReadVariableOp26
Read_12/DisableCopyOnReadRead_12/DisableCopyOnRead20
Read_12/ReadVariableOpRead_12/ReadVariableOp26
Read_13/DisableCopyOnReadRead_13/DisableCopyOnRead20
Read_13/ReadVariableOpRead_13/ReadVariableOp26
Read_14/DisableCopyOnReadRead_14/DisableCopyOnRead20
Read_14/ReadVariableOpRead_14/ReadVariableOp26
Read_15/DisableCopyOnReadRead_15/DisableCopyOnRead20
Read_15/ReadVariableOpRead_15/ReadVariableOp26
Read_16/DisableCopyOnReadRead_16/DisableCopyOnRead20
Read_16/ReadVariableOpRead_16/ReadVariableOp26
Read_17/DisableCopyOnReadRead_17/DisableCopyOnRead20
Read_17/ReadVariableOpRead_17/ReadVariableOp26
Read_18/DisableCopyOnReadRead_18/DisableCopyOnRead20
Read_18/ReadVariableOpRead_18/ReadVariableOp26
Read_19/DisableCopyOnReadRead_19/DisableCopyOnRead20
Read_19/ReadVariableOpRead_19/ReadVariableOp24
Read_2/DisableCopyOnReadRead_2/DisableCopyOnRead2.
Read_2/ReadVariableOpRead_2/ReadVariableOp26
Read_20/DisableCopyOnReadRead_20/DisableCopyOnRead20
Read_20/ReadVariableOpRead_20/ReadVariableOp26
Read_21/DisableCopyOnReadRead_21/DisableCopyOnRead20
Read_21/ReadVariableOpRead_21/ReadVariableOp26
Read_22/DisableCopyOnReadRead_22/DisableCopyOnRead20
Read_22/ReadVariableOpRead_22/ReadVariableOp26
Read_23/DisableCopyOnReadRead_23/DisableCopyOnRead20
Read_23/ReadVariableOpRead_23/ReadVariableOp26
Read_24/DisableCopyOnReadRead_24/DisableCopyOnRead20
Read_24/ReadVariableOpRead_24/ReadVariableOp26
Read_25/DisableCopyOnReadRead_25/DisableCopyOnRead20
Read_25/ReadVariableOpRead_25/ReadVariableOp26
Read_26/DisableCopyOnReadRead_26/DisableCopyOnRead20
Read_26/ReadVariableOpRead_26/ReadVariableOp26
Read_27/DisableCopyOnReadRead_27/DisableCopyOnRead20
Read_27/ReadVariableOpRead_27/ReadVariableOp26
Read_28/DisableCopyOnReadRead_28/DisableCopyOnRead20
Read_28/ReadVariableOpRead_28/ReadVariableOp26
Read_29/DisableCopyOnReadRead_29/DisableCopyOnRead20
Read_29/ReadVariableOpRead_29/ReadVariableOp24
Read_3/DisableCopyOnReadRead_3/DisableCopyOnRead2.
Read_3/ReadVariableOpRead_3/ReadVariableOp26
Read_30/DisableCopyOnReadRead_30/DisableCopyOnRead20
Read_30/ReadVariableOpRead_30/ReadVariableOp26
Read_31/DisableCopyOnReadRead_31/DisableCopyOnRead20
Read_31/ReadVariableOpRead_31/ReadVariableOp26
Read_32/DisableCopyOnReadRead_32/DisableCopyOnRead20
Read_32/ReadVariableOpRead_32/ReadVariableOp26
Read_33/DisableCopyOnReadRead_33/DisableCopyOnRead20
Read_33/ReadVariableOpRead_33/ReadVariableOp26
Read_34/DisableCopyOnReadRead_34/DisableCopyOnRead20
Read_34/ReadVariableOpRead_34/ReadVariableOp26
Read_35/DisableCopyOnReadRead_35/DisableCopyOnRead20
Read_35/ReadVariableOpRead_35/ReadVariableOp26
Read_36/DisableCopyOnReadRead_36/DisableCopyOnRead20
Read_36/ReadVariableOpRead_36/ReadVariableOp26
Read_37/DisableCopyOnReadRead_37/DisableCopyOnRead20
Read_37/ReadVariableOpRead_37/ReadVariableOp26
Read_38/DisableCopyOnReadRead_38/DisableCopyOnRead20
Read_38/ReadVariableOpRead_38/ReadVariableOp26
Read_39/DisableCopyOnReadRead_39/DisableCopyOnRead20
Read_39/ReadVariableOpRead_39/ReadVariableOp24
Read_4/DisableCopyOnReadRead_4/DisableCopyOnRead2.
Read_4/ReadVariableOpRead_4/ReadVariableOp26
Read_40/DisableCopyOnReadRead_40/DisableCopyOnRead20
Read_40/ReadVariableOpRead_40/ReadVariableOp26
Read_41/DisableCopyOnReadRead_41/DisableCopyOnRead20
Read_41/ReadVariableOpRead_41/ReadVariableOp24
Read_5/DisableCopyOnReadRead_5/DisableCopyOnRead2.
Read_5/ReadVariableOpRead_5/ReadVariableOp24
Read_6/DisableCopyOnReadRead_6/DisableCopyOnRead2.
Read_6/ReadVariableOpRead_6/ReadVariableOp24
Read_7/DisableCopyOnReadRead_7/DisableCopyOnRead2.
Read_7/ReadVariableOpRead_7/ReadVariableOp24
Read_8/DisableCopyOnReadRead_8/DisableCopyOnRead2.
Read_8/ReadVariableOpRead_8/ReadVariableOp24
Read_9/DisableCopyOnReadRead_9/DisableCopyOnRead2.
Read_9/ReadVariableOpRead_9/ReadVariableOp:+

_output_shapes
: :C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
�
�
+__inference_conv2d_26_layer_call_fn_1247921

inputs!
unknown:
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_conv2d_26_layer_call_and_return_conditional_losses_1247253w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�6
�
J__inference_sequential_12_layer_call_and_return_conditional_losses_1247398
conv2d_25_input+
conv2d_25_1247356:
conv2d_25_1247358:+
conv2d_26_1247361:
conv2d_26_1247363:+
conv2d_27_1247367:6
conv2d_27_1247369:6+
conv2d_28_1247372:66
conv2d_28_1247374:6#
dense_21_1247379:	�l
dense_21_1247381:l"
dense_22_1247384:l
dense_22_1247386:
identity��!conv2d_25/StatefulPartitionedCall�!conv2d_26/StatefulPartitionedCall�!conv2d_27/StatefulPartitionedCall�!conv2d_28/StatefulPartitionedCall� dense_21/StatefulPartitionedCall�1dense_21/kernel/Regularizer/L2Loss/ReadVariableOp� dense_22/StatefulPartitionedCall�1dense_22/kernel/Regularizer/L2Loss/ReadVariableOp�
!conv2d_25/StatefulPartitionedCallStatefulPartitionedCallconv2d_25_inputconv2d_25_1247356conv2d_25_1247358*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_conv2d_25_layer_call_and_return_conditional_losses_1247236�
!conv2d_26/StatefulPartitionedCallStatefulPartitionedCall*conv2d_25/StatefulPartitionedCall:output:0conv2d_26_1247361conv2d_26_1247363*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_conv2d_26_layer_call_and_return_conditional_losses_1247253�
max_pooling2d_8/PartitionedCallPartitionedCall*conv2d_26/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_max_pooling2d_8_layer_call_and_return_conditional_losses_1247203�
!conv2d_27/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_8/PartitionedCall:output:0conv2d_27_1247367conv2d_27_1247369*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������6*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_conv2d_27_layer_call_and_return_conditional_losses_1247271�
!conv2d_28/StatefulPartitionedCallStatefulPartitionedCall*conv2d_27/StatefulPartitionedCall:output:0conv2d_28_1247372conv2d_28_1247374*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������6*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_conv2d_28_layer_call_and_return_conditional_losses_1247288�
max_pooling2d_9/PartitionedCallPartitionedCall*conv2d_28/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������6* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_max_pooling2d_9_layer_call_and_return_conditional_losses_1247215�
flatten_10/PartitionedCallPartitionedCall(max_pooling2d_9/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_flatten_10_layer_call_and_return_conditional_losses_1247301�
 dense_21/StatefulPartitionedCallStatefulPartitionedCall#flatten_10/PartitionedCall:output:0dense_21_1247379dense_21_1247381*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������l*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_dense_21_layer_call_and_return_conditional_losses_1247318�
 dense_22/StatefulPartitionedCallStatefulPartitionedCall)dense_21/StatefulPartitionedCall:output:0dense_22_1247384dense_22_1247386*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_dense_22_layer_call_and_return_conditional_losses_1247338�
1dense_21/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpdense_21_1247379*
_output_shapes
:	�l*
dtype0�
"dense_21/kernel/Regularizer/L2LossL2Loss9dense_21/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: f
!dense_21/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
ף<�
dense_21/kernel/Regularizer/mulMul*dense_21/kernel/Regularizer/mul/x:output:0+dense_21/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: �
1dense_22/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpdense_22_1247384*
_output_shapes

:l*
dtype0�
"dense_22/kernel/Regularizer/L2LossL2Loss9dense_22/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: f
!dense_22/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
ף<�
dense_22/kernel/Regularizer/mulMul*dense_22/kernel/Regularizer/mul/x:output:0+dense_22/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: x
IdentityIdentity)dense_22/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp"^conv2d_25/StatefulPartitionedCall"^conv2d_26/StatefulPartitionedCall"^conv2d_27/StatefulPartitionedCall"^conv2d_28/StatefulPartitionedCall!^dense_21/StatefulPartitionedCall2^dense_21/kernel/Regularizer/L2Loss/ReadVariableOp!^dense_22/StatefulPartitionedCall2^dense_22/kernel/Regularizer/L2Loss/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:���������: : : : : : : : : : : : 2F
!conv2d_25/StatefulPartitionedCall!conv2d_25/StatefulPartitionedCall2F
!conv2d_26/StatefulPartitionedCall!conv2d_26/StatefulPartitionedCall2F
!conv2d_27/StatefulPartitionedCall!conv2d_27/StatefulPartitionedCall2F
!conv2d_28/StatefulPartitionedCall!conv2d_28/StatefulPartitionedCall2D
 dense_21/StatefulPartitionedCall dense_21/StatefulPartitionedCall2f
1dense_21/kernel/Regularizer/L2Loss/ReadVariableOp1dense_21/kernel/Regularizer/L2Loss/ReadVariableOp2D
 dense_22/StatefulPartitionedCall dense_22/StatefulPartitionedCall2f
1dense_22/kernel/Regularizer/L2Loss/ReadVariableOp1dense_22/kernel/Regularizer/L2Loss/ReadVariableOp:` \
/
_output_shapes
:���������
)
_user_specified_nameconv2d_25_input
�5
�
J__inference_sequential_12_layer_call_and_return_conditional_losses_1247520

inputs+
conv2d_25_1247478:
conv2d_25_1247480:+
conv2d_26_1247483:
conv2d_26_1247485:+
conv2d_27_1247489:6
conv2d_27_1247491:6+
conv2d_28_1247494:66
conv2d_28_1247496:6#
dense_21_1247501:	�l
dense_21_1247503:l"
dense_22_1247506:l
dense_22_1247508:
identity��!conv2d_25/StatefulPartitionedCall�!conv2d_26/StatefulPartitionedCall�!conv2d_27/StatefulPartitionedCall�!conv2d_28/StatefulPartitionedCall� dense_21/StatefulPartitionedCall�1dense_21/kernel/Regularizer/L2Loss/ReadVariableOp� dense_22/StatefulPartitionedCall�1dense_22/kernel/Regularizer/L2Loss/ReadVariableOp�
!conv2d_25/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_25_1247478conv2d_25_1247480*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_conv2d_25_layer_call_and_return_conditional_losses_1247236�
!conv2d_26/StatefulPartitionedCallStatefulPartitionedCall*conv2d_25/StatefulPartitionedCall:output:0conv2d_26_1247483conv2d_26_1247485*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_conv2d_26_layer_call_and_return_conditional_losses_1247253�
max_pooling2d_8/PartitionedCallPartitionedCall*conv2d_26/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_max_pooling2d_8_layer_call_and_return_conditional_losses_1247203�
!conv2d_27/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_8/PartitionedCall:output:0conv2d_27_1247489conv2d_27_1247491*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������6*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_conv2d_27_layer_call_and_return_conditional_losses_1247271�
!conv2d_28/StatefulPartitionedCallStatefulPartitionedCall*conv2d_27/StatefulPartitionedCall:output:0conv2d_28_1247494conv2d_28_1247496*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������6*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_conv2d_28_layer_call_and_return_conditional_losses_1247288�
max_pooling2d_9/PartitionedCallPartitionedCall*conv2d_28/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������6* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_max_pooling2d_9_layer_call_and_return_conditional_losses_1247215�
flatten_10/PartitionedCallPartitionedCall(max_pooling2d_9/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_flatten_10_layer_call_and_return_conditional_losses_1247301�
 dense_21/StatefulPartitionedCallStatefulPartitionedCall#flatten_10/PartitionedCall:output:0dense_21_1247501dense_21_1247503*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������l*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_dense_21_layer_call_and_return_conditional_losses_1247318�
 dense_22/StatefulPartitionedCallStatefulPartitionedCall)dense_21/StatefulPartitionedCall:output:0dense_22_1247506dense_22_1247508*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_dense_22_layer_call_and_return_conditional_losses_1247338�
1dense_21/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpdense_21_1247501*
_output_shapes
:	�l*
dtype0�
"dense_21/kernel/Regularizer/L2LossL2Loss9dense_21/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: f
!dense_21/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
ף<�
dense_21/kernel/Regularizer/mulMul*dense_21/kernel/Regularizer/mul/x:output:0+dense_21/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: �
1dense_22/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpdense_22_1247506*
_output_shapes

:l*
dtype0�
"dense_22/kernel/Regularizer/L2LossL2Loss9dense_22/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: f
!dense_22/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
ף<�
dense_22/kernel/Regularizer/mulMul*dense_22/kernel/Regularizer/mul/x:output:0+dense_22/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: x
IdentityIdentity)dense_22/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp"^conv2d_25/StatefulPartitionedCall"^conv2d_26/StatefulPartitionedCall"^conv2d_27/StatefulPartitionedCall"^conv2d_28/StatefulPartitionedCall!^dense_21/StatefulPartitionedCall2^dense_21/kernel/Regularizer/L2Loss/ReadVariableOp!^dense_22/StatefulPartitionedCall2^dense_22/kernel/Regularizer/L2Loss/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:���������: : : : : : : : : : : : 2F
!conv2d_25/StatefulPartitionedCall!conv2d_25/StatefulPartitionedCall2F
!conv2d_26/StatefulPartitionedCall!conv2d_26/StatefulPartitionedCall2F
!conv2d_27/StatefulPartitionedCall!conv2d_27/StatefulPartitionedCall2F
!conv2d_28/StatefulPartitionedCall!conv2d_28/StatefulPartitionedCall2D
 dense_21/StatefulPartitionedCall dense_21/StatefulPartitionedCall2f
1dense_21/kernel/Regularizer/L2Loss/ReadVariableOp1dense_21/kernel/Regularizer/L2Loss/ReadVariableOp2D
 dense_22/StatefulPartitionedCall dense_22/StatefulPartitionedCall2f
1dense_22/kernel/Regularizer/L2Loss/ReadVariableOp1dense_22/kernel/Regularizer/L2Loss/ReadVariableOp:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
F__inference_conv2d_27_layer_call_and_return_conditional_losses_1247271

inputs8
conv2d_readvariableop_resource:6-
biasadd_readvariableop_resource:6
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:6*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������6*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:6*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������6X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:���������6i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:���������6w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
��
�
#__inference__traced_restore_1248479
file_prefix;
!assignvariableop_conv2d_25_kernel:/
!assignvariableop_1_conv2d_25_bias:=
#assignvariableop_2_conv2d_26_kernel:/
!assignvariableop_3_conv2d_26_bias:=
#assignvariableop_4_conv2d_27_kernel:6/
!assignvariableop_5_conv2d_27_bias:6=
#assignvariableop_6_conv2d_28_kernel:66/
!assignvariableop_7_conv2d_28_bias:65
"assignvariableop_8_dense_21_kernel:	�l.
 assignvariableop_9_dense_21_bias:l5
#assignvariableop_10_dense_22_kernel:l/
!assignvariableop_11_dense_22_bias:'
assignvariableop_12_iteration:	 +
!assignvariableop_13_learning_rate: E
+assignvariableop_14_adam_m_conv2d_25_kernel:E
+assignvariableop_15_adam_v_conv2d_25_kernel:7
)assignvariableop_16_adam_m_conv2d_25_bias:7
)assignvariableop_17_adam_v_conv2d_25_bias:E
+assignvariableop_18_adam_m_conv2d_26_kernel:E
+assignvariableop_19_adam_v_conv2d_26_kernel:7
)assignvariableop_20_adam_m_conv2d_26_bias:7
)assignvariableop_21_adam_v_conv2d_26_bias:E
+assignvariableop_22_adam_m_conv2d_27_kernel:6E
+assignvariableop_23_adam_v_conv2d_27_kernel:67
)assignvariableop_24_adam_m_conv2d_27_bias:67
)assignvariableop_25_adam_v_conv2d_27_bias:6E
+assignvariableop_26_adam_m_conv2d_28_kernel:66E
+assignvariableop_27_adam_v_conv2d_28_kernel:667
)assignvariableop_28_adam_m_conv2d_28_bias:67
)assignvariableop_29_adam_v_conv2d_28_bias:6=
*assignvariableop_30_adam_m_dense_21_kernel:	�l=
*assignvariableop_31_adam_v_dense_21_kernel:	�l6
(assignvariableop_32_adam_m_dense_21_bias:l6
(assignvariableop_33_adam_v_dense_21_bias:l<
*assignvariableop_34_adam_m_dense_22_kernel:l<
*assignvariableop_35_adam_v_dense_22_kernel:l6
(assignvariableop_36_adam_m_dense_22_bias:6
(assignvariableop_37_adam_v_dense_22_bias:%
assignvariableop_38_total_1: %
assignvariableop_39_count_1: #
assignvariableop_40_total: #
assignvariableop_41_count: 
identity_43��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_10�AssignVariableOp_11�AssignVariableOp_12�AssignVariableOp_13�AssignVariableOp_14�AssignVariableOp_15�AssignVariableOp_16�AssignVariableOp_17�AssignVariableOp_18�AssignVariableOp_19�AssignVariableOp_2�AssignVariableOp_20�AssignVariableOp_21�AssignVariableOp_22�AssignVariableOp_23�AssignVariableOp_24�AssignVariableOp_25�AssignVariableOp_26�AssignVariableOp_27�AssignVariableOp_28�AssignVariableOp_29�AssignVariableOp_3�AssignVariableOp_30�AssignVariableOp_31�AssignVariableOp_32�AssignVariableOp_33�AssignVariableOp_34�AssignVariableOp_35�AssignVariableOp_36�AssignVariableOp_37�AssignVariableOp_38�AssignVariableOp_39�AssignVariableOp_4�AssignVariableOp_40�AssignVariableOp_41�AssignVariableOp_5�AssignVariableOp_6�AssignVariableOp_7�AssignVariableOp_8�AssignVariableOp_9�
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:+*
dtype0*�
value�B�+B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/19/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/20/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/21/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/22/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/23/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/24/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:+*
dtype0*i
value`B^+B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*�
_output_shapes�
�:::::::::::::::::::::::::::::::::::::::::::*9
dtypes/
-2+	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOpAssignVariableOp!assignvariableop_conv2d_25_kernelIdentity:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_1AssignVariableOp!assignvariableop_1_conv2d_25_biasIdentity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_2AssignVariableOp#assignvariableop_2_conv2d_26_kernelIdentity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_3AssignVariableOp!assignvariableop_3_conv2d_26_biasIdentity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_4AssignVariableOp#assignvariableop_4_conv2d_27_kernelIdentity_4:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_5AssignVariableOp!assignvariableop_5_conv2d_27_biasIdentity_5:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_6AssignVariableOp#assignvariableop_6_conv2d_28_kernelIdentity_6:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_7AssignVariableOp!assignvariableop_7_conv2d_28_biasIdentity_7:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_8AssignVariableOp"assignvariableop_8_dense_21_kernelIdentity_8:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_9AssignVariableOp assignvariableop_9_dense_21_biasIdentity_9:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_10AssignVariableOp#assignvariableop_10_dense_22_kernelIdentity_10:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_11AssignVariableOp!assignvariableop_11_dense_22_biasIdentity_11:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0	*
_output_shapes
:�
AssignVariableOp_12AssignVariableOpassignvariableop_12_iterationIdentity_12:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0	_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_13AssignVariableOp!assignvariableop_13_learning_rateIdentity_13:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_14AssignVariableOp+assignvariableop_14_adam_m_conv2d_25_kernelIdentity_14:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_15AssignVariableOp+assignvariableop_15_adam_v_conv2d_25_kernelIdentity_15:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_16AssignVariableOp)assignvariableop_16_adam_m_conv2d_25_biasIdentity_16:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_17AssignVariableOp)assignvariableop_17_adam_v_conv2d_25_biasIdentity_17:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_18AssignVariableOp+assignvariableop_18_adam_m_conv2d_26_kernelIdentity_18:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_19AssignVariableOp+assignvariableop_19_adam_v_conv2d_26_kernelIdentity_19:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_20AssignVariableOp)assignvariableop_20_adam_m_conv2d_26_biasIdentity_20:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_21AssignVariableOp)assignvariableop_21_adam_v_conv2d_26_biasIdentity_21:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_22AssignVariableOp+assignvariableop_22_adam_m_conv2d_27_kernelIdentity_22:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_23AssignVariableOp+assignvariableop_23_adam_v_conv2d_27_kernelIdentity_23:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_24AssignVariableOp)assignvariableop_24_adam_m_conv2d_27_biasIdentity_24:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_25AssignVariableOp)assignvariableop_25_adam_v_conv2d_27_biasIdentity_25:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_26AssignVariableOp+assignvariableop_26_adam_m_conv2d_28_kernelIdentity_26:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_27AssignVariableOp+assignvariableop_27_adam_v_conv2d_28_kernelIdentity_27:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_28AssignVariableOp)assignvariableop_28_adam_m_conv2d_28_biasIdentity_28:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_29AssignVariableOp)assignvariableop_29_adam_v_conv2d_28_biasIdentity_29:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_30AssignVariableOp*assignvariableop_30_adam_m_dense_21_kernelIdentity_30:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_31AssignVariableOp*assignvariableop_31_adam_v_dense_21_kernelIdentity_31:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_32AssignVariableOp(assignvariableop_32_adam_m_dense_21_biasIdentity_32:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_33AssignVariableOp(assignvariableop_33_adam_v_dense_21_biasIdentity_33:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_34AssignVariableOp*assignvariableop_34_adam_m_dense_22_kernelIdentity_34:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_35AssignVariableOp*assignvariableop_35_adam_v_dense_22_kernelIdentity_35:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_36AssignVariableOp(assignvariableop_36_adam_m_dense_22_biasIdentity_36:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_37AssignVariableOp(assignvariableop_37_adam_v_dense_22_biasIdentity_37:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_38AssignVariableOpassignvariableop_38_total_1Identity_38:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_39AssignVariableOpassignvariableop_39_count_1Identity_39:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_40AssignVariableOpassignvariableop_40_totalIdentity_40:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_41AssignVariableOpassignvariableop_41_countIdentity_41:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0Y
NoOpNoOp"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 �
Identity_42Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_43IdentityIdentity_42:output:0^NoOp_1*
T0*
_output_shapes
: �
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_43Identity_43:output:0*i
_input_shapesX
V: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2*
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
AssignVariableOp_1AssignVariableOp_12*
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
AssignVariableOp_2AssignVariableOp_22*
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
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_40AssignVariableOp_402*
AssignVariableOp_41AssignVariableOp_412(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_92$
AssignVariableOpAssignVariableOp:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
�
M
1__inference_max_pooling2d_9_layer_call_fn_1247987

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4������������������������������������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_max_pooling2d_9_layer_call_and_return_conditional_losses_1247215�
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
�
F__inference_conv2d_26_layer_call_and_return_conditional_losses_1247253

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:���������i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:���������w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
%__inference_signature_wrapper_1247712
conv2d_25_input!
unknown:
	unknown_0:#
	unknown_1:
	unknown_2:#
	unknown_3:6
	unknown_4:6#
	unknown_5:66
	unknown_6:6
	unknown_7:	�l
	unknown_8:l
	unknown_9:l

unknown_10:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallconv2d_25_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*.
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *+
f&R$
"__inference__wrapped_model_1247197o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:���������: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:` \
/
_output_shapes
:���������
)
_user_specified_nameconv2d_25_input
�
�
F__inference_conv2d_27_layer_call_and_return_conditional_losses_1247962

inputs8
conv2d_readvariableop_resource:6-
biasadd_readvariableop_resource:6
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:6*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������6*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:6*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������6X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:���������6i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:���������6w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�	
�
__inference_loss_fn_1_1248068L
:dense_22_kernel_regularizer_l2loss_readvariableop_resource:l
identity��1dense_22/kernel/Regularizer/L2Loss/ReadVariableOp�
1dense_22/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOp:dense_22_kernel_regularizer_l2loss_readvariableop_resource*
_output_shapes

:l*
dtype0�
"dense_22/kernel/Regularizer/L2LossL2Loss9dense_22/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: f
!dense_22/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
ף<�
dense_22/kernel/Regularizer/mulMul*dense_22/kernel/Regularizer/mul/x:output:0+dense_22/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: a
IdentityIdentity#dense_22/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: z
NoOpNoOp2^dense_22/kernel/Regularizer/L2Loss/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2f
1dense_22/kernel/Regularizer/L2Loss/ReadVariableOp1dense_22/kernel/Regularizer/L2Loss/ReadVariableOp
�
H
,__inference_flatten_10_layer_call_fn_1247997

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_flatten_10_layer_call_and_return_conditional_losses_1247301a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������6:W S
/
_output_shapes
:���������6
 
_user_specified_nameinputs
�
h
L__inference_max_pooling2d_9_layer_call_and_return_conditional_losses_1247215

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�H
�

J__inference_sequential_12_layer_call_and_return_conditional_losses_1247835

inputsB
(conv2d_25_conv2d_readvariableop_resource:7
)conv2d_25_biasadd_readvariableop_resource:B
(conv2d_26_conv2d_readvariableop_resource:7
)conv2d_26_biasadd_readvariableop_resource:B
(conv2d_27_conv2d_readvariableop_resource:67
)conv2d_27_biasadd_readvariableop_resource:6B
(conv2d_28_conv2d_readvariableop_resource:667
)conv2d_28_biasadd_readvariableop_resource:6:
'dense_21_matmul_readvariableop_resource:	�l6
(dense_21_biasadd_readvariableop_resource:l9
'dense_22_matmul_readvariableop_resource:l6
(dense_22_biasadd_readvariableop_resource:
identity�� conv2d_25/BiasAdd/ReadVariableOp�conv2d_25/Conv2D/ReadVariableOp� conv2d_26/BiasAdd/ReadVariableOp�conv2d_26/Conv2D/ReadVariableOp� conv2d_27/BiasAdd/ReadVariableOp�conv2d_27/Conv2D/ReadVariableOp� conv2d_28/BiasAdd/ReadVariableOp�conv2d_28/Conv2D/ReadVariableOp�dense_21/BiasAdd/ReadVariableOp�dense_21/MatMul/ReadVariableOp�1dense_21/kernel/Regularizer/L2Loss/ReadVariableOp�dense_22/BiasAdd/ReadVariableOp�dense_22/MatMul/ReadVariableOp�1dense_22/kernel/Regularizer/L2Loss/ReadVariableOp�
conv2d_25/Conv2D/ReadVariableOpReadVariableOp(conv2d_25_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
conv2d_25/Conv2DConv2Dinputs'conv2d_25/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
paddingSAME*
strides
�
 conv2d_25/BiasAdd/ReadVariableOpReadVariableOp)conv2d_25_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
conv2d_25/BiasAddBiasAddconv2d_25/Conv2D:output:0(conv2d_25/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������l
conv2d_25/ReluReluconv2d_25/BiasAdd:output:0*
T0*/
_output_shapes
:����������
conv2d_26/Conv2D/ReadVariableOpReadVariableOp(conv2d_26_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
conv2d_26/Conv2DConv2Dconv2d_25/Relu:activations:0'conv2d_26/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
paddingSAME*
strides
�
 conv2d_26/BiasAdd/ReadVariableOpReadVariableOp)conv2d_26_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
conv2d_26/BiasAddBiasAddconv2d_26/Conv2D:output:0(conv2d_26/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������l
conv2d_26/ReluReluconv2d_26/BiasAdd:output:0*
T0*/
_output_shapes
:����������
max_pooling2d_8/MaxPoolMaxPoolconv2d_26/Relu:activations:0*/
_output_shapes
:���������*
ksize
*
paddingVALID*
strides
�
conv2d_27/Conv2D/ReadVariableOpReadVariableOp(conv2d_27_conv2d_readvariableop_resource*&
_output_shapes
:6*
dtype0�
conv2d_27/Conv2DConv2D max_pooling2d_8/MaxPool:output:0'conv2d_27/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������6*
paddingSAME*
strides
�
 conv2d_27/BiasAdd/ReadVariableOpReadVariableOp)conv2d_27_biasadd_readvariableop_resource*
_output_shapes
:6*
dtype0�
conv2d_27/BiasAddBiasAddconv2d_27/Conv2D:output:0(conv2d_27/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������6l
conv2d_27/ReluReluconv2d_27/BiasAdd:output:0*
T0*/
_output_shapes
:���������6�
conv2d_28/Conv2D/ReadVariableOpReadVariableOp(conv2d_28_conv2d_readvariableop_resource*&
_output_shapes
:66*
dtype0�
conv2d_28/Conv2DConv2Dconv2d_27/Relu:activations:0'conv2d_28/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������6*
paddingSAME*
strides
�
 conv2d_28/BiasAdd/ReadVariableOpReadVariableOp)conv2d_28_biasadd_readvariableop_resource*
_output_shapes
:6*
dtype0�
conv2d_28/BiasAddBiasAddconv2d_28/Conv2D:output:0(conv2d_28/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������6l
conv2d_28/ReluReluconv2d_28/BiasAdd:output:0*
T0*/
_output_shapes
:���������6�
max_pooling2d_9/MaxPoolMaxPoolconv2d_28/Relu:activations:0*/
_output_shapes
:���������6*
ksize
*
paddingVALID*
strides
a
flatten_10/ConstConst*
_output_shapes
:*
dtype0*
valueB"�����  �
flatten_10/ReshapeReshape max_pooling2d_9/MaxPool:output:0flatten_10/Const:output:0*
T0*(
_output_shapes
:�����������
dense_21/MatMul/ReadVariableOpReadVariableOp'dense_21_matmul_readvariableop_resource*
_output_shapes
:	�l*
dtype0�
dense_21/MatMulMatMulflatten_10/Reshape:output:0&dense_21/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������l�
dense_21/BiasAdd/ReadVariableOpReadVariableOp(dense_21_biasadd_readvariableop_resource*
_output_shapes
:l*
dtype0�
dense_21/BiasAddBiasAdddense_21/MatMul:product:0'dense_21/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������lb
dense_21/ReluReludense_21/BiasAdd:output:0*
T0*'
_output_shapes
:���������l�
dense_22/MatMul/ReadVariableOpReadVariableOp'dense_22_matmul_readvariableop_resource*
_output_shapes

:l*
dtype0�
dense_22/MatMulMatMuldense_21/Relu:activations:0&dense_22/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
dense_22/BiasAdd/ReadVariableOpReadVariableOp(dense_22_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
dense_22/BiasAddBiasAdddense_22/MatMul:product:0'dense_22/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
1dense_21/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOp'dense_21_matmul_readvariableop_resource*
_output_shapes
:	�l*
dtype0�
"dense_21/kernel/Regularizer/L2LossL2Loss9dense_21/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: f
!dense_21/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
ף<�
dense_21/kernel/Regularizer/mulMul*dense_21/kernel/Regularizer/mul/x:output:0+dense_21/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: �
1dense_22/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOp'dense_22_matmul_readvariableop_resource*
_output_shapes

:l*
dtype0�
"dense_22/kernel/Regularizer/L2LossL2Loss9dense_22/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: f
!dense_22/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
ף<�
dense_22/kernel/Regularizer/mulMul*dense_22/kernel/Regularizer/mul/x:output:0+dense_22/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: h
IdentityIdentitydense_22/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp!^conv2d_25/BiasAdd/ReadVariableOp ^conv2d_25/Conv2D/ReadVariableOp!^conv2d_26/BiasAdd/ReadVariableOp ^conv2d_26/Conv2D/ReadVariableOp!^conv2d_27/BiasAdd/ReadVariableOp ^conv2d_27/Conv2D/ReadVariableOp!^conv2d_28/BiasAdd/ReadVariableOp ^conv2d_28/Conv2D/ReadVariableOp ^dense_21/BiasAdd/ReadVariableOp^dense_21/MatMul/ReadVariableOp2^dense_21/kernel/Regularizer/L2Loss/ReadVariableOp ^dense_22/BiasAdd/ReadVariableOp^dense_22/MatMul/ReadVariableOp2^dense_22/kernel/Regularizer/L2Loss/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:���������: : : : : : : : : : : : 2D
 conv2d_25/BiasAdd/ReadVariableOp conv2d_25/BiasAdd/ReadVariableOp2B
conv2d_25/Conv2D/ReadVariableOpconv2d_25/Conv2D/ReadVariableOp2D
 conv2d_26/BiasAdd/ReadVariableOp conv2d_26/BiasAdd/ReadVariableOp2B
conv2d_26/Conv2D/ReadVariableOpconv2d_26/Conv2D/ReadVariableOp2D
 conv2d_27/BiasAdd/ReadVariableOp conv2d_27/BiasAdd/ReadVariableOp2B
conv2d_27/Conv2D/ReadVariableOpconv2d_27/Conv2D/ReadVariableOp2D
 conv2d_28/BiasAdd/ReadVariableOp conv2d_28/BiasAdd/ReadVariableOp2B
conv2d_28/Conv2D/ReadVariableOpconv2d_28/Conv2D/ReadVariableOp2B
dense_21/BiasAdd/ReadVariableOpdense_21/BiasAdd/ReadVariableOp2@
dense_21/MatMul/ReadVariableOpdense_21/MatMul/ReadVariableOp2f
1dense_21/kernel/Regularizer/L2Loss/ReadVariableOp1dense_21/kernel/Regularizer/L2Loss/ReadVariableOp2B
dense_22/BiasAdd/ReadVariableOpdense_22/BiasAdd/ReadVariableOp2@
dense_22/MatMul/ReadVariableOpdense_22/MatMul/ReadVariableOp2f
1dense_22/kernel/Regularizer/L2Loss/ReadVariableOp1dense_22/kernel/Regularizer/L2Loss/ReadVariableOp:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
F__inference_conv2d_25_layer_call_and_return_conditional_losses_1247236

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:���������i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:���������w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
F__inference_conv2d_28_layer_call_and_return_conditional_losses_1247982

inputs8
conv2d_readvariableop_resource:66-
biasadd_readvariableop_resource:6
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:66*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������6*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:6*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������6X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:���������6i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:���������6w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������6: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������6
 
_user_specified_nameinputs
�
�
F__inference_conv2d_25_layer_call_and_return_conditional_losses_1247912

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:���������i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:���������w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
+__inference_conv2d_25_layer_call_fn_1247901

inputs!
unknown:
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_conv2d_25_layer_call_and_return_conditional_losses_1247236w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
F__inference_conv2d_28_layer_call_and_return_conditional_losses_1247288

inputs8
conv2d_readvariableop_resource:66-
biasadd_readvariableop_resource:6
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:66*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������6*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:6*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������6X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:���������6i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:���������6w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������6: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������6
 
_user_specified_nameinputs
�
�
E__inference_dense_22_layer_call_and_return_conditional_losses_1247338

inputs0
matmul_readvariableop_resource:l-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�1dense_22/kernel/Regularizer/L2Loss/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:l*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
1dense_22/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:l*
dtype0�
"dense_22/kernel/Regularizer/L2LossL2Loss9dense_22/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: f
!dense_22/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
ף<�
dense_22/kernel/Regularizer/mulMul*dense_22/kernel/Regularizer/mul/x:output:0+dense_22/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: _
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp2^dense_22/kernel/Regularizer/L2Loss/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������l: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2f
1dense_22/kernel/Regularizer/L2Loss/ReadVariableOp1dense_22/kernel/Regularizer/L2Loss/ReadVariableOp:O K
'
_output_shapes
:���������l
 
_user_specified_nameinputs
�
�
*__inference_dense_21_layer_call_fn_1248012

inputs
unknown:	�l
	unknown_0:l
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������l*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_dense_21_layer_call_and_return_conditional_losses_1247318o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������l`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
/__inference_sequential_12_layer_call_fn_1247749

inputs!
unknown:
	unknown_0:#
	unknown_1:
	unknown_2:#
	unknown_3:6
	unknown_4:6#
	unknown_5:66
	unknown_6:6
	unknown_7:	�l
	unknown_8:l
	unknown_9:l

unknown_10:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*.
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_sequential_12_layer_call_and_return_conditional_losses_1247446o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:���������: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
/__inference_sequential_12_layer_call_fn_1247778

inputs!
unknown:
	unknown_0:#
	unknown_1:
	unknown_2:#
	unknown_3:6
	unknown_4:6#
	unknown_5:66
	unknown_6:6
	unknown_7:	�l
	unknown_8:l
	unknown_9:l

unknown_10:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*.
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_sequential_12_layer_call_and_return_conditional_losses_1247520o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:���������: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs"�
L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serving_default�
S
conv2d_25_input@
!serving_default_conv2d_25_input:0���������<
dense_220
StatefulPartitionedCall:0���������tensorflow/serving/predict:��
�
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer-2
layer_with_weights-2
layer-3
layer_with_weights-3
layer-4
layer-5
layer-6
layer_with_weights-4
layer-7
	layer_with_weights-5
	layer-8

	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures"
_tf_keras_sequential
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
bias
 _jit_compiled_convolution_op"
_tf_keras_layer
�
	variables
trainable_variables
regularization_losses
	keras_api
 __call__
*!&call_and_return_all_conditional_losses

"kernel
#bias
 $_jit_compiled_convolution_op"
_tf_keras_layer
�
%	variables
&trainable_variables
'regularization_losses
(	keras_api
)__call__
**&call_and_return_all_conditional_losses"
_tf_keras_layer
�
+	variables
,trainable_variables
-regularization_losses
.	keras_api
/__call__
*0&call_and_return_all_conditional_losses

1kernel
2bias
 3_jit_compiled_convolution_op"
_tf_keras_layer
�
4	variables
5trainable_variables
6regularization_losses
7	keras_api
8__call__
*9&call_and_return_all_conditional_losses

:kernel
;bias
 <_jit_compiled_convolution_op"
_tf_keras_layer
�
=	variables
>trainable_variables
?regularization_losses
@	keras_api
A__call__
*B&call_and_return_all_conditional_losses"
_tf_keras_layer
�
C	variables
Dtrainable_variables
Eregularization_losses
F	keras_api
G__call__
*H&call_and_return_all_conditional_losses"
_tf_keras_layer
�
I	variables
Jtrainable_variables
Kregularization_losses
L	keras_api
M__call__
*N&call_and_return_all_conditional_losses

Okernel
Pbias"
_tf_keras_layer
�
Q	variables
Rtrainable_variables
Sregularization_losses
T	keras_api
U__call__
*V&call_and_return_all_conditional_losses

Wkernel
Xbias"
_tf_keras_layer
v
0
1
"2
#3
14
25
:6
;7
O8
P9
W10
X11"
trackable_list_wrapper
v
0
1
"2
#3
14
25
:6
;7
O8
P9
W10
X11"
trackable_list_wrapper
.
Y0
Z1"
trackable_list_wrapper
�
[non_trainable_variables

\layers
]metrics
^layer_regularization_losses
_layer_metrics

	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�
`trace_0
atrace_1
btrace_2
ctrace_32�
/__inference_sequential_12_layer_call_fn_1247473
/__inference_sequential_12_layer_call_fn_1247547
/__inference_sequential_12_layer_call_fn_1247749
/__inference_sequential_12_layer_call_fn_1247778�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z`trace_0zatrace_1zbtrace_2zctrace_3
�
dtrace_0
etrace_1
ftrace_2
gtrace_32�
J__inference_sequential_12_layer_call_and_return_conditional_losses_1247353
J__inference_sequential_12_layer_call_and_return_conditional_losses_1247398
J__inference_sequential_12_layer_call_and_return_conditional_losses_1247835
J__inference_sequential_12_layer_call_and_return_conditional_losses_1247892�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zdtrace_0zetrace_1zftrace_2zgtrace_3
�B�
"__inference__wrapped_model_1247197conv2d_25_input"�
���
FullArgSpec
args� 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�
h
_variables
i_iterations
j_learning_rate
k_index_dict
l
_momentums
m_velocities
n_update_step_xla"
experimentalOptimizer
,
oserving_default"
signature_map
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
pnon_trainable_variables

qlayers
rmetrics
slayer_regularization_losses
tlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�
utrace_02�
+__inference_conv2d_25_layer_call_fn_1247901�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zutrace_0
�
vtrace_02�
F__inference_conv2d_25_layer_call_and_return_conditional_losses_1247912�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zvtrace_0
*:(2conv2d_25/kernel
:2conv2d_25/bias
�2��
���
FullArgSpec
args�
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
.
"0
#1"
trackable_list_wrapper
.
"0
#1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
wnon_trainable_variables

xlayers
ymetrics
zlayer_regularization_losses
{layer_metrics
	variables
trainable_variables
regularization_losses
 __call__
*!&call_and_return_all_conditional_losses
&!"call_and_return_conditional_losses"
_generic_user_object
�
|trace_02�
+__inference_conv2d_26_layer_call_fn_1247921�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z|trace_0
�
}trace_02�
F__inference_conv2d_26_layer_call_and_return_conditional_losses_1247932�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z}trace_0
*:(2conv2d_26/kernel
:2conv2d_26/bias
�2��
���
FullArgSpec
args�
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
~non_trainable_variables

layers
�metrics
 �layer_regularization_losses
�layer_metrics
%	variables
&trainable_variables
'regularization_losses
)__call__
**&call_and_return_all_conditional_losses
&*"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
1__inference_max_pooling2d_8_layer_call_fn_1247937�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
L__inference_max_pooling2d_8_layer_call_and_return_conditional_losses_1247942�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
.
10
21"
trackable_list_wrapper
.
10
21"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
+	variables
,trainable_variables
-regularization_losses
/__call__
*0&call_and_return_all_conditional_losses
&0"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
+__inference_conv2d_27_layer_call_fn_1247951�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
F__inference_conv2d_27_layer_call_and_return_conditional_losses_1247962�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
*:(62conv2d_27/kernel
:62conv2d_27/bias
�2��
���
FullArgSpec
args�
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
.
:0
;1"
trackable_list_wrapper
.
:0
;1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
4	variables
5trainable_variables
6regularization_losses
8__call__
*9&call_and_return_all_conditional_losses
&9"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
+__inference_conv2d_28_layer_call_fn_1247971�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
F__inference_conv2d_28_layer_call_and_return_conditional_losses_1247982�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
*:(662conv2d_28/kernel
:62conv2d_28/bias
�2��
���
FullArgSpec
args�
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
=	variables
>trainable_variables
?regularization_losses
A__call__
*B&call_and_return_all_conditional_losses
&B"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
1__inference_max_pooling2d_9_layer_call_fn_1247987�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
L__inference_max_pooling2d_9_layer_call_and_return_conditional_losses_1247992�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
C	variables
Dtrainable_variables
Eregularization_losses
G__call__
*H&call_and_return_all_conditional_losses
&H"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
,__inference_flatten_10_layer_call_fn_1247997�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
G__inference_flatten_10_layer_call_and_return_conditional_losses_1248003�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
.
O0
P1"
trackable_list_wrapper
.
O0
P1"
trackable_list_wrapper
'
Y0"
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
I	variables
Jtrainable_variables
Kregularization_losses
M__call__
*N&call_and_return_all_conditional_losses
&N"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
*__inference_dense_21_layer_call_fn_1248012�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
E__inference_dense_21_layer_call_and_return_conditional_losses_1248027�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
": 	�l2dense_21/kernel
:l2dense_21/bias
.
W0
X1"
trackable_list_wrapper
.
W0
X1"
trackable_list_wrapper
'
Z0"
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
Q	variables
Rtrainable_variables
Sregularization_losses
U__call__
*V&call_and_return_all_conditional_losses
&V"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
*__inference_dense_22_layer_call_fn_1248036�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
E__inference_dense_22_layer_call_and_return_conditional_losses_1248050�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
!:l2dense_22/kernel
:2dense_22/bias
�
�trace_02�
__inference_loss_fn_0_1248059�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� z�trace_0
�
�trace_02�
__inference_loss_fn_1_1248068�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� z�trace_0
 "
trackable_list_wrapper
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
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
/__inference_sequential_12_layer_call_fn_1247473conv2d_25_input"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
/__inference_sequential_12_layer_call_fn_1247547conv2d_25_input"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
/__inference_sequential_12_layer_call_fn_1247749inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
/__inference_sequential_12_layer_call_fn_1247778inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
J__inference_sequential_12_layer_call_and_return_conditional_losses_1247353conv2d_25_input"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
J__inference_sequential_12_layer_call_and_return_conditional_losses_1247398conv2d_25_input"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
J__inference_sequential_12_layer_call_and_return_conditional_losses_1247835inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
J__inference_sequential_12_layer_call_and_return_conditional_losses_1247892inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�
i0
�1
�2
�3
�4
�5
�6
�7
�8
�9
�10
�11
�12
�13
�14
�15
�16
�17
�18
�19
�20
�21
�22
�23
�24"
trackable_list_wrapper
:	 2	iteration
: 2learning_rate
 "
trackable_dict_wrapper
�
�0
�1
�2
�3
�4
�5
�6
�7
�8
�9
�10
�11"
trackable_list_wrapper
�
�0
�1
�2
�3
�4
�5
�6
�7
�8
�9
�10
�11"
trackable_list_wrapper
�2��
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
�B�
%__inference_signature_wrapper_1247712conv2d_25_input"�
���
FullArgSpec
args� 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
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
�B�
+__inference_conv2d_25_layer_call_fn_1247901inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
F__inference_conv2d_25_layer_call_and_return_conditional_losses_1247912inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
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
�B�
+__inference_conv2d_26_layer_call_fn_1247921inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
F__inference_conv2d_26_layer_call_and_return_conditional_losses_1247932inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
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
�B�
1__inference_max_pooling2d_8_layer_call_fn_1247937inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
L__inference_max_pooling2d_8_layer_call_and_return_conditional_losses_1247942inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
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
�B�
+__inference_conv2d_27_layer_call_fn_1247951inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
F__inference_conv2d_27_layer_call_and_return_conditional_losses_1247962inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
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
�B�
+__inference_conv2d_28_layer_call_fn_1247971inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
F__inference_conv2d_28_layer_call_and_return_conditional_losses_1247982inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
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
�B�
1__inference_max_pooling2d_9_layer_call_fn_1247987inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
L__inference_max_pooling2d_9_layer_call_and_return_conditional_losses_1247992inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
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
�B�
,__inference_flatten_10_layer_call_fn_1247997inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
G__inference_flatten_10_layer_call_and_return_conditional_losses_1248003inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
Y0"
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
*__inference_dense_21_layer_call_fn_1248012inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
E__inference_dense_21_layer_call_and_return_conditional_losses_1248027inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
Z0"
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
*__inference_dense_22_layer_call_fn_1248036inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
E__inference_dense_22_layer_call_and_return_conditional_losses_1248050inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
__inference_loss_fn_0_1248059"�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� 
�B�
__inference_loss_fn_1_1248068"�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� 
R
�	variables
�	keras_api

�total

�count"
_tf_keras_metric
c
�	variables
�	keras_api

�total

�count
�
_fn_kwargs"
_tf_keras_metric
/:-2Adam/m/conv2d_25/kernel
/:-2Adam/v/conv2d_25/kernel
!:2Adam/m/conv2d_25/bias
!:2Adam/v/conv2d_25/bias
/:-2Adam/m/conv2d_26/kernel
/:-2Adam/v/conv2d_26/kernel
!:2Adam/m/conv2d_26/bias
!:2Adam/v/conv2d_26/bias
/:-62Adam/m/conv2d_27/kernel
/:-62Adam/v/conv2d_27/kernel
!:62Adam/m/conv2d_27/bias
!:62Adam/v/conv2d_27/bias
/:-662Adam/m/conv2d_28/kernel
/:-662Adam/v/conv2d_28/kernel
!:62Adam/m/conv2d_28/bias
!:62Adam/v/conv2d_28/bias
':%	�l2Adam/m/dense_21/kernel
':%	�l2Adam/v/dense_21/kernel
 :l2Adam/m/dense_21/bias
 :l2Adam/v/dense_21/bias
&:$l2Adam/m/dense_22/kernel
&:$l2Adam/v/dense_22/kernel
 :2Adam/m/dense_22/bias
 :2Adam/v/dense_22/bias
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
:  (2total
:  (2count
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper�
"__inference__wrapped_model_1247197�"#12:;OPWX@�=
6�3
1�.
conv2d_25_input���������
� "3�0
.
dense_22"�
dense_22����������
F__inference_conv2d_25_layer_call_and_return_conditional_losses_1247912s7�4
-�*
(�%
inputs���������
� "4�1
*�'
tensor_0���������
� �
+__inference_conv2d_25_layer_call_fn_1247901h7�4
-�*
(�%
inputs���������
� ")�&
unknown����������
F__inference_conv2d_26_layer_call_and_return_conditional_losses_1247932s"#7�4
-�*
(�%
inputs���������
� "4�1
*�'
tensor_0���������
� �
+__inference_conv2d_26_layer_call_fn_1247921h"#7�4
-�*
(�%
inputs���������
� ")�&
unknown����������
F__inference_conv2d_27_layer_call_and_return_conditional_losses_1247962s127�4
-�*
(�%
inputs���������
� "4�1
*�'
tensor_0���������6
� �
+__inference_conv2d_27_layer_call_fn_1247951h127�4
-�*
(�%
inputs���������
� ")�&
unknown���������6�
F__inference_conv2d_28_layer_call_and_return_conditional_losses_1247982s:;7�4
-�*
(�%
inputs���������6
� "4�1
*�'
tensor_0���������6
� �
+__inference_conv2d_28_layer_call_fn_1247971h:;7�4
-�*
(�%
inputs���������6
� ")�&
unknown���������6�
E__inference_dense_21_layer_call_and_return_conditional_losses_1248027dOP0�-
&�#
!�
inputs����������
� ",�)
"�
tensor_0���������l
� �
*__inference_dense_21_layer_call_fn_1248012YOP0�-
&�#
!�
inputs����������
� "!�
unknown���������l�
E__inference_dense_22_layer_call_and_return_conditional_losses_1248050cWX/�,
%�"
 �
inputs���������l
� ",�)
"�
tensor_0���������
� �
*__inference_dense_22_layer_call_fn_1248036XWX/�,
%�"
 �
inputs���������l
� "!�
unknown����������
G__inference_flatten_10_layer_call_and_return_conditional_losses_1248003h7�4
-�*
(�%
inputs���������6
� "-�*
#� 
tensor_0����������
� �
,__inference_flatten_10_layer_call_fn_1247997]7�4
-�*
(�%
inputs���������6
� ""�
unknown����������E
__inference_loss_fn_0_1248059$O�

� 
� "�
unknown E
__inference_loss_fn_1_1248068$W�

� 
� "�
unknown �
L__inference_max_pooling2d_8_layer_call_and_return_conditional_losses_1247942�R�O
H�E
C�@
inputs4������������������������������������
� "O�L
E�B
tensor_04������������������������������������
� �
1__inference_max_pooling2d_8_layer_call_fn_1247937�R�O
H�E
C�@
inputs4������������������������������������
� "D�A
unknown4�������������������������������������
L__inference_max_pooling2d_9_layer_call_and_return_conditional_losses_1247992�R�O
H�E
C�@
inputs4������������������������������������
� "O�L
E�B
tensor_04������������������������������������
� �
1__inference_max_pooling2d_9_layer_call_fn_1247987�R�O
H�E
C�@
inputs4������������������������������������
� "D�A
unknown4�������������������������������������
J__inference_sequential_12_layer_call_and_return_conditional_losses_1247353�"#12:;OPWXH�E
>�;
1�.
conv2d_25_input���������
p

 
� ",�)
"�
tensor_0���������
� �
J__inference_sequential_12_layer_call_and_return_conditional_losses_1247398�"#12:;OPWXH�E
>�;
1�.
conv2d_25_input���������
p 

 
� ",�)
"�
tensor_0���������
� �
J__inference_sequential_12_layer_call_and_return_conditional_losses_1247835}"#12:;OPWX?�<
5�2
(�%
inputs���������
p

 
� ",�)
"�
tensor_0���������
� �
J__inference_sequential_12_layer_call_and_return_conditional_losses_1247892}"#12:;OPWX?�<
5�2
(�%
inputs���������
p 

 
� ",�)
"�
tensor_0���������
� �
/__inference_sequential_12_layer_call_fn_1247473{"#12:;OPWXH�E
>�;
1�.
conv2d_25_input���������
p

 
� "!�
unknown����������
/__inference_sequential_12_layer_call_fn_1247547{"#12:;OPWXH�E
>�;
1�.
conv2d_25_input���������
p 

 
� "!�
unknown����������
/__inference_sequential_12_layer_call_fn_1247749r"#12:;OPWX?�<
5�2
(�%
inputs���������
p

 
� "!�
unknown����������
/__inference_sequential_12_layer_call_fn_1247778r"#12:;OPWX?�<
5�2
(�%
inputs���������
p 

 
� "!�
unknown����������
%__inference_signature_wrapper_1247712�"#12:;OPWXS�P
� 
I�F
D
conv2d_25_input1�.
conv2d_25_input���������"3�0
.
dense_22"�
dense_22���������