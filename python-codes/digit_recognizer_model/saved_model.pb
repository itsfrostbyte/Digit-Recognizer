��
��
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
L

StringJoin
inputs*N

output"

Nint("
	separatorstring 
�
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �"serve*2.13.02v2.13.0-rc2-7-g1cb1a030a628��
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
v
Adam/v/out/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:
* 
shared_nameAdam/v/out/bias
o
#Adam/v/out/bias/Read/ReadVariableOpReadVariableOpAdam/v/out/bias*
_output_shapes
:
*
dtype0
v
Adam/m/out/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:
* 
shared_nameAdam/m/out/bias
o
#Adam/m/out/bias/Read/ReadVariableOpReadVariableOpAdam/m/out/bias*
_output_shapes
:
*
dtype0

Adam/v/out/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�
*"
shared_nameAdam/v/out/kernel
x
%Adam/v/out/kernel/Read/ReadVariableOpReadVariableOpAdam/v/out/kernel*
_output_shapes
:	�
*
dtype0

Adam/m/out/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�
*"
shared_nameAdam/m/out/kernel
x
%Adam/m/out/kernel/Read/ReadVariableOpReadVariableOpAdam/m/out/kernel*
_output_shapes
:	�
*
dtype0
u
Adam/v/l3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*
shared_nameAdam/v/l3/bias
n
"Adam/v/l3/bias/Read/ReadVariableOpReadVariableOpAdam/v/l3/bias*
_output_shapes	
:�*
dtype0
u
Adam/m/l3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*
shared_nameAdam/m/l3/bias
n
"Adam/m/l3/bias/Read/ReadVariableOpReadVariableOpAdam/m/l3/bias*
_output_shapes	
:�*
dtype0
~
Adam/v/l3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*!
shared_nameAdam/v/l3/kernel
w
$Adam/v/l3/kernel/Read/ReadVariableOpReadVariableOpAdam/v/l3/kernel* 
_output_shapes
:
��*
dtype0
~
Adam/m/l3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*!
shared_nameAdam/m/l3/kernel
w
$Adam/m/l3/kernel/Read/ReadVariableOpReadVariableOpAdam/m/l3/kernel* 
_output_shapes
:
��*
dtype0
u
Adam/v/l2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*
shared_nameAdam/v/l2/bias
n
"Adam/v/l2/bias/Read/ReadVariableOpReadVariableOpAdam/v/l2/bias*
_output_shapes	
:�*
dtype0
u
Adam/m/l2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*
shared_nameAdam/m/l2/bias
n
"Adam/m/l2/bias/Read/ReadVariableOpReadVariableOpAdam/m/l2/bias*
_output_shapes	
:�*
dtype0
~
Adam/v/l2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*!
shared_nameAdam/v/l2/kernel
w
$Adam/v/l2/kernel/Read/ReadVariableOpReadVariableOpAdam/v/l2/kernel* 
_output_shapes
:
��*
dtype0
~
Adam/m/l2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*!
shared_nameAdam/m/l2/kernel
w
$Adam/m/l2/kernel/Read/ReadVariableOpReadVariableOpAdam/m/l2/kernel* 
_output_shapes
:
��*
dtype0
u
Adam/v/l1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*
shared_nameAdam/v/l1/bias
n
"Adam/v/l1/bias/Read/ReadVariableOpReadVariableOpAdam/v/l1/bias*
_output_shapes	
:�*
dtype0
u
Adam/m/l1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*
shared_nameAdam/m/l1/bias
n
"Adam/m/l1/bias/Read/ReadVariableOpReadVariableOpAdam/m/l1/bias*
_output_shapes	
:�*
dtype0
~
Adam/v/l1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*!
shared_nameAdam/v/l1/kernel
w
$Adam/v/l1/kernel/Read/ReadVariableOpReadVariableOpAdam/v/l1/kernel* 
_output_shapes
:
��*
dtype0
~
Adam/m/l1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*!
shared_nameAdam/m/l1/kernel
w
$Adam/m/l1/kernel/Read/ReadVariableOpReadVariableOpAdam/m/l1/kernel* 
_output_shapes
:
��*
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
h
out/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*
shared_name
out/bias
a
out/bias/Read/ReadVariableOpReadVariableOpout/bias*
_output_shapes
:
*
dtype0
q

out/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�
*
shared_name
out/kernel
j
out/kernel/Read/ReadVariableOpReadVariableOp
out/kernel*
_output_shapes
:	�
*
dtype0
g
l3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*
shared_name	l3/bias
`
l3/bias/Read/ReadVariableOpReadVariableOpl3/bias*
_output_shapes	
:�*
dtype0
p
	l3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*
shared_name	l3/kernel
i
l3/kernel/Read/ReadVariableOpReadVariableOp	l3/kernel* 
_output_shapes
:
��*
dtype0
g
l2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*
shared_name	l2/bias
`
l2/bias/Read/ReadVariableOpReadVariableOpl2/bias*
_output_shapes	
:�*
dtype0
p
	l2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*
shared_name	l2/kernel
i
l2/kernel/Read/ReadVariableOpReadVariableOp	l2/kernel* 
_output_shapes
:
��*
dtype0
g
l1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*
shared_name	l1/bias
`
l1/bias/Read/ReadVariableOpReadVariableOpl1/bias*
_output_shapes	
:�*
dtype0
p
	l1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*
shared_name	l1/kernel
i
l1/kernel/Read/ReadVariableOpReadVariableOp	l1/kernel* 
_output_shapes
:
��*
dtype0
|
serving_default_input_1Placeholder*(
_output_shapes
:����������*
dtype0*
shape:����������
�
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_1	l1/kernell1/bias	l2/kernell2/bias	l3/kernell3/bias
out/kernelout/bias*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *,
f'R%
#__inference_signature_wrapper_24505

NoOpNoOp
�1
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*�0
value�0B�0 B�0
�
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
layer_with_weights-3
layer-3
	variables
trainable_variables
regularization_losses
	keras_api
	__call__
*
&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures*
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
bias*
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
bias*
�
	variables
trainable_variables
 regularization_losses
!	keras_api
"__call__
*#&call_and_return_all_conditional_losses

$kernel
%bias*
�
&	variables
'trainable_variables
(regularization_losses
)	keras_api
*__call__
*+&call_and_return_all_conditional_losses

,kernel
-bias*
<
0
1
2
3
$4
%5
,6
-7*
<
0
1
2
3
$4
%5
,6
-7*
* 
�
.non_trainable_variables

/layers
0metrics
1layer_regularization_losses
2layer_metrics
	variables
trainable_variables
regularization_losses
	__call__
_default_save_signature
*
&call_and_return_all_conditional_losses
&
"call_and_return_conditional_losses*

3trace_0
4trace_1* 

5trace_0
6trace_1* 
* 
�
7
_variables
8_iterations
9_learning_rate
:_index_dict
;
_momentums
<_velocities
=_update_step_xla*

>serving_default* 

0
1*

0
1*
* 
�
?non_trainable_variables

@layers
Ametrics
Blayer_regularization_losses
Clayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

Dtrace_0* 

Etrace_0* 
YS
VARIABLE_VALUE	l1/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEl1/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*

0
1*

0
1*
* 
�
Fnon_trainable_variables

Glayers
Hmetrics
Ilayer_regularization_losses
Jlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

Ktrace_0* 

Ltrace_0* 
YS
VARIABLE_VALUE	l2/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEl2/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*

$0
%1*

$0
%1*
* 
�
Mnon_trainable_variables

Nlayers
Ometrics
Player_regularization_losses
Qlayer_metrics
	variables
trainable_variables
 regularization_losses
"__call__
*#&call_and_return_all_conditional_losses
&#"call_and_return_conditional_losses*

Rtrace_0* 

Strace_0* 
YS
VARIABLE_VALUE	l3/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEl3/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*

,0
-1*

,0
-1*
* 
�
Tnon_trainable_variables

Ulayers
Vmetrics
Wlayer_regularization_losses
Xlayer_metrics
&	variables
'trainable_variables
(regularization_losses
*__call__
*+&call_and_return_all_conditional_losses
&+"call_and_return_conditional_losses*

Ytrace_0* 

Ztrace_0* 
ZT
VARIABLE_VALUE
out/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE*
VP
VARIABLE_VALUEout/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
 
0
1
2
3*

[0*
* 
* 
* 
* 
* 
* 
�
80
\1
]2
^3
_4
`5
a6
b7
c8
d9
e10
f11
g12
h13
i14
j15
k16*
SM
VARIABLE_VALUE	iteration0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUElearning_rate3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
<
\0
^1
`2
b3
d4
f5
h6
j7*
<
]0
_1
a2
c3
e4
g5
i6
k7*
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
8
l	variables
m	keras_api
	ntotal
	ocount*
[U
VARIABLE_VALUEAdam/m/l1/kernel1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEAdam/v/l1/kernel1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUEAdam/m/l1/bias1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUEAdam/v/l1/bias1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEAdam/m/l2/kernel1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEAdam/v/l2/kernel1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUEAdam/m/l2/bias1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUEAdam/v/l2/bias1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEAdam/m/l3/kernel1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEAdam/v/l3/kernel2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEAdam/m/l3/bias2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEAdam/v/l3/bias2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEAdam/m/out/kernel2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEAdam/v/out/kernel2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEAdam/m/out/bias2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEAdam/v/out/bias2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUE*

n0
o1*

l	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename	l1/kernell1/bias	l2/kernell2/bias	l3/kernell3/bias
out/kernelout/bias	iterationlearning_rateAdam/m/l1/kernelAdam/v/l1/kernelAdam/m/l1/biasAdam/v/l1/biasAdam/m/l2/kernelAdam/v/l2/kernelAdam/m/l2/biasAdam/v/l2/biasAdam/m/l3/kernelAdam/v/l3/kernelAdam/m/l3/biasAdam/v/l3/biasAdam/m/out/kernelAdam/v/out/kernelAdam/m/out/biasAdam/v/out/biastotalcountConst*)
Tin"
 2*
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
GPU 2J 8� *'
f"R 
__inference__traced_save_24774
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filename	l1/kernell1/bias	l2/kernell2/bias	l3/kernell3/bias
out/kernelout/bias	iterationlearning_rateAdam/m/l1/kernelAdam/v/l1/kernelAdam/m/l1/biasAdam/v/l1/biasAdam/m/l2/kernelAdam/v/l2/kernelAdam/m/l2/biasAdam/v/l2/biasAdam/m/l3/kernelAdam/v/l3/kernelAdam/m/l3/biasAdam/v/l3/biasAdam/m/out/kernelAdam/v/out/kernelAdam/m/out/biasAdam/v/out/biastotalcount*(
Tin!
2*
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
GPU 2J 8� **
f%R#
!__inference__traced_restore_24867��
�	
�
>__inference_out_layer_call_and_return_conditional_losses_24372

inputs1
matmul_readvariableop_resource:	�
-
biasadd_readvariableop_resource:

identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�
*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:���������
S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
"__inference_l3_layer_call_fn_24554

inputs
unknown:
��
	unknown_0:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *F
fAR?
=__inference_l3_layer_call_and_return_conditional_losses_24357p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:%!

_user_specified_name24550:%!

_user_specified_name24548:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�

�
=__inference_l1_layer_call_and_return_conditional_losses_24525

inputs2
matmul_readvariableop_resource:
��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������Q
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:����������b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:����������S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
!__inference__traced_restore_24867
file_prefix.
assignvariableop_l1_kernel:
��)
assignvariableop_1_l1_bias:	�0
assignvariableop_2_l2_kernel:
��)
assignvariableop_3_l2_bias:	�0
assignvariableop_4_l3_kernel:
��)
assignvariableop_5_l3_bias:	�0
assignvariableop_6_out_kernel:	�
)
assignvariableop_7_out_bias:
&
assignvariableop_8_iteration:	 *
 assignvariableop_9_learning_rate: 8
$assignvariableop_10_adam_m_l1_kernel:
��8
$assignvariableop_11_adam_v_l1_kernel:
��1
"assignvariableop_12_adam_m_l1_bias:	�1
"assignvariableop_13_adam_v_l1_bias:	�8
$assignvariableop_14_adam_m_l2_kernel:
��8
$assignvariableop_15_adam_v_l2_kernel:
��1
"assignvariableop_16_adam_m_l2_bias:	�1
"assignvariableop_17_adam_v_l2_bias:	�8
$assignvariableop_18_adam_m_l3_kernel:
��8
$assignvariableop_19_adam_v_l3_kernel:
��1
"assignvariableop_20_adam_m_l3_bias:	�1
"assignvariableop_21_adam_v_l3_bias:	�8
%assignvariableop_22_adam_m_out_kernel:	�
8
%assignvariableop_23_adam_v_out_kernel:	�
1
#assignvariableop_24_adam_m_out_bias:
1
#assignvariableop_25_adam_v_out_bias:
#
assignvariableop_26_total: #
assignvariableop_27_count: 
identity_29��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_10�AssignVariableOp_11�AssignVariableOp_12�AssignVariableOp_13�AssignVariableOp_14�AssignVariableOp_15�AssignVariableOp_16�AssignVariableOp_17�AssignVariableOp_18�AssignVariableOp_19�AssignVariableOp_2�AssignVariableOp_20�AssignVariableOp_21�AssignVariableOp_22�AssignVariableOp_23�AssignVariableOp_24�AssignVariableOp_25�AssignVariableOp_26�AssignVariableOp_27�AssignVariableOp_3�AssignVariableOp_4�AssignVariableOp_5�AssignVariableOp_6�AssignVariableOp_7�AssignVariableOp_8�AssignVariableOp_9�
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*�
value�B�B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*M
valueDBBB B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*�
_output_shapesv
t:::::::::::::::::::::::::::::*+
dtypes!
2	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOpAssignVariableOpassignvariableop_l1_kernelIdentity:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_1AssignVariableOpassignvariableop_1_l1_biasIdentity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_2AssignVariableOpassignvariableop_2_l2_kernelIdentity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_3AssignVariableOpassignvariableop_3_l2_biasIdentity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_4AssignVariableOpassignvariableop_4_l3_kernelIdentity_4:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_5AssignVariableOpassignvariableop_5_l3_biasIdentity_5:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_6AssignVariableOpassignvariableop_6_out_kernelIdentity_6:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_7AssignVariableOpassignvariableop_7_out_biasIdentity_7:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0	*
_output_shapes
:�
AssignVariableOp_8AssignVariableOpassignvariableop_8_iterationIdentity_8:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0	]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_9AssignVariableOp assignvariableop_9_learning_rateIdentity_9:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_10AssignVariableOp$assignvariableop_10_adam_m_l1_kernelIdentity_10:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_11AssignVariableOp$assignvariableop_11_adam_v_l1_kernelIdentity_11:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_12AssignVariableOp"assignvariableop_12_adam_m_l1_biasIdentity_12:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_13AssignVariableOp"assignvariableop_13_adam_v_l1_biasIdentity_13:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_14AssignVariableOp$assignvariableop_14_adam_m_l2_kernelIdentity_14:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_15AssignVariableOp$assignvariableop_15_adam_v_l2_kernelIdentity_15:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_16AssignVariableOp"assignvariableop_16_adam_m_l2_biasIdentity_16:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_17AssignVariableOp"assignvariableop_17_adam_v_l2_biasIdentity_17:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_18AssignVariableOp$assignvariableop_18_adam_m_l3_kernelIdentity_18:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_19AssignVariableOp$assignvariableop_19_adam_v_l3_kernelIdentity_19:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_20AssignVariableOp"assignvariableop_20_adam_m_l3_biasIdentity_20:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_21AssignVariableOp"assignvariableop_21_adam_v_l3_biasIdentity_21:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_22AssignVariableOp%assignvariableop_22_adam_m_out_kernelIdentity_22:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_23AssignVariableOp%assignvariableop_23_adam_v_out_kernelIdentity_23:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_24AssignVariableOp#assignvariableop_24_adam_m_out_biasIdentity_24:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_25AssignVariableOp#assignvariableop_25_adam_v_out_biasIdentity_25:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_26AssignVariableOpassignvariableop_26_totalIdentity_26:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_27AssignVariableOpassignvariableop_27_countIdentity_27:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0Y
NoOpNoOp"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 �
Identity_28Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_29IdentityIdentity_28:output:0^NoOp_1*
T0*
_output_shapes
: �
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
_output_shapes
 "#
identity_29Identity_29:output:0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2*
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
AssignVariableOp_27AssignVariableOp_272(
AssignVariableOp_2AssignVariableOp_22(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_92$
AssignVariableOpAssignVariableOp:%!

_user_specified_namecount:%!

_user_specified_nametotal:/+
)
_user_specified_nameAdam/v/out/bias:/+
)
_user_specified_nameAdam/m/out/bias:1-
+
_user_specified_nameAdam/v/out/kernel:1-
+
_user_specified_nameAdam/m/out/kernel:.*
(
_user_specified_nameAdam/v/l3/bias:.*
(
_user_specified_nameAdam/m/l3/bias:0,
*
_user_specified_nameAdam/v/l3/kernel:0,
*
_user_specified_nameAdam/m/l3/kernel:.*
(
_user_specified_nameAdam/v/l2/bias:.*
(
_user_specified_nameAdam/m/l2/bias:0,
*
_user_specified_nameAdam/v/l2/kernel:0,
*
_user_specified_nameAdam/m/l2/kernel:.*
(
_user_specified_nameAdam/v/l1/bias:.*
(
_user_specified_nameAdam/m/l1/bias:0,
*
_user_specified_nameAdam/v/l1/kernel:0,
*
_user_specified_nameAdam/m/l1/kernel:-
)
'
_user_specified_namelearning_rate:)	%
#
_user_specified_name	iteration:($
"
_user_specified_name
out/bias:*&
$
_user_specified_name
out/kernel:'#
!
_user_specified_name	l3/bias:)%
#
_user_specified_name	l3/kernel:'#
!
_user_specified_name	l2/bias:)%
#
_user_specified_name	l2/kernel:'#
!
_user_specified_name	l1/bias:)%
#
_user_specified_name	l1/kernel:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
�

�
=__inference_l3_layer_call_and_return_conditional_losses_24357

inputs2
matmul_readvariableop_resource:
��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������Q
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:����������b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:����������S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
"__inference_l2_layer_call_fn_24534

inputs
unknown:
��
	unknown_0:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *F
fAR?
=__inference_l2_layer_call_and_return_conditional_losses_24341p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:%!

_user_specified_name24530:%!

_user_specified_name24528:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�

�
=__inference_l3_layer_call_and_return_conditional_losses_24565

inputs2
matmul_readvariableop_resource:
��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������Q
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:����������b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:����������S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�

�
=__inference_l2_layer_call_and_return_conditional_losses_24341

inputs2
matmul_readvariableop_resource:
��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������Q
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:����������b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:����������S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
.__inference_learning_model_layer_call_fn_24424
input_1
unknown:
��
	unknown_0:	�
	unknown_1:
��
	unknown_2:	�
	unknown_3:
��
	unknown_4:	�
	unknown_5:	�

	unknown_6:

identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_learning_model_layer_call_and_return_conditional_losses_24379o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������
<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:����������: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:%!

_user_specified_name24420:%!

_user_specified_name24418:%!

_user_specified_name24416:%!

_user_specified_name24414:%!

_user_specified_name24412:%!

_user_specified_name24410:%!

_user_specified_name24408:%!

_user_specified_name24406:Q M
(
_output_shapes
:����������
!
_user_specified_name	input_1
�
�
"__inference_l1_layer_call_fn_24514

inputs
unknown:
��
	unknown_0:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *F
fAR?
=__inference_l1_layer_call_and_return_conditional_losses_24325p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:%!

_user_specified_name24510:%!

_user_specified_name24508:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
I__inference_learning_model_layer_call_and_return_conditional_losses_24403
input_1
l1_24382:
��
l1_24384:	�
l2_24387:
��
l2_24389:	�
l3_24392:
��
l3_24394:	�
	out_24397:	�

	out_24399:

identity��l1/StatefulPartitionedCall�l2/StatefulPartitionedCall�l3/StatefulPartitionedCall�out/StatefulPartitionedCall�
l1/StatefulPartitionedCallStatefulPartitionedCallinput_1l1_24382l1_24384*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *F
fAR?
=__inference_l1_layer_call_and_return_conditional_losses_24325�
l2/StatefulPartitionedCallStatefulPartitionedCall#l1/StatefulPartitionedCall:output:0l2_24387l2_24389*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *F
fAR?
=__inference_l2_layer_call_and_return_conditional_losses_24341�
l3/StatefulPartitionedCallStatefulPartitionedCall#l2/StatefulPartitionedCall:output:0l3_24392l3_24394*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *F
fAR?
=__inference_l3_layer_call_and_return_conditional_losses_24357�
out/StatefulPartitionedCallStatefulPartitionedCall#l3/StatefulPartitionedCall:output:0	out_24397	out_24399*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *G
fBR@
>__inference_out_layer_call_and_return_conditional_losses_24372s
IdentityIdentity$out/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������
�
NoOpNoOp^l1/StatefulPartitionedCall^l2/StatefulPartitionedCall^l3/StatefulPartitionedCall^out/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:����������: : : : : : : : 28
l1/StatefulPartitionedCalll1/StatefulPartitionedCall28
l2/StatefulPartitionedCalll2/StatefulPartitionedCall28
l3/StatefulPartitionedCalll3/StatefulPartitionedCall2:
out/StatefulPartitionedCallout/StatefulPartitionedCall:%!

_user_specified_name24399:%!

_user_specified_name24397:%!

_user_specified_name24394:%!

_user_specified_name24392:%!

_user_specified_name24389:%!

_user_specified_name24387:%!

_user_specified_name24384:%!

_user_specified_name24382:Q M
(
_output_shapes
:����������
!
_user_specified_name	input_1
�

�
=__inference_l2_layer_call_and_return_conditional_losses_24545

inputs2
matmul_readvariableop_resource:
��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������Q
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:����������b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:����������S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�	
�
>__inference_out_layer_call_and_return_conditional_losses_24584

inputs1
matmul_readvariableop_resource:	�
-
biasadd_readvariableop_resource:

identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�
*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:���������
S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
#__inference_signature_wrapper_24505
input_1
unknown:
��
	unknown_0:	�
	unknown_1:
��
	unknown_2:	�
	unknown_3:
��
	unknown_4:	�
	unknown_5:	�

	unknown_6:

identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *)
f$R"
 __inference__wrapped_model_24312o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������
<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:����������: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:%!

_user_specified_name24501:%!

_user_specified_name24499:%!

_user_specified_name24497:%!

_user_specified_name24495:%!

_user_specified_name24493:%!

_user_specified_name24491:%!

_user_specified_name24489:%!

_user_specified_name24487:Q M
(
_output_shapes
:����������
!
_user_specified_name	input_1
�
�
.__inference_learning_model_layer_call_fn_24445
input_1
unknown:
��
	unknown_0:	�
	unknown_1:
��
	unknown_2:	�
	unknown_3:
��
	unknown_4:	�
	unknown_5:	�

	unknown_6:

identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_learning_model_layer_call_and_return_conditional_losses_24403o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������
<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:����������: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:%!

_user_specified_name24441:%!

_user_specified_name24439:%!

_user_specified_name24437:%!

_user_specified_name24435:%!

_user_specified_name24433:%!

_user_specified_name24431:%!

_user_specified_name24429:%!

_user_specified_name24427:Q M
(
_output_shapes
:����������
!
_user_specified_name	input_1
�,
�
 __inference__wrapped_model_24312
input_1D
0learning_model_l1_matmul_readvariableop_resource:
��@
1learning_model_l1_biasadd_readvariableop_resource:	�D
0learning_model_l2_matmul_readvariableop_resource:
��@
1learning_model_l2_biasadd_readvariableop_resource:	�D
0learning_model_l3_matmul_readvariableop_resource:
��@
1learning_model_l3_biasadd_readvariableop_resource:	�D
1learning_model_out_matmul_readvariableop_resource:	�
@
2learning_model_out_biasadd_readvariableop_resource:

identity��(learning_model/l1/BiasAdd/ReadVariableOp�'learning_model/l1/MatMul/ReadVariableOp�(learning_model/l2/BiasAdd/ReadVariableOp�'learning_model/l2/MatMul/ReadVariableOp�(learning_model/l3/BiasAdd/ReadVariableOp�'learning_model/l3/MatMul/ReadVariableOp�)learning_model/out/BiasAdd/ReadVariableOp�(learning_model/out/MatMul/ReadVariableOp�
'learning_model/l1/MatMul/ReadVariableOpReadVariableOp0learning_model_l1_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
learning_model/l1/MatMulMatMulinput_1/learning_model/l1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
(learning_model/l1/BiasAdd/ReadVariableOpReadVariableOp1learning_model_l1_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
learning_model/l1/BiasAddBiasAdd"learning_model/l1/MatMul:product:00learning_model/l1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������u
learning_model/l1/ReluRelu"learning_model/l1/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
'learning_model/l2/MatMul/ReadVariableOpReadVariableOp0learning_model_l2_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
learning_model/l2/MatMulMatMul$learning_model/l1/Relu:activations:0/learning_model/l2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
(learning_model/l2/BiasAdd/ReadVariableOpReadVariableOp1learning_model_l2_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
learning_model/l2/BiasAddBiasAdd"learning_model/l2/MatMul:product:00learning_model/l2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������u
learning_model/l2/ReluRelu"learning_model/l2/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
'learning_model/l3/MatMul/ReadVariableOpReadVariableOp0learning_model_l3_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
learning_model/l3/MatMulMatMul$learning_model/l2/Relu:activations:0/learning_model/l3/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
(learning_model/l3/BiasAdd/ReadVariableOpReadVariableOp1learning_model_l3_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
learning_model/l3/BiasAddBiasAdd"learning_model/l3/MatMul:product:00learning_model/l3/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������u
learning_model/l3/ReluRelu"learning_model/l3/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
(learning_model/out/MatMul/ReadVariableOpReadVariableOp1learning_model_out_matmul_readvariableop_resource*
_output_shapes
:	�
*
dtype0�
learning_model/out/MatMulMatMul$learning_model/l3/Relu:activations:00learning_model/out/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
�
)learning_model/out/BiasAdd/ReadVariableOpReadVariableOp2learning_model_out_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype0�
learning_model/out/BiasAddBiasAdd#learning_model/out/MatMul:product:01learning_model/out/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
r
IdentityIdentity#learning_model/out/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:���������
�
NoOpNoOp)^learning_model/l1/BiasAdd/ReadVariableOp(^learning_model/l1/MatMul/ReadVariableOp)^learning_model/l2/BiasAdd/ReadVariableOp(^learning_model/l2/MatMul/ReadVariableOp)^learning_model/l3/BiasAdd/ReadVariableOp(^learning_model/l3/MatMul/ReadVariableOp*^learning_model/out/BiasAdd/ReadVariableOp)^learning_model/out/MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:����������: : : : : : : : 2T
(learning_model/l1/BiasAdd/ReadVariableOp(learning_model/l1/BiasAdd/ReadVariableOp2R
'learning_model/l1/MatMul/ReadVariableOp'learning_model/l1/MatMul/ReadVariableOp2T
(learning_model/l2/BiasAdd/ReadVariableOp(learning_model/l2/BiasAdd/ReadVariableOp2R
'learning_model/l2/MatMul/ReadVariableOp'learning_model/l2/MatMul/ReadVariableOp2T
(learning_model/l3/BiasAdd/ReadVariableOp(learning_model/l3/BiasAdd/ReadVariableOp2R
'learning_model/l3/MatMul/ReadVariableOp'learning_model/l3/MatMul/ReadVariableOp2V
)learning_model/out/BiasAdd/ReadVariableOp)learning_model/out/BiasAdd/ReadVariableOp2T
(learning_model/out/MatMul/ReadVariableOp(learning_model/out/MatMul/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:Q M
(
_output_shapes
:����������
!
_user_specified_name	input_1
��
�
__inference__traced_save_24774
file_prefix4
 read_disablecopyonread_l1_kernel:
��/
 read_1_disablecopyonread_l1_bias:	�6
"read_2_disablecopyonread_l2_kernel:
��/
 read_3_disablecopyonread_l2_bias:	�6
"read_4_disablecopyonread_l3_kernel:
��/
 read_5_disablecopyonread_l3_bias:	�6
#read_6_disablecopyonread_out_kernel:	�
/
!read_7_disablecopyonread_out_bias:
,
"read_8_disablecopyonread_iteration:	 0
&read_9_disablecopyonread_learning_rate: >
*read_10_disablecopyonread_adam_m_l1_kernel:
��>
*read_11_disablecopyonread_adam_v_l1_kernel:
��7
(read_12_disablecopyonread_adam_m_l1_bias:	�7
(read_13_disablecopyonread_adam_v_l1_bias:	�>
*read_14_disablecopyonread_adam_m_l2_kernel:
��>
*read_15_disablecopyonread_adam_v_l2_kernel:
��7
(read_16_disablecopyonread_adam_m_l2_bias:	�7
(read_17_disablecopyonread_adam_v_l2_bias:	�>
*read_18_disablecopyonread_adam_m_l3_kernel:
��>
*read_19_disablecopyonread_adam_v_l3_kernel:
��7
(read_20_disablecopyonread_adam_m_l3_bias:	�7
(read_21_disablecopyonread_adam_v_l3_bias:	�>
+read_22_disablecopyonread_adam_m_out_kernel:	�
>
+read_23_disablecopyonread_adam_v_out_kernel:	�
7
)read_24_disablecopyonread_adam_m_out_bias:
7
)read_25_disablecopyonread_adam_v_out_bias:
)
read_26_disablecopyonread_total: )
read_27_disablecopyonread_count: 
savev2_const
identity_57��MergeV2Checkpoints�Read/DisableCopyOnRead�Read/ReadVariableOp�Read_1/DisableCopyOnRead�Read_1/ReadVariableOp�Read_10/DisableCopyOnRead�Read_10/ReadVariableOp�Read_11/DisableCopyOnRead�Read_11/ReadVariableOp�Read_12/DisableCopyOnRead�Read_12/ReadVariableOp�Read_13/DisableCopyOnRead�Read_13/ReadVariableOp�Read_14/DisableCopyOnRead�Read_14/ReadVariableOp�Read_15/DisableCopyOnRead�Read_15/ReadVariableOp�Read_16/DisableCopyOnRead�Read_16/ReadVariableOp�Read_17/DisableCopyOnRead�Read_17/ReadVariableOp�Read_18/DisableCopyOnRead�Read_18/ReadVariableOp�Read_19/DisableCopyOnRead�Read_19/ReadVariableOp�Read_2/DisableCopyOnRead�Read_2/ReadVariableOp�Read_20/DisableCopyOnRead�Read_20/ReadVariableOp�Read_21/DisableCopyOnRead�Read_21/ReadVariableOp�Read_22/DisableCopyOnRead�Read_22/ReadVariableOp�Read_23/DisableCopyOnRead�Read_23/ReadVariableOp�Read_24/DisableCopyOnRead�Read_24/ReadVariableOp�Read_25/DisableCopyOnRead�Read_25/ReadVariableOp�Read_26/DisableCopyOnRead�Read_26/ReadVariableOp�Read_27/DisableCopyOnRead�Read_27/ReadVariableOp�Read_3/DisableCopyOnRead�Read_3/ReadVariableOp�Read_4/DisableCopyOnRead�Read_4/ReadVariableOp�Read_5/DisableCopyOnRead�Read_5/ReadVariableOp�Read_6/DisableCopyOnRead�Read_6/ReadVariableOp�Read_7/DisableCopyOnRead�Read_7/ReadVariableOp�Read_8/DisableCopyOnRead�Read_8/ReadVariableOp�Read_9/DisableCopyOnRead�Read_9/ReadVariableOpw
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
: r
Read/DisableCopyOnReadDisableCopyOnRead read_disablecopyonread_l1_kernel"/device:CPU:0*
_output_shapes
 �
Read/ReadVariableOpReadVariableOp read_disablecopyonread_l1_kernel^Read/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
��*
dtype0k
IdentityIdentityRead/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
��c

Identity_1IdentityIdentity:output:0"/device:CPU:0*
T0* 
_output_shapes
:
��t
Read_1/DisableCopyOnReadDisableCopyOnRead read_1_disablecopyonread_l1_bias"/device:CPU:0*
_output_shapes
 �
Read_1/ReadVariableOpReadVariableOp read_1_disablecopyonread_l1_bias^Read_1/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0j

Identity_2IdentityRead_1/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�`

Identity_3IdentityIdentity_2:output:0"/device:CPU:0*
T0*
_output_shapes	
:�v
Read_2/DisableCopyOnReadDisableCopyOnRead"read_2_disablecopyonread_l2_kernel"/device:CPU:0*
_output_shapes
 �
Read_2/ReadVariableOpReadVariableOp"read_2_disablecopyonread_l2_kernel^Read_2/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
��*
dtype0o

Identity_4IdentityRead_2/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
��e

Identity_5IdentityIdentity_4:output:0"/device:CPU:0*
T0* 
_output_shapes
:
��t
Read_3/DisableCopyOnReadDisableCopyOnRead read_3_disablecopyonread_l2_bias"/device:CPU:0*
_output_shapes
 �
Read_3/ReadVariableOpReadVariableOp read_3_disablecopyonread_l2_bias^Read_3/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0j

Identity_6IdentityRead_3/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�`

Identity_7IdentityIdentity_6:output:0"/device:CPU:0*
T0*
_output_shapes	
:�v
Read_4/DisableCopyOnReadDisableCopyOnRead"read_4_disablecopyonread_l3_kernel"/device:CPU:0*
_output_shapes
 �
Read_4/ReadVariableOpReadVariableOp"read_4_disablecopyonread_l3_kernel^Read_4/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
��*
dtype0o

Identity_8IdentityRead_4/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
��e

Identity_9IdentityIdentity_8:output:0"/device:CPU:0*
T0* 
_output_shapes
:
��t
Read_5/DisableCopyOnReadDisableCopyOnRead read_5_disablecopyonread_l3_bias"/device:CPU:0*
_output_shapes
 �
Read_5/ReadVariableOpReadVariableOp read_5_disablecopyonread_l3_bias^Read_5/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0k
Identity_10IdentityRead_5/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_11IdentityIdentity_10:output:0"/device:CPU:0*
T0*
_output_shapes	
:�w
Read_6/DisableCopyOnReadDisableCopyOnRead#read_6_disablecopyonread_out_kernel"/device:CPU:0*
_output_shapes
 �
Read_6/ReadVariableOpReadVariableOp#read_6_disablecopyonread_out_kernel^Read_6/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	�
*
dtype0o
Identity_12IdentityRead_6/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	�
f
Identity_13IdentityIdentity_12:output:0"/device:CPU:0*
T0*
_output_shapes
:	�
u
Read_7/DisableCopyOnReadDisableCopyOnRead!read_7_disablecopyonread_out_bias"/device:CPU:0*
_output_shapes
 �
Read_7/ReadVariableOpReadVariableOp!read_7_disablecopyonread_out_bias^Read_7/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:
*
dtype0j
Identity_14IdentityRead_7/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:
a
Identity_15IdentityIdentity_14:output:0"/device:CPU:0*
T0*
_output_shapes
:
v
Read_8/DisableCopyOnReadDisableCopyOnRead"read_8_disablecopyonread_iteration"/device:CPU:0*
_output_shapes
 �
Read_8/ReadVariableOpReadVariableOp"read_8_disablecopyonread_iteration^Read_8/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0	f
Identity_16IdentityRead_8/ReadVariableOp:value:0"/device:CPU:0*
T0	*
_output_shapes
: ]
Identity_17IdentityIdentity_16:output:0"/device:CPU:0*
T0	*
_output_shapes
: z
Read_9/DisableCopyOnReadDisableCopyOnRead&read_9_disablecopyonread_learning_rate"/device:CPU:0*
_output_shapes
 �
Read_9/ReadVariableOpReadVariableOp&read_9_disablecopyonread_learning_rate^Read_9/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0f
Identity_18IdentityRead_9/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_19IdentityIdentity_18:output:0"/device:CPU:0*
T0*
_output_shapes
: 
Read_10/DisableCopyOnReadDisableCopyOnRead*read_10_disablecopyonread_adam_m_l1_kernel"/device:CPU:0*
_output_shapes
 �
Read_10/ReadVariableOpReadVariableOp*read_10_disablecopyonread_adam_m_l1_kernel^Read_10/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
��*
dtype0q
Identity_20IdentityRead_10/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
��g
Identity_21IdentityIdentity_20:output:0"/device:CPU:0*
T0* 
_output_shapes
:
��
Read_11/DisableCopyOnReadDisableCopyOnRead*read_11_disablecopyonread_adam_v_l1_kernel"/device:CPU:0*
_output_shapes
 �
Read_11/ReadVariableOpReadVariableOp*read_11_disablecopyonread_adam_v_l1_kernel^Read_11/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
��*
dtype0q
Identity_22IdentityRead_11/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
��g
Identity_23IdentityIdentity_22:output:0"/device:CPU:0*
T0* 
_output_shapes
:
��}
Read_12/DisableCopyOnReadDisableCopyOnRead(read_12_disablecopyonread_adam_m_l1_bias"/device:CPU:0*
_output_shapes
 �
Read_12/ReadVariableOpReadVariableOp(read_12_disablecopyonread_adam_m_l1_bias^Read_12/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0l
Identity_24IdentityRead_12/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_25IdentityIdentity_24:output:0"/device:CPU:0*
T0*
_output_shapes	
:�}
Read_13/DisableCopyOnReadDisableCopyOnRead(read_13_disablecopyonread_adam_v_l1_bias"/device:CPU:0*
_output_shapes
 �
Read_13/ReadVariableOpReadVariableOp(read_13_disablecopyonread_adam_v_l1_bias^Read_13/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0l
Identity_26IdentityRead_13/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_27IdentityIdentity_26:output:0"/device:CPU:0*
T0*
_output_shapes	
:�
Read_14/DisableCopyOnReadDisableCopyOnRead*read_14_disablecopyonread_adam_m_l2_kernel"/device:CPU:0*
_output_shapes
 �
Read_14/ReadVariableOpReadVariableOp*read_14_disablecopyonread_adam_m_l2_kernel^Read_14/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
��*
dtype0q
Identity_28IdentityRead_14/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
��g
Identity_29IdentityIdentity_28:output:0"/device:CPU:0*
T0* 
_output_shapes
:
��
Read_15/DisableCopyOnReadDisableCopyOnRead*read_15_disablecopyonread_adam_v_l2_kernel"/device:CPU:0*
_output_shapes
 �
Read_15/ReadVariableOpReadVariableOp*read_15_disablecopyonread_adam_v_l2_kernel^Read_15/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
��*
dtype0q
Identity_30IdentityRead_15/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
��g
Identity_31IdentityIdentity_30:output:0"/device:CPU:0*
T0* 
_output_shapes
:
��}
Read_16/DisableCopyOnReadDisableCopyOnRead(read_16_disablecopyonread_adam_m_l2_bias"/device:CPU:0*
_output_shapes
 �
Read_16/ReadVariableOpReadVariableOp(read_16_disablecopyonread_adam_m_l2_bias^Read_16/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0l
Identity_32IdentityRead_16/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_33IdentityIdentity_32:output:0"/device:CPU:0*
T0*
_output_shapes	
:�}
Read_17/DisableCopyOnReadDisableCopyOnRead(read_17_disablecopyonread_adam_v_l2_bias"/device:CPU:0*
_output_shapes
 �
Read_17/ReadVariableOpReadVariableOp(read_17_disablecopyonread_adam_v_l2_bias^Read_17/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0l
Identity_34IdentityRead_17/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_35IdentityIdentity_34:output:0"/device:CPU:0*
T0*
_output_shapes	
:�
Read_18/DisableCopyOnReadDisableCopyOnRead*read_18_disablecopyonread_adam_m_l3_kernel"/device:CPU:0*
_output_shapes
 �
Read_18/ReadVariableOpReadVariableOp*read_18_disablecopyonread_adam_m_l3_kernel^Read_18/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
��*
dtype0q
Identity_36IdentityRead_18/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
��g
Identity_37IdentityIdentity_36:output:0"/device:CPU:0*
T0* 
_output_shapes
:
��
Read_19/DisableCopyOnReadDisableCopyOnRead*read_19_disablecopyonread_adam_v_l3_kernel"/device:CPU:0*
_output_shapes
 �
Read_19/ReadVariableOpReadVariableOp*read_19_disablecopyonread_adam_v_l3_kernel^Read_19/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
��*
dtype0q
Identity_38IdentityRead_19/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
��g
Identity_39IdentityIdentity_38:output:0"/device:CPU:0*
T0* 
_output_shapes
:
��}
Read_20/DisableCopyOnReadDisableCopyOnRead(read_20_disablecopyonread_adam_m_l3_bias"/device:CPU:0*
_output_shapes
 �
Read_20/ReadVariableOpReadVariableOp(read_20_disablecopyonread_adam_m_l3_bias^Read_20/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0l
Identity_40IdentityRead_20/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_41IdentityIdentity_40:output:0"/device:CPU:0*
T0*
_output_shapes	
:�}
Read_21/DisableCopyOnReadDisableCopyOnRead(read_21_disablecopyonread_adam_v_l3_bias"/device:CPU:0*
_output_shapes
 �
Read_21/ReadVariableOpReadVariableOp(read_21_disablecopyonread_adam_v_l3_bias^Read_21/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0l
Identity_42IdentityRead_21/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_43IdentityIdentity_42:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_22/DisableCopyOnReadDisableCopyOnRead+read_22_disablecopyonread_adam_m_out_kernel"/device:CPU:0*
_output_shapes
 �
Read_22/ReadVariableOpReadVariableOp+read_22_disablecopyonread_adam_m_out_kernel^Read_22/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	�
*
dtype0p
Identity_44IdentityRead_22/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	�
f
Identity_45IdentityIdentity_44:output:0"/device:CPU:0*
T0*
_output_shapes
:	�
�
Read_23/DisableCopyOnReadDisableCopyOnRead+read_23_disablecopyonread_adam_v_out_kernel"/device:CPU:0*
_output_shapes
 �
Read_23/ReadVariableOpReadVariableOp+read_23_disablecopyonread_adam_v_out_kernel^Read_23/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	�
*
dtype0p
Identity_46IdentityRead_23/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	�
f
Identity_47IdentityIdentity_46:output:0"/device:CPU:0*
T0*
_output_shapes
:	�
~
Read_24/DisableCopyOnReadDisableCopyOnRead)read_24_disablecopyonread_adam_m_out_bias"/device:CPU:0*
_output_shapes
 �
Read_24/ReadVariableOpReadVariableOp)read_24_disablecopyonread_adam_m_out_bias^Read_24/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:
*
dtype0k
Identity_48IdentityRead_24/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:
a
Identity_49IdentityIdentity_48:output:0"/device:CPU:0*
T0*
_output_shapes
:
~
Read_25/DisableCopyOnReadDisableCopyOnRead)read_25_disablecopyonread_adam_v_out_bias"/device:CPU:0*
_output_shapes
 �
Read_25/ReadVariableOpReadVariableOp)read_25_disablecopyonread_adam_v_out_bias^Read_25/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:
*
dtype0k
Identity_50IdentityRead_25/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:
a
Identity_51IdentityIdentity_50:output:0"/device:CPU:0*
T0*
_output_shapes
:
t
Read_26/DisableCopyOnReadDisableCopyOnReadread_26_disablecopyonread_total"/device:CPU:0*
_output_shapes
 �
Read_26/ReadVariableOpReadVariableOpread_26_disablecopyonread_total^Read_26/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_52IdentityRead_26/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_53IdentityIdentity_52:output:0"/device:CPU:0*
T0*
_output_shapes
: t
Read_27/DisableCopyOnReadDisableCopyOnReadread_27_disablecopyonread_count"/device:CPU:0*
_output_shapes
 �
Read_27/ReadVariableOpReadVariableOpread_27_disablecopyonread_count^Read_27/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_54IdentityRead_27/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_55IdentityIdentity_54:output:0"/device:CPU:0*
T0*
_output_shapes
: �
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*�
value�B�B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*M
valueDBBB B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0Identity_1:output:0Identity_3:output:0Identity_5:output:0Identity_7:output:0Identity_9:output:0Identity_11:output:0Identity_13:output:0Identity_15:output:0Identity_17:output:0Identity_19:output:0Identity_21:output:0Identity_23:output:0Identity_25:output:0Identity_27:output:0Identity_29:output:0Identity_31:output:0Identity_33:output:0Identity_35:output:0Identity_37:output:0Identity_39:output:0Identity_41:output:0Identity_43:output:0Identity_45:output:0Identity_47:output:0Identity_49:output:0Identity_51:output:0Identity_53:output:0Identity_55:output:0savev2_const"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *+
dtypes!
2	�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:�
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 i
Identity_56Identityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: U
Identity_57IdentityIdentity_56:output:0^NoOp*
T0*
_output_shapes
: �
NoOpNoOp^MergeV2Checkpoints^Read/DisableCopyOnRead^Read/ReadVariableOp^Read_1/DisableCopyOnRead^Read_1/ReadVariableOp^Read_10/DisableCopyOnRead^Read_10/ReadVariableOp^Read_11/DisableCopyOnRead^Read_11/ReadVariableOp^Read_12/DisableCopyOnRead^Read_12/ReadVariableOp^Read_13/DisableCopyOnRead^Read_13/ReadVariableOp^Read_14/DisableCopyOnRead^Read_14/ReadVariableOp^Read_15/DisableCopyOnRead^Read_15/ReadVariableOp^Read_16/DisableCopyOnRead^Read_16/ReadVariableOp^Read_17/DisableCopyOnRead^Read_17/ReadVariableOp^Read_18/DisableCopyOnRead^Read_18/ReadVariableOp^Read_19/DisableCopyOnRead^Read_19/ReadVariableOp^Read_2/DisableCopyOnRead^Read_2/ReadVariableOp^Read_20/DisableCopyOnRead^Read_20/ReadVariableOp^Read_21/DisableCopyOnRead^Read_21/ReadVariableOp^Read_22/DisableCopyOnRead^Read_22/ReadVariableOp^Read_23/DisableCopyOnRead^Read_23/ReadVariableOp^Read_24/DisableCopyOnRead^Read_24/ReadVariableOp^Read_25/DisableCopyOnRead^Read_25/ReadVariableOp^Read_26/DisableCopyOnRead^Read_26/ReadVariableOp^Read_27/DisableCopyOnRead^Read_27/ReadVariableOp^Read_3/DisableCopyOnRead^Read_3/ReadVariableOp^Read_4/DisableCopyOnRead^Read_4/ReadVariableOp^Read_5/DisableCopyOnRead^Read_5/ReadVariableOp^Read_6/DisableCopyOnRead^Read_6/ReadVariableOp^Read_7/DisableCopyOnRead^Read_7/ReadVariableOp^Read_8/DisableCopyOnRead^Read_8/ReadVariableOp^Read_9/DisableCopyOnRead^Read_9/ReadVariableOp*
_output_shapes
 "#
identity_57Identity_57:output:0*(
_construction_contextkEagerRuntime*O
_input_shapes>
<: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2(
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
Read_27/ReadVariableOpRead_27/ReadVariableOp24
Read_3/DisableCopyOnReadRead_3/DisableCopyOnRead2.
Read_3/ReadVariableOpRead_3/ReadVariableOp24
Read_4/DisableCopyOnReadRead_4/DisableCopyOnRead2.
Read_4/ReadVariableOpRead_4/ReadVariableOp24
Read_5/DisableCopyOnReadRead_5/DisableCopyOnRead2.
Read_5/ReadVariableOpRead_5/ReadVariableOp24
Read_6/DisableCopyOnReadRead_6/DisableCopyOnRead2.
Read_6/ReadVariableOpRead_6/ReadVariableOp24
Read_7/DisableCopyOnReadRead_7/DisableCopyOnRead2.
Read_7/ReadVariableOpRead_7/ReadVariableOp24
Read_8/DisableCopyOnReadRead_8/DisableCopyOnRead2.
Read_8/ReadVariableOpRead_8/ReadVariableOp24
Read_9/DisableCopyOnReadRead_9/DisableCopyOnRead2.
Read_9/ReadVariableOpRead_9/ReadVariableOp:=9

_output_shapes
: 

_user_specified_nameConst:%!

_user_specified_namecount:%!

_user_specified_nametotal:/+
)
_user_specified_nameAdam/v/out/bias:/+
)
_user_specified_nameAdam/m/out/bias:1-
+
_user_specified_nameAdam/v/out/kernel:1-
+
_user_specified_nameAdam/m/out/kernel:.*
(
_user_specified_nameAdam/v/l3/bias:.*
(
_user_specified_nameAdam/m/l3/bias:0,
*
_user_specified_nameAdam/v/l3/kernel:0,
*
_user_specified_nameAdam/m/l3/kernel:.*
(
_user_specified_nameAdam/v/l2/bias:.*
(
_user_specified_nameAdam/m/l2/bias:0,
*
_user_specified_nameAdam/v/l2/kernel:0,
*
_user_specified_nameAdam/m/l2/kernel:.*
(
_user_specified_nameAdam/v/l1/bias:.*
(
_user_specified_nameAdam/m/l1/bias:0,
*
_user_specified_nameAdam/v/l1/kernel:0,
*
_user_specified_nameAdam/m/l1/kernel:-
)
'
_user_specified_namelearning_rate:)	%
#
_user_specified_name	iteration:($
"
_user_specified_name
out/bias:*&
$
_user_specified_name
out/kernel:'#
!
_user_specified_name	l3/bias:)%
#
_user_specified_name	l3/kernel:'#
!
_user_specified_name	l2/bias:)%
#
_user_specified_name	l2/kernel:'#
!
_user_specified_name	l1/bias:)%
#
_user_specified_name	l1/kernel:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
�
�
I__inference_learning_model_layer_call_and_return_conditional_losses_24379
input_1
l1_24326:
��
l1_24328:	�
l2_24342:
��
l2_24344:	�
l3_24358:
��
l3_24360:	�
	out_24373:	�

	out_24375:

identity��l1/StatefulPartitionedCall�l2/StatefulPartitionedCall�l3/StatefulPartitionedCall�out/StatefulPartitionedCall�
l1/StatefulPartitionedCallStatefulPartitionedCallinput_1l1_24326l1_24328*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *F
fAR?
=__inference_l1_layer_call_and_return_conditional_losses_24325�
l2/StatefulPartitionedCallStatefulPartitionedCall#l1/StatefulPartitionedCall:output:0l2_24342l2_24344*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *F
fAR?
=__inference_l2_layer_call_and_return_conditional_losses_24341�
l3/StatefulPartitionedCallStatefulPartitionedCall#l2/StatefulPartitionedCall:output:0l3_24358l3_24360*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *F
fAR?
=__inference_l3_layer_call_and_return_conditional_losses_24357�
out/StatefulPartitionedCallStatefulPartitionedCall#l3/StatefulPartitionedCall:output:0	out_24373	out_24375*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *G
fBR@
>__inference_out_layer_call_and_return_conditional_losses_24372s
IdentityIdentity$out/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������
�
NoOpNoOp^l1/StatefulPartitionedCall^l2/StatefulPartitionedCall^l3/StatefulPartitionedCall^out/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:����������: : : : : : : : 28
l1/StatefulPartitionedCalll1/StatefulPartitionedCall28
l2/StatefulPartitionedCalll2/StatefulPartitionedCall28
l3/StatefulPartitionedCalll3/StatefulPartitionedCall2:
out/StatefulPartitionedCallout/StatefulPartitionedCall:%!

_user_specified_name24375:%!

_user_specified_name24373:%!

_user_specified_name24360:%!

_user_specified_name24358:%!

_user_specified_name24344:%!

_user_specified_name24342:%!

_user_specified_name24328:%!

_user_specified_name24326:Q M
(
_output_shapes
:����������
!
_user_specified_name	input_1
�
�
#__inference_out_layer_call_fn_24574

inputs
unknown:	�

	unknown_0:

identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *G
fBR@
>__inference_out_layer_call_and_return_conditional_losses_24372o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������
<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:%!

_user_specified_name24570:%!

_user_specified_name24568:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�

�
=__inference_l1_layer_call_and_return_conditional_losses_24325

inputs2
matmul_readvariableop_resource:
��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������Q
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:����������b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:����������S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs"�L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serving_default�
<
input_11
serving_default_input_1:0����������7
out0
StatefulPartitionedCall:0���������
tensorflow/serving/predict:�n
�
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
layer_with_weights-3
layer-3
	variables
trainable_variables
regularization_losses
	keras_api
	__call__
*
&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures"
_tf_keras_sequential
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
bias"
_tf_keras_layer
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
bias"
_tf_keras_layer
�
	variables
trainable_variables
 regularization_losses
!	keras_api
"__call__
*#&call_and_return_all_conditional_losses

$kernel
%bias"
_tf_keras_layer
�
&	variables
'trainable_variables
(regularization_losses
)	keras_api
*__call__
*+&call_and_return_all_conditional_losses

,kernel
-bias"
_tf_keras_layer
X
0
1
2
3
$4
%5
,6
-7"
trackable_list_wrapper
X
0
1
2
3
$4
%5
,6
-7"
trackable_list_wrapper
 "
trackable_list_wrapper
�
.non_trainable_variables

/layers
0metrics
1layer_regularization_losses
2layer_metrics
	variables
trainable_variables
regularization_losses
	__call__
_default_save_signature
*
&call_and_return_all_conditional_losses
&
"call_and_return_conditional_losses"
_generic_user_object
�
3trace_0
4trace_12�
.__inference_learning_model_layer_call_fn_24424
.__inference_learning_model_layer_call_fn_24445�
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
 z3trace_0z4trace_1
�
5trace_0
6trace_12�
I__inference_learning_model_layer_call_and_return_conditional_losses_24379
I__inference_learning_model_layer_call_and_return_conditional_losses_24403�
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
 z5trace_0z6trace_1
�B�
 __inference__wrapped_model_24312input_1"�
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
7
_variables
8_iterations
9_learning_rate
:_index_dict
;
_momentums
<_velocities
=_update_step_xla"
experimentalOptimizer
,
>serving_default"
signature_map
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
?non_trainable_variables

@layers
Ametrics
Blayer_regularization_losses
Clayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�
Dtrace_02�
"__inference_l1_layer_call_fn_24514�
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
 zDtrace_0
�
Etrace_02�
=__inference_l1_layer_call_and_return_conditional_losses_24525�
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
 zEtrace_0
:
��2	l1/kernel
:�2l1/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
Fnon_trainable_variables

Glayers
Hmetrics
Ilayer_regularization_losses
Jlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�
Ktrace_02�
"__inference_l2_layer_call_fn_24534�
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
 zKtrace_0
�
Ltrace_02�
=__inference_l2_layer_call_and_return_conditional_losses_24545�
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
 zLtrace_0
:
��2	l2/kernel
:�2l2/bias
.
$0
%1"
trackable_list_wrapper
.
$0
%1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
Mnon_trainable_variables

Nlayers
Ometrics
Player_regularization_losses
Qlayer_metrics
	variables
trainable_variables
 regularization_losses
"__call__
*#&call_and_return_all_conditional_losses
&#"call_and_return_conditional_losses"
_generic_user_object
�
Rtrace_02�
"__inference_l3_layer_call_fn_24554�
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
 zRtrace_0
�
Strace_02�
=__inference_l3_layer_call_and_return_conditional_losses_24565�
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
 zStrace_0
:
��2	l3/kernel
:�2l3/bias
.
,0
-1"
trackable_list_wrapper
.
,0
-1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
Tnon_trainable_variables

Ulayers
Vmetrics
Wlayer_regularization_losses
Xlayer_metrics
&	variables
'trainable_variables
(regularization_losses
*__call__
*+&call_and_return_all_conditional_losses
&+"call_and_return_conditional_losses"
_generic_user_object
�
Ytrace_02�
#__inference_out_layer_call_fn_24574�
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
 zYtrace_0
�
Ztrace_02�
>__inference_out_layer_call_and_return_conditional_losses_24584�
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
 zZtrace_0
:	�
2
out/kernel
:
2out/bias
 "
trackable_list_wrapper
<
0
1
2
3"
trackable_list_wrapper
'
[0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
.__inference_learning_model_layer_call_fn_24424input_1"�
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
.__inference_learning_model_layer_call_fn_24445input_1"�
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
I__inference_learning_model_layer_call_and_return_conditional_losses_24379input_1"�
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
I__inference_learning_model_layer_call_and_return_conditional_losses_24403input_1"�
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
80
\1
]2
^3
_4
`5
a6
b7
c8
d9
e10
f11
g12
h13
i14
j15
k16"
trackable_list_wrapper
:	 2	iteration
: 2learning_rate
 "
trackable_dict_wrapper
X
\0
^1
`2
b3
d4
f5
h6
j7"
trackable_list_wrapper
X
]0
_1
a2
c3
e4
g5
i6
k7"
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
#__inference_signature_wrapper_24505input_1"�
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
"__inference_l1_layer_call_fn_24514inputs"�
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
=__inference_l1_layer_call_and_return_conditional_losses_24525inputs"�
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
"__inference_l2_layer_call_fn_24534inputs"�
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
=__inference_l2_layer_call_and_return_conditional_losses_24545inputs"�
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
"__inference_l3_layer_call_fn_24554inputs"�
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
=__inference_l3_layer_call_and_return_conditional_losses_24565inputs"�
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
#__inference_out_layer_call_fn_24574inputs"�
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
>__inference_out_layer_call_and_return_conditional_losses_24584inputs"�
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
N
l	variables
m	keras_api
	ntotal
	ocount"
_tf_keras_metric
": 
��2Adam/m/l1/kernel
": 
��2Adam/v/l1/kernel
:�2Adam/m/l1/bias
:�2Adam/v/l1/bias
": 
��2Adam/m/l2/kernel
": 
��2Adam/v/l2/kernel
:�2Adam/m/l2/bias
:�2Adam/v/l2/bias
": 
��2Adam/m/l3/kernel
": 
��2Adam/v/l3/kernel
:�2Adam/m/l3/bias
:�2Adam/v/l3/bias
": 	�
2Adam/m/out/kernel
": 	�
2Adam/v/out/kernel
:
2Adam/m/out/bias
:
2Adam/v/out/bias
.
n0
o1"
trackable_list_wrapper
-
l	variables"
_generic_user_object
:  (2total
:  (2count�
 __inference__wrapped_model_24312h$%,-1�.
'�$
"�
input_1����������
� ")�&
$
out�
out���������
�
=__inference_l1_layer_call_and_return_conditional_losses_24525e0�-
&�#
!�
inputs����������
� "-�*
#� 
tensor_0����������
� �
"__inference_l1_layer_call_fn_24514Z0�-
&�#
!�
inputs����������
� ""�
unknown�����������
=__inference_l2_layer_call_and_return_conditional_losses_24545e0�-
&�#
!�
inputs����������
� "-�*
#� 
tensor_0����������
� �
"__inference_l2_layer_call_fn_24534Z0�-
&�#
!�
inputs����������
� ""�
unknown�����������
=__inference_l3_layer_call_and_return_conditional_losses_24565e$%0�-
&�#
!�
inputs����������
� "-�*
#� 
tensor_0����������
� �
"__inference_l3_layer_call_fn_24554Z$%0�-
&�#
!�
inputs����������
� ""�
unknown�����������
I__inference_learning_model_layer_call_and_return_conditional_losses_24379s$%,-9�6
/�,
"�
input_1����������
p

 
� ",�)
"�
tensor_0���������

� �
I__inference_learning_model_layer_call_and_return_conditional_losses_24403s$%,-9�6
/�,
"�
input_1����������
p 

 
� ",�)
"�
tensor_0���������

� �
.__inference_learning_model_layer_call_fn_24424h$%,-9�6
/�,
"�
input_1����������
p

 
� "!�
unknown���������
�
.__inference_learning_model_layer_call_fn_24445h$%,-9�6
/�,
"�
input_1����������
p 

 
� "!�
unknown���������
�
>__inference_out_layer_call_and_return_conditional_losses_24584d,-0�-
&�#
!�
inputs����������
� ",�)
"�
tensor_0���������

� �
#__inference_out_layer_call_fn_24574Y,-0�-
&�#
!�
inputs����������
� "!�
unknown���������
�
#__inference_signature_wrapper_24505s$%,-<�9
� 
2�/
-
input_1"�
input_1����������")�&
$
out�
out���������
