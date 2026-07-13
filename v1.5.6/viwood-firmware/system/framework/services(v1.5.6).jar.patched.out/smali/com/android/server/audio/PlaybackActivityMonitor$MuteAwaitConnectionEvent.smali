.class public final Lcom/android/server/audio/PlaybackActivityMonitor$MuteAwaitConnectionEvent;
.super Lcom/android/server/utils/EventLogger$Event;
.source "PlaybackActivityMonitor.java"


# instance fields
.field public final mUsagesToMute:[I


# direct methods
.method public constructor <init>([I)V
    .locals 0

    .line 1539
    invoke-direct {p0}, Lcom/android/server/utils/EventLogger$Event;-><init>()V

    .line 1540
    iput-object p1, p0, Lcom/android/server/audio/PlaybackActivityMonitor$MuteAwaitConnectionEvent;->mUsagesToMute:[I

    return-void
.end method


# virtual methods
.method public eventToString()Ljava/lang/String;
    .locals 2

    .line 1545
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "muteAwaitConnection muting usages "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/audio/PlaybackActivityMonitor$MuteAwaitConnectionEvent;->mUsagesToMute:[I

    invoke-static {p0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
