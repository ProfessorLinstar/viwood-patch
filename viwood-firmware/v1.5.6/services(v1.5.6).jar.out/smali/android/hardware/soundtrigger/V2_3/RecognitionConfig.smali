.class public final Landroid/hardware/soundtrigger/V2_3/RecognitionConfig;
.super Ljava/lang/Object;
.source "RecognitionConfig.java"


# instance fields
.field public audioCapabilities:I

.field public base:Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$RecognitionConfig;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance v0, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$RecognitionConfig;

    invoke-direct {v0}, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$RecognitionConfig;-><init>()V

    iput-object v0, p0, Landroid/hardware/soundtrigger/V2_3/RecognitionConfig;->base:Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$RecognitionConfig;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    const-string/jumbo v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    const-string v1, ".base = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    iget-object v1, p0, Landroid/hardware/soundtrigger/V2_3/RecognitionConfig;->base:Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$RecognitionConfig;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 19
    const-string v1, ", .audioCapabilities = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    iget p0, p0, Landroid/hardware/soundtrigger/V2_3/RecognitionConfig;->audioCapabilities:I

    invoke-static {p0}, Landroid/hardware/soundtrigger/V2_3/AudioCapabilities;->dumpBitfield(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    const-string/jumbo p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .locals 2

    .line 82
    iget-object v0, p0, Landroid/hardware/soundtrigger/V2_3/RecognitionConfig;->base:Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$RecognitionConfig;

    invoke-virtual {v0, p1, p2, p3}, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$RecognitionConfig;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    const-wide/16 v0, 0x58

    add-long/2addr p2, v0

    .line 83
    iget p0, p0, Landroid/hardware/soundtrigger/V2_3/RecognitionConfig;->audioCapabilities:I

    invoke-virtual {p1, p2, p3, p0}, Landroid/os/HwBlob;->putInt32(JI)V

    return-void
.end method

.method public final writeToParcel(Landroid/os/HwParcel;)V
    .locals 3

    .line 58
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x60

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    const-wide/16 v1, 0x0

    .line 59
    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/soundtrigger/V2_3/RecognitionConfig;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 60
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    return-void
.end method
