.class public Lcom/android/server/wm/WindowManagerService$10;
.super Ljava/lang/Object;
.source "WindowManagerService.java"

# interfaces
.implements Lcom/android/server/policy/WindowManagerPolicy$OnKeyguardExitResult;


# instance fields
.field public final synthetic val$callback:Landroid/view/IOnKeyguardExitResult;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;Landroid/view/IOnKeyguardExitResult;)V
    .locals 0

    .line 3614
    iput-object p2, p0, Lcom/android/server/wm/WindowManagerService$10;->val$callback:Landroid/view/IOnKeyguardExitResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKeyguardExitResult(Z)V
    .locals 0

    .line 3618
    :try_start_0
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService$10;->val$callback:Landroid/view/IOnKeyguardExitResult;

    invoke-interface {p0, p1}, Landroid/view/IOnKeyguardExitResult;->onKeyguardExitResult(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
