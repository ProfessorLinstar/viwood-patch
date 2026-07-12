.class public Lcom/android/server/security/intrusiondetection/DataAggregator$EventHandler;
.super Landroid/os/Handler;
.source "DataAggregator.java"


# instance fields
.field public final mDataAggregator:Lcom/android/server/security/intrusiondetection/DataAggregator;


# direct methods
.method public constructor <init>(Landroid/os/Looper;Lcom/android/server/security/intrusiondetection/DataAggregator;)V
    .locals 0

    .line 130
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 131
    iput-object p2, p0, Lcom/android/server/security/intrusiondetection/DataAggregator$EventHandler;->mDataAggregator:Lcom/android/server/security/intrusiondetection/DataAggregator;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 135
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 146
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown message: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "IntrusionDetection DataAggregator"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 143
    :cond_0
    iget-object p0, p0, Lcom/android/server/security/intrusiondetection/DataAggregator$EventHandler;->mDataAggregator:Lcom/android/server/security/intrusiondetection/DataAggregator;

    invoke-static {p0}, Lcom/android/server/security/intrusiondetection/DataAggregator;->-$$Nest$monDisable(Lcom/android/server/security/intrusiondetection/DataAggregator;)V

    return-void

    .line 140
    :cond_1
    iget-object p0, p0, Lcom/android/server/security/intrusiondetection/DataAggregator$EventHandler;->mDataAggregator:Lcom/android/server/security/intrusiondetection/DataAggregator;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    invoke-static {p0, p1}, Lcom/android/server/security/intrusiondetection/DataAggregator;->-$$Nest$monNewBatchData(Lcom/android/server/security/intrusiondetection/DataAggregator;Ljava/util/List;)V

    return-void

    .line 137
    :cond_2
    iget-object p0, p0, Lcom/android/server/security/intrusiondetection/DataAggregator$EventHandler;->mDataAggregator:Lcom/android/server/security/intrusiondetection/DataAggregator;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/security/intrusiondetection/IntrusionDetectionEvent;

    invoke-static {p0, p1}, Lcom/android/server/security/intrusiondetection/DataAggregator;->-$$Nest$monNewSingleData(Lcom/android/server/security/intrusiondetection/DataAggregator;Landroid/security/intrusiondetection/IntrusionDetectionEvent;)V

    return-void
.end method
