.class public Lcom/android/server/hdmi/HdmiCecConfig;
.super Ljava/lang/Object;
.source "HdmiCecConfig.java"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mLock:Ljava/lang/Object;

.field public final mSettingChangeListeners:Landroid/util/ArrayMap;

.field public mSettings:Ljava/util/LinkedHashMap;

.field public final mStorageAdapter:Lcom/android/server/hdmi/HdmiCecConfig$StorageAdapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 693
    new-instance v0, Lcom/android/server/hdmi/HdmiCecConfig$StorageAdapter;

    invoke-direct {v0, p1}, Lcom/android/server/hdmi/HdmiCecConfig$StorageAdapter;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecConfig;-><init>(Landroid/content/Context;Lcom/android/server/hdmi/HdmiCecConfig$StorageAdapter;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/hdmi/HdmiCecConfig$StorageAdapter;)V
    .locals 6

    .line 282
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecConfig;->mLock:Ljava/lang/Object;

    .line 86
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecConfig;->mSettingChangeListeners:Landroid/util/ArrayMap;

    .line 90
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecConfig;->mSettings:Ljava/util/LinkedHashMap;

    .line 283
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecConfig;->mContext:Landroid/content/Context;

    .line 284
    iput-object p2, p0, Lcom/android/server/hdmi/HdmiCecConfig;->mStorageAdapter:Lcom/android/server/hdmi/HdmiCecConfig$StorageAdapter;

    .line 291
    const-string p1, "hdmi_cec_enabled"

    const p2, 0x1110079

    invoke-virtual {p0, p1, p2}, Lcom/android/server/hdmi/HdmiCecConfig;->registerSetting(Ljava/lang/String;I)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object p1

    const p2, 0x1110077

    const v0, 0x1110078

    const/4 v1, 0x1

    .line 294
    invoke-virtual {p1, v1, p2, v0}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    const p2, 0x1110075

    const v0, 0x1110076

    const/4 v2, 0x0

    .line 297
    invoke-virtual {p1, v2, p2, v0}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    .line 301
    const-string p1, "hdmi_cec_version"

    const p2, 0x111007e

    invoke-virtual {p0, p1, p2}, Lcom/android/server/hdmi/HdmiCecConfig;->registerSetting(Ljava/lang/String;I)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object p1

    const p2, 0x111007a

    const v0, 0x111007b

    const/4 v3, 0x5

    .line 304
    invoke-virtual {p1, v3, p2, v0}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    const p2, 0x111007c

    const v0, 0x111007d

    const/4 v3, 0x6

    .line 307
    invoke-virtual {p1, v3, p2, v0}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    .line 311
    const-string/jumbo p1, "routing_control"

    const p2, 0x1110100

    invoke-virtual {p0, p1, p2}, Lcom/android/server/hdmi/HdmiCecConfig;->registerSetting(Ljava/lang/String;I)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object p1

    const p2, 0x11100fe

    const v0, 0x11100ff

    .line 314
    invoke-virtual {p1, v1, p2, v0}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    const p2, 0x11100fc

    const v0, 0x11100fd

    .line 317
    invoke-virtual {p1, v2, p2, v0}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    .line 321
    const-string/jumbo p1, "soundbar_mode"

    const p2, 0x111010a

    invoke-virtual {p0, p1, p2}, Lcom/android/server/hdmi/HdmiCecConfig;->registerSetting(Ljava/lang/String;I)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object p1

    const p2, 0x1110108

    const v0, 0x1110109

    .line 324
    invoke-virtual {p1, v1, p2, v0}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    const p2, 0x1110106

    const v0, 0x1110107

    .line 327
    invoke-virtual {p1, v2, p2, v0}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    .line 331
    const-string/jumbo p1, "power_control_mode"

    const p2, 0x1110087

    invoke-virtual {p0, p1, p2}, Lcom/android/server/hdmi/HdmiCecConfig;->registerSetting(Ljava/lang/String;I)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object p1

    const p2, 0x1110085

    const v0, 0x1110086

    .line 334
    const-string/jumbo v4, "to_tv"

    invoke-virtual {p1, v4, p2, v0}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(Ljava/lang/String;II)V

    const p2, 0x111007f

    const v0, 0x1110080

    .line 337
    const-string v4, "broadcast"

    invoke-virtual {p1, v4, p2, v0}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(Ljava/lang/String;II)V

    const p2, 0x1110081

    const v0, 0x1110082

    .line 340
    const-string/jumbo v4, "none"

    invoke-virtual {p1, v4, p2, v0}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(Ljava/lang/String;II)V

    const p2, 0x1110083

    const v0, 0x1110084

    .line 343
    const-string/jumbo v5, "to_tv_and_audio_system"

    invoke-virtual {p1, v5, p2, v0}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(Ljava/lang/String;II)V

    .line 347
    const-string/jumbo p1, "power_state_change_on_active_source_lost"

    const p2, 0x111008c

    invoke-virtual {p0, p1, p2}, Lcom/android/server/hdmi/HdmiCecConfig;->registerSetting(Ljava/lang/String;I)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object p1

    const p2, 0x1110088

    const v0, 0x1110089

    .line 350
    invoke-virtual {p1, v4, p2, v0}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(Ljava/lang/String;II)V

    const p2, 0x111008a

    const v0, 0x111008b

    .line 354
    const-string/jumbo v4, "standby_now"

    invoke-virtual {p1, v4, p2, v0}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(Ljava/lang/String;II)V

    .line 359
    const-string/jumbo p1, "system_audio_control"

    const p2, 0x111010f

    invoke-virtual {p0, p1, p2}, Lcom/android/server/hdmi/HdmiCecConfig;->registerSetting(Ljava/lang/String;I)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object p1

    const p2, 0x111010d

    const v0, 0x111010e

    .line 362
    invoke-virtual {p1, v1, p2, v0}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    const p2, 0x111010b

    const v0, 0x111010c

    .line 365
    invoke-virtual {p1, v2, p2, v0}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    .line 369
    const-string/jumbo p1, "system_audio_mode_muting"

    const p2, 0x1110114

    invoke-virtual {p0, p1, p2}, Lcom/android/server/hdmi/HdmiCecConfig;->registerSetting(Ljava/lang/String;I)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object p1

    const p2, 0x1110112

    const v0, 0x1110113

    .line 372
    invoke-virtual {p1, v1, p2, v0}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    const p2, 0x1110110

    const v0, 0x1110111

    .line 375
    invoke-virtual {p1, v2, p2, v0}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    .line 379
    const-string/jumbo p1, "volume_control_enabled"

    const p2, 0x1110123

    invoke-virtual {p0, p1, p2}, Lcom/android/server/hdmi/HdmiCecConfig;->registerSetting(Ljava/lang/String;I)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object p1

    const p2, 0x1110121

    const v0, 0x1110122

    .line 382
    invoke-virtual {p1, v1, p2, v0}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    const p2, 0x111011f

    const v0, 0x1110120

    .line 385
    invoke-virtual {p1, v2, p2, v0}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    .line 389
    const-string/jumbo p1, "tv_wake_on_one_touch_play"

    const p2, 0x111011e

    invoke-virtual {p0, p1, p2}, Lcom/android/server/hdmi/HdmiCecConfig;->registerSetting(Ljava/lang/String;I)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object p1

    const p2, 0x111011c

    const v0, 0x111011d

    .line 392
    invoke-virtual {p1, v1, p2, v0}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    const p2, 0x111011a

    const v0, 0x111011b

    .line 395
    invoke-virtual {p1, v2, p2, v0}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    .line 399
    const-string/jumbo p1, "tv_send_standby_on_sleep"

    const p2, 0x1110119

    invoke-virtual {p0, p1, p2}, Lcom/android/server/hdmi/HdmiCecConfig;->registerSetting(Ljava/lang/String;I)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object p1

    const p2, 0x1110117

    const v0, 0x1110118

    .line 402
    invoke-virtual {p1, v1, p2, v0}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    const p2, 0x1110115

    const v0, 0x1110116

    .line 405
    invoke-virtual {p1, v2, p2, v0}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    .line 409
    const-string/jumbo p1, "set_menu_language"

    const p2, 0x1110105

    invoke-virtual {p0, p1, p2}, Lcom/android/server/hdmi/HdmiCecConfig;->registerSetting(Ljava/lang/String;I)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object p1

    const p2, 0x1110103

    const v0, 0x1110104

    .line 412
    invoke-virtual {p1, v1, p2, v0}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    const p2, 0x1110101

    const v0, 0x1110102

    .line 415
    invoke-virtual {p1, v2, p2, v0}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    .line 419
    const-string/jumbo p1, "rc_profile_tv"

    const p2, 0x11100fb

    invoke-virtual {p0, p1, p2}, Lcom/android/server/hdmi/HdmiCecConfig;->registerSetting(Ljava/lang/String;I)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object p1

    const p2, 0x11100f3

    const v0, 0x11100f4

    .line 422
    invoke-virtual {p1, v2, p2, v0}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    const p2, 0x11100f5

    const v0, 0x11100f6

    const/4 v4, 0x2

    .line 425
    invoke-virtual {p1, v4, p2, v0}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    const p2, 0x11100f9

    const v0, 0x11100fa

    .line 428
    invoke-virtual {p1, v3, p2, v0}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    const p2, 0x11100f7

    const v0, 0x11100f8

    const/16 v3, 0xa

    .line 431
    invoke-virtual {p1, v3, p2, v0}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    const p2, 0x11100f1

    const v0, 0x11100f2

    const/16 v3, 0xe

    .line 434
    invoke-virtual {p1, v3, p2, v0}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    .line 438
    const-string/jumbo p1, "rc_profile_source_handles_root_menu"

    const p2, 0x11100e6

    invoke-virtual {p0, p1, p2}, Lcom/android/server/hdmi/HdmiCecConfig;->registerSetting(Ljava/lang/String;I)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object p1

    const p2, 0x11100e2

    const v0, 0x11100e3

    .line 441
    invoke-virtual {p1, v1, p2, v0}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    const p2, 0x11100e4

    const v0, 0x11100e5

    .line 445
    invoke-virtual {p1, v2, p2, v0}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    .line 450
    const-string/jumbo p1, "rc_profile_source_handles_setup_menu"

    const p2, 0x11100eb

    invoke-virtual {p0, p1, p2}, Lcom/android/server/hdmi/HdmiCecConfig;->registerSetting(Ljava/lang/String;I)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object p1

    const p2, 0x11100e7

    const v0, 0x11100e8

    .line 453
    invoke-virtual {p1, v1, p2, v0}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    const p2, 0x11100e9

    const v0, 0x11100ea

    .line 457
    invoke-virtual {p1, v2, p2, v0}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    .line 462
    const-string/jumbo p1, "rc_profile_source_handles_contents_menu"

    const p2, 0x11100dc

    invoke-virtual {p0, p1, p2}, Lcom/android/server/hdmi/HdmiCecConfig;->registerSetting(Ljava/lang/String;I)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object p1

    const p2, 0x11100d8

    const v0, 0x11100d9

    .line 465
    invoke-virtual {p1, v1, p2, v0}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    const p2, 0x11100da

    const v0, 0x11100db

    .line 469
    invoke-virtual {p1, v2, p2, v0}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    .line 474
    const-string/jumbo p1, "rc_profile_source_handles_top_menu"

    const p2, 0x11100f0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/hdmi/HdmiCecConfig;->registerSetting(Ljava/lang/String;I)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object p1

    const p2, 0x11100ec

    const v0, 0x11100ed

    .line 477
    invoke-virtual {p1, v1, p2, v0}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    const p2, 0x11100ee

    const v0, 0x11100ef

    .line 481
    invoke-virtual {p1, v2, p2, v0}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    .line 486
    const-string/jumbo p1, "rc_profile_source_handles_media_context_sensitive_menu"

    const p2, 0x11100e1

    invoke-virtual {p0, p1, p2}, Lcom/android/server/hdmi/HdmiCecConfig;->registerSetting(Ljava/lang/String;I)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object p1

    const p2, 0x11100dd

    const v0, 0x11100de

    .line 490
    invoke-virtual {p1, v1, p2, v0}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    const p2, 0x11100df

    const v0, 0x11100e0

    .line 494
    invoke-virtual {p1, v2, p2, v0}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    .line 499
    const-string/jumbo p1, "query_sad_lpcm"

    const p2, 0x11100b4

    invoke-virtual {p0, p1, p2}, Lcom/android/server/hdmi/HdmiCecConfig;->registerSetting(Ljava/lang/String;I)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object p1

    const p2, 0x11100b2

    const v0, 0x11100b3

    .line 502
    invoke-virtual {p1, v1, p2, v0}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    const p2, 0x11100b0

    const v0, 0x11100b1

    .line 506
    invoke-virtual {p1, v2, p2, v0}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    .line 511
    const-string/jumbo p1, "query_sad_dd"

    const p2, 0x111009b

    invoke-virtual {p0, p1, p2}, Lcom/android/server/hdmi/HdmiCecConfig;->registerSetting(Ljava/lang/String;I)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object p1

    const p2, 0x1110099

    const v0, 0x111009a

    .line 514
    invoke-virtual {p1, v1, p2, v0}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    const p2, 0x1110097

    const v0, 0x1110098

    .line 518
    invoke-virtual {p1, v2, p2, v0}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    .line 523
    const-string/jumbo p1, "query_sad_mpeg1"

    const p2, 0x11100c3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/hdmi/HdmiCecConfig;->registerSetting(Ljava/lang/String;I)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object p1

    const p2, 0x11100c1

    const v0, 0x11100c2

    .line 526
    invoke-virtual {p1, v1, p2, v0}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    const p2, 0x11100bf

    const v0, 0x11100c0

    .line 530
    invoke-virtual {p1, v2, p2, v0}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    .line 535
    const-string/jumbo p1, "query_sad_mp3"

    const p2, 0x11100be

    invoke-virtual {p0, p1, p2}, Lcom/android/server/hdmi/HdmiCecConfig;->registerSetting(Ljava/lang/String;I)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object p1

    const p2, 0x11100bc

    const v0, 0x11100bd

    .line 538
    invoke-virtual {p1, v1, p2, v0}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    const p2, 0x11100ba

    const v0, 0x11100bb

    .line 542
    invoke-virtual {p1, v2, p2, v0}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    .line 547
    const-string/jumbo p1, "query_sad_mpeg2"

    const p2, 0x11100c8

    invoke-virtual {p0, p1, p2}, Lcom/android/server/hdmi/HdmiCecConfig;->registerSetting(Ljava/lang/String;I)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object p1

    const p2, 0x11100c6

    const v0, 0x11100c7

    .line 550
    invoke-virtual {p1, v1, p2, v0}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    const p2, 0x11100c4

    const v0, 0x11100c5

    .line 554
    invoke-virtual {p1, v2, p2, v0}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    .line 559
    const-string/jumbo p1, "query_sad_aac"

    const p2, 0x1110091

    invoke-virtual {p0, p1, p2}, Lcom/android/server/hdmi/HdmiCecConfig;->registerSetting(Ljava/lang/String;I)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object p1

    const p2, 0x111008f

    const v0, 0x1110090

    .line 562
    invoke-virtual {p1, v1, p2, v0}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    const p2, 0x111008d

    const v0, 0x111008e

    .line 566
    invoke-virtual {p1, v2, p2, v0}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    .line 571
    const-string/jumbo p1, "query_sad_dts"

    const p2, 0x11100aa

    invoke-virtual {p0, p1, p2}, Lcom/android/server/hdmi/HdmiCecConfig;->registerSetting(Ljava/lang/String;I)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object p1

    const p2, 0x11100a8

    const v0, 0x11100a9

    .line 574
    invoke-virtual {p1, v1, p2, v0}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    const p2, 0x11100a6

    const v0, 0x11100a7

    .line 578
    invoke-virtual {p1, v2, p2, v0}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    .line 583
    const-string/jumbo p1, "query_sad_atrac"

    const p2, 0x1110096

    invoke-virtual {p0, p1, p2}, Lcom/android/server/hdmi/HdmiCecConfig;->registerSetting(Ljava/lang/String;I)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object p1

    const p2, 0x1110094

    const v0, 0x1110095

    .line 586
    invoke-virtual {p1, v1, p2, v0}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    const p2, 0x1110092

    const v0, 0x1110093

    .line 590
    invoke-virtual {p1, v2, p2, v0}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    .line 595
    const-string/jumbo p1, "query_sad_onebitaudio"

    const p2, 0x11100cd

    invoke-virtual {p0, p1, p2}, Lcom/android/server/hdmi/HdmiCecConfig;->registerSetting(Ljava/lang/String;I)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object p1

    const p2, 0x11100cb

    const v0, 0x11100cc

    .line 598
    invoke-virtual {p1, v1, p2, v0}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    const p2, 0x11100c9

    const v0, 0x11100ca

    .line 602
    invoke-virtual {p1, v2, p2, v0}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    .line 607
    const-string/jumbo p1, "query_sad_ddp"

    const p2, 0x11100a0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/hdmi/HdmiCecConfig;->registerSetting(Ljava/lang/String;I)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object p1

    const p2, 0x111009e

    const v0, 0x111009f

    .line 610
    invoke-virtual {p1, v1, p2, v0}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    const p2, 0x111009c

    const v0, 0x111009d

    .line 614
    invoke-virtual {p1, v2, p2, v0}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    .line 619
    const-string/jumbo p1, "query_sad_dtshd"

    const p2, 0x11100af

    invoke-virtual {p0, p1, p2}, Lcom/android/server/hdmi/HdmiCecConfig;->registerSetting(Ljava/lang/String;I)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object p1

    const p2, 0x11100ad

    const v0, 0x11100ae

    .line 622
    invoke-virtual {p1, v1, p2, v0}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    const p2, 0x11100ab

    const v0, 0x11100ac

    .line 626
    invoke-virtual {p1, v2, p2, v0}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    .line 631
    const-string/jumbo p1, "query_sad_truehd"

    const p2, 0x11100d2

    invoke-virtual {p0, p1, p2}, Lcom/android/server/hdmi/HdmiCecConfig;->registerSetting(Ljava/lang/String;I)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object p1

    const p2, 0x11100d0

    const v0, 0x11100d1

    .line 634
    invoke-virtual {p1, v1, p2, v0}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    const p2, 0x11100ce

    const v0, 0x11100cf

    .line 638
    invoke-virtual {p1, v2, p2, v0}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    .line 643
    const-string/jumbo p1, "query_sad_dst"

    const p2, 0x11100a5

    invoke-virtual {p0, p1, p2}, Lcom/android/server/hdmi/HdmiCecConfig;->registerSetting(Ljava/lang/String;I)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object p1

    const p2, 0x11100a3

    const v0, 0x11100a4

    .line 646
    invoke-virtual {p1, v1, p2, v0}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    const p2, 0x11100a1

    const v0, 0x11100a2

    .line 650
    invoke-virtual {p1, v2, p2, v0}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    .line 655
    const-string/jumbo p1, "query_sad_wmapro"

    const p2, 0x11100d7

    invoke-virtual {p0, p1, p2}, Lcom/android/server/hdmi/HdmiCecConfig;->registerSetting(Ljava/lang/String;I)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object p1

    const p2, 0x11100d5

    const v0, 0x11100d6

    .line 658
    invoke-virtual {p1, v1, p2, v0}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    const p2, 0x11100d3

    const v0, 0x11100d4

    .line 662
    invoke-virtual {p1, v2, p2, v0}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    .line 667
    const-string/jumbo p1, "query_sad_max"

    const p2, 0x11100b9

    invoke-virtual {p0, p1, p2}, Lcom/android/server/hdmi/HdmiCecConfig;->registerSetting(Ljava/lang/String;I)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object p1

    const p2, 0x11100b7

    const v0, 0x11100b8

    .line 670
    invoke-virtual {p1, v1, p2, v0}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    const p2, 0x11100b5

    const v0, 0x11100b6

    .line 674
    invoke-virtual {p1, v2, p2, v0}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    .line 679
    const-string p1, "earc_enabled"

    const p2, 0x1110162

    invoke-virtual {p0, p1, p2}, Lcom/android/server/hdmi/HdmiCecConfig;->registerSetting(Ljava/lang/String;I)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object p1

    const p2, 0x1110165

    const v0, 0x1110166

    .line 682
    invoke-virtual {p1, v1, p2, v0}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    const p2, 0x1110163

    const v0, 0x1110164

    .line 685
    invoke-virtual {p1, v2, p2, v0}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->registerValue(III)V

    .line 689
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecConfig;->verifySettings()V

    return-void
