.class public Lcom/android/server/wm/DisplayPolicy$PolicyHandler;
.super Landroid/os/Handler;
.source "DisplayPolicy.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/DisplayPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/DisplayPolicy;Landroid/os/Looper;)V
    .locals 0

    .line 399
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy$PolicyHandler;->this$0:Lcom/android/server/wm/DisplayPolicy;

    .line 400
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 405
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    return-void

    .line 410
    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy$PolicyHandler;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {p0}, Lcom/android/server/wm/DisplayPolicy;->-$$Nest$mdisablePointerLocation(Lcom/android/server/wm/DisplayPolicy;)V

    return-void

    .line 407
    :cond_1
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy$PolicyHandler;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {p0}, Lcom/android/server/wm/DisplayPolicy;->-$$Nest$menablePointerLocation(Lcom/android/server/wm/DisplayPolicy;)V

    return-void
.end method
