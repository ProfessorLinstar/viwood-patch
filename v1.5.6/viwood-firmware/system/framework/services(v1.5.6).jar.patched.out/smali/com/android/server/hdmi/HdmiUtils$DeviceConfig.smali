.class public Lcom/android/server/hdmi/HdmiUtils$DeviceConfig;
.super Ljava/lang/Object;
.source "HdmiUtils.java"


# instance fields
.field public final name:Ljava/lang/String;

.field public final supportedCodecs:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    .line 734
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 735
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiUtils$DeviceConfig;->name:Ljava/lang/String;

    .line 736
    iput-object p2, p0, Lcom/android/server/hdmi/HdmiUtils$DeviceConfig;->supportedCodecs:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 741
    instance-of v0, p1, Lcom/android/server/hdmi/HdmiUtils$DeviceConfig;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 742
    check-cast p1, Lcom/android/server/hdmi/HdmiUtils$DeviceConfig;

    .line 743
    iget-object v0, p1, Lcom/android/server/hdmi/HdmiUtils$DeviceConfig;->name:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/hdmi/HdmiUtils$DeviceConfig;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p1, Lcom/android/server/hdmi/HdmiUtils$DeviceConfig;->supportedCodecs:Ljava/util/List;

    iget-object p0, p0, Lcom/android/server/hdmi/HdmiUtils$DeviceConfig;->supportedCodecs:Ljava/util/List;

    .line 744
    invoke-interface {p1, p0}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v1
.end method

.method public hashCode()I
    .locals 1

    .line 751
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiUtils$DeviceConfig;->name:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/server/hdmi/HdmiUtils$DeviceConfig;->supportedCodecs:Ljava/util/List;

    .line 753
    invoke-interface {p0}, Ljava/util/List;->hashCode()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 751
    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method
