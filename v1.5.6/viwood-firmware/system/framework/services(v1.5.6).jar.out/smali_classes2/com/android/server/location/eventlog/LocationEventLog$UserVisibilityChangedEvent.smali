.class public final Lcom/android/server/location/eventlog/LocationEventLog$UserVisibilityChangedEvent;
.super Ljava/lang/Object;
.source "LocationEventLog.java"


# instance fields
.field public final mUserId:I

.field public final mVisible:Z


# direct methods
.method public constructor <init>(IZ)V
    .locals 0

    .line 539
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 540
    iput p1, p0, Lcom/android/server/location/eventlog/LocationEventLog$UserVisibilityChangedEvent;->mUserId:I

    .line 541
    iput-boolean p2, p0, Lcom/android/server/location/eventlog/LocationEventLog$UserVisibilityChangedEvent;->mVisible:Z

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 546
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[u"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/location/eventlog/LocationEventLog$UserVisibilityChangedEvent;->mUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/server/location/eventlog/LocationEventLog$UserVisibilityChangedEvent;->mVisible:Z

    if-eqz p0, :cond_0

    const-string/jumbo p0, "visible"

    goto :goto_0

    :cond_0
    const-string p0, "invisible"

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
