.class public Lcom/android/server/appwidget/AppWidgetServiceImpl$2;
.super Ljava/lang/Object;
.source "AppWidgetServiceImpl.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public final synthetic this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

.field public final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Lcom/android/server/appwidget/AppWidgetServiceImpl;Landroid/content/Intent;)V
    .locals 0

    .line 2802
    iput-object p1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$2;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    iput-object p2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$2;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNullBinding(Landroid/content/ComponentName;)V
    .locals 0

    .line 2816
    iget-object p1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$2;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-static {p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->-$$Nest$fgetmContext(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    .line 2805
    invoke-static {p2}, Lcom/android/internal/widget/IRemoteViewsFactory$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/IRemoteViewsFactory;

    move-result-object p1

    .line 2807
    :try_start_0
    iget-object p2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$2;->val$intent:Landroid/content/Intent;

    invoke-interface {p1, p2}, Lcom/android/internal/widget/IRemoteViewsFactory;->onDestroy(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2809
    const-string p2, "AppWidgetServiceImpl"

    const-string v0, "Error calling remove view factory"

    invoke-static {p2, v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2811
    :goto_0
    iget-object p1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$2;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-static {p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->-$$Nest$fgetmContext(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    .line 0
    return-void
.end method