.end method


# virtual methods
.method public getAllSettings()Ljava/util/List;
    .locals 1

    .line 981
    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecConfig;->mSettings:Ljava/util/LinkedHashMap;

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getAllowedIntValues(Ljava/lang/String;)Ljava/util/List;
    .locals 3

    .line 1044
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecConfig;->getSetting(Ljava/lang/String;)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object p0

    .line 1045
    const-string v0, "Setting \'"

    if-eqz p0, :cond_2

    .line 1048
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getValueType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "int"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1052
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 1053
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getAllowedValues()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/hdmi/HdmiCecConfig$Value;

    .line 1054
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecConfig$Value;->getIntValue()Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object p1

    .line 1049
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' is not a string-type setting."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1046
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' does not exist."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getAllowedStringValues(Ljava/lang/String;)Ljava/util/List;
    .locals 3

    .line 1025
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecConfig;->getSetting(Ljava/lang/String;)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object p0

    .line 1026
    const-string v0, "Setting \'"

    if-eqz p0, :cond_2

    .line 1029
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getValueType()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "string"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1033
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 1034
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getAllowedValues()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/hdmi/HdmiCecConfig$Value;

    .line 1035
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecConfig$Value;->getStringValue()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object p1

    .line 1030
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' is not a string-type setting."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1027
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' does not exist."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getDefaultIntValue(Ljava/lang/String;)I
    .locals 3

    .line 1078
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecConfig;->getSetting(Ljava/lang/String;)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object v0

    .line 1079
    const-string v1, "Setting \'"

    if-eqz v0, :cond_1

    .line 1082
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getValueType()Ljava/lang/String;

    move-result-object v0

    const-string v2, "int"

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1086
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecConfig;->getSetting(Ljava/lang/String;)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getDefaultValue()Lcom/android/server/hdmi/HdmiCecConfig$Value;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecConfig$Value;->getIntValue()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    .line 1083
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' is not a string-type setting."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1080
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' does not exist."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getDefaultStringValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1063
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecConfig;->getSetting(Ljava/lang/String;)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object v0

    .line 1064
    const-string v1, "Setting \'"

    if-eqz v0, :cond_1

    .line 1067
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getValueType()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "string"

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1071
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecConfig;->getSetting(Ljava/lang/String;)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getDefaultValue()Lcom/android/server/hdmi/HdmiCecConfig$Value;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecConfig$Value;->getStringValue()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1068
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' is not a string-type setting."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1065
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' does not exist."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getIntValue(Ljava/lang/String;)I
    .locals 4

    .line 1109
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecConfig;->getSetting(Ljava/lang/String;)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object v0

    .line 1110
    const-string v1, "Setting \'"

    if-eqz v0, :cond_1

    .line 1113
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getValueType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "int"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1117
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Getting CEC setting value \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v1}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1118
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getDefaultValue()Lcom/android/server/hdmi/HdmiCecConfig$Value;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecConfig$Value;->getIntValue()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    .line 1119
    invoke-virtual {p0, v0, p1}, Lcom/android/server/hdmi/HdmiCecConfig;->retrieveValue(Lcom/android/server/hdmi/HdmiCecConfig$Setting;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1120
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 1114
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' is not a int-type setting."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1111
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' does not exist."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getSetting(Ljava/lang/String;)Lcom/android/server/hdmi/HdmiCecConfig$Setting;
    .locals 1

    .line 715
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecConfig;->mSettings:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecConfig;->mSettings:Ljava/util/LinkedHashMap;

    invoke-virtual {p0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getStorage(Lcom/android/server/hdmi/HdmiCecConfig$Setting;)I
    .locals 3

    .line 720
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    const/4 v0, 0x2

    const/4 v1, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string/jumbo v2, "system_audio_control"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v1, 0x21

    goto/16 :goto_0

    :sswitch_1
    const-string/jumbo v2, "tv_send_standby_on_sleep"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v1, 0x20

    goto/16 :goto_0

    :sswitch_2
    const-string/jumbo v2, "query_sad_mp3"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v1, 0x1f

    goto/16 :goto_0

    :sswitch_3
    const-string/jumbo v2, "query_sad_max"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v1, 0x1e

    goto/16 :goto_0

    :sswitch_4
    const-string/jumbo v2, "query_sad_dts"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v1, 0x1d

    goto/16 :goto_0

    :sswitch_5
    const-string/jumbo v2, "query_sad_dst"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v1, 0x1c

    goto/16 :goto_0

    :sswitch_6
    const-string/jumbo v2, "query_sad_ddp"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 v1, 0x1b

    goto/16 :goto_0

    :sswitch_7
    const-string/jumbo v2, "query_sad_aac"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    goto/16 :goto_0

    :cond_7
    const/16 v1, 0x1a

    goto/16 :goto_0

    :sswitch_8
    const-string/jumbo v2, "tv_wake_on_one_touch_play"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    goto/16 :goto_0

    :cond_8
    const/16 v1, 0x19

    goto/16 :goto_0

    :sswitch_9
    const-string/jumbo v2, "query_sad_dd"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    goto/16 :goto_0

    :cond_9
    const/16 v1, 0x18

    goto/16 :goto_0

    :sswitch_a
    const-string/jumbo v2, "query_sad_onebitaudio"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a

    goto/16 :goto_0

    :cond_a
    const/16 v1, 0x17

    goto/16 :goto_0

    :sswitch_b
    const-string/jumbo v2, "rc_profile_tv"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b

    goto/16 :goto_0

    :cond_b
    const/16 v1, 0x16

    goto/16 :goto_0

    :sswitch_c
    const-string v2, "hdmi_cec_enabled"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c

    goto/16 :goto_0

    :cond_c
    const/16 v1, 0x15

    goto/16 :goto_0

    :sswitch_d
    const-string/jumbo v2, "volume_control_enabled"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_d

    goto/16 :goto_0

    :cond_d
    const/16 v1, 0x14

    goto/16 :goto_0

    :sswitch_e
    const-string/jumbo v2, "soundbar_mode"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_e

    goto/16 :goto_0

    :cond_e
    const/16 v1, 0x13

    goto/16 :goto_0

    :sswitch_f
    const-string/jumbo v2, "power_control_mode"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_f

    goto/16 :goto_0

    :cond_f
    const/16 v1, 0x12

    goto/16 :goto_0

    :sswitch_10
    const-string/jumbo v2, "power_state_change_on_active_source_lost"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_10

    goto/16 :goto_0

    :cond_10
    const/16 v1, 0x11

    goto/16 :goto_0

    :sswitch_11
    const-string/jumbo v2, "rc_profile_source_handles_setup_menu"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_11

    goto/16 :goto_0

    :cond_11
    const/16 v1, 0x10

    goto/16 :goto_0

    :sswitch_12
    const-string/jumbo v2, "query_sad_lpcm"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_12

    goto/16 :goto_0

    :cond_12
    const/16 v1, 0xf

    goto/16 :goto_0

    :sswitch_13
    const-string/jumbo v2, "routing_control"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_13

    goto/16 :goto_0

    :cond_13
    const/16 v1, 0xe

    goto/16 :goto_0

    :sswitch_14
    const-string/jumbo v2, "query_sad_wmapro"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_14

    goto/16 :goto_0

    :cond_14
    const/16 v1, 0xd

    goto/16 :goto_0

    :sswitch_15
    const-string/jumbo v2, "rc_profile_source_handles_contents_menu"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_15

    goto/16 :goto_0

    :cond_15
    const/16 v1, 0xc

    goto/16 :goto_0

    :sswitch_16
    const-string/jumbo v2, "query_sad_truehd"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_16

    goto/16 :goto_0

    :cond_16
    const/16 v1, 0xb

    goto/16 :goto_0

    :sswitch_17
    const-string v2, "earc_enabled"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_17

    goto/16 :goto_0

    :cond_17
    const/16 v1, 0xa

    goto/16 :goto_0

    :sswitch_18
    const-string/jumbo v2, "query_sad_mpeg2"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_18

    goto/16 :goto_0

    :cond_18
    const/16 v1, 0x9

    goto/16 :goto_0

    :sswitch_19
    const-string/jumbo v2, "query_sad_mpeg1"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_19

    goto/16 :goto_0

    :cond_19
    const/16 v1, 0x8

    goto/16 :goto_0

    :sswitch_1a
    const-string/jumbo v2, "query_sad_dtshd"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1a

    goto :goto_0

    :cond_1a
    const/4 v1, 0x7

    goto :goto_0

    :sswitch_1b
    const-string/jumbo v2, "query_sad_atrac"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1b

    goto :goto_0

    :cond_1b
    const/4 v1, 0x6

    goto :goto_0

    :sswitch_1c
    const-string/jumbo v2, "rc_profile_source_handles_root_menu"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1c

    goto :goto_0

    :cond_1c
    const/4 v1, 0x5

    goto :goto_0

    :sswitch_1d
    const-string/jumbo v2, "rc_profile_source_handles_top_menu"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1d

    goto :goto_0

    :cond_1d
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_1e
    const-string/jumbo v2, "rc_profile_source_handles_media_context_sensitive_menu"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1e

    goto :goto_0

    :cond_1e
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_1f
    const-string/jumbo v2, "set_menu_language"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1f

    goto :goto_0

    :cond_1f
    move v1, v0

    goto :goto_0

    :sswitch_20
    const-string/jumbo v2, "system_audio_mode_muting"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_20

    goto :goto_0

    :cond_20
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_21
    const-string v2, "hdmi_cec_version"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_21

    goto :goto_0

    :cond_21
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 791
    new-instance p0, Lcom/android/server/hdmi/HdmiCecConfig$VerificationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid CEC setting \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' storage."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecConfig$VerificationException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    return v0

    :sswitch_data_0
    .sparse-switch
        -0x7b89074d -> :sswitch_21
        -0x6a9ec647 -> :sswitch_20
        -0x607d7ae5 -> :sswitch_1f
        -0x4c082dd9 -> :sswitch_1e
        -0x4ab99283 -> :sswitch_1d
        -0x46d3da58 -> :sswitch_1c
        -0x44f9855f -> :sswitch_1b
        -0x44cf3a41 -> :sswitch_1a
        -0x44526d14 -> :sswitch_19
        -0x44526d13 -> :sswitch_18
        -0x40778731 -> :sswitch_17
        -0x39e5d496 -> :sswitch_16
        -0x36427790 -> :sswitch_15
        -0x3516ad1e -> :sswitch_14
        -0x1893b91c -> :sswitch_13
        -0x12b8cab2 -> :sswitch_12
        -0x117d9fab -> :sswitch_11
        -0xd196d78 -> :sswitch_10
        -0x1832fc1 -> :sswitch_f
        0x118545e -> :sswitch_e
        0x45cb33a -> :sswitch_d
        0xf91671c -> :sswitch_c
        0x2f314ba6 -> :sswitch_b
        0x2fa40eef -> :sswitch_a
        0x5e0410e0 -> :sswitch_9
        0x611b5e8f -> :sswitch_8
        0x627dffe3 -> :sswitch_7
        0x627e0b90 -> :sswitch_6
        0x627e0d65 -> :sswitch_5
        0x627e0d83 -> :sswitch_4
        0x627e2d04 -> :sswitch_3
        0x627e2e90 -> :sswitch_2
        0x7a8663a3 -> :sswitch_1
        0x7e41b7e4 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final getStorageKey(Lcom/android/server/hdmi/HdmiCecConfig$Setting;)Ljava/lang/String;
    .locals 2

    .line 797
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    const/4 v0, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string/jumbo v1, "system_audio_control"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v0, 0x21

    goto/16 :goto_0

    :sswitch_1
    const-string/jumbo v1, "tv_send_standby_on_sleep"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v0, 0x20

    goto/16 :goto_0

    :sswitch_2
    const-string/jumbo v1, "query_sad_mp3"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v0, 0x1f

    goto/16 :goto_0

    :sswitch_3
    const-string/jumbo v1, "query_sad_max"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v0, 0x1e

    goto/16 :goto_0

    :sswitch_4
    const-string/jumbo v1, "query_sad_dts"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v0, 0x1d

    goto/16 :goto_0

    :sswitch_5
    const-string/jumbo v1, "query_sad_dst"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v0, 0x1c

    goto/16 :goto_0

    :sswitch_6
    const-string/jumbo v1, "query_sad_ddp"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 v0, 0x1b

    goto/16 :goto_0

    :sswitch_7
    const-string/jumbo v1, "query_sad_aac"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    goto/16 :goto_0

    :cond_7
    const/16 v0, 0x1a

    goto/16 :goto_0

    :sswitch_8
    const-string/jumbo v1, "tv_wake_on_one_touch_play"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    goto/16 :goto_0

    :cond_8
    const/16 v0, 0x19

    goto/16 :goto_0

    :sswitch_9
    const-string/jumbo v1, "query_sad_dd"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    goto/16 :goto_0

    :cond_9
    const/16 v0, 0x18

    goto/16 :goto_0

    :sswitch_a
    const-string/jumbo v1, "query_sad_onebitaudio"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a

    goto/16 :goto_0

    :cond_a
    const/16 v0, 0x17

    goto/16 :goto_0

    :sswitch_b
    const-string/jumbo v1, "rc_profile_tv"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b

    goto/16 :goto_0

    :cond_b
    const/16 v0, 0x16

    goto/16 :goto_0

    :sswitch_c
    const-string v1, "hdmi_cec_enabled"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c

    goto/16 :goto_0

    :cond_c
    const/16 v0, 0x15

    goto/16 :goto_0

    :sswitch_d
    const-string/jumbo v1, "volume_control_enabled"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_d

    goto/16 :goto_0

    :cond_d
    const/16 v0, 0x14

    goto/16 :goto_0

    :sswitch_e
    const-string/jumbo v1, "soundbar_mode"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_e

    goto/16 :goto_0

    :cond_e
    const/16 v0, 0x13

    goto/16 :goto_0

    :sswitch_f
    const-string/jumbo v1, "power_control_mode"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_f

    goto/16 :goto_0

    :cond_f
    const/16 v0, 0x12

    goto/16 :goto_0

    :sswitch_10
    const-string/jumbo v1, "power_state_change_on_active_source_lost"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_10

    goto/16 :goto_0

    :cond_10
    const/16 v0, 0x11

    goto/16 :goto_0

    :sswitch_11
    const-string/jumbo v1, "rc_profile_source_handles_setup_menu"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_11

    goto/16 :goto_0

    :cond_11
    const/16 v0, 0x10

    goto/16 :goto_0

    :sswitch_12
    const-string/jumbo v1, "query_sad_lpcm"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_12

    goto/16 :goto_0

    :cond_12
    const/16 v0, 0xf

    goto/16 :goto_0

    :sswitch_13
    const-string/jumbo v1, "routing_control"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_13

    goto/16 :goto_0

    :cond_13
    const/16 v0, 0xe

    goto/16 :goto_0

    :sswitch_14
    const-string/jumbo v1, "query_sad_wmapro"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_14

    goto/16 :goto_0

    :cond_14
    const/16 v0, 0xd

    goto/16 :goto_0

    :sswitch_15
    const-string/jumbo v1, "rc_profile_source_handles_contents_menu"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_15

    goto/16 :goto_0

    :cond_15
    const/16 v0, 0xc

    goto/16 :goto_0

    :sswitch_16
    const-string/jumbo v1, "query_sad_truehd"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_16

    goto/16 :goto_0

    :cond_16
    const/16 v0, 0xb

    goto/16 :goto_0

    :sswitch_17
    const-string v1, "earc_enabled"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_17

    goto/16 :goto_0

    :cond_17
    const/16 v0, 0xa

    goto/16 :goto_0

    :sswitch_18
    const-string/jumbo v1, "query_sad_mpeg2"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_18

    goto/16 :goto_0

    :cond_18
    const/16 v0, 0x9

    goto/16 :goto_0

    :sswitch_19
    const-string/jumbo v1, "query_sad_mpeg1"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_19

    goto/16 :goto_0

    :cond_19
    const/16 v0, 0x8

    goto/16 :goto_0

    :sswitch_1a
    const-string/jumbo v1, "query_sad_dtshd"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1a

    goto :goto_0

    :cond_1a
    const/4 v0, 0x7

    goto :goto_0

    :sswitch_1b
    const-string/jumbo v1, "query_sad_atrac"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1b

    goto :goto_0

    :cond_1b
    const/4 v0, 0x6

    goto :goto_0

    :sswitch_1c
    const-string/jumbo v1, "rc_profile_source_handles_root_menu"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1c

    goto :goto_0

    :cond_1c
    const/4 v0, 0x5

    goto :goto_0

    :sswitch_1d
    const-string/jumbo v1, "rc_profile_source_handles_top_menu"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1d

    goto :goto_0

    :cond_1d
    const/4 v0, 0x4

    goto :goto_0

    :sswitch_1e
    const-string/jumbo v1, "rc_profile_source_handles_media_context_sensitive_menu"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1e

    goto :goto_0

    :cond_1e
    const/4 v0, 0x3

    goto :goto_0

    :sswitch_1f
    const-string/jumbo v1, "set_menu_language"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1f

    goto :goto_0

    :cond_1f
    const/4 v0, 0x2

    goto :goto_0

    :sswitch_20
    const-string/jumbo v1, "system_audio_mode_muting"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_20

    goto :goto_0

    :cond_20
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_21
    const-string v1, "hdmi_cec_version"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_21

    goto :goto_0

    :cond_21
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 868
    new-instance p0, Lcom/android/server/hdmi/HdmiCecConfig$VerificationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid CEC setting \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' storage key."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecConfig$VerificationException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 813
    :pswitch_0
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 819
    :pswitch_1
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 842
    :pswitch_2
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 864
    :pswitch_3
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 848
    :pswitch_4
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 860
    :pswitch_5
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 854
    :pswitch_6
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 846
    :pswitch_7
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 817
    :pswitch_8
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 838
    :pswitch_9
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 852
    :pswitch_a
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 823
    :pswitch_b
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 799
    :pswitch_c
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 809
    :pswitch_d
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 805
    :pswitch_e
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 807
    :pswitch_f
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 811
    :pswitch_10
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 827
    :pswitch_11
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 836
    :pswitch_12
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 803
    :pswitch_13
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 862
    :pswitch_14
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 829
    :pswitch_15
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 858
    :pswitch_16
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 866
    :pswitch_17
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 844
    :pswitch_18
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 840
    :pswitch_19
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 856
    :pswitch_1a
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 850
    :pswitch_1b
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 825
    :pswitch_1c
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 831
    :pswitch_1d
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 834
    :pswitch_1e
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 821
    :pswitch_1f
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 815
    :pswitch_20
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 801
    :pswitch_21
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0x7b89074d -> :sswitch_21
        -0x6a9ec647 -> :sswitch_20
        -0x607d7ae5 -> :sswitch_1f
        -0x4c082dd9 -> :sswitch_1e
        -0x4ab99283 -> :sswitch_1d
        -0x46d3da58 -> :sswitch_1c
        -0x44f9855f -> :sswitch_1b
        -0x44cf3a41 -> :sswitch_1a
        -0x44526d14 -> :sswitch_19
        -0x44526d13 -> :sswitch_18
        -0x40778731 -> :sswitch_17
        -0x39e5d496 -> :sswitch_16
        -0x36427790 -> :sswitch_15
        -0x3516ad1e -> :sswitch_14
        -0x1893b91c -> :sswitch_13
        -0x12b8cab2 -> :sswitch_12
        -0x117d9fab -> :sswitch_11
        -0xd196d78 -> :sswitch_10
        -0x1832fc1 -> :sswitch_f
        0x118545e -> :sswitch_e
        0x45cb33a -> :sswitch_d
        0xf91671c -> :sswitch_c
        0x2f314ba6 -> :sswitch_b
        0x2fa40eef -> :sswitch_a
        0x5e0410e0 -> :sswitch_9
        0x611b5e8f -> :sswitch_8
        0x627dffe3 -> :sswitch_7
        0x627e0b90 -> :sswitch_6
        0x627e0d65 -> :sswitch_5
        0x627e0d83 -> :sswitch_4
        0x627e2d04 -> :sswitch_3
        0x627e2e90 -> :sswitch_2
        0x7a8663a3 -> :sswitch_1
        0x7e41b7e4 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getStringValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1093
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecConfig;->getSetting(Ljava/lang/String;)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object v0

    .line 1094
    const-string v1, "Setting \'"

    if-eqz v0, :cond_1

    .line 1097
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getValueType()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "string"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1101
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Getting CEC setting value \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v1}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1102
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getDefaultValue()Lcom/android/server/hdmi/HdmiCecConfig$Value;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecConfig$Value;->getStringValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/android/server/hdmi/HdmiCecConfig;->retrieveValue(Lcom/android/server/hdmi/HdmiCecConfig$Setting;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1098
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' is not a string-type setting."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1095
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' does not exist."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getUserSettings()Ljava/util/List;
    .locals 3

    .line 988
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 989
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecConfig;->mSettings:Ljava/util/LinkedHashMap;

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    .line 990
    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getUserConfigurable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 991
    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public isIntValueType(Ljava/lang/String;)Z
    .locals 2

    .line 1014
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecConfig;->getSetting(Ljava/lang/String;)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1018
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecConfig;->getSetting(Ljava/lang/String;)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getValueType()Ljava/lang/String;

    move-result-object p0

    const-string p1, "int"

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 1016
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Setting \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' does not exist."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public isStringValueType(Ljava/lang/String;)Z
    .locals 2

    .line 1002
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecConfig;->getSetting(Ljava/lang/String;)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1006
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecConfig;->getSetting(Ljava/lang/String;)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getValueType()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "string"

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 1004
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Setting \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' does not exist."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public notifySettingChanged(Lcom/android/server/hdmi/HdmiCecConfig$Setting;)V
    .locals 5

    .line 906
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecConfig;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 907
    :try_start_0
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecConfig;->mSettingChangeListeners:Landroid/util/ArrayMap;

    .line 908
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArrayMap;

    if-nez v1, :cond_0

    .line 910
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 912
    :cond_0
    invoke-virtual {v1}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 913
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/hdmi/HdmiCecConfig$SettingChangeListener;

    .line 914
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/Executor;

    .line 915
    new-instance v4, Lcom/android/server/hdmi/HdmiCecConfig$1;

    invoke-direct {v4, p0, v3, p1}, Lcom/android/server/hdmi/HdmiCecConfig$1;-><init>(Lcom/android/server/hdmi/HdmiCecConfig;Lcom/android/server/hdmi/HdmiCecConfig$SettingChangeListener;Lcom/android/server/hdmi/HdmiCecConfig$Setting;)V

    invoke-interface {v2, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 922
    :cond_1
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public registerChangeListener(Ljava/lang/String;Lcom/android/server/hdmi/HdmiCecConfig$SettingChangeListener;)V
    .locals 1

    .line 930
    sget-object v0, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/hdmi/HdmiCecConfig;->registerChangeListener(Ljava/lang/String;Lcom/android/server/hdmi/HdmiCecConfig$SettingChangeListener;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public registerChangeListener(Ljava/lang/String;Lcom/android/server/hdmi/HdmiCecConfig$SettingChangeListener;Ljava/util/concurrent/Executor;)V
    .locals 3

    .line 939
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecConfig;->getSetting(Ljava/lang/String;)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 943
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecConfig;->getStorage(Lcom/android/server/hdmi/HdmiCecConfig$Setting;)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 945
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Change listeners for setting \'"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' not supported."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 948
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecConfig;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 949
    :try_start_0
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiCecConfig;->mSettingChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 950
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiCecConfig;->mSettingChangeListeners:Landroid/util/ArrayMap;

    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    invoke-virtual {p1, v0, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 952
    :cond_2
    :goto_1
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecConfig;->mSettingChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {p0, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/ArrayMap;

    invoke-virtual {p0, p2, p3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 953
    monitor-exit v1

    return-void

    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 941
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Setting \'"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' does not exist."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final registerSetting(Ljava/lang/String;I)Lcom/android/server/hdmi/HdmiCecConfig$Setting;
    .locals 2

    .line 698
    new-instance v0, Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecConfig;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;-><init>(Lcom/android/server/hdmi/HdmiCecConfig;Landroid/content/Context;Ljava/lang/String;I)V

    .line 699
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecConfig;->mSettings:Ljava/util/LinkedHashMap;

    invoke-virtual {p0, p1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public removeChangeListener(Ljava/lang/String;Lcom/android/server/hdmi/HdmiCecConfig$SettingChangeListener;)V
    .locals 2

    .line 961
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecConfig;->getSetting(Ljava/lang/String;)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 965
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecConfig;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 966
    :try_start_0
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiCecConfig;->mSettingChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 967
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiCecConfig;->mSettingChangeListeners:Landroid/util/ArrayMap;

    .line 968
    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/ArrayMap;

    .line 969
    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 970
    invoke-virtual {p1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 971
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecConfig;->mSettingChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {p0, v0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 974
    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 963
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Setting \'"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' does not exist."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public retrieveValue(Lcom/android/server/hdmi/HdmiCecConfig$Setting;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 874
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecConfig;->getStorage(Lcom/android/server/hdmi/HdmiCecConfig$Setting;)I

    move-result v0

    .line 875
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecConfig;->getStorageKey(Lcom/android/server/hdmi/HdmiCecConfig$Setting;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    .line 876
    const-string v2, "Reading \'"

    if-nez v0, :cond_0

    .line 877
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\' sysprop."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 878
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecConfig;->mStorageAdapter:Lcom/android/server/hdmi/HdmiCecConfig$StorageAdapter;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/hdmi/HdmiCecConfig$StorageAdapter;->retrieveSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    .line 880
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\' global setting."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 881
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecConfig;->mStorageAdapter:Lcom/android/server/hdmi/HdmiCecConfig$StorageAdapter;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/hdmi/HdmiCecConfig$StorageAdapter;->retrieveGlobalSetting(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    .line 883
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\' shared preference."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 884
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecConfig;->mStorageAdapter:Lcom/android/server/hdmi/HdmiCecConfig$StorageAdapter;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/hdmi/HdmiCecConfig$StorageAdapter;->retrieveSharedPref(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public setIntValue(Ljava/lang/String;I)V
    .locals 5

    .line 1150
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecConfig;->getSetting(Ljava/lang/String;)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object v0

    .line 1151
    const-string v1, "Setting \'"

    if-eqz v0, :cond_3

    .line 1154
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getUserConfigurable()Z

    move-result v2

    const-string v3, "Updating CEC setting \'"

    if-eqz v2, :cond_2

    .line 1157
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getValueType()Ljava/lang/String;

    move-result-object v2

    const-string v4, "int"

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1161
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecConfig;->getAllowedIntValues(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "\'."

    if-eqz v1, :cond_0

    .line 1165
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' to \'"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v1}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1166
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/android/server/hdmi/HdmiCecConfig;->storeValue(Lcom/android/server/hdmi/HdmiCecConfig$Setting;Ljava/lang/String;)V

    return-void

    .line 1162
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid CEC setting \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' value: \'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1158
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' is not a int-type setting."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1155
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' prohibited."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1152
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' does not exist."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setStringValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 1127
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecConfig;->getSetting(Ljava/lang/String;)Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    move-result-object v0

    .line 1128
    const-string v1, "Setting \'"

    if-eqz v0, :cond_3

    .line 1131
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getUserConfigurable()Z

    move-result v2

    const-string v3, "Updating CEC setting \'"

    if-eqz v2, :cond_2

    .line 1134
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getValueType()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "string"

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1138
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecConfig;->getAllowedStringValues(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "\'."

    if-eqz v1, :cond_0

    .line 1142
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' to \'"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v1}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1143
    invoke-virtual {p0, v0, p2}, Lcom/android/server/hdmi/HdmiCecConfig;->storeValue(Lcom/android/server/hdmi/HdmiCecConfig$Setting;Ljava/lang/String;)V

    return-void

    .line 1139
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid CEC setting \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' value: \'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1135
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' is not a string-type setting."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1132
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' prohibited."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1129
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' does not exist."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public storeValue(Lcom/android/server/hdmi/HdmiCecConfig$Setting;Ljava/lang/String;)V
    .locals 5

    .line 890
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecConfig;->getStorage(Lcom/android/server/hdmi/HdmiCecConfig$Setting;)I

    move-result v0

    .line 891
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecConfig;->getStorageKey(Lcom/android/server/hdmi/HdmiCecConfig$Setting;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 892
    const-string v3, "Setting \'"

    if-nez v0, :cond_0

    .line 893
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\' sysprop."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 894
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecConfig;->mStorageAdapter:Lcom/android/server/hdmi/HdmiCecConfig$StorageAdapter;

    invoke-virtual {p0, v1, p2}, Lcom/android/server/hdmi/HdmiCecConfig$StorageAdapter;->storeSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v4, 0x1

    if-ne v0, v4, :cond_1

    .line 896
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\' global setting."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 897
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecConfig;->mStorageAdapter:Lcom/android/server/hdmi/HdmiCecConfig$StorageAdapter;

    invoke-virtual {p0, v1, p2}, Lcom/android/server/hdmi/HdmiCecConfig$StorageAdapter;->storeGlobalSetting(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 v4, 0x2

    if-ne v0, v4, :cond_2

    .line 899
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\' shared pref."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 900
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecConfig;->mStorageAdapter:Lcom/android/server/hdmi/HdmiCecConfig$StorageAdapter;

    invoke-virtual {v0, v1, p2}, Lcom/android/server/hdmi/HdmiCecConfig$StorageAdapter;->storeSharedPref(Ljava/lang/String;Ljava/lang/String;)V

    .line 901
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecConfig;->notifySettingChanged(Lcom/android/server/hdmi/HdmiCecConfig$Setting;)V

    :cond_2
    return-void
.end method

.method public final verifySettings()V
    .locals 2

    .line 704
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecConfig;->mSettings:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/hdmi/HdmiCecConfig$Setting;

    .line 707
    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiCecConfig$Setting;->getDefaultValue()Lcom/android/server/hdmi/HdmiCecConfig$Value;

    .line 708
    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiCecConfig;->getStorage(Lcom/android/server/hdmi/HdmiCecConfig$Setting;)I

    .line 709
    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiCecConfig;->getStorageKey(Lcom/android/server/hdmi/HdmiCecConfig$Setting;)Ljava/lang/String;

    goto :goto_0

    :cond_0
    return-void
.end method
