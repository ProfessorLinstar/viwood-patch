.class public final Lcom/android/server/media/RemoteDisplayProviderProxy$ProviderCallback;
.super Landroid/media/IRemoteDisplayCallback$Stub;
.source "RemoteDisplayProviderProxy.java"


# instance fields
.field public final mConnectionRef:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;)V
    .locals 1

    .line 444
    invoke-direct {p0}, Landroid/media/IRemoteDisplayCallback$Stub;-><init>()V

    .line 445
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/media/RemoteDisplayProviderProxy$ProviderCallback;->mConnectionRef:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 0

    .line 449
    iget-object p0, p0, Lcom/android/server/media/RemoteDisplayProviderProxy$ProviderCallback;->mConnectionRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->clear()V

    return-void
.end method

.method public onStateChanged(Landroid/media/RemoteDisplayState;)V
    .locals 0

    .line 454
    iget-object p0, p0, Lcom/android/server/media/RemoteDisplayProviderProxy$ProviderCallback;->mConnectionRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;

    if-eqz p0, :cond_0

    .line 456
    invoke-virtual {p0, p1}, Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;->postStateChanged(Landroid/media/RemoteDisplayState;)V

    :cond_0
    return-void
.end method
