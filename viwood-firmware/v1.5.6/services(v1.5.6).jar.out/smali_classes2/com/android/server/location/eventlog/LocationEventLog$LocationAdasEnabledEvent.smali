.class public final Lcom/android/server/location/eventlog/LocationEventLog$LocationAdasEnabledEvent;
.super Ljava/lang/Object;
.source "LocationEventLog.java"


# instance fields
.field public final mEnabled:Z

.field public final mUserId:I


# direct methods
.method public constructor <init>(IZ)V
    .locals 0

    .line 571
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 572
    iput p1, p0, Lcom/android/server/location/eventlog/LocationEventLog$LocationAdasEnabledEvent;->mUserId:I

    .line 573
    iput-boolean p2, p0, Lcom/android/server/location/eventlog/LocationEventLog$LocationAdasEnabledEvent;->mEnabled:Z

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 578
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "adas location [u"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/location/eventlog/LocationEventLog$LocationAdasEnabledEvent;->mUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/server/location/eventlog/LocationEventLog$LocationAdasEnabledEvent;->mEnabled:Z

    if-eqz p0, :cond_0

    const-string p0, "enabled"

    goto :goto_0

    :cond_0
    const-string p0, "disabled"

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
