.class public final Lcom/android/server/usb/DualOutputStreamDumpSink;
.super Ljava/lang/Object;
.source "DualOutputStreamDumpSink.java"

# interfaces
.implements Lcom/android/server/utils/EventLogger$DumpSink;


# instance fields
.field public final mDumpOutputStream:Lcom/android/internal/util/dump/DualDumpOutputStream;

.field public final mId:J


# direct methods
.method public constructor <init>(Lcom/android/internal/util/dump/DualDumpOutputStream;J)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/android/server/usb/DualOutputStreamDumpSink;->mDumpOutputStream:Lcom/android/internal/util/dump/DualDumpOutputStream;

    .line 37
    iput-wide p2, p0, Lcom/android/server/usb/DualOutputStreamDumpSink;->mId:J

    return-void
.end method


# virtual methods
.method public sink(Ljava/lang/String;Ljava/util/List;)V
    .locals 4

    .line 45
    iget-object v0, p0, Lcom/android/server/usb/DualOutputStreamDumpSink;->mDumpOutputStream:Lcom/android/internal/util/dump/DualDumpOutputStream;

    const-string v1, "USB Event Log"

    iget-wide v2, p0, Lcom/android/server/usb/DualOutputStreamDumpSink;->mId:J

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    .line 46
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/utils/EventLogger$Event;

    .line 47
    iget-object v0, p0, Lcom/android/server/usb/DualOutputStreamDumpSink;->mDumpOutputStream:Lcom/android/internal/util/dump/DualDumpOutputStream;

    iget-wide v1, p0, Lcom/android/server/usb/DualOutputStreamDumpSink;->mId:J

    invoke-virtual {p2}, Lcom/android/server/utils/EventLogger$Event;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v3, "USB Event"

    invoke-virtual {v0, v3, v1, v2, p2}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method
