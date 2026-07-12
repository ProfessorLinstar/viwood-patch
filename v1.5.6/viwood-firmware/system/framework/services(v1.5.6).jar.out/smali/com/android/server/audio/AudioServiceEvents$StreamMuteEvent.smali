.class public final Lcom/android/server/audio/AudioServiceEvents$StreamMuteEvent;
.super Lcom/android/server/utils/EventLogger$Event;
.source "AudioServiceEvents.java"


# instance fields
.field public final mMuted:Z

.field public final mSource:Ljava/lang/String;

.field public final mStreamType:I


# direct methods
.method public constructor <init>(IZLjava/lang/String;)V
    .locals 0

    .line 724
    invoke-direct {p0}, Lcom/android/server/utils/EventLogger$Event;-><init>()V

    .line 725
    iput p1, p0, Lcom/android/server/audio/AudioServiceEvents$StreamMuteEvent;->mStreamType:I

    .line 726
    iput-boolean p2, p0, Lcom/android/server/audio/AudioServiceEvents$StreamMuteEvent;->mMuted:Z

    .line 727
    iput-object p3, p0, Lcom/android/server/audio/AudioServiceEvents$StreamMuteEvent;->mSource:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public eventToString()Ljava/lang/String;
    .locals 2

    .line 733
    iget v0, p0, Lcom/android/server/audio/AudioServiceEvents$StreamMuteEvent;->mStreamType:I

    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v1

    if-gt v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/audio/AudioServiceEvents$StreamMuteEvent;->mStreamType:I

    if-ltz v0, :cond_0

    .line 734
    sget-object v1, Landroid/media/AudioSystem;->STREAM_NAMES:[Ljava/lang/String;

    aget-object v0, v1, v0

    goto :goto_0

    .line 735
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "stream "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/audio/AudioServiceEvents$StreamMuteEvent;->mStreamType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 736
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 737
    iget-boolean v0, p0, Lcom/android/server/audio/AudioServiceEvents$StreamMuteEvent;->mMuted:Z

    if-eqz v0, :cond_1

    const-string v0, " muting by "

    goto :goto_1

    :cond_1
    const-string v0, " unmuting by "

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/audio/AudioServiceEvents$StreamMuteEvent;->mSource:Ljava/lang/String;

    .line 738
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 739
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
