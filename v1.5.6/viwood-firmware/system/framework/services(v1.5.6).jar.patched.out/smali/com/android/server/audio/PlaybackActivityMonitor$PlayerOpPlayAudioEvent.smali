.class public final Lcom/android/server/audio/PlaybackActivityMonitor$PlayerOpPlayAudioEvent;
.super Lcom/android/server/utils/EventLogger$Event;
.source "PlaybackActivityMonitor.java"


# instance fields
.field public final mHasOp:Z

.field public final mPlayerIId:I

.field public final mUid:I


# direct methods
.method public constructor <init>(IZI)V
    .locals 0

    .line 1400
    invoke-direct {p0}, Lcom/android/server/utils/EventLogger$Event;-><init>()V

    .line 1401
    iput p1, p0, Lcom/android/server/audio/PlaybackActivityMonitor$PlayerOpPlayAudioEvent;->mPlayerIId:I

    .line 1402
    iput-boolean p2, p0, Lcom/android/server/audio/PlaybackActivityMonitor$PlayerOpPlayAudioEvent;->mHasOp:Z

    .line 1403
    iput p3, p0, Lcom/android/server/audio/PlaybackActivityMonitor$PlayerOpPlayAudioEvent;->mUid:I

    return-void
.end method


# virtual methods
.method public eventToString()Ljava/lang/String;
    .locals 2

    .line 1408
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "player piid:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/audio/PlaybackActivityMonitor$PlayerOpPlayAudioEvent;->mPlayerIId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " has OP_PLAY_AUDIO:"

    .line 1409
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/audio/PlaybackActivityMonitor$PlayerOpPlayAudioEvent;->mHasOp:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " in uid:"

    .line 1410
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/audio/PlaybackActivityMonitor$PlayerOpPlayAudioEvent;->mUid:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
