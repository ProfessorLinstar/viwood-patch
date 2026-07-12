.class public abstract Lcom/android/server/inputmethod/InputMethodDrawsNavBarResourceMonitor;
.super Ljava/lang/Object;
.source "InputMethodDrawsNavBarResourceMonitor.java"


# direct methods
.method public static evaluate(Landroid/content/Context;I)Z
    .locals 2

    .line 50
    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result v0

    const/4 v1, 0x0

    if-ne v0, p1, :cond_0

    goto :goto_0

    .line 53
    :cond_0
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object p0

    .line 56
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string p1, "android"

    .line 57
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x11101c7

    .line 58
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 60
    const-string p1, "InputMethodDrawsNavBarResourceMonitor"

    const-string v0, "getResourcesForApplication(\"android\") failed"

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method public static registerCallback(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/inputmethod/InputMethodDrawsNavBarResourceMonitor$OnUpdateCallback;)V
    .locals 7

    .line 75
    new-instance v3, Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.OVERLAY_CHANGED"

    invoke-direct {v3, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 76
    const-string/jumbo v0, "package"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 77
    const-string v0, "android"

    const/4 v1, 0x0

    invoke-virtual {v3, v0, v1}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    .line 79
    new-instance v1, Lcom/android/server/inputmethod/InputMethodDrawsNavBarResourceMonitor$1;

    invoke-direct {v1, p2}, Lcom/android/server/inputmethod/InputMethodDrawsNavBarResourceMonitor$1;-><init>(Lcom/android/server/inputmethod/InputMethodDrawsNavBarResourceMonitor$OnUpdateCallback;)V

    .line 86
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v4, 0x0

    const/4 v6, 0x4

    move-object v0, p0

    move-object v5, p1

    invoke-virtual/range {v0 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    return-void
.end method
