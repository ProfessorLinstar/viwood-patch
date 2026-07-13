.class public final Lcom/android/server/audio/AudioServiceEvents$RingerZenMutedStreamsEvent;
.super Lcom/android/server/utils/EventLogger$Event;
.source "AudioServiceEvents.java"


# instance fields
.field public final mRingerZenMutedStreams:I

.field public final mSource:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 773
    invoke-direct {p0}, Lcom/android/server/utils/EventLogger$Event;-><init>()V

    .line 774
    iput p1, p0, Lcom/android/server/audio/AudioServiceEvents$RingerZenMutedStreamsEvent;->mRingerZenMutedStreams:I

    .line 775
    iput-object p2, p0, Lcom/android/server/audio/AudioServiceEvents$RingerZenMutedStreamsEvent;->mSource:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public eventToString()Ljava/lang/String;
    .locals 2

    .line 780
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RingerZenMutedStreams 0x"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/audio/AudioServiceEvents$RingerZenMutedStreamsEvent;->mRingerZenMutedStreams:I

    .line 781
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " from "

    .line 782
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/audio/AudioServiceEvents$RingerZenMutedStreamsEvent;->mSource:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 783
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
