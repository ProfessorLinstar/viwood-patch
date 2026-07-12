.class public abstract Landroid/hardware/audio/common/V2_0/AudioFormat;
.super Ljava/lang/Object;
.source "AudioFormat.java"


# direct methods
.method public static final toString(I)Ljava/lang/String;
    .locals 7

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    .line 115
    const-string p0, "INVALID"

    return-object p0

    :cond_0
    if-nez p0, :cond_1

    .line 118
    const-string p0, "DEFAULT"

    return-object p0

    :cond_1
    if-nez p0, :cond_2

    .line 121
    const-string p0, "PCM"

    return-object p0

    :cond_2
    const/high16 v0, 0x1000000

    if-ne p0, v0, :cond_3

    .line 124
    const-string p0, "MP3"

    return-object p0

    :cond_3
    const/high16 v0, 0x2000000

    if-ne p0, v0, :cond_4

    .line 127
    const-string p0, "AMR_NB"

    return-object p0

    :cond_4
    const/high16 v0, 0x3000000

    if-ne p0, v0, :cond_5

    .line 130
    const-string p0, "AMR_WB"

    return-object p0

    :cond_5
    const/high16 v0, 0x4000000

    if-ne p0, v0, :cond_6

    .line 133
    const-string p0, "AAC"

    return-object p0

    :cond_6
    const/high16 v0, 0x5000000

    if-ne p0, v0, :cond_7

    .line 136
    const-string p0, "HE_AAC_V1"

    return-object p0

    :cond_7
    const/high16 v0, 0x6000000

    if-ne p0, v0, :cond_8

    .line 139
    const-string p0, "HE_AAC_V2"

    return-object p0

    :cond_8
    const/high16 v0, 0x7000000

    if-ne p0, v0, :cond_9

    .line 142
    const-string p0, "VORBIS"

    return-object p0

    :cond_9
    const/high16 v0, 0x8000000

    if-ne p0, v0, :cond_a

    .line 145
    const-string p0, "OPUS"

    return-object p0

    :cond_a
    const/high16 v0, 0x9000000

    if-ne p0, v0, :cond_b

    .line 148
    const-string p0, "AC3"

    return-object p0

    :cond_b
    const/high16 v0, 0xa000000

    if-ne p0, v0, :cond_c

    .line 151
    const-string p0, "E_AC3"

    return-object p0

    :cond_c
    const/high16 v0, 0xb000000

    if-ne p0, v0, :cond_d

    .line 154
    const-string p0, "DTS"

    return-object p0

    :cond_d
    const/high16 v0, 0xc000000

    if-ne p0, v0, :cond_e

    .line 157
    const-string p0, "DTS_HD"

    return-object p0

    :cond_e
    const/high16 v0, 0xd000000

    if-ne p0, v0, :cond_f

    .line 160
    const-string p0, "IEC61937"

    return-object p0

    :cond_f
    const/high16 v0, 0xe000000

    if-ne p0, v0, :cond_10

    .line 163
    const-string p0, "DOLBY_TRUEHD"

    return-object p0

    :cond_10
    const/high16 v0, 0x10000000

    if-ne p0, v0, :cond_11

    .line 166
    const-string p0, "EVRC"

    return-object p0

    :cond_11
    const/high16 v0, 0x11000000

    if-ne p0, v0, :cond_12

    .line 169
    const-string p0, "EVRCB"

    return-object p0

    :cond_12
    const/high16 v0, 0x12000000

    if-ne p0, v0, :cond_13

    .line 172
    const-string p0, "EVRCWB"

    return-object p0

    :cond_13
    const/high16 v0, 0x13000000

    if-ne p0, v0, :cond_14

    .line 175
    const-string p0, "EVRCNW"

    return-object p0

    :cond_14
    const/high16 v0, 0x14000000

    if-ne p0, v0, :cond_15

    .line 178
    const-string p0, "AAC_ADIF"

    return-object p0

    :cond_15
    const/high16 v0, 0x15000000

    if-ne p0, v0, :cond_16

    .line 181
    const-string p0, "WMA"

    return-object p0

    :cond_16
    const/high16 v0, 0x16000000

    if-ne p0, v0, :cond_17

    .line 184
    const-string p0, "WMA_PRO"

    return-object p0

    :cond_17
    const/high16 v0, 0x17000000

    if-ne p0, v0, :cond_18

    .line 187
    const-string p0, "AMR_WB_PLUS"

    return-object p0

    :cond_18
    const/high16 v0, 0x18000000

    if-ne p0, v0, :cond_19

    .line 190
    const-string p0, "MP2"

    return-object p0

    :cond_19
    const/high16 v0, 0x19000000

    if-ne p0, v0, :cond_1a

    .line 193
    const-string p0, "QCELP"

    return-object p0

    :cond_1a
    const/high16 v0, 0x1a000000

    if-ne p0, v0, :cond_1b

    .line 196
    const-string p0, "DSD"

    return-object p0

    :cond_1b
    const/high16 v0, 0x1b000000

    if-ne p0, v0, :cond_1c

    .line 199
    const-string p0, "FLAC"

    return-object p0

    :cond_1c
    const/high16 v0, 0x1c000000

    if-ne p0, v0, :cond_1d

    .line 202
    const-string p0, "ALAC"

    return-object p0

    :cond_1d
    const/high16 v0, 0x1d000000

    if-ne p0, v0, :cond_1e

    .line 205
    const-string p0, "APE"

    return-object p0

    :cond_1e
    const/high16 v0, 0x1e000000

    if-ne p0, v0, :cond_1f

    .line 208
    const-string p0, "AAC_ADTS"

    return-object p0

    :cond_1f
    const/high16 v0, 0x1f000000

    if-ne p0, v0, :cond_20

    .line 211
    const-string p0, "SBC"

    return-object p0

    :cond_20
    const/high16 v0, 0x20000000

    if-ne p0, v0, :cond_21

    .line 214
    const-string p0, "APTX"

    return-object p0

    :cond_21
    const/high16 v0, 0x21000000

    if-ne p0, v0, :cond_22

    .line 217
    const-string p0, "APTX_HD"

    return-object p0

    :cond_22
    const/high16 v0, 0x22000000

    if-ne p0, v0, :cond_23

    .line 220
    const-string p0, "AC4"

    return-object p0

    :cond_23
    const/high16 v0, 0x23000000

    if-ne p0, v0, :cond_24

    .line 223
    const-string p0, "LDAC"

    return-object p0

    :cond_24
    const/high16 v0, -0x1000000

    if-ne p0, v0, :cond_25

    .line 226
    const-string p0, "MAIN_MASK"

    return-object p0

    :cond_25
    const v0, 0xffffff

    if-ne p0, v0, :cond_26

    .line 229
    const-string p0, "SUB_MASK"

    return-object p0

    :cond_26
    const/4 v0, 0x1

    if-ne p0, v0, :cond_27

    .line 232
    const-string p0, "PCM_SUB_16_BIT"

    return-object p0

    :cond_27
    const/4 v1, 0x2

    if-ne p0, v1, :cond_28

    .line 235
    const-string p0, "PCM_SUB_8_BIT"

    return-object p0

    :cond_28
    const/4 v2, 0x3

    if-ne p0, v2, :cond_29

    .line 238
    const-string p0, "PCM_SUB_32_BIT"

    return-object p0

    :cond_29
    const/4 v3, 0x4

    if-ne p0, v3, :cond_2a

    .line 241
    const-string p0, "PCM_SUB_8_24_BIT"

    return-object p0

    :cond_2a
    const/4 v4, 0x5

    if-ne p0, v4, :cond_2b

    .line 244
    const-string p0, "PCM_SUB_FLOAT"

    return-object p0

    :cond_2b
    const/4 v5, 0x6

    if-ne p0, v5, :cond_2c

    .line 247
    const-string p0, "PCM_SUB_24_BIT_PACKED"

    return-object p0

    :cond_2c
    if-nez p0, :cond_2d

    .line 250
    const-string p0, "MP3_SUB_NONE"

    return-object p0

    :cond_2d
    if-nez p0, :cond_2e

    .line 253
    const-string p0, "AMR_SUB_NONE"

    return-object p0

    :cond_2e
    if-ne p0, v0, :cond_2f

    .line 256
    const-string p0, "AAC_SUB_MAIN"

    return-object p0

    :cond_2f
    if-ne p0, v1, :cond_30

    .line 259
    const-string p0, "AAC_SUB_LC"

    return-object p0

    :cond_30
    if-ne p0, v3, :cond_31

    .line 262
    const-string p0, "AAC_SUB_SSR"

    return-object p0

    :cond_31
    const/16 v6, 0x8

    if-ne p0, v6, :cond_32

    .line 265
    const-string p0, "AAC_SUB_LTP"

    return-object p0

    :cond_32
    const/16 v6, 0x10

    if-ne p0, v6, :cond_33

    .line 268
    const-string p0, "AAC_SUB_HE_V1"

    return-object p0

    :cond_33
    const/16 v6, 0x20

    if-ne p0, v6, :cond_34

    .line 271
    const-string p0, "AAC_SUB_SCALABLE"

    return-object p0

    :cond_34
    const/16 v6, 0x40

    if-ne p0, v6, :cond_35

    .line 274
    const-string p0, "AAC_SUB_ERLC"

    return-object p0

    :cond_35
    const/16 v6, 0x80

    if-ne p0, v6, :cond_36

    .line 277
    const-string p0, "AAC_SUB_LD"

    return-object p0

    :cond_36
    const/16 v6, 0x100

    if-ne p0, v6, :cond_37

    .line 280
    const-string p0, "AAC_SUB_HE_V2"

    return-object p0

    :cond_37
    const/16 v6, 0x200

    if-ne p0, v6, :cond_38

    .line 283
    const-string p0, "AAC_SUB_ELD"

    return-object p0

    :cond_38
    if-nez p0, :cond_39

    .line 286
    const-string p0, "VORBIS_SUB_NONE"

    return-object p0

    :cond_39
    if-ne p0, v0, :cond_3a

    .line 289
    const-string p0, "PCM_16_BIT"

    return-object p0

    :cond_3a
    if-ne p0, v1, :cond_3b

    .line 292
    const-string p0, "PCM_8_BIT"

    return-object p0

    :cond_3b
    if-ne p0, v2, :cond_3c

    .line 295
    const-string p0, "PCM_32_BIT"

    return-object p0

    :cond_3c
    if-ne p0, v3, :cond_3d

    .line 298
    const-string p0, "PCM_8_24_BIT"

    return-object p0

    :cond_3d
    if-ne p0, v4, :cond_3e

    .line 301
    const-string p0, "PCM_FLOAT"

    return-object p0

    :cond_3e
    if-ne p0, v5, :cond_3f

    .line 304
    const-string p0, "PCM_24_BIT_PACKED"

    return-object p0

    :cond_3f
    const v0, 0x4000001

    if-ne p0, v0, :cond_40

    .line 307
    const-string p0, "AAC_MAIN"

    return-object p0

    :cond_40
    const v0, 0x4000002

    if-ne p0, v0, :cond_41

    .line 310
    const-string p0, "AAC_LC"

    return-object p0

    :cond_41
    const v0, 0x4000004

    if-ne p0, v0, :cond_42

    .line 313
    const-string p0, "AAC_SSR"

    return-object p0

    :cond_42
    const v0, 0x4000008

    if-ne p0, v0, :cond_43

    .line 316
    const-string p0, "AAC_LTP"

    return-object p0

    :cond_43
    const v0, 0x4000010

    if-ne p0, v0, :cond_44

    .line 319
    const-string p0, "AAC_HE_V1"

    return-object p0

    :cond_44
    const v0, 0x4000020

    if-ne p0, v0, :cond_45

    .line 322
    const-string p0, "AAC_SCALABLE"

    return-object p0

    :cond_45
    const v0, 0x4000040

    if-ne p0, v0, :cond_46

    .line 325
    const-string p0, "AAC_ERLC"

    return-object p0

    :cond_46
    const v0, 0x4000080

    if-ne p0, v0, :cond_47

    .line 328
    const-string p0, "AAC_LD"

    return-object p0

    :cond_47
    const v0, 0x4000100

    if-ne p0, v0, :cond_48

    .line 331
    const-string p0, "AAC_HE_V2"

    return-object p0

    :cond_48
    const v0, 0x4000200

    if-ne p0, v0, :cond_49

    .line 334
    const-string p0, "AAC_ELD"

    return-object p0

    :cond_49
    const v0, 0x1e000001

    if-ne p0, v0, :cond_4a

    .line 337
    const-string p0, "AAC_ADTS_MAIN"

    return-object p0

    :cond_4a
    const v0, 0x1e000002

    if-ne p0, v0, :cond_4b

    .line 340
    const-string p0, "AAC_ADTS_LC"

    return-object p0

    :cond_4b
    const v0, 0x1e000004

    if-ne p0, v0, :cond_4c

    .line 343
    const-string p0, "AAC_ADTS_SSR"

    return-object p0

    :cond_4c
    const v0, 0x1e000008

    if-ne p0, v0, :cond_4d

    .line 346
    const-string p0, "AAC_ADTS_LTP"

    return-object p0

    :cond_4d
    const v0, 0x1e000010

    if-ne p0, v0, :cond_4e

    .line 349
    const-string p0, "AAC_ADTS_HE_V1"

    return-object p0

    :cond_4e
    const v0, 0x1e000020

    if-ne p0, v0, :cond_4f

    .line 352
    const-string p0, "AAC_ADTS_SCALABLE"

    return-object p0

    :cond_4f
    const v0, 0x1e000040

    if-ne p0, v0, :cond_50

    .line 355
    const-string p0, "AAC_ADTS_ERLC"

    return-object p0

    :cond_50
    const v0, 0x1e000080

    if-ne p0, v0, :cond_51

    .line 358
    const-string p0, "AAC_ADTS_LD"

    return-object p0

    :cond_51
    const v0, 0x1e000100

    if-ne p0, v0, :cond_52

    .line 361
    const-string p0, "AAC_ADTS_HE_V2"

    return-object p0

    :cond_52
    const v0, 0x1e000200

    if-ne p0, v0, :cond_53

    .line 364
    const-string p0, "AAC_ADTS_ELD"

    return-object p0

    .line 366
    :cond_53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
