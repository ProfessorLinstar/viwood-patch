.class public abstract Landroid/hardware/audio/common/V2_0/AudioDevice;
.super Ljava/lang/Object;
.source "AudioDevice.java"


# direct methods
.method public static final toString(I)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    .line 132
    const-string p0, "NONE"

    return-object p0

    :cond_0
    const/high16 v0, -0x80000000

    if-ne p0, v0, :cond_1

    .line 135
    const-string p0, "BIT_IN"

    return-object p0

    :cond_1
    const/high16 v0, 0x40000000    # 2.0f

    if-ne p0, v0, :cond_2

    .line 138
    const-string p0, "BIT_DEFAULT"

    return-object p0

    :cond_2
    const/4 v1, 0x1

    if-ne p0, v1, :cond_3

    .line 141
    const-string p0, "OUT_EARPIECE"

    return-object p0

    :cond_3
    const/4 v1, 0x2

    if-ne p0, v1, :cond_4

    .line 144
    const-string p0, "OUT_SPEAKER"

    return-object p0

    :cond_4
    const/4 v1, 0x4

    if-ne p0, v1, :cond_5

    .line 147
    const-string p0, "OUT_WIRED_HEADSET"

    return-object p0

    :cond_5
    const/16 v1, 0x8

    if-ne p0, v1, :cond_6

    .line 150
    const-string p0, "OUT_WIRED_HEADPHONE"

    return-object p0

    :cond_6
    const/16 v1, 0x10

    if-ne p0, v1, :cond_7

    .line 153
    const-string p0, "OUT_BLUETOOTH_SCO"

    return-object p0

    :cond_7
    const/16 v1, 0x20

    if-ne p0, v1, :cond_8

    .line 156
    const-string p0, "OUT_BLUETOOTH_SCO_HEADSET"

    return-object p0

    :cond_8
    const/16 v1, 0x40

    if-ne p0, v1, :cond_9

    .line 159
    const-string p0, "OUT_BLUETOOTH_SCO_CARKIT"

    return-object p0

    :cond_9
    const/16 v1, 0x80

    if-ne p0, v1, :cond_a

    .line 162
    const-string p0, "OUT_BLUETOOTH_A2DP"

    return-object p0

    :cond_a
    const/16 v1, 0x100

    if-ne p0, v1, :cond_b

    .line 165
    const-string p0, "OUT_BLUETOOTH_A2DP_HEADPHONES"

    return-object p0

    :cond_b
    const/16 v1, 0x200

    if-ne p0, v1, :cond_c

    .line 168
    const-string p0, "OUT_BLUETOOTH_A2DP_SPEAKER"

    return-object p0

    :cond_c
    const/16 v1, 0x400

    if-ne p0, v1, :cond_d

    .line 171
    const-string p0, "OUT_AUX_DIGITAL"

    return-object p0

    :cond_d
    if-ne p0, v1, :cond_e

    .line 174
    const-string p0, "OUT_HDMI"

    return-object p0

    :cond_e
    const/16 v1, 0x800

    if-ne p0, v1, :cond_f

    .line 177
    const-string p0, "OUT_ANLG_DOCK_HEADSET"

    return-object p0

    :cond_f
    const/16 v1, 0x1000

    if-ne p0, v1, :cond_10

    .line 180
    const-string p0, "OUT_DGTL_DOCK_HEADSET"

    return-object p0

    :cond_10
    const/16 v1, 0x2000

    if-ne p0, v1, :cond_11

    .line 183
    const-string p0, "OUT_USB_ACCESSORY"

    return-object p0

    :cond_11
    const/16 v1, 0x4000

    if-ne p0, v1, :cond_12

    .line 186
    const-string p0, "OUT_USB_DEVICE"

    return-object p0

    :cond_12
    const v1, 0x8000

    if-ne p0, v1, :cond_13

    .line 189
    const-string p0, "OUT_REMOTE_SUBMIX"

    return-object p0

    :cond_13
    const/high16 v1, 0x10000

    if-ne p0, v1, :cond_14

    .line 192
    const-string p0, "OUT_TELEPHONY_TX"

    return-object p0

    :cond_14
    const/high16 v1, 0x20000

    if-ne p0, v1, :cond_15

    .line 195
    const-string p0, "OUT_LINE"

    return-object p0

    :cond_15
    const/high16 v1, 0x40000

    if-ne p0, v1, :cond_16

    .line 198
    const-string p0, "OUT_HDMI_ARC"

    return-object p0

    :cond_16
    const/high16 v1, 0x80000

    if-ne p0, v1, :cond_17

    .line 201
    const-string p0, "OUT_SPDIF"

    return-object p0

    :cond_17
    const/high16 v1, 0x100000

    if-ne p0, v1, :cond_18

    .line 204
    const-string p0, "OUT_FM"

    return-object p0

    :cond_18
    const/high16 v1, 0x200000

    if-ne p0, v1, :cond_19

    .line 207
    const-string p0, "OUT_AUX_LINE"

    return-object p0

    :cond_19
    const/high16 v1, 0x400000

    if-ne p0, v1, :cond_1a

    .line 210
    const-string p0, "OUT_SPEAKER_SAFE"

    return-object p0

    :cond_1a
    const/high16 v1, 0x800000

    if-ne p0, v1, :cond_1b

    .line 213
    const-string p0, "OUT_IP"

    return-object p0

    :cond_1b
    const/high16 v1, 0x1000000

    if-ne p0, v1, :cond_1c

    .line 216
    const-string p0, "OUT_BUS"

    return-object p0

    :cond_1c
    const/high16 v1, 0x2000000

    if-ne p0, v1, :cond_1d

    .line 219
    const-string p0, "OUT_PROXY"

    return-object p0

    :cond_1d
    const/high16 v1, 0x4000000

    if-ne p0, v1, :cond_1e

    .line 222
    const-string p0, "OUT_USB_HEADSET"

    return-object p0

    :cond_1e
    if-ne p0, v0, :cond_1f

    .line 225
    const-string p0, "OUT_DEFAULT"

    return-object p0

    :cond_1f
    const v0, 0x47ffffff

    if-ne p0, v0, :cond_20

    .line 228
    const-string p0, "OUT_ALL"

    return-object p0

    :cond_20
    const/16 v0, 0x380

    if-ne p0, v0, :cond_21

    .line 231
    const-string p0, "OUT_ALL_A2DP"

    return-object p0

    :cond_21
    const/16 v0, 0x70

    if-ne p0, v0, :cond_22

    .line 234
    const-string p0, "OUT_ALL_SCO"

    return-object p0

    :cond_22
    const v0, 0x4006000

    if-ne p0, v0, :cond_23

    .line 237
    const-string p0, "OUT_ALL_USB"

    return-object p0

    :cond_23
    const v0, -0x7fffffff

    if-ne p0, v0, :cond_24

    .line 240
    const-string p0, "IN_COMMUNICATION"

    return-object p0

    :cond_24
    const v0, -0x7ffffffe

    if-ne p0, v0, :cond_25

    .line 243
    const-string p0, "IN_AMBIENT"

    return-object p0

    :cond_25
    const v0, -0x7ffffffc

    if-ne p0, v0, :cond_26

    .line 246
    const-string p0, "IN_BUILTIN_MIC"

    return-object p0

    :cond_26
    const v0, -0x7ffffff8

    if-ne p0, v0, :cond_27

    .line 249
    const-string p0, "IN_BLUETOOTH_SCO_HEADSET"

    return-object p0

    :cond_27
    const v1, -0x7ffffff0

    if-ne p0, v1, :cond_28

    .line 252
    const-string p0, "IN_WIRED_HEADSET"

    return-object p0

    :cond_28
    const v1, -0x7fffffe0

    if-ne p0, v1, :cond_29

    .line 255
    const-string p0, "IN_AUX_DIGITAL"

    return-object p0

    :cond_29
    if-ne p0, v1, :cond_2a

    .line 258
    const-string p0, "IN_HDMI"

    return-object p0

    :cond_2a
    const v1, -0x7fffffc0

    if-ne p0, v1, :cond_2b

    .line 261
    const-string p0, "IN_VOICE_CALL"

    return-object p0

    :cond_2b
    if-ne p0, v1, :cond_2c

    .line 264
    const-string p0, "IN_TELEPHONY_RX"

    return-object p0

    :cond_2c
    const v1, -0x7fffff80

    if-ne p0, v1, :cond_2d

    .line 267
    const-string p0, "IN_BACK_MIC"

    return-object p0

    :cond_2d
    const v1, -0x7fffff00

    if-ne p0, v1, :cond_2e

    .line 270
    const-string p0, "IN_REMOTE_SUBMIX"

    return-object p0

    :cond_2e
    const v1, -0x7ffffe00

    if-ne p0, v1, :cond_2f

    .line 273
    const-string p0, "IN_ANLG_DOCK_HEADSET"

    return-object p0

    :cond_2f
    const v1, -0x7ffffc00

    if-ne p0, v1, :cond_30

    .line 276
    const-string p0, "IN_DGTL_DOCK_HEADSET"

    return-object p0

    :cond_30
    const v1, -0x7ffff800

    if-ne p0, v1, :cond_31

    .line 279
    const-string p0, "IN_USB_ACCESSORY"

    return-object p0

    :cond_31
    const v1, -0x7ffff000

    if-ne p0, v1, :cond_32

    .line 282
    const-string p0, "IN_USB_DEVICE"

    return-object p0

    :cond_32
    const v1, -0x7fffe000

    if-ne p0, v1, :cond_33

    .line 285
    const-string p0, "IN_FM_TUNER"

    return-object p0

    :cond_33
    const v1, -0x7fffc000

    if-ne p0, v1, :cond_34

    .line 288
    const-string p0, "IN_TV_TUNER"

    return-object p0

    :cond_34
    const v1, -0x7fff8000

    if-ne p0, v1, :cond_35

    .line 291
    const-string p0, "IN_LINE"

    return-object p0

    :cond_35
    const/high16 v1, -0x7fff0000

    if-ne p0, v1, :cond_36

    .line 294
    const-string p0, "IN_SPDIF"

    return-object p0

    :cond_36
    const/high16 v1, -0x7ffe0000

    if-ne p0, v1, :cond_37

    .line 297
    const-string p0, "IN_BLUETOOTH_A2DP"

    return-object p0

    :cond_37
    const/high16 v1, -0x7ffc0000

    if-ne p0, v1, :cond_38

    .line 300
    const-string p0, "IN_LOOPBACK"

    return-object p0

    :cond_38
    const/high16 v1, -0x7ff80000

    if-ne p0, v1, :cond_39

    .line 303
    const-string p0, "IN_IP"

    return-object p0

    :cond_39
    const/high16 v1, -0x7ff00000

    if-ne p0, v1, :cond_3a

    .line 306
    const-string p0, "IN_BUS"

    return-object p0

    :cond_3a
    const/high16 v1, -0x7f000000

    if-ne p0, v1, :cond_3b

    .line 309
    const-string p0, "IN_PROXY"

    return-object p0

    :cond_3b
    const/high16 v1, -0x7e000000

    if-ne p0, v1, :cond_3c

    .line 312
    const-string p0, "IN_USB_HEADSET"

    return-object p0

    :cond_3c
    const/high16 v1, -0x40000000    # -2.0f

    if-ne p0, v1, :cond_3d

    .line 315
    const-string p0, "IN_DEFAULT"

    return-object p0

    :cond_3d
    const v1, -0x3ce00001    # -159.99998f

    if-ne p0, v1, :cond_3e

    .line 318
    const-string p0, "IN_ALL"

    return-object p0

    :cond_3e
    if-ne p0, v0, :cond_3f

    .line 321
    const-string p0, "IN_ALL_SCO"

    return-object p0

    :cond_3f
    const v0, -0x7dffe800

    if-ne p0, v0, :cond_40

    .line 324
    const-string p0, "IN_ALL_USB"

    return-object p0

    .line 326
    :cond_40
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
