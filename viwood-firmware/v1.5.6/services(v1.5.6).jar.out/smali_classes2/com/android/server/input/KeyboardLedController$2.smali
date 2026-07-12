.class public Lcom/android/server/input/KeyboardLedController$2;
.super Landroid/content/BroadcastReceiver;
.source "KeyboardLedController.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/input/KeyboardLedController;


# direct methods
.method public constructor <init>(Lcom/android/server/input/KeyboardLedController;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/android/server/input/KeyboardLedController$2;->this$0:Lcom/android/server/input/KeyboardLedController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 74
    const-string p1, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    const/4 v0, -0x1

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/high16 p2, -0x80000000

    if-ne p1, p2, :cond_0

    .line 76
    iget-object p1, p0, Lcom/android/server/input/KeyboardLedController$2;->this$0:Lcom/android/server/input/KeyboardLedController;

    invoke-static {p1}, Lcom/android/server/input/KeyboardLedController;->-$$Nest$fgetmHandler(Lcom/android/server/input/KeyboardLedController;)Landroid/os/Handler;

    move-result-object p1

    const/4 p2, 0x3

    invoke-static {p1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p1

    .line 77
    iget-object p0, p0, Lcom/android/server/input/KeyboardLedController$2;->this$0:Lcom/android/server/input/KeyboardLedController;

    invoke-static {p0}, Lcom/android/server/input/KeyboardLedController;->-$$Nest$fgetmHandler(Lcom/android/server/input/KeyboardLedController;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method
