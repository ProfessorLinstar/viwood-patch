.class public final Lcom/android/server/wm/CompatModePackages$CompatHandler;
.super Landroid/os/Handler;
.source "CompatModePackages.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/CompatModePackages;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/CompatModePackages;Landroid/os/Looper;)V
    .locals 1

    .line 334
    iput-object p1, p0, Lcom/android/server/wm/CompatModePackages$CompatHandler;->this$0:Lcom/android/server/wm/CompatModePackages;

    const/4 p1, 0x0

    const/4 v0, 0x1

    .line 335
    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 340
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x12c

    if-eq p1, v0, :cond_0

    return-void

    .line 342
    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/CompatModePackages$CompatHandler;->this$0:Lcom/android/server/wm/CompatModePackages;

    invoke-static {p0}, Lcom/android/server/wm/CompatModePackages;->-$$Nest$msaveCompatModes(Lcom/android/server/wm/CompatModePackages;)V

    return-void
.end method
