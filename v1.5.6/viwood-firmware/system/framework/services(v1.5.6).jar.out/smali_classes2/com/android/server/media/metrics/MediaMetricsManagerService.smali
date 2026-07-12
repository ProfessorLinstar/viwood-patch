.class public final Lcom/android/server/media/metrics/MediaMetricsManagerService;
.super Lcom/android/server/SystemService;
.source "MediaMetricsManagerService.java"


# static fields
.field public static final EMPTY_MEDIA_ITEM_INFO:Landroid/media/metrics/MediaItemInfo;

.field public static final PATTERN_KNOWN_EDITING_LIBRARY_NAMES:Ljava/util/regex/Pattern;


# instance fields
.field public mAllowlist:Ljava/util/List;

.field public mBlockList:Ljava/util/List;

.field public final mContext:Landroid/content/Context;

.field public final mLock:Ljava/lang/Object;

.field public mMode:Ljava/lang/Integer;

.field public mNoUidAllowlist:Ljava/util/List;

.field public mNoUidBlocklist:Ljava/util/List;

.field public final mSecureRandom:Ljava/security/SecureRandom;


# direct methods
.method public static synthetic $r8$lambda$3zfSFqjd2XGt_8BvNvc_mTaVjig(Lcom/android/server/media/metrics/MediaMetricsManagerService;Landroid/provider/DeviceConfig$Properties;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->updateConfigs(Landroid/provider/DeviceConfig$Properties;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmAllowlist(Lcom/android/server/media/metrics/MediaMetricsManagerService;)Ljava/util/List;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService;->mAllowlist:Ljava/util/List;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmBlockList(Lcom/android/server/media/metrics/MediaMetricsManagerService;)Ljava/util/List;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService;->mBlockList:Ljava/util/List;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/media/metrics/MediaMetricsManagerService;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmMode(Lcom/android/server/media/metrics/MediaMetricsManagerService;)Ljava/lang/Integer;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService;->mMode:Ljava/lang/Integer;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNoUidAllowlist(Lcom/android/server/media/metrics/MediaMetricsManagerService;)Ljava/util/List;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService;->mNoUidAllowlist:Ljava/util/List;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNoUidBlocklist(Lcom/android/server/media/metrics/MediaMetricsManagerService;)Ljava/util/List;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService;->mNoUidBlocklist:Ljava/util/List;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSecureRandom(Lcom/android/server/media/metrics/MediaMetricsManagerService;)Ljava/security/SecureRandom;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService;->mSecureRandom:Ljava/security/SecureRandom;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmAllowlist(Lcom/android/server/media/metrics/MediaMetricsManagerService;Ljava/util/List;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService;->mAllowlist:Ljava/util/List;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmBlockList(Lcom/android/server/media/metrics/MediaMetricsManagerService;Ljava/util/List;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService;->mBlockList:Ljava/util/List;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmMode(Lcom/android/server/media/metrics/MediaMetricsManagerService;Ljava/lang/Integer;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService;->mMode:Ljava/lang/Integer;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmNoUidAllowlist(Lcom/android/server/media/metrics/MediaMetricsManagerService;Ljava/util/List;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService;->mNoUidAllowlist:Ljava/util/List;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmNoUidBlocklist(Lcom/android/server/media/metrics/MediaMetricsManagerService;Ljava/util/List;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService;->mNoUidBlocklist:Ljava/util/List;

    return-void
.end method

.method public static bridge synthetic -$$Nest$mgetListLocked(Lcom/android/server/media/metrics/MediaMetricsManagerService;Ljava/lang/String;)Ljava/util/List;
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->getListLocked(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$sfgetEMPTY_MEDIA_ITEM_INFO()Landroid/media/metrics/MediaItemInfo;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/server/media/metrics/MediaMetricsManagerService;->EMPTY_MEDIA_ITEM_INFO:Landroid/media/metrics/MediaItemInfo;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$smgetBucketedDurationMillis(J)J
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->getBucketedDurationMillis(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static bridge synthetic -$$Nest$smgetCodecEnum(Ljava/lang/String;)I
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->getCodecEnum(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$smgetFilteredAudioSampleRateHz(I)I
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->getFilteredAudioSampleRateHz(I)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$smgetFilteredFirstMimeType(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->getFilteredFirstMimeType(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$smgetFilteredLibraryName(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->getFilteredLibraryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$smgetFilteredMimeType(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->getFilteredMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$smgetThroughputFps(Landroid/media/metrics/EditingEndedEvent;)I
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->getThroughputFps(Landroid/media/metrics/EditingEndedEvent;)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$smgetVideoFrameRateEnum(F)I
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->getVideoFrameRateEnum(F)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$smgetVideoHdrFormatEnum(ILjava/lang/String;)I
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->getVideoHdrFormatEnum(ILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$smgetVideoResolutionAspectRatioEnum(Landroid/util/Size;)I
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->getVideoResolutionAspectRatioEnum(Landroid/util/Size;)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$smgetVideoResolutionEnum(Landroid/util/Size;)I
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->getVideoResolutionEnum(Landroid/util/Size;)I

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 82
    new-instance v0, Landroid/media/metrics/MediaItemInfo$Builder;

    invoke-direct {v0}, Landroid/media/metrics/MediaItemInfo$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/media/metrics/MediaItemInfo$Builder;->build()Landroid/media/metrics/MediaItemInfo;

    move-result-object v0

    sput-object v0, Lcom/android/server/media/metrics/MediaMetricsManagerService;->EMPTY_MEDIA_ITEM_INFO:Landroid/media/metrics/MediaItemInfo;

    .line 83
    const-string v0, "androidx\\.media3:media3-(transformer|muxer):[\\d.]+(-(alpha|beta|rc)\\d\\d)?"

    .line 84
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/server/media/metrics/MediaMetricsManagerService;->PATTERN_KNOWN_EDITING_LIBRARY_NAMES:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 112
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 93
    iput-object v0, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService;->mMode:Ljava/lang/Integer;

    .line 95
    iput-object v0, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService;->mAllowlist:Ljava/util/List;

    .line 97
    iput-object v0, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService;->mNoUidAllowlist:Ljava/util/List;

    .line 99
    iput-object v0, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService;->mBlockList:Ljava/util/List;

    .line 101
    iput-object v0, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService;->mNoUidBlocklist:Ljava/util/List;

    .line 103
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService;->mLock:Ljava/lang/Object;

    .line 113
    iput-object p1, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService;->mContext:Landroid/content/Context;

    .line 114
    new-instance p1, Ljava/security/SecureRandom;

    invoke-direct {p1}, Ljava/security/SecureRandom;-><init>()V

    iput-object p1, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService;->mSecureRandom:Ljava/security/SecureRandom;

    return-void
.end method

.method public static getBucketedDurationMillis(J)J
    .locals 6

    const-wide/16 v0, -0x1

    cmp-long v2, p0, v0

    if-eqz v2, :cond_1

    const-wide/16 v2, 0x0

    cmp-long v2, p0, v2

    if-gtz v2, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x1

    add-long/2addr p0, v0

    long-to-double p0, p0

    const-wide v0, 0x40ed4c0000000000L    # 60000.0

    div-double/2addr p0, v0

    .line 763
    invoke-static {p0, p1}, Ljava/lang/Math;->log(D)D

    move-result-wide p0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v4

    div-double/2addr p0, v4

    const-wide/high16 v4, 0x4020000000000000L    # 8.0

    add-double/2addr p0, v4

    .line 761
    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide p0

    double-to-int p0, p0

    const/4 p1, 0x0

    .line 765
    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    const/16 p1, 0xd

    invoke-static {p1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    add-int/lit8 p0, p0, -0x8

    int-to-double p0, p0

    .line 768
    invoke-static {v2, v3, p0, p1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    mul-double/2addr p0, v0

    invoke-static {p0, p1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p0

    double-to-long p0, p0

    return-wide p0

    :cond_1
    :goto_0
    return-wide v0
.end method

.method public static getCodecEnum(Ljava/lang/String;)I
    .locals 7

    const/4 v0, 0x4

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    .line 841
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    return v5

    .line 844
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    const/4 v4, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string/jumbo v6, "video/x-vnd.on2.vp9"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    move v4, v0

    goto :goto_0

    :sswitch_1
    const-string/jumbo v6, "video/x-vnd.on2.vp8"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    move v4, v1

    goto :goto_0

    :sswitch_2
    const-string/jumbo v6, "video/avc"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    move v4, v2

    goto :goto_0

    :sswitch_3
    const-string/jumbo v6, "video/hevc"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_0

    :cond_4
    move v4, v3

    goto :goto_0

    :sswitch_4
    const-string/jumbo v6, "video/av01"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto :goto_0

    :cond_5
    move v4, v5

    :goto_0
    packed-switch v4, :pswitch_data_0

    return v5

    :pswitch_0
    return v0

    :pswitch_1
    return v1

    :pswitch_2
    return v3

    :pswitch_3
    return v2

    :pswitch_4
    const/4 p0, 0x5

    return p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x631b55f6 -> :sswitch_4
        -0x63185e82 -> :sswitch_3
        0x4f62373a -> :sswitch_2
        0x5f50bed8 -> :sswitch_1
        0x5f50bed9 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getFilteredAudioSampleRateHz(I)I
    .locals 0

    .line 0
    sparse-switch p0, :sswitch_data_0

    const/4 p0, -0x1

    :sswitch_0
    return p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1f40 -> :sswitch_0
        0x2b11 -> :sswitch_0
        0x3e80 -> :sswitch_0
        0x5622 -> :sswitch_0
        0xac44 -> :sswitch_0
        0xbb80 -> :sswitch_0
        0x17700 -> :sswitch_0
        0x2ee00 -> :sswitch_0
    .end sparse-switch
.end method

.method public static getFilteredFirstMimeType(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 777
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 779
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 780
    invoke-virtual {v2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 781
    invoke-static {v2}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->getFilteredMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 784
    :cond_1
    const-string p0, ""

    return-object p0
.end method

.method public static getFilteredLibraryName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 720
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    return-object v1

    .line 723
    :cond_0
    sget-object v0, Lcom/android/server/media/metrics/MediaMetricsManagerService;->PATTERN_KNOWN_EDITING_LIBRARY_NAMES:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    return-object p0
.end method

.method public static getFilteredMimeType(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 788
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    return-object v1

    .line 792
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    const/4 v0, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string/jumbo v2, "video/x-matroska"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v0, 0x29

    goto/16 :goto_0

    :sswitch_1
    const-string/jumbo v2, "video/x-vnd.on2.vp9"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v0, 0x28

    goto/16 :goto_0

    :sswitch_2
    const-string/jumbo v2, "video/x-vnd.on2.vp8"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v0, 0x27

    goto/16 :goto_0

    :sswitch_3
    const-string v2, "audio/true-hd"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v0, 0x26

    goto/16 :goto_0

    :sswitch_4
    const-string v2, "audio/vnd.dts.hd"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v0, 0x25

    goto/16 :goto_0

    :sswitch_5
    const-string v2, "audio/webm"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 v0, 0x24

    goto/16 :goto_0

    :sswitch_6
    const-string v2, "audio/opus"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    goto/16 :goto_0

    :cond_7
    const/16 v0, 0x23

    goto/16 :goto_0

    :sswitch_7
    const-string v2, "audio/mpeg"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    goto/16 :goto_0

    :cond_8
    const/16 v0, 0x22

    goto/16 :goto_0

    :sswitch_8
    const-string v2, "audio/midi"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    goto/16 :goto_0

    :cond_9
    const/16 v0, 0x21

    goto/16 :goto_0

    :sswitch_9
    const-string v2, "audio/flac"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    goto/16 :goto_0

    :cond_a
    const/16 v0, 0x20

    goto/16 :goto_0

    :sswitch_a
    const-string v2, "audio/eac3"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    goto/16 :goto_0

    :cond_b
    const/16 v0, 0x1f

    goto/16 :goto_0

    :sswitch_b
    const-string/jumbo v2, "video/raw"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    goto/16 :goto_0

    :cond_c
    const/16 v0, 0x1e

    goto/16 :goto_0

    :sswitch_c
    const-string/jumbo v2, "video/mp4"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    goto/16 :goto_0

    :cond_d
    const/16 v0, 0x1d

    goto/16 :goto_0

    :sswitch_d
    const-string/jumbo v2, "video/avc"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    goto/16 :goto_0

    :cond_e
    const/16 v0, 0x1c

    goto/16 :goto_0

    :sswitch_e
    const-string/jumbo v2, "video/mp4v-es"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    goto/16 :goto_0

    :cond_f
    const/16 v0, 0x1b

    goto/16 :goto_0

    :sswitch_f
    const-string v2, "audio/wav"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    goto/16 :goto_0

    :cond_10
    const/16 v0, 0x1a

    goto/16 :goto_0

    :sswitch_10
    const-string v2, "audio/raw"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    goto/16 :goto_0

    :cond_11
    const/16 v0, 0x19

    goto/16 :goto_0

    :sswitch_11
    const-string v2, "audio/ogg"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    goto/16 :goto_0

    :cond_12
    const/16 v0, 0x18

    goto/16 :goto_0

    :sswitch_12
    const-string v2, "audio/mp4"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_13

    goto/16 :goto_0

    :cond_13
    const/16 v0, 0x17

    goto/16 :goto_0

    :sswitch_13
    const-string v2, "audio/av4"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14

    goto/16 :goto_0

    :cond_14
    const/16 v0, 0x16

    goto/16 :goto_0

    :sswitch_14
    const-string v2, "audio/ac3"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_15

    goto/16 :goto_0

    :cond_15
    const/16 v0, 0x15

    goto/16 :goto_0

    :sswitch_15
    const-string v2, "application/dash+xml"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_16

    goto/16 :goto_0

    :cond_16
    const/16 v0, 0x14

    goto/16 :goto_0

    :sswitch_16
    const-string/jumbo v2, "video/x-flv"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_17

    goto/16 :goto_0

    :cond_17
    const/16 v0, 0x13

    goto/16 :goto_0

    :sswitch_17
    const-string v2, "application/webm"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_18

    goto/16 :goto_0

    :cond_18
    const/16 v0, 0x12

    goto/16 :goto_0

    :sswitch_18
    const-string v2, "audio/mp4a-latm"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    goto/16 :goto_0

    :cond_19
    const/16 v0, 0x11

    goto/16 :goto_0

    :sswitch_19
    const-string v2, "application/vnd.ms-sstr+xml"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1a

    goto/16 :goto_0

    :cond_1a
    const/16 v0, 0x10

    goto/16 :goto_0

    :sswitch_1a
    const-string v2, "application/x-matroska"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1b

    goto/16 :goto_0

    :cond_1b
    const/16 v0, 0xf

    goto/16 :goto_0

    :sswitch_1b
    const-string v2, "audio/x-matroska"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1c

    goto/16 :goto_0

    :cond_1c
    const/16 v0, 0xe

    goto/16 :goto_0

    :sswitch_1c
    const-string v2, "audio/mpeg-L2"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1d

    goto/16 :goto_0

    :cond_1d
    const/16 v0, 0xd

    goto/16 :goto_0

    :sswitch_1d
    const-string v2, "audio/mpeg-L1"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1e

    goto/16 :goto_0

    :cond_1e
    const/16 v0, 0xc

    goto/16 :goto_0

    :sswitch_1e
    const-string v2, "application/x-mpegURL"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1f

    goto/16 :goto_0

    :cond_1f
    const/16 v0, 0xb

    goto/16 :goto_0

    :sswitch_1f
    const-string v2, "audio/vorbis"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_20

    goto/16 :goto_0

    :cond_20
    const/16 v0, 0xa

    goto/16 :goto_0

    :sswitch_20
    const-string v2, "audio/vnd.dts"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_21

    goto/16 :goto_0

    :cond_21
    const/16 v0, 0x9

    goto/16 :goto_0

    :sswitch_21
    const-string v2, "application/mp4"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_22

    goto/16 :goto_0

    :cond_22
    const/16 v0, 0x8

    goto/16 :goto_0

    :sswitch_22
    const-string/jumbo v2, "video/webm"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_23

    goto :goto_0

    :cond_23
    const/4 v0, 0x7

    goto :goto_0

    :sswitch_23
    const-string/jumbo v2, "video/mpeg"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_24

    goto :goto_0

    :cond_24
    const/4 v0, 0x6

    goto :goto_0

    :sswitch_24
    const-string/jumbo v2, "video/mp2t"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_25

    goto :goto_0

    :cond_25
    const/4 v0, 0x5

    goto :goto_0

    :sswitch_25
    const-string/jumbo v2, "video/hevc"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_26

    goto :goto_0

    :cond_26
    const/4 v0, 0x4

    goto :goto_0

    :sswitch_26
    const-string/jumbo v2, "video/av01"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_27

    goto :goto_0

    :cond_27
    const/4 v0, 0x3

    goto :goto_0

    :sswitch_27
    const-string/jumbo v2, "video/3gpp"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_28

    goto :goto_0

    :cond_28
    const/4 v0, 0x2

    goto :goto_0

    :sswitch_28
    const-string/jumbo v2, "video/dolby-vision"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_29

    goto :goto_0

    :cond_29
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_29
    const-string v2, "audio/eac3-joc"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2a

    goto :goto_0

    :cond_2a
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    return-object v1

    :pswitch_0
    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7e929daa -> :sswitch_29
        -0x6e5534ef -> :sswitch_28
        -0x63306f58 -> :sswitch_27
        -0x631b55f6 -> :sswitch_26
        -0x63185e82 -> :sswitch_25
        -0x6315f787 -> :sswitch_24
        -0x6315f167 -> :sswitch_23
        -0x63118f53 -> :sswitch_22
        -0x4a681e4e -> :sswitch_21
        -0x41455b98 -> :sswitch_20
        -0x3bd43e14 -> :sswitch_1f
        -0x3a5c4caa -> :sswitch_1e
        -0x19cc928c -> :sswitch_1d
        -0x19cc928b -> :sswitch_1c
        -0x17118226 -> :sswitch_1b
        -0x106abbe0 -> :sswitch_1a
        -0x957ced0 -> :sswitch_19
        -0x3313c2e -> :sswitch_18
        -0x2974308 -> :sswitch_17
        0xd45707 -> :sswitch_16
        0x3d3887d -> :sswitch_15
        0xb269698 -> :sswitch_14
        0xb2698e6 -> :sswitch_13
        0xb26c538 -> :sswitch_12
        0xb26cbd6 -> :sswitch_11
        0xb26d66f -> :sswitch_10
        0xb26e933 -> :sswitch_f
        0x46cdc642 -> :sswitch_e
        0x4f62373a -> :sswitch_d
        0x4f62635d -> :sswitch_c
        0x4f627494 -> :sswitch_b
        0x59ae0c65 -> :sswitch_a
        0x59aeaa01 -> :sswitch_9
        0x59b1cdba -> :sswitch_8
        0x59b1e81e -> :sswitch_7
        0x59b2d2d8 -> :sswitch_6
        0x59b64a32 -> :sswitch_5
        0x59c2dc42 -> :sswitch_4
        0x5cc95062 -> :sswitch_3
        0x5f50bed8 -> :sswitch_2
        0x5f50bed9 -> :sswitch_1
        0x79909c15 -> :sswitch_0
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

.method public static getThroughputFps(Landroid/media/metrics/EditingEndedEvent;)I
    .locals 8

    .line 730
    invoke-virtual {p0}, Landroid/media/metrics/EditingEndedEvent;->getOutputMediaItemInfo()Landroid/media/metrics/MediaItemInfo;

    move-result-object v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    .line 734
    :cond_0
    invoke-virtual {v0}, Landroid/media/metrics/MediaItemInfo;->getVideoSampleCount()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    return v1

    .line 738
    :cond_1
    invoke-virtual {p0}, Landroid/media/metrics/EditingEndedEvent;->getTimeSinceCreatedMillis()J

    move-result-wide v6

    cmp-long p0, v6, v4

    if-nez p0, :cond_2

    return v1

    :cond_2
    const-wide v0, 0x408f400000000000L    # 1000.0

    long-to-double v2, v2

    mul-double/2addr v2, v0

    long-to-double v0, v6

    div-double/2addr v2, v0

    .line 743
    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    const-wide/32 v2, 0x7fffffff

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int p0, v0

    return p0
.end method

.method public static getVideoFrameRateEnum(F)I
    .locals 1

    .line 925
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    const/16 v0, 0x18

    if-eq p0, v0, :cond_8

    const/16 v0, 0x19

    if-eq p0, v0, :cond_7

    const/16 v0, 0x1e

    if-eq p0, v0, :cond_6

    const/16 v0, 0x32

    if-eq p0, v0, :cond_5

    const/16 v0, 0x3c

    if-eq p0, v0, :cond_4

    const/16 v0, 0x78

    if-eq p0, v0, :cond_3

    const/16 v0, 0xf0

    if-eq p0, v0, :cond_2

    const/16 v0, 0x1e0

    if-eq p0, v0, :cond_1

    const/16 v0, 0x3c0

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const p0, 0x17700

    return p0

    :cond_1
    const p0, 0xbb80

    return p0

    :cond_2
    const/16 p0, 0x5dc0

    return p0

    :cond_3
    const/16 p0, 0x2ee0

    return p0

    :cond_4
    const/16 p0, 0x1770

    return p0

    :cond_5
    const/16 p0, 0x1388

    return p0

    :cond_6
    const/16 p0, 0xbb8

    return p0

    :cond_7
    const/16 p0, 0x9c4

    return p0

    :cond_8
    const/16 p0, 0x960

    return p0
.end method

.method public static getVideoHdrFormatEnum(ILjava/lang/String;)I
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 909
    :cond_0
    const-string/jumbo v0, "video/dolby-vision"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p0, 0x5

    return p0

    .line 912
    :cond_1
    invoke-static {p0}, Landroid/hardware/DataSpace;->getStandard(I)I

    move-result p1

    .line 913
    invoke-static {p0}, Landroid/hardware/DataSpace;->getTransfer(I)I

    move-result p0

    const/high16 v0, 0x60000

    if-ne p1, v0, :cond_2

    const/high16 v1, 0x2000000

    if-ne p0, v1, :cond_2

    const/4 p0, 0x2

    return p0

    :cond_2
    if-ne p1, v0, :cond_3

    const/high16 p1, 0x1c00000

    if-ne p0, p1, :cond_3

    const/4 p0, 0x3

    return p0

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method public static getVideoResolutionAspectRatioEnum(Landroid/util/Size;)I
    .locals 1

    .line 892
    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result v0

    .line 893
    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result p0

    if-lez v0, :cond_3

    if-gtz p0, :cond_0

    goto :goto_0

    :cond_0
    if-ge v0, p0, :cond_1

    const/4 p0, 0x3

    return p0

    :cond_1
    if-ge p0, v0, :cond_2

    const/4 p0, 0x2

    return p0

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static getVideoResolutionEnum(Landroid/util/Size;)I
    .locals 3

    .line 862
    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result v0

    .line 863
    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result p0

    const/16 v1, 0x160

    const/16 v2, 0x280

    if-ne v0, v1, :cond_0

    if-ne p0, v2, :cond_0

    const/16 p0, 0xe4

    return p0

    :cond_0
    const/16 v1, 0x168

    if-ne v0, v1, :cond_1

    if-ne p0, v2, :cond_1

    const/16 p0, 0xe9

    return p0

    :cond_1
    const/16 v1, 0x1e0

    if-ne v0, v1, :cond_2

    if-ne p0, v2, :cond_2

    const/16 p0, 0x137

    return p0

    :cond_2
    if-ne v0, v1, :cond_3

    const/16 v1, 0x356

    if-ne p0, v1, :cond_3

    const/16 p0, 0x19e

    return p0

    :cond_3
    const/16 v1, 0x21c

    if-ne v0, v1, :cond_4

    const/16 v1, 0x3c0

    if-ne p0, v1, :cond_4

    const/16 p0, 0x20c

    return p0

    :cond_4
    const/16 v1, 0x240

    if-ne v0, v1, :cond_5

    const/16 v1, 0x400

    if-ne p0, v1, :cond_5

    const/16 p0, 0x26d

    return p0

    :cond_5
    const/16 v1, 0x500

    if-ne v0, v1, :cond_6

    const/16 v1, 0x2d0

    if-ne p0, v1, :cond_6

    const/16 p0, 0x3a3

    return p0

    :cond_6
    const/16 v1, 0x780

    if-ne v0, v1, :cond_7

    const/16 v1, 0x438

    if-ne p0, v1, :cond_7

    const/16 p0, 0x82f

    return p0

    :cond_7
    const/16 v1, 0x5a0

    if-ne v0, v1, :cond_8

    const/16 v1, 0xa00

    if-ne p0, v1, :cond_8

    const/16 p0, 0xe8c

    return p0

    :cond_8
    const/16 v1, 0xf00

    if-ne v0, v1, :cond_9

    const/16 v1, 0x870

    if-ne p0, v1, :cond_9

    const/16 p0, 0x20ba

    return p0

    :cond_9
    const/16 v1, 0x1e00

    if-ne v0, v1, :cond_a

    const/16 v0, 0x10e0

    if-ne p0, v0, :cond_a

    const p0, 0x82e6

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final getListLocked(Ljava/lang/String;)Ljava/util/List;
    .locals 3

    .line 154
    const-string p0, "failed_to_get"

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 157
    :try_start_0
    const-string/jumbo v2, "media"

    invoke-static {v2, p1, p0}, Landroid/provider/DeviceConfig;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 162
    invoke-virtual {v2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 163
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "failed to get "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " from DeviceConfig"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MediaMetricsManagerService"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 166
    :cond_0
    const-string p0, ","

    invoke-virtual {v2, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 167
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p0

    .line 160
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 161
    throw p0
.end method

.method public onStart()V
    .locals 2

    .line 119
    new-instance v0, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;-><init>(Lcom/android/server/media/metrics/MediaMetricsManagerService;Lcom/android/server/media/metrics/MediaMetricsManagerService-IA;)V

    const-string/jumbo v1, "media_metrics"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 120
    iget-object v0, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService;->mContext:Landroid/content/Context;

    .line 122
    invoke-virtual {v0}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/android/server/media/metrics/MediaMetricsManagerService$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/media/metrics/MediaMetricsManagerService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/media/metrics/MediaMetricsManagerService;)V

    .line 120
    const-string/jumbo p0, "media"

    invoke-static {p0, v0, v1}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    return-void
.end method

.method public final updateConfigs(Landroid/provider/DeviceConfig$Properties;)V
    .locals 4

    .line 127
    iget-object v0, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 128
    :try_start_0
    const-string/jumbo v1, "media_metrics_mode"

    const/4 v2, 0x2

    invoke-virtual {p1, v1, v2}, Landroid/provider/DeviceConfig$Properties;->getInt(Ljava/lang/String;I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService;->mMode:Ljava/lang/Integer;

    .line 131
    const-string/jumbo p1, "player_metrics_app_allowlist"

    invoke-virtual {p0, p1}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->getListLocked(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    const/4 v1, 0x3

    if-nez p1, :cond_0

    .line 132
    iget-object v3, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService;->mMode:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eq v3, v1, :cond_1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 135
    :cond_0
    :goto_0
    iput-object p1, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService;->mAllowlist:Ljava/util/List;

    .line 137
    :cond_1
    const-string/jumbo p1, "player_metrics_per_app_attribution_allowlist"

    invoke-virtual {p0, p1}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->getListLocked(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_2

    .line 138
    iget-object v3, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService;->mMode:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eq v3, v1, :cond_3

    .line 139
    :cond_2
    iput-object p1, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService;->mNoUidAllowlist:Ljava/util/List;

    .line 141
    :cond_3
    const-string/jumbo p1, "player_metrics_app_blocklist"

    invoke-virtual {p0, p1}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->getListLocked(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_4

    .line 142
    iget-object v1, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService;->mMode:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v1, v2, :cond_5

    .line 143
    :cond_4
    iput-object p1, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService;->mBlockList:Ljava/util/List;

    .line 145
    :cond_5
    const-string/jumbo p1, "player_metrics_per_app_attribution_blocklist"

    invoke-virtual {p0, p1}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->getListLocked(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_6

    .line 146
    iget-object v1, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService;->mMode:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v1, v2, :cond_7

    .line 147
    :cond_6
    iput-object p1, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService;->mNoUidBlocklist:Ljava/util/List;

    .line 149
    :cond_7
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
