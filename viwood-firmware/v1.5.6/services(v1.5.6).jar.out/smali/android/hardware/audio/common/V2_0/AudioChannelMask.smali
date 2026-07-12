.class public abstract Landroid/hardware/audio/common/V2_0/AudioChannelMask;
.super Ljava/lang/Object;
.source "AudioChannelMask.java"


# direct methods
.method public static final toString(I)Ljava/lang/String;
    .locals 16

    move/from16 v0, p0

    if-nez v0, :cond_0

    .line 109
    const-string v0, "REPRESENTATION_POSITION"

    return-object v0

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 112
    const-string v0, "REPRESENTATION_INDEX"

    return-object v0

    :cond_1
    if-nez v0, :cond_2

    .line 115
    const-string v0, "NONE"

    return-object v0

    :cond_2
    const/high16 v2, -0x40000000    # -2.0f

    if-ne v0, v2, :cond_3

    .line 118
    const-string v0, "INVALID"

    return-object v0

    :cond_3
    const/4 v2, 0x1

    if-ne v0, v2, :cond_4

    .line 121
    const-string v0, "OUT_FRONT_LEFT"

    return-object v0

    :cond_4
    if-ne v0, v1, :cond_5

    .line 124
    const-string v0, "OUT_FRONT_RIGHT"

    return-object v0

    :cond_5
    const/4 v1, 0x4

    if-ne v0, v1, :cond_6

    .line 127
    const-string v0, "OUT_FRONT_CENTER"

    return-object v0

    :cond_6
    const/16 v3, 0x8

    if-ne v0, v3, :cond_7

    .line 130
    const-string v0, "OUT_LOW_FREQUENCY"

    return-object v0

    :cond_7
    const/16 v4, 0x10

    if-ne v0, v4, :cond_8

    .line 133
    const-string v0, "OUT_BACK_LEFT"

    return-object v0

    :cond_8
    const/16 v5, 0x20

    if-ne v0, v5, :cond_9

    .line 136
    const-string v0, "OUT_BACK_RIGHT"

    return-object v0

    :cond_9
    const/16 v6, 0x40

    if-ne v0, v6, :cond_a

    .line 139
    const-string v0, "OUT_FRONT_LEFT_OF_CENTER"

    return-object v0

    :cond_a
    const/16 v7, 0x80

    if-ne v0, v7, :cond_b

    .line 142
    const-string v0, "OUT_FRONT_RIGHT_OF_CENTER"

    return-object v0

    :cond_b
    const/16 v8, 0x100

    if-ne v0, v8, :cond_c

    .line 145
    const-string v0, "OUT_BACK_CENTER"

    return-object v0

    :cond_c
    const/16 v9, 0x200

    if-ne v0, v9, :cond_d

    .line 148
    const-string v0, "OUT_SIDE_LEFT"

    return-object v0

    :cond_d
    const/16 v10, 0x400

    if-ne v0, v10, :cond_e

    .line 151
    const-string v0, "OUT_SIDE_RIGHT"

    return-object v0

    :cond_e
    const/16 v11, 0x800

    if-ne v0, v11, :cond_f

    .line 154
    const-string v0, "OUT_TOP_CENTER"

    return-object v0

    :cond_f
    const/16 v12, 0x1000

    if-ne v0, v12, :cond_10

    .line 157
    const-string v0, "OUT_TOP_FRONT_LEFT"

    return-object v0

    :cond_10
    const/16 v13, 0x2000

    if-ne v0, v13, :cond_11

    .line 160
    const-string v0, "OUT_TOP_FRONT_CENTER"

    return-object v0

    :cond_11
    const/16 v14, 0x4000

    if-ne v0, v14, :cond_12

    .line 163
    const-string v0, "OUT_TOP_FRONT_RIGHT"

    return-object v0

    :cond_12
    const v15, 0x8000

    if-ne v0, v15, :cond_13

    .line 166
    const-string v0, "OUT_TOP_BACK_LEFT"

    return-object v0

    :cond_13
    const/high16 v15, 0x10000

    if-ne v0, v15, :cond_14

    .line 169
    const-string v0, "OUT_TOP_BACK_CENTER"

    return-object v0

    :cond_14
    const/high16 v15, 0x20000

    if-ne v0, v15, :cond_15

    .line 172
    const-string v0, "OUT_TOP_BACK_RIGHT"

    return-object v0

    :cond_15
    if-ne v0, v2, :cond_16

    .line 175
    const-string v0, "OUT_MONO"

    return-object v0

    :cond_16
    const/4 v2, 0x3

    if-ne v0, v2, :cond_17

    .line 178
    const-string v0, "OUT_STEREO"

    return-object v0

    :cond_17
    const/16 v2, 0xb

    if-ne v0, v2, :cond_18

    .line 181
    const-string v0, "OUT_2POINT1"

    return-object v0

    :cond_18
    const/16 v2, 0x33

    if-ne v0, v2, :cond_19

    .line 184
    const-string v0, "OUT_QUAD"

    return-object v0

    :cond_19
    if-ne v0, v2, :cond_1a

    .line 187
    const-string v0, "OUT_QUAD_BACK"

    return-object v0

    :cond_1a
    const/16 v2, 0x603

    if-ne v0, v2, :cond_1b

    .line 190
    const-string v0, "OUT_QUAD_SIDE"

    return-object v0

    :cond_1b
    const/16 v2, 0x107

    if-ne v0, v2, :cond_1c

    .line 193
    const-string v0, "OUT_SURROUND"

    return-object v0

    :cond_1c
    const/16 v2, 0x37

    if-ne v0, v2, :cond_1d

    .line 196
    const-string v0, "OUT_PENTA"

    return-object v0

    :cond_1d
    const/16 v2, 0x3f

    if-ne v0, v2, :cond_1e

    .line 199
    const-string v0, "OUT_5POINT1"

    return-object v0

    :cond_1e
    if-ne v0, v2, :cond_1f

    .line 202
    const-string v0, "OUT_5POINT1_BACK"

    return-object v0

    :cond_1f
    const/16 v2, 0x60f

    if-ne v0, v2, :cond_20

    .line 205
    const-string v0, "OUT_5POINT1_SIDE"

    return-object v0

    :cond_20
    const/16 v2, 0x13f

    if-ne v0, v2, :cond_21

    .line 208
    const-string v0, "OUT_6POINT1"

    return-object v0

    :cond_21
    const/16 v2, 0x63f

    if-ne v0, v2, :cond_22

    .line 211
    const-string v0, "OUT_7POINT1"

    return-object v0

    :cond_22
    const v2, 0x3ffff

    if-ne v0, v2, :cond_23

    .line 214
    const-string v0, "OUT_ALL"

    return-object v0

    :cond_23
    if-ne v0, v1, :cond_24

    .line 217
    const-string v0, "IN_LEFT"

    return-object v0

    :cond_24
    if-ne v0, v3, :cond_25

    .line 220
    const-string v0, "IN_RIGHT"

    return-object v0

    :cond_25
    if-ne v0, v4, :cond_26

    .line 223
    const-string v0, "IN_FRONT"

    return-object v0

    :cond_26
    if-ne v0, v5, :cond_27

    .line 226
    const-string v0, "IN_BACK"

    return-object v0

    :cond_27
    if-ne v0, v6, :cond_28

    .line 229
    const-string v0, "IN_LEFT_PROCESSED"

    return-object v0

    :cond_28
    if-ne v0, v7, :cond_29

    .line 232
    const-string v0, "IN_RIGHT_PROCESSED"

    return-object v0

    :cond_29
    if-ne v0, v8, :cond_2a

    .line 235
    const-string v0, "IN_FRONT_PROCESSED"

    return-object v0

    :cond_2a
    if-ne v0, v9, :cond_2b

    .line 238
    const-string v0, "IN_BACK_PROCESSED"

    return-object v0

    :cond_2b
    if-ne v0, v10, :cond_2c

    .line 241
    const-string v0, "IN_PRESSURE"

    return-object v0

    :cond_2c
    if-ne v0, v11, :cond_2d

    .line 244
    const-string v0, "IN_X_AXIS"

    return-object v0

    :cond_2d
    if-ne v0, v12, :cond_2e

    .line 247
    const-string v0, "IN_Y_AXIS"

    return-object v0

    :cond_2e
    if-ne v0, v13, :cond_2f

    .line 250
    const-string v0, "IN_Z_AXIS"

    return-object v0

    :cond_2f
    if-ne v0, v14, :cond_30

    .line 253
    const-string v0, "IN_VOICE_UPLINK"

    return-object v0

    :cond_30
    const v1, 0x8000

    if-ne v0, v1, :cond_31

    .line 256
    const-string v0, "IN_VOICE_DNLINK"

    return-object v0

    :cond_31
    if-ne v0, v4, :cond_32

    .line 259
    const-string v0, "IN_MONO"

    return-object v0

    :cond_32
    const/16 v1, 0xc

    if-ne v0, v1, :cond_33

    .line 262
    const-string v0, "IN_STEREO"

    return-object v0

    :cond_33
    const/16 v1, 0x30

    if-ne v0, v1, :cond_34

    .line 265
    const-string v0, "IN_FRONT_BACK"

    return-object v0

    :cond_34
    const/16 v1, 0xfc

    if-ne v0, v1, :cond_35

    .line 268
    const-string v0, "IN_6"

    return-object v0

    :cond_35
    const/16 v1, 0x4010

    if-ne v0, v1, :cond_36

    .line 271
    const-string v0, "IN_VOICE_UPLINK_MONO"

    return-object v0

    :cond_36
    const v1, 0x8010

    if-ne v0, v1, :cond_37

    .line 274
    const-string v0, "IN_VOICE_DNLINK_MONO"

    return-object v0

    :cond_37
    const v1, 0xc010

    if-ne v0, v1, :cond_38

    .line 277
    const-string v0, "IN_VOICE_CALL_MONO"

    return-object v0

    :cond_38
    const v1, 0xfffc

    if-ne v0, v1, :cond_39

    .line 280
    const-string v0, "IN_ALL"

    return-object v0

    :cond_39
    const/16 v1, 0x1e

    if-ne v0, v1, :cond_3a

    .line 283
    const-string v0, "COUNT_MAX"

    return-object v0

    :cond_3a
    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_3b

    .line 286
    const-string v0, "INDEX_HDR"

    return-object v0

    :cond_3b
    const v1, -0x7fffffff

    if-ne v0, v1, :cond_3c

    .line 289
    const-string v0, "INDEX_MASK_1"

    return-object v0

    :cond_3c
    const v1, -0x7ffffffd

    if-ne v0, v1, :cond_3d

    .line 292
    const-string v0, "INDEX_MASK_2"

    return-object v0

    :cond_3d
    const v1, -0x7ffffff9

    if-ne v0, v1, :cond_3e

    .line 295
    const-string v0, "INDEX_MASK_3"

    return-object v0

    :cond_3e
    const v1, -0x7ffffff1

    if-ne v0, v1, :cond_3f

    .line 298
    const-string v0, "INDEX_MASK_4"

    return-object v0

    :cond_3f
    const v1, -0x7fffffe1

    if-ne v0, v1, :cond_40

    .line 301
    const-string v0, "INDEX_MASK_5"

    return-object v0

    :cond_40
    const v1, -0x7fffffc1

    if-ne v0, v1, :cond_41

    .line 304
    const-string v0, "INDEX_MASK_6"

    return-object v0

    :cond_41
    const v1, -0x7fffff81

    if-ne v0, v1, :cond_42

    .line 307
    const-string v0, "INDEX_MASK_7"

    return-object v0

    :cond_42
    const v1, -0x7fffff01

    if-ne v0, v1, :cond_43

    .line 310
    const-string v0, "INDEX_MASK_8"

    return-object v0

    .line 312
    :cond_43
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
