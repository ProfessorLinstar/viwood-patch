.class public abstract Lcom/android/server/location/injector/DeviceIdleHelper;
.super Ljava/lang/Object;
.source "DeviceIdleHelper.java"


# instance fields
.field public final mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/injector/DeviceIdleHelper;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method


# virtual methods
.method public abstract isDeviceIdle()Z
.end method

.method public final notifyDeviceIdleChanged()V
    .locals 2

    .line 61
    invoke-virtual {p0}, Lcom/android/server/location/injector/DeviceIdleHelper;->isDeviceIdle()Z

    move-result v0

    .line 63
    iget-object p0, p0, Lcom/android/server/location/injector/DeviceIdleHelper;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/location/injector/DeviceIdleHelper$DeviceIdleListener;

    .line 64
    invoke-interface {v1, v0}, Lcom/android/server/location/injector/DeviceIdleHelper$DeviceIdleListener;->onDeviceIdleChanged(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method
