.class public abstract Lcom/android/server/location/injector/AppForegroundHelper;
.super Ljava/lang/Object;
.source "AppForegroundHelper.java"


# instance fields
.field public final mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/injector/AppForegroundHelper;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method

.method public static isForeground(I)Z
    .locals 1

    .line 0
    const/16 v0, 0x7d

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final addListener(Lcom/android/server/location/injector/AppForegroundHelper$AppForegroundListener;)V
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/android/server/location/injector/AppForegroundHelper;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public abstract isAppForeground(I)Z
.end method

.method public final notifyAppForeground(IZ)V
    .locals 1

    .line 70
    iget-object p0, p0, Lcom/android/server/location/injector/AppForegroundHelper;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/location/injector/AppForegroundHelper$AppForegroundListener;

    .line 71
    invoke-interface {v0, p1, p2}, Lcom/android/server/location/injector/AppForegroundHelper$AppForegroundListener;->onAppForegroundChanged(IZ)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final removeListener(Lcom/android/server/location/injector/AppForegroundHelper$AppForegroundListener;)V
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/android/server/location/injector/AppForegroundHelper;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
