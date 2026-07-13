.class public Lcom/android/server/input/KeyboardLedController$1;
.super Landroid/content/BroadcastReceiver;
.source "KeyboardLedController.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/input/KeyboardLedController;


# direct methods
.method public constructor <init>(Lcom/android/server/input/KeyboardLedController;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/android/server/input/KeyboardLedController$1;->this$0:Lcom/android/server/input/KeyboardLedController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 66
    iget-object p1, p0, Lcom/android/server/input/KeyboardLedController$1;->this$0:Lcom/android/server/input/KeyboardLedController;

    invoke-static {p1}, Lcom/android/server/input/KeyboardLedController;->-$$Nest$fgetmHandler(Lcom/android/server/input/KeyboardLedController;)Landroid/os/Handler;

    move-result-object p1

    const/4 p2, 0x2

    invoke-static {p1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p1

    .line 67
    iget-object p0, p0, Lcom/android/server/input/KeyboardLedController$1;->this$0:Lcom/android/server/input/KeyboardLedController;

    invoke-static {p0}, Lcom/android/server/input/KeyboardLedController;->-$$Nest$fgetmHandler(Lcom/android/server/input/KeyboardLedController;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
