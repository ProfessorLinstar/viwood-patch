.class public final Lcom/android/server/media/RemoteDisplayProviderProxy$ServiceConnectionImpl;
.super Ljava/lang/Object;
.source "RemoteDisplayProviderProxy.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public final synthetic this$0:Lcom/android/server/media/RemoteDisplayProviderProxy;


# direct methods
.method public static synthetic $r8$lambda$oZOxOFX7h9AOM2Le5OkX6s4p4Z0(Lcom/android/server/media/RemoteDisplayProviderProxy;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/media/RemoteDisplayProviderProxy;->-$$Nest$monServiceDisconnectedOnHandler(Lcom/android/server/media/RemoteDisplayProviderProxy;)V

    return-void
.end method

.method public static synthetic $r8$lambda$znYBgEL_xguLMhyRrji-XDa0Ns8(Lcom/android/server/media/RemoteDisplayProviderProxy$ServiceConnectionImpl;Landroid/os/IBinder;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/media/RemoteDisplayProviderProxy$ServiceConnectionImpl;->lambda$onServiceConnected$0(Landroid/os/IBinder;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/media/RemoteDisplayProviderProxy;)V
    .locals 0

    .line 329
    iput-object p1, p0, Lcom/android/server/media/RemoteDisplayProviderProxy$ServiceConnectionImpl;->this$0:Lcom/android/server/media/RemoteDisplayProviderProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/media/RemoteDisplayProviderProxy;Lcom/android/server/media/RemoteDisplayProviderProxy-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/media/RemoteDisplayProviderProxy$ServiceConnectionImpl;-><init>(Lcom/android/server/media/RemoteDisplayProviderProxy;)V

    return-void
.end method


# virtual methods
.method public final synthetic lambda$onServiceConnected$0(Landroid/os/IBinder;)V
    .locals 0

    .line 333
    iget-object p0, p0, Lcom/android/server/media/RemoteDisplayProviderProxy$ServiceConnectionImpl;->this$0:Lcom/android/server/media/RemoteDisplayProviderProxy;

    invoke-static {p0, p1}, Lcom/android/server/media/RemoteDisplayProviderProxy;->-$$Nest$monServiceConnectedOnHandler(Lcom/android/server/media/RemoteDisplayProviderProxy;Landroid/os/IBinder;)V

    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    .line 333
    iget-object p1, p0, Lcom/android/server/media/RemoteDisplayProviderProxy$ServiceConnectionImpl;->this$0:Lcom/android/server/media/RemoteDisplayProviderProxy;

    invoke-static {p1}, Lcom/android/server/media/RemoteDisplayProviderProxy;->-$$Nest$fgetmHandler(Lcom/android/server/media/RemoteDisplayProviderProxy;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/android/server/media/RemoteDisplayProviderProxy$ServiceConnectionImpl$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p2}, Lcom/android/server/media/RemoteDisplayProviderProxy$ServiceConnectionImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/media/RemoteDisplayProviderProxy$ServiceConnectionImpl;Landroid/os/IBinder;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 338
    iget-object p1, p0, Lcom/android/server/media/RemoteDisplayProviderProxy$ServiceConnectionImpl;->this$0:Lcom/android/server/media/RemoteDisplayProviderProxy;

    invoke-static {p1}, Lcom/android/server/media/RemoteDisplayProviderProxy;->-$$Nest$fgetmHandler(Lcom/android/server/media/RemoteDisplayProviderProxy;)Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/media/RemoteDisplayProviderProxy$ServiceConnectionImpl;->this$0:Lcom/android/server/media/RemoteDisplayProviderProxy;

    new-instance v0, Lcom/android/server/media/RemoteDisplayProviderProxy$ServiceConnectionImpl$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/server/media/RemoteDisplayProviderProxy$ServiceConnectionImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/media/RemoteDisplayProviderProxy;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
