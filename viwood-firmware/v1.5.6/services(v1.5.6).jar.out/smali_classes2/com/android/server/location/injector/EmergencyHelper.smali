.class public abstract Lcom/android/server/location/injector/EmergencyHelper;
.super Ljava/lang/Object;
.source "EmergencyHelper.java"


# instance fields
.field public final mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/injector/EmergencyHelper;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method


# virtual methods
.method public addOnEmergencyStateChangedListener(Lcom/android/server/location/injector/EmergencyHelper$EmergencyStateChangedListener;)V
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/android/server/location/injector/EmergencyHelper;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final dispatchEmergencyStateChanged()V
    .locals 1

    .line 66
    iget-object p0, p0, Lcom/android/server/location/injector/EmergencyHelper;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/location/injector/EmergencyHelper$EmergencyStateChangedListener;

    .line 67
    invoke-interface {v0}, Lcom/android/server/location/injector/EmergencyHelper$EmergencyStateChangedListener;->onStateChanged()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public abstract isInEmergency(J)Z
.end method

.method public removeOnEmergencyStateChangedListener(Lcom/android/server/location/injector/EmergencyHelper$EmergencyStateChangedListener;)V
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/android/server/location/injector/EmergencyHelper;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
