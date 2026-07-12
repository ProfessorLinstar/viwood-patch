.class public Lcom/android/server/inputmethod/InputMethodDrawsNavBarResourceMonitor$1;
.super Landroid/content/BroadcastReceiver;
.source "InputMethodDrawsNavBarResourceMonitor.java"


# instance fields
.field public final synthetic val$callback:Lcom/android/server/inputmethod/InputMethodDrawsNavBarResourceMonitor$OnUpdateCallback;


# direct methods
.method public constructor <init>(Lcom/android/server/inputmethod/InputMethodDrawsNavBarResourceMonitor$OnUpdateCallback;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodDrawsNavBarResourceMonitor$1;->val$callback:Lcom/android/server/inputmethod/InputMethodDrawsNavBarResourceMonitor$OnUpdateCallback;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 82
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->getSendingUserId()I

    move-result p1

    .line 83
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodDrawsNavBarResourceMonitor$1;->val$callback:Lcom/android/server/inputmethod/InputMethodDrawsNavBarResourceMonitor$OnUpdateCallback;

    invoke-interface {p0, p1}, Lcom/android/server/inputmethod/InputMethodDrawsNavBarResourceMonitor$OnUpdateCallback;->onUpdate(I)V

    return-void
.end method
