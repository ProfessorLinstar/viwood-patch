.class public interface abstract Lcom/android/server/job/StateChangedListener;
.super Ljava/lang/Object;
.source "StateChangedListener.java"


# virtual methods
.method public abstract onControllerStateChanged(Landroid/util/ArraySet;)V
.end method

.method public abstract onDeviceIdleStateChanged(Z)V
.end method

.method public abstract onNetworkChanged(Lcom/android/server/job/controllers/JobStatus;Landroid/net/Network;)V
.end method

.method public abstract onRestrictedBucketChanged(Ljava/util/List;)V
.end method

.method public abstract onRunJobNow(Lcom/android/server/job/controllers/JobStatus;)V
.end method
