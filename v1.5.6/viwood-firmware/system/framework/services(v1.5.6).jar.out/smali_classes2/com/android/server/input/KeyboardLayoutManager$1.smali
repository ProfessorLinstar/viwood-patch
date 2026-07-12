.class public Lcom/android/server/input/KeyboardLayoutManager$1;
.super Landroid/content/BroadcastReceiver;
.source "KeyboardLayoutManager.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/input/KeyboardLayoutManager;


# direct methods
.method public constructor <init>(Lcom/android/server/input/KeyboardLayoutManager;)V
    .locals 0

    .line 153
    iput-object p1, p0, Lcom/android/server/input/KeyboardLayoutManager$1;->this$0:Lcom/android/server/input/KeyboardLayoutManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 156
    iget-object p0, p0, Lcom/android/server/input/KeyboardLayoutManager$1;->this$0:Lcom/android/server/input/KeyboardLayoutManager;

    invoke-static {p0}, Lcom/android/server/input/KeyboardLayoutManager;->-$$Nest$mupdateKeyboardLayouts(Lcom/android/server/input/KeyboardLayoutManager;)V

    return-void
.end method
