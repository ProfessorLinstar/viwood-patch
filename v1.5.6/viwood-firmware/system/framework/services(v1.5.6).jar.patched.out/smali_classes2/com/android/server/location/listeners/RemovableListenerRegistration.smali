.class public abstract Lcom/android/server/location/listeners/RemovableListenerRegistration;
.super Lcom/android/server/location/listeners/ListenerRegistration;
.source "RemovableListenerRegistration.java"


# instance fields
.field public volatile mKey:Ljava/lang/Object;

.field public final mRemoved:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public static synthetic $r8$lambda$pm2-n25x_84SmCBXh4Fz-aabc0o(Lcom/android/server/location/listeners/RemovableListenerRegistration;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/listeners/RemovableListenerRegistration;->lambda$remove$0(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Ljava/lang/Object;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/listeners/ListenerRegistration;-><init>(Ljava/util/concurrent/Executor;Ljava/lang/Object;)V

    .line 36
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/android/server/location/listeners/RemovableListenerRegistration;->mRemoved:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method public final getKey()Ljava/lang/Object;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/android/server/location/listeners/RemovableListenerRegistration;->mKey:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method

.method public abstract getOwner()Lcom/android/server/location/listeners/ListenerMultiplexer;
.end method

.method public final synthetic lambda$remove$0(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 84
    invoke-virtual {p0}, Lcom/android/server/location/listeners/RemovableListenerRegistration;->getOwner()Lcom/android/server/location/listeners/ListenerMultiplexer;

    move-result-object p2

    invoke-virtual {p2, p1, p0}, Lcom/android/server/location/listeners/ListenerMultiplexer;->removeRegistration(Ljava/lang/Object;Lcom/android/server/location/listeners/ListenerRegistration;)V

    return-void
.end method

.method public onRegister()V
    .locals 0

    .line 0
    return-void
.end method

.method public final onRegister(Ljava/lang/Object;)V
    .locals 0

    .line 100
    invoke-super {p0, p1}, Lcom/android/server/location/listeners/ListenerRegistration;->onRegister(Ljava/lang/Object;)V

    .line 101
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/android/server/location/listeners/RemovableListenerRegistration;->mKey:Ljava/lang/Object;

    .line 102
    invoke-virtual {p0}, Lcom/android/server/location/listeners/RemovableListenerRegistration;->onRegister()V

    return-void
.end method

.method public onRemove(Z)V
    .locals 0

    .line 0
    return-void
.end method

.method public onUnregister()V
    .locals 1

    const/4 v0, 0x0

    .line 116
    iput-object v0, p0, Lcom/android/server/location/listeners/RemovableListenerRegistration;->mKey:Ljava/lang/Object;

    .line 117
    invoke-super {p0}, Lcom/android/server/location/listeners/ListenerRegistration;->onUnregister()V

    return-void
.end method

.method public final remove()V
    .locals 1

    const/4 v0, 0x1

    .line 62
    invoke-virtual {p0, v0}, Lcom/android/server/location/listeners/RemovableListenerRegistration;->remove(Z)V

    return-void
.end method

.method public final remove(Z)V
    .locals 3

    .line 78
    iget-object v0, p0, Lcom/android/server/location/listeners/RemovableListenerRegistration;->mKey:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 79
    iget-object v1, p0, Lcom/android/server/location/listeners/RemovableListenerRegistration;->mRemoved:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v1

    if-nez v1, :cond_1

    .line 80
    invoke-virtual {p0, p1}, Lcom/android/server/location/listeners/RemovableListenerRegistration;->onRemove(Z)V

    if-eqz p1, :cond_0

    .line 82
    invoke-virtual {p0}, Lcom/android/server/location/listeners/RemovableListenerRegistration;->getOwner()Lcom/android/server/location/listeners/ListenerMultiplexer;

    move-result-object p1

    invoke-virtual {p1, v0, p0}, Lcom/android/server/location/listeners/ListenerMultiplexer;->removeRegistration(Ljava/lang/Object;Lcom/android/server/location/listeners/ListenerRegistration;)V

    return-void

    .line 84
    :cond_0
    new-instance p1, Lcom/android/server/location/listeners/RemovableListenerRegistration$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0, v0}, Lcom/android/server/location/listeners/RemovableListenerRegistration$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/location/listeners/RemovableListenerRegistration;Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/android/server/location/listeners/ListenerRegistration;->executeOperation(Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;)V

    :cond_1
    return-void
.end method
