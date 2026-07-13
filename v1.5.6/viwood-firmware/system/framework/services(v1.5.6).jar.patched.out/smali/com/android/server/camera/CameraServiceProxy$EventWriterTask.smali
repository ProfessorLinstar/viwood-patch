.class public Lcom/android/server/camera/CameraServiceProxy$EventWriterTask;
.super Ljava/lang/Object;
.source "CameraServiceProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public mEventList:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/android/server/camera/CameraServiceProxy;Ljava/util/List;)V
    .locals 0

    .line 1127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1128
    iput-object p2, p0, Lcom/android/server/camera/CameraServiceProxy$EventWriterTask;->mEventList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1133
    iget-object v0, p0, Lcom/android/server/camera/CameraServiceProxy$EventWriterTask;->mEventList:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 1134
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :catch_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/camera/CameraServiceProxy$CameraEvent;

    .line 1135
    invoke-interface {v1}, Lcom/android/server/camera/CameraServiceProxy$CameraEvent;->logSelf()V

    const-wide/16 v1, 0x64

    .line 1137
    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1140
    :cond_0
    iget-object p0, p0, Lcom/android/server/camera/CameraServiceProxy$EventWriterTask;->mEventList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    :cond_1
    return-void
.end method
