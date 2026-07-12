.class public Lcom/android/server/connectivity/PacProxyService$3;
.super Ljava/lang/Object;
.source "PacProxyService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public final synthetic this$0:Lcom/android/server/connectivity/PacProxyService;


# direct methods
.method public constructor <init>(Lcom/android/server/connectivity/PacProxyService;)V
    .locals 0

    .line 384
    iput-object p1, p0, Lcom/android/server/connectivity/PacProxyService$3;->this$0:Lcom/android/server/connectivity/PacProxyService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    .line 391
    invoke-static {p2}, Lcom/android/net/IProxyCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/net/IProxyCallback;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 394
    :try_start_0
    new-instance p2, Lcom/android/server/connectivity/PacProxyService$3$1;

    invoke-direct {p2, p0}, Lcom/android/server/connectivity/PacProxyService$3$1;-><init>(Lcom/android/server/connectivity/PacProxyService$3;)V

    invoke-interface {p1, p2}, Lcom/android/net/IProxyCallback;->getProxyPort(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 415
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    .line 0
    return-void
.end method
