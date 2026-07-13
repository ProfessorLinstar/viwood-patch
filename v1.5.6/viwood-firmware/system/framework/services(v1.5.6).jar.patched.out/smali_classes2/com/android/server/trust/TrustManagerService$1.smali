.class public Lcom/android/server/trust/TrustManagerService$1;
.super Ljava/lang/Object;
.source "TrustManagerService.java"

# interfaces
.implements Lcom/android/internal/widget/LockSettingsStateListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/trust/TrustManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/trust/TrustManagerService;)V
    .locals 0

    .line 270
    iput-object p1, p0, Lcom/android/server/trust/TrustManagerService$1;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAuthenticationFailed(I)V
    .locals 2

    .line 278
    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService$1;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {p0}, Lcom/android/server/trust/TrustManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/trust/TrustManagerService;)Landroid/os/Handler;

    move-result-object p0

    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onAuthenticationSucceeded(I)V
    .locals 2

    .line 273
    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService$1;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {p0}, Lcom/android/server/trust/TrustManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/trust/TrustManagerService;)Landroid/os/Handler;

    move-result-object p0

    const/4 v0, 0x3

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1, p1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
