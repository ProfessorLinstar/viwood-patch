.class public final Lcom/android/server/media/MediaRoute2ProviderServiceProxy$ServiceConnectionImpl;
.super Ljava/lang/Object;
.source "MediaRoute2ProviderServiceProxy.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public final synthetic this$0:Lcom/android/server/media/MediaRoute2ProviderServiceProxy;


# direct methods
.method public static synthetic $r8$lambda$-Qp6FDGCPMY6kJUx4cABRpZqISs(Lcom/android/server/media/MediaRoute2ProviderServiceProxy$ServiceConnectionImpl;Landroid/content/ComponentName;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$ServiceConnectionImpl;->lambda$onBindingDied$2(Landroid/content/ComponentName;)V

    return-void
.end method

.method public static synthetic $r8$lambda$9G6KwvVUXkWq4WBpOxOTm0i6UqI(Lcom/android/server/media/MediaRoute2ProviderServiceProxy$ServiceConnectionImpl;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$ServiceConnectionImpl;->lambda$onServiceDisconnected$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$cmXHceT8mMS3tqJOwoEQosMdsjY(Lcom/android/server/media/MediaRoute2ProviderServiceProxy$ServiceConnectionImpl;Landroid/os/IBinder;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$ServiceConnectionImpl;->lambda$onServiceConnected$0(Landroid/os/IBinder;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/media/MediaRoute2ProviderServiceProxy;)V
    .locals 0

    .line 798
    iput-object p1, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$ServiceConnectionImpl;->this$0:Lcom/android/server/media/MediaRoute2ProviderServiceProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/media/MediaRoute2ProviderServiceProxy;Lcom/android/server/media/MediaRoute2ProviderServiceProxy-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$ServiceConnectionImpl;-><init>(Lcom/android/server/media/MediaRoute2ProviderServiceProxy;)V

    return-void
.end method


# virtual methods
.method public final synthetic lambda$onBindingDied$2(Landroid/content/ComponentName;)V
    .locals 0

    .line 821
    iget-object p0, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$ServiceConnectionImpl;->this$0:Lcom/android/server/media/MediaRoute2ProviderServiceProxy;

    invoke-static {p0, p1}, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->-$$Nest$monBindingDiedInternal(Lcom/android/server/media/MediaRoute2ProviderServiceProxy;Landroid/content/ComponentName;)V

    return-void
.end method

.method public final synthetic lambda$onServiceConnected$0(Landroid/os/IBinder;)V
    .locals 0

    .line 803
    iget-object p0, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$ServiceConnectionImpl;->this$0:Lcom/android/server/media/MediaRoute2ProviderServiceProxy;

    invoke-static {p0, p1}, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->-$$Nest$monServiceConnectedInternal(Lcom/android/server/media/MediaRoute2ProviderServiceProxy;Landroid/os/IBinder;)V

    return-void
.end method

.method public final synthetic lambda$onServiceDisconnected$1()V
    .locals 0

    .line 812
    iget-object p0, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$ServiceConnectionImpl;->this$0:Lcom/android/server/media/MediaRoute2ProviderServiceProxy;

    invoke-static {p0}, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->-$$Nest$monServiceDisconnectedInternal(Lcom/android/server/media/MediaRoute2ProviderServiceProxy;)V

    return-void
.end method

.method public onBindingDied(Landroid/content/ComponentName;)V
    .locals 2

    .line 821
    iget-object v0, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$ServiceConnectionImpl;->this$0:Lcom/android/server/media/MediaRoute2ProviderServiceProxy;

    invoke-static {v0}, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->-$$Nest$fgetmHandler(Lcom/android/server/media/MediaRoute2ProviderServiceProxy;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$ServiceConnectionImpl$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$ServiceConnectionImpl$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/media/MediaRoute2ProviderServiceProxy$ServiceConnectionImpl;Landroid/content/ComponentName;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    .line 803
    iget-object p1, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$ServiceConnectionImpl;->this$0:Lcom/android/server/media/MediaRoute2ProviderServiceProxy;

    invoke-static {p1}, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->-$$Nest$fgetmHandler(Lcom/android/server/media/MediaRoute2ProviderServiceProxy;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$ServiceConnectionImpl$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p2}, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$ServiceConnectionImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/media/MediaRoute2ProviderServiceProxy$ServiceConnectionImpl;Landroid/os/IBinder;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 812
    iget-object p1, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$ServiceConnectionImpl;->this$0:Lcom/android/server/media/MediaRoute2ProviderServiceProxy;

    invoke-static {p1}, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->-$$Nest$fgetmHandler(Lcom/android/server/media/MediaRoute2ProviderServiceProxy;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$ServiceConnectionImpl$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$ServiceConnectionImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/media/MediaRoute2ProviderServiceProxy$ServiceConnectionImpl;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
