.class public Lcom/android/server/hdmi/AudioStatus;
.super Ljava/lang/Object;
.source "AudioStatus.java"


# instance fields
.field public mMute:Z

.field public mVolume:I


# direct methods
.method public constructor <init>(IZ)V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x64

    .line 37
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/android/server/hdmi/AudioStatus;->mVolume:I

    .line 38
    iput-boolean p2, p0, Lcom/android/server/hdmi/AudioStatus;->mMute:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 51
    instance-of v0, p1, Lcom/android/server/hdmi/AudioStatus;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 55
    :cond_0
    check-cast p1, Lcom/android/server/hdmi/AudioStatus;

    .line 56
    iget v0, p0, Lcom/android/server/hdmi/AudioStatus;->mVolume:I

    iget v2, p1, Lcom/android/server/hdmi/AudioStatus;->mVolume:I

    if-ne v0, v2, :cond_1

    iget-boolean p0, p0, Lcom/android/server/hdmi/AudioStatus;->mMute:Z

    iget-boolean p1, p1, Lcom/android/server/hdmi/AudioStatus;->mMute:Z

    if-ne p0, p1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public getMute()Z
    .locals 0

    .line 46
    iget-boolean p0, p0, Lcom/android/server/hdmi/AudioStatus;->mMute:Z

    return p0
.end method

.method public getVolume()I
    .locals 0

    .line 42
    iget p0, p0, Lcom/android/server/hdmi/AudioStatus;->mVolume:I

    return p0
.end method

.method public hashCode()I
    .locals 1

    .line 62
    iget v0, p0, Lcom/android/server/hdmi/AudioStatus;->mVolume:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-boolean p0, p0, Lcom/android/server/hdmi/AudioStatus;->mMute:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AudioStatus mVolume:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/hdmi/AudioStatus;->mVolume:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mMute:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/server/hdmi/AudioStatus;->mMute:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
