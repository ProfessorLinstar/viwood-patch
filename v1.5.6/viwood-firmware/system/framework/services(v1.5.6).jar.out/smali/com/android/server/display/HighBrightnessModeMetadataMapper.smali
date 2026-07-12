.class public Lcom/android/server/display/HighBrightnessModeMetadataMapper;
.super Ljava/lang/Object;
.source "HighBrightnessModeMetadataMapper.java"


# instance fields
.field public final mHighBrightnessModeMetadataMap:Landroid/util/ArrayMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/HighBrightnessModeMetadataMapper;->mHighBrightnessModeMetadataMap:Landroid/util/ArrayMap;

    return-void
.end method


# virtual methods
.method public getHighBrightnessModeMetadataLocked(Lcom/android/server/display/LogicalDisplay;)Lcom/android/server/display/HighBrightnessModeMetadata;
    .locals 2

    .line 38
    invoke-virtual {p1}, Lcom/android/server/display/LogicalDisplay;->getPrimaryDisplayDeviceLocked()Lcom/android/server/display/DisplayDevice;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 40
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Display Device is null in DisplayPowerController for display: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {p1}, Lcom/android/server/display/LogicalDisplay;->getDisplayIdLocked()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 40
    const-string p1, "HighBrightnessModeMetadataMapper"

    invoke-static {p1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 44
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceConfig()Lcom/android/server/display/DisplayDeviceConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/display/DisplayDeviceConfig;->getHighBrightnessModeData()Lcom/android/server/display/config/HighBrightnessModeData;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v1

    .line 48
    :cond_1
    invoke-virtual {v0}, Lcom/android/server/display/DisplayDevice;->getUniqueId()Ljava/lang/String;

    move-result-object p1

    .line 50
    iget-object v0, p0, Lcom/android/server/display/HighBrightnessModeMetadataMapper;->mHighBrightnessModeMetadataMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 51
    iget-object p0, p0, Lcom/android/server/display/HighBrightnessModeMetadataMapper;->mHighBrightnessModeMetadataMap:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/display/HighBrightnessModeMetadata;

    return-object p0

    .line 55
    :cond_2
    new-instance v0, Lcom/android/server/display/HighBrightnessModeMetadata;

    invoke-direct {v0}, Lcom/android/server/display/HighBrightnessModeMetadata;-><init>()V

    .line 56
    iget-object p0, p0, Lcom/android/server/display/HighBrightnessModeMetadataMapper;->mHighBrightnessModeMetadataMap:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
