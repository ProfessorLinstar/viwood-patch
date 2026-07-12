.class public final Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$RecognitionConfig;
.super Ljava/lang/Object;
.source "ISoundTriggerHw.java"


# instance fields
.field public captureDevice:I

.field public captureHandle:I

.field public captureRequested:Z

.field public data:Ljava/util/ArrayList;

.field public phrases:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 839
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 844
    iput v0, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$RecognitionConfig;->captureHandle:I

    .line 848
    iput v0, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$RecognitionConfig;->captureDevice:I

    .line 852
    iput-boolean v0, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$RecognitionConfig;->captureRequested:Z

    .line 856
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$RecognitionConfig;->phrases:Ljava/util/ArrayList;

    .line 860
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$RecognitionConfig;->data:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 870
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$RecognitionConfig;

    if-eq v2, v3, :cond_2

    return v1

    .line 873
    :cond_2
    check-cast p1, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$RecognitionConfig;

    .line 874
    iget v2, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$RecognitionConfig;->captureHandle:I

    iget v3, p1, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$RecognitionConfig;->captureHandle:I

    if-eq v2, v3, :cond_3

    return v1

    .line 877
    :cond_3
    iget v2, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$RecognitionConfig;->captureDevice:I

    iget v3, p1, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$RecognitionConfig;->captureDevice:I

    if-eq v2, v3, :cond_4

    return v1

    .line 880
    :cond_4
    iget-boolean v2, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$RecognitionConfig;->captureRequested:Z

    iget-boolean v3, p1, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$RecognitionConfig;->captureRequested:Z

    if-eq v2, v3, :cond_5

    return v1

    .line 883
    :cond_5
    iget-object v2, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$RecognitionConfig;->phrases:Ljava/util/ArrayList;

    iget-object v3, p1, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$RecognitionConfig;->phrases:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 886
    :cond_6
    iget-object p0, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$RecognitionConfig;->data:Ljava/util/ArrayList;

    iget-object p1, p1, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$RecognitionConfig;->data:Ljava/util/ArrayList;

    invoke-static {p0, p1}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    return v1

    :cond_7
    return v0
.end method

.method public final hashCode()I
    .locals 4

    .line 894
    iget v0, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$RecognitionConfig;->captureHandle:I

    .line 895
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$RecognitionConfig;->captureDevice:I

    .line 896
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-boolean v2, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$RecognitionConfig;->captureRequested:Z

    .line 897
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v2}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$RecognitionConfig;->phrases:Ljava/util/ArrayList;

    .line 898
    invoke-static {v3}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object p0, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$RecognitionConfig;->data:Ljava/util/ArrayList;

    .line 899
    invoke-static {p0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v0, v1, v2, v3, p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 894
    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 904
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 905
    const-string/jumbo v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 906
    const-string v1, ".captureHandle = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 907
    iget v1, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$RecognitionConfig;->captureHandle:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 908
    const-string v1, ", .captureDevice = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 909
    iget v1, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$RecognitionConfig;->captureDevice:I

    invoke-static {v1}, Landroid/hardware/audio/common/V2_0/AudioDevice;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 910
    const-string v1, ", .captureRequested = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 911
    iget-boolean v1, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$RecognitionConfig;->captureRequested:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 912
    const-string v1, ", .phrases = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 913
    iget-object v1, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$RecognitionConfig;->phrases:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 914
    const-string v1, ", .data = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 915
    iget-object p0, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$RecognitionConfig;->data:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 916
    const-string/jumbo p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 917
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .locals 9

    .line 1004
    iget v0, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$RecognitionConfig;->captureHandle:I

    invoke-virtual {p1, p2, p3, v0}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0x4

    add-long/2addr v0, p2

    .line 1005
    iget v2, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$RecognitionConfig;->captureDevice:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0x8

    add-long/2addr v0, p2

    .line 1006
    iget-boolean v2, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$RecognitionConfig;->captureRequested:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 1008
    iget-object v0, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$RecognitionConfig;->phrases:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const-wide/16 v1, 0x10

    add-long/2addr v1, p2

    const-wide/16 v3, 0x18

    add-long/2addr v3, p2

    .line 1009
    invoke-virtual {p1, v3, v4, v0}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v3, 0x1c

    add-long/2addr v3, p2

    const/4 v5, 0x0

    .line 1010
    invoke-virtual {p1, v3, v4, v5}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 1011
    new-instance v3, Landroid/os/HwBlob;

    mul-int/lit8 v4, v0, 0x20

    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    move v4, v5

    :goto_0
    if-ge v4, v0, :cond_0

    .line 1013
    iget-object v6, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$RecognitionConfig;->phrases:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/soundtrigger/V2_0/PhraseRecognitionExtra;

    mul-int/lit8 v7, v4, 0x20

    int-to-long v7, v7

    invoke-virtual {v6, v3, v7, v8}, Landroid/hardware/soundtrigger/V2_0/PhraseRecognitionExtra;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1015
    :cond_0
    invoke-virtual {p1, v1, v2, v3}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 1018
    iget-object v0, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$RecognitionConfig;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const-wide/16 v1, 0x20

    add-long/2addr v1, p2

    const-wide/16 v3, 0x28

    add-long/2addr v3, p2

    .line 1019
    invoke-virtual {p1, v3, v4, v0}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v3, 0x2c

    add-long/2addr p2, v3

    .line 1020
    invoke-virtual {p1, p2, p3, v5}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 1021
    new-instance p2, Landroid/os/HwBlob;

    invoke-direct {p2, v0}, Landroid/os/HwBlob;-><init>(I)V

    :goto_1
    if-ge v5, v0, :cond_1

    int-to-long v3, v5

    .line 1023
    iget-object p3, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$RecognitionConfig;->data:Ljava/util/ArrayList;

    invoke-virtual {p3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Byte;

    invoke-virtual {p3}, Ljava/lang/Byte;->byteValue()B

    move-result p3

    invoke-virtual {p2, v3, v4, p3}, Landroid/os/HwBlob;->putInt8(JB)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1025
    :cond_1
    invoke-virtual {p1, v1, v2, p2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    return-void
.end method

.method public final writeToParcel(Landroid/os/HwParcel;)V
    .locals 3

    .line 980
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x30

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    const-wide/16 v1, 0x0

    .line 981
    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$RecognitionConfig;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 982
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    return-void
.end method
