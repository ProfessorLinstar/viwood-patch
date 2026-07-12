.class public Lcom/android/server/wm/BlurController$1;
.super Landroid/view/TunnelModeEnabledListener;
.source "BlurController.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/BlurController;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/BlurController;Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/android/server/wm/BlurController$1;->this$0:Lcom/android/server/wm/BlurController;

    invoke-direct {p0, p2}, Landroid/view/TunnelModeEnabledListener;-><init>(Ljava/util/concurrent/Executor;)V

    return-void
.end method


# virtual methods
.method public onTunnelModeEnabledChanged(Z)V
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/android/server/wm/BlurController$1;->this$0:Lcom/android/server/wm/BlurController;

    invoke-static {v0, p1}, Lcom/android/server/wm/BlurController;->-$$Nest$fputmTunnelModeEnabled(Lcom/android/server/wm/BlurController;Z)V

    .line 58
    iget-object p0, p0, Lcom/android/server/wm/BlurController$1;->this$0:Lcom/android/server/wm/BlurController;

    invoke-static {p0}, Lcom/android/server/wm/BlurController;->-$$Nest$mupdateBlurEnabled(Lcom/android/server/wm/BlurController;)V

    return-void
.end method
