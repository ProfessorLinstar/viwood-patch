.class public final Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayHandler;
.super Landroid/os/Handler;
.source "WifiDisplayAdapter.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/WifiDisplayAdapter;


# direct methods
.method public constructor <init>(Lcom/android/server/display/WifiDisplayAdapter;Landroid/os/Looper;)V
    .locals 1

    .line 689
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayHandler;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    const/4 p1, 0x0

    const/4 v0, 0x1

    .line 690
    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 695
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    return-void

    .line 697
    :cond_0
    iget-object p0, p0, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayHandler;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {p0}, Lcom/android/server/display/WifiDisplayAdapter;->-$$Nest$mhandleSendStatusChangeBroadcast(Lcom/android/server/display/WifiDisplayAdapter;)V

    return-void
.end method
